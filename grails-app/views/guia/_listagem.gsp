<%@ page import="siteoficinadeeventos.Artigo" %>
<h2>Guia de noivas</h2>
<g:each in="${Artigo.list(max: 3)}" var="artigo">
    <div class="actions" style="padding: 10px 0 20px;">
        <p><b>${artigo.titulo}</b></p>

        <p style="text-align: justify">
            ${artigo.descricaoCurta}
        </p>
        <a href="${createLink(controller: 'guia', action: 'leia', id: artigo.id)}">Leia mais</a>
    </div>
</g:each>