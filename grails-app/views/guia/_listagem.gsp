<%@ page import="siteoficinadeeventos.Artigo" %>
<h3>Guia de noivas</h3>
<g:each in="${Artigo.list(max: 3)}" var="artigo">
    <div class="form-actions" style="padding: 10px 10px 20px;">
        <p><b>${artigo.titulo}</b></p>

        <p style="text-align: justify">
            ${artigo.descricaoCurta}
        </p>
        <a href="${createLink(controller: 'guia', action: 'leia', id: artigo.id)}">Leia mais</a>
    </div>
</g:each>