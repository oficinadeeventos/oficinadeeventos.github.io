<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="principal"/>
    <title>- Albuns de Fotos</title>
</head>

<body>
<div id="frontpage-content" class="wrapper content-body">
    <div class="content">
        <g:render template="../commons/topo"/>

        <div class="inner row" style="position: relative;">
            <g:render template="../commons/topmenu"/>
            <div class="span8">
                <div style="padding-top: 30px; padding-bottom: 30px;">
                    <h2 style="margin-bottom: 5px;">Guia de noivas</h2>
                    <span style="margin-left: 15px;">Em <g:link action="noivas">Artigos</g:link></span>
                </div>
                <g:each in="${artigos}" var="artigo">
                    <h3><a href="${createLink(action: 'leia', id: artigo.id)}">${artigo.titulo}</a></h3>
                </g:each>
            </div>

            <div class="span4" style="margin-left: 30px;">
                <g:render template="listagem"/>

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