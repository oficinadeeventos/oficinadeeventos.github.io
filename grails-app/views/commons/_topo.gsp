<style type="text/css">
.topo {
    overflow: hidden;
    position: relative;
    height: 100px;
    margin: 0;
}

.topo .reduzido {
    position: absolute;
    clip: rect(0px, auto, auto, 0px);
    top: -${new Random().nextInt(4) * 100}px;
}
</style>

<div class="topo">
    <img class="reduzido" src="${resource(dir: 'images/home', file: "${new Random().nextInt(4) + 1}.jpg")}" alt=""/>

    <div style="position: absolute; right: 15px; top: 15px;">
        <a href="${createLink(controller: 'home', action: 'index')}" title="Página inicial">
            <g:img dir="images" file="oficina_de_eventos_logo.png"/>
        </a>
    </div>
</div>