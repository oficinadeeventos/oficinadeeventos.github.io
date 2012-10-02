<!doctype html>
<html>
<head>
	<meta property="fb:page_id" content="117581011698155"/>
	<meta name="layout" content="principal"/>
	<title>Oficina de Eventos</title>
	<r:require module="home"/>
</head>

<body>
<div id="menuWrapper" class="menuWrapper bg1">
	<div style="position: absolute; right: 20px; top: 20px;">
		<g:img dir="images" file="oficina_de_eventos_logo.png"/>
	</div>
	<ul class="menu" id="menu">
		<li class="bg1" style="background-position:0 0;">
			<a id="bg1" href="#">Casamentos</a>
			<ul class="sub1" style="background-position:0 0;">
				<li><a href="${createLink(controller: 'guia', action: 'noivas')}">Dúvidas Frequentes</a></li>
				<li><a href="#">Ultimos eventos</a></li>
				<li><a href="#">Espaço da noiva</a></li>
			</ul>
		</li>
		<li class="bg1" style="background-position:-313px 0px;">
			<a id="bg2" href="#">Formaturas</a>
			<ul class="sub2" style="background-position:-313px 0;">
				<li><a href="${createLink(controller: 'guia', action: 'formandos')}">Guia de formaturas</a></li>
				<li><a href="#">Ultimos eventos</a></li>
				<li><a href="#">Espaço do formando</a></li>
			</ul>
		</li>
		<li class="last bg1" style="background-position:-626px 0px;">
			<a id="bg3" href="#">Mais</a>
			<ul class="sub3" style="background-position:-313px 0;">
				<li><a href="${createLink(controller: 'album', action: 'index')}">Albúm de fotos</a></li>
				<li><a href="#">Notícias</a></li>
				<li><a href="${createLink(controller: 'contatos')}">Contate-nos</a></li>
			</ul>
		</li>
	</ul>
</div>

<div class="row">
	<h4><b>Recentes:</b></h4>
	<g:each in="${highLights}" var="highLight">
		<div class="span3">
			<div style="height: 120px">
				<p><a href="${highLight.url}" title="${highLight.alt}"><b>${highLight.titulo}</b></a></p>

				<p style="text-align: justify">${highLight.descricao.short(200)}</p>
			</div>

			<p>Em ${highLight.tipo}</p>
		</div>
	</g:each>
</div>

<div xmlns="http://www.w3.org/1999/xhtml"
	 xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
	 xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
	 xmlns:xsd="http://www.w3.org/2001/XMLSchema#"
	 xmlns:gr="http://purl.org/goodrelations/v1#"
	 xmlns:foaf="http://xmlns.com/foaf/0.1/"
	 xmlns:vcard="http://www.w3.org/2006/vcard/ns#">

	<div typeof="gr:BusinessEntity" about="#company">
		<div property="gr:legalName" content="MAGDA CRISTINA DAS SILVA"></div>

		<div property="vcard:tel" content="+556236227245"></div>

		<div rel="vcard:adr">
			<div typeof="vcard:Address">
				<div property="vcard:country-name" content="Brasil"></div>

				<div property="vcard:locality" content="Goiânia"></div>

				<div property="vcard:postal-code" content="74140020"></div>

				<div property="vcard:street-address" content="Avenida Portugal n.41"></div>
			</div>
		</div>

		<div rel="foaf:logo" resource="http://oficinadeeventos.com/static/images/oficina_de_eventos_logo.png"></div>

		<div rel="foaf:page" resource=""></div>
	</div>
</div>
</body>
</html>
