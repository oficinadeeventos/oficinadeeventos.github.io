package siteoficinadeeventos

class GuiaController {

    def noivas() {
        List artigos = Artigo.findAllByTipo(Artigo.GUIA_CASAMENTOS)
        [artigos: artigos]
    }

    def formandos() {
        List artigos = Artigo.findAllByTipo(Artigo.GUIA_FORMATURAS)
        [artigos: artigos]
    }

    def leia() {
        Artigo artigo = Artigo.get(params.id)
        [artigo: artigo]
    }
}
