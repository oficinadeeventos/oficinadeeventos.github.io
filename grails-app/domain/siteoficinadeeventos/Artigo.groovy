package siteoficinadeeventos

class Artigo {
	static String GUIA_CASAMENTOS = "GuiaCasamentos"
	static String GUIA_FORMATURAS = "GuiaFormaturas"

	String titulo
	String tipo
	String descricaoCurta
	String texto
	Date dateCreated

	static constraints = {
		titulo blank: false
		tipo blank: false, inList: [GUIA_CASAMENTOS, GUIA_FORMATURAS]
		descricaoCurta blank: false, maxSize: 200
		texto blank: false, minSize: 500, maxSize: 10000
	}

	String getSessao() {
		tipo == GUIA_CASAMENTOS ? "noivas" : "formandos"
	}
}
