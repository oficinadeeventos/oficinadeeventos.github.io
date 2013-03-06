<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="principal"/>
    <title>- Albuns de Fotos</title>
    <style type="text/css">
    .thumbnail {
        margin-left: auto;
        margin-right: auto;
        left: 0;
        right: 0;
        clip: rect(0px, 160px, 160px, 0px);
        display: inline-block;
        height: auto;
        image-rendering: optimizeQuality;
        max-height: 100%;
        max-width: 100%;
        vertical-align: middle;
        width: auto;
    }

    .album {
        width: 160px;
        height: 180px;
        overflow: hidden;
        position: relative;;
    }
    </style>
</head>

<body>
<div id="frontpage-content" class="wrapper content-body">
    <div class="content">
        <g:render template="../commons/topo"/>

        <div class="inner row" style="position: relative;">
            <g:render template="../commons/topmenu"/>
            <div class="span8">
                <div style="padding-top: 30px; padding-bottom: 30px;">
                    <h2 style="margin-bottom: 5px;">Últimos ${tipo}</h2>
                    <span style="margin-left: 15px;">Em <g:link action="index">Albuns</g:link></span>
                </div>
                <g:each in="${albuns}" var="album">
                    <div class="span4 album" style="text-align: center; margin-bottom: 20px;">
                        <a href="${createLink(action: 'show', id: album.id)}">
                            <img class="thumbnail" style="margin: auto" src="${album.cover_photo_url}"
                                 alt="${album.name}"/>

                            <p>
                                ${album.name} (${album.count})
                            </p>
                        </a>
                    </div>
                </g:each>
            </div>

            <div class="span4">
                <g:render template="../guia/listagem"/>
                <div style="height: 30px; width: 100%"></div>

                <div class="fb-like-box" data-href="http://www.facebook.com/pages/Oficina-de-Eventos/117581011698155"
                     data-width="250"
                     data-show-faces="true" data-border-color="#e0ccaf" data-stream="false" data-header="true"></div>
            </div>

        </div>
    </div>
</div>
</body>
</html>