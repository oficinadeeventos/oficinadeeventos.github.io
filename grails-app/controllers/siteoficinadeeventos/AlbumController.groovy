package siteoficinadeeventos

import grails.plugins.facebooksdk.FacebookGraphClient
import java.text.SimpleDateFormat

class AlbumController {
    def facebookAppService
    def imageService
    def albumService
    Map tipos = ["Formatura": "Formaturas", "Casamento": "Casamentos", "Aniver": "Aniversários"]

    def beforeInterceptor = {
        request.appId = facebookAppService.appId
        request.appPermissions = facebookAppService.appPermissions
        request.userId = facebookAppService.userId
    }

    def index() {
        redirect(action: 'list')
    }

    def list() {
        List albuns = albumService.listAlbuns(params.id)
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
