<%@ page import="siteoficinadeeventos.Artigo" %>
<h2>Guia de noivas</h2>
<g:each in="${Artigo.list()}" var="artigo">
    <div>
        <h3>${artigo.titulo}</h3>

        <p>
            ${artigo.descricaoCurta}
        </p>
    </div>
</g:each>