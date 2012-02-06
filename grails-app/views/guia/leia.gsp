<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="principal"/>
    <title>- Albuns de Fotos</title>
</head>

<body>
<div class="content">
    <g:render template="../commons/topo"/>

    <div class="inner row">
        <div class="span14">
            <div style="padding-bottom: 30px;">
                <h1 style="margin-bottom: 5px;">${artigo.titulo}</h1>
                <span style="margin-left: 15px;">Em <g:link action="noivas">Artigos</g:link></span>
            </div>

            <div style="text-align: justify; line-height: 18px;">
                ${artigo.texto}
            </div>
        </div>

        <div class="span6" style="margin-left: 30px;">
            <g:render template="listagem"/>

            <div style="height: 30px; width: 100%"></div>

            <div class="fb-like-box" data-href="http://www.facebook.com/pages/Oficina-de-Eventos/117581011698155"
                 data-width="250"
                 data-show-faces="true" data-border-color="#e0ccaf" data-stream="false" data-header="true"></div>
        </div>

    </div>
</div>
</body>
</html>