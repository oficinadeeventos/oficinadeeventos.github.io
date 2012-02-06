package siteoficinadeeventos

import grails.plugins.facebooksdk.FacebookGraphClient
import java.text.SimpleDateFormat

class AlbumService {
    def facebookAppService

    def listAlbuns(String tipo = null) {
        def facebookClient = new FacebookGraphClient(facebookAppService.getAccessToken())
        List albuns = facebookClient.fetchObject("117581011698155/albums").data.findAll {it.count > 0 && !it.name.contains("Profile")}
        if (tipo)
            albuns = albuns.findAll {it.name.contains(tipo)}
        SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-DDhh:mm:ss")
        albuns.each {
            if (it.cover_photo)
                it.cover_photo_url = facebookClient.fetchObject(it.cover_photo).picture
            it.date_created_time = sdf.parse(it.created_time.replaceAll("T", ""))
        }
        albuns
    }
}
