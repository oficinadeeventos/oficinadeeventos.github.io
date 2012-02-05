package siteoficinadeeventos

class GuiaController {

    def noivas() {
        Artigo artigo = Artigo.list()[1]
        [artigo: artigo]
    }
}
