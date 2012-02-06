<!doctype html>
<html>
<head>
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
                <li><a href="${createLink(controller: 'guia', action: 'formaturas')}">Guia de formaturas</a></li>
                <li><a href="#">Ultimos eventos</a></li>
                <li><a href="#">Espaço do formando</a></li>
            </ul>
        </li>
        <li class="last bg1" style="background-position:-626px 0px;">
            <a id="bg3" href="#">Mais</a>
            <ul class="sub3" style="background-position:-313px 0;">
                <li><a href="${createLink(controller: 'album', action: 'index')}">Albúm de fotos</a></li>
                <li><a href="#">Notícias</a></li>
                <li><a href="#">Contate-nos</a></li>
            </ul>
        </li>
    </ul>
</div>

<div class="row">
    <h4><b>Recentes:</b></h4>
    <g:each in="${highLights}" var="highLight">
        <div class="span5">
            <div style="height: 120px">
                <p><a href="${highLight.url}" title="${highLight.alt}"><b>${highLight.titulo}</b></a></p>

                <p style="text-align: justify">${highLight.descricao.short(200)}</p>
            </div>

            <p>Em ${highLight.tipo}</p>
        </div>
    </g:each>
</div>

%{--<div class="reference span20" style="margin: auto">--}%
    %{--<p>--}%
        %{--<a href="http://www.flickr.com/photos/patdavid/3842889677/in/set-72157622106008372/">Photo 1: Doobies Birthday</a>--}%
        %{--<a href="http://www.flickr.com/photos/patdavid/3905945428/in/set-72157622106008372/">Photo 2: Cup O Joe</a>--}%
    %{--</p>--}%
%{--</div>--}%
</body>
</html>
