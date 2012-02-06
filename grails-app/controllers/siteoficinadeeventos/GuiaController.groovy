package siteoficinadeeventos

class GuiaController {

    def noivas() {
        List artigos = Artigo.findAllByTipo(Artigo.GUIA_CASAMENTOS)
        [artigos: artigos]
    }

    def leia() {
        Artigo artigo = Artigo.get(params.id)
        [artigo: artigo]
    }
}
