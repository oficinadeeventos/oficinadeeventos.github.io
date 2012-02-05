package siteoficinadeeventos

import grails.plugins.facebooksdk.FacebookGraphClient
import java.text.SimpleDateFormat

class AlbumController {
    def facebookAppService
    def imageService
    Map tipos = ["Formatura": "Fromaturas", "Casamento": "Casamentos", "Aniver": "Aniversários"]

    def beforeInterceptor = {
        request.appId = facebookAppService.appId
        request.appPermissions = facebookAppService.appPermissions
        request.userId = facebookAppService.userId
    }

    def index() {
        redirect(action: 'list')
    }

    def list() {
        def facebookClient = new FacebookGraphClient(facebookAppService.getAccessToken())
        List albuns = facebookClient.fetchObject("117581011698155/albums").data.findAll {it.count > 0 && !it.name.contains("Profile")}
        if (params.id)
            albuns = albuns.findAll {it.name.contains(params.id)}
        SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-DDhh:mm:ss")
        albuns.each {
            if (it.cover_photo)
                it.cover_photo_url = facebookClient.fetchObject(it.cover_photo).picture
            it.date_created_time = sdf.parse(it.created_time.replaceAll("T", ""))
        }

        String tipo = tipos[params.id] ?: "Eventos"
        albuns.sort(false) {it.date_created_time}
        [albuns: albuns, tipo: tipo]
    }

    def show() {
        def facebookClient = new FacebookGraphClient(facebookAppService.getAccessToken())
        def album = facebookClient.fetchObject(params.id)
        List fotos = facebookClient.fetchObject("${album.id}/photos").data
        Map categoria = null
        tipos.each {k, v ->
            if (album.name.contains(k))
                categoria = [nome: k, descricao: v]
        }
        [fotos: fotos, album: album, categoria: categoria]
    }

    def thumb = {
        byte[] imageInByte = imageService.thumbnail(params.url)
        response.setHeader('Content-length', "$imageInByte.length")
        response.contentType = 'image/jpeg'
        response.outputStream << imageInByte
        response.outputStream.flush()
    }
}
