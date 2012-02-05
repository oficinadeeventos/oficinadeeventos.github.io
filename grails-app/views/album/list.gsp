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
                <h1 style="margin-bottom: 5px;">Últimos ${tipo}</h1>
                <span style="margin-left: 15px;">Em <g:link action="index">Albuns</g:link></span>
            </div>
            <g:each in="${albuns}" var="album">
                <div class="span4" style="text-align: center; margin-bottom: 20px;">
                    <a href="${createLink(action: 'show', id: album.id)}">
                        <img class="thumbnail" style="margin: auto" src="${album.cover_photo_url}"
                             alt="${album.name}"/><br/>
                        ${album.name} (${album.count})
                    </a>
                </div>
            </g:each>
        </div>

        <div class="span6">
            <h2>Guia de noivas</h2>

            <div>
                <h3>Loren ipsum dolor</h3>

                <p>
                    This profile may be adopted by standards which require an unambiguous representation of dates and times.
                    As different standards have their own requirements regarding granularity and flexibility, this profile
                    offers a number of options. An adopting standard must specify which of these options it permits.
                </p>
            </div>

            <div>
                <h3>Loren ipsum dolor</h3>

                <p>
                    This profile may be adopted by standards which require an unambiguous representation of dates and times.
                    As different standards have their own requirements regarding granularity and flexibility, this profile
                    offers a number of options. An adopting standard must specify which of these options it permits.
                </p>
            </div>

            <div>
                <h3>Loren ipsum dolor</h3>

                <p>
                    This profile may be adopted by standards which require an unambiguous representation of dates and times.
                    As different standards have their own requirements regarding granularity and flexibility, this profile
                </p>
            </div>

            <div style="height: 30px; width: 100%"></div>

            <div class="fb-like-box" data-href="http://www.facebook.com/pages/Oficina-de-Eventos/117581011698155"
                 data-width="250"
                 data-show-faces="true" data-border-color="#e0ccaf" data-stream="false" data-header="true"></div>
        </div>

    </div>
</div>
</body>
</html>