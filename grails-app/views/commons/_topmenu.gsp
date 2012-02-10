<style type="text/css">
.reference {
    width: 600px;
    padding: 5px 10px 10px;
    position: absolute;
    top: 0;
    left: 15px;
}

.reference p a {
    text-transform: uppercase;
    text-shadow: 1px 1px 1px #fff;
    color: #666;
    text-decoration: none;
    font-size: 12px;
}

.reference p a:hover {
    color: #333;
}
</style>

<div class="reference span20" style="margin: auto">
    <p>
        <img src="${resource(dir: 'images', file: 'arabesco.jpg')}" width="45" height="45" alt="" align="middle"/>
        <a href="${createLink(controller: 'home')}">Home</a> |
        <a href="${createLink(controller: 'guia', action: 'noivas')}">Guia de noivas</a> |
        <a href="${createLink(controller: 'guia', action: 'formandos')}">Guia de formandos</a> |
        <a href="${createLink(controller: 'contatos')}">Contatos</a>
    </p>
</div>