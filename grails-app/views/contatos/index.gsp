<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="principal"/>
    <title>- Albuns de Fotos</title>
</head>

<body>
<div class="content">
    <g:render template="../commons/topo"/>

    <div class="inner row" style="position: relative;">
        <g:render template="../commons/topmenu"/>
        <div class="span8">
            <div style="padding-top: 30px;">
                <h2 style="margin-bottom: 5px;">Entre em contato</h2>
            </div>
            <g:form class="form-horizontal">
                <fieldset>
                    <legend></legend>

                    <div class="control-group">
                        <label class="control-label" for="nome">Seu nome</label>

                        <div class="controls">
                            <input class="input-xlarge focused" id="nome" type="text" required="required">
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="email">Seu email</label>

                        <div class="controls">
                            <input class="input-xlarge" id="email" type="text" required="required">
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="mensagem">Mensagem</label>

                        <div class="controls">
                            <textarea class="input-xlarge" id="mensagem" cols="10" required="required"
                                      style="max-width: 280px; height: 100px;"></textarea>
                        </div>
                    </div>

                    <div class="form-actions">
                        <button type="submit" class="btn btn-info">Enviar mensagem</button>
                    </div>
                </fieldset>
            </g:form>
        </div>

        <div class="span4" style="margin-left: 30px;">
            <g:render template="../guia/listagem" model="${[type: 'both']}"/>

            <div style="height: 30px; width: 100%"></div>

            <div class="fb-like-box" data-href="http://www.facebook.com/pages/Oficina-de-Eventos/117581011698155"
                 data-width="250"
                 data-show-faces="true" data-border-color="#e0ccaf" data-stream="false" data-header="true"></div>
        </div>

    </div>
</div>
</body>
</html>