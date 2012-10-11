<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="principal"/>
    <title>- Guia de Eventos</title>
        <style type="text/css">
        .span4 {
            width: 260px;
        }

        .span8 {
            width: 610px;
        }

        .span4 h2 {
            font-size: 20px;
            letter-spacing: -0.03em;
            line-height: 28px;
        }

        .span4 p {
            font-size: 11px;
            font-weight: normal;
            line-height: 14px;
            margin-bottom: 7px;
            font-family: inherit;
        }

        body {
            font-family: "lucida grande", tahoma, verdana, arial, sans-serif;
            font-size: 12px;
            font-weight: normal;
            line-height: 15px;
            color: #333;
        }
        </style>
</head>

<body>
<div class="content">
	<g:render template="../commons/topo"/>

	<div class="inner row" style="position: relative;">
		<g:render template="../commons/topmenu"/>
		<div class="span8">
			<div style="padding-top: 30px; padding-bottom: 30px;">
				<h2 style="margin-bottom: 5px;">${artigo.titulo}</h2>
				<span style="margin-left: 15px;">Em <g:link action="${artigo.sessao}">Artigos</g:link></span>
			</div>

			<div style="text-align: justify; line-height: 18px;">
				${artigo.texto}
			</div>
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
</body>
</html>