<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="principal"/>
    <title>- ${album.name}</title>
    <r:require module="galleriffic"/>
</head>

<body>

<div class="content">
    <g:render template="../commons/topo"/>

    <div class="inner">
        <div style="padding-bottom: 30px;">
            <h1 style="margin-bottom: 5px;">${album.name}</h1>
        <span style="margin-left: 15px">Em <g:link action="index">Albuns</g:link>
            <g:if test="${categoria}">
                / <g:link action="list" id="${categoria.nome}">${categoria.descricao}</g:link></span>
            </g:if>
        </div>

        <div class="navigation-container">
            <div id="thumbs" class="navigation">
                <a class="pageLink prev" style="visibility: hidden;" href="#" title="Página Anterior"></a>

                <ul class="thumbs noscript">
                    <g:each in="${fotos}" var="foto">
                        <li>
                            <a class="thumb thumbnail clipzone" href="${foto.source.replaceAll('s720x720/', '')}"
                               title="Title #0">
                                <img class="clipped" src="${foto.picture}" alt="${album}"/>
                            </a>

                            <div class="caption">
                                <div class="image-title">${album.name}</div>

                                <div class="image-desc">${foto.name}</div>
                            </div>
                        </li>
                    </g:each>
                </ul>
                <a class="pageLink next" style="visibility: hidden;" href="#" title="Próxima página"></a>
            </div>
        </div>

        <div class="contentgallery">
            <div class="slideshow-container">
                <div id="controls" class="controls"></div>

                <div id="loading" class="loader"></div>

                <div id="slideshow" class="slideshow"></div>
            </div>
        </div>

        <div style="clear: both;"></div>

        <div class="fb-like pull-right" data-href="http://www.facebook.com/pages/Oficina-de-Eventos/117581011698155"
             data-send="true" data-layout="button_count" data-width="180" data-show-faces="true"
             data-font="lucida grande"></div>
    </div>
</div>

<script type="text/javascript" src="${resource(dir: 'js', file: 'album.js')}"></script>
</body>
</html>