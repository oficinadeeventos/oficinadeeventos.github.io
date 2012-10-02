package siteoficinadeeventos

class HomeController {
    def facebookAppService
    def albumService

    def beforeInterceptor = {
        request.appId = facebookAppService.appId
        request.appPermissions = facebookAppService.appPermissions
        request.userId = facebookAppService.userId
    }

    def index() {
        List highLights = []
        List albuns = albumService.listAlbuns()
        albuns.sort(false) {it.date_created_time}
        albuns = albuns[(0..1)]
        highLights += albuns.collect {
            [titulo: "Veja as novas fotos",
                    descricao: descricaoDoAlbum(it),
                    alt: it.name,
                    tipo: 'Albúm de fotos',
                    url: createLink(controller: 'album', action: 'show', id: it.id)]
        }
        List artigos = Artigo.list(max: 2)
        highLights += artigos.collect {
            [titulo: it.titulo.short(32),
                    descricao: it.descricaoCurta,
                    alt: it.titulo,
                    tipo: 'Artigos',
                    url: createLink(controller: 'guia', action: 'leia', id: it.id)]
        }
        Collections.shuffle(highLights)
        [highLights: highLights]
    }

    String descricaoDoAlbum(def album) {
        "Veja as ${album.count} fotos do evento <b>${album.name}</b> realizado pela Oficina de Eventos."
    }
}
