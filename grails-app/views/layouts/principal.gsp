<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Oficina de Eventos <g:layoutTitle default=""/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    %{--<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">--}%
    <g:layoutHead/>
    <r:require module="principal"/>
    <r:layoutResources/>
    <r:layoutResources/>

    <style type="text/css">
    .container {
        width: 940px;
    }
    </style>
</head>

<body>
<div id="fb-root"></div>
<script type="text/javascript">(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s);
    js.id = id;
    js.src = "//connect.facebook.net/pt_BR/all.js#xfbml=1";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<div class="container">
    <g:layoutBody/>
</div>

<footer>
    <div class="container">
        <p class="pull-right" style="margin-top: -30px;padding: 0">
            <a href="http://www.facebook.com/pages/Oficina-de-Eventos/117581011698155">
                <img src="${resource(dir: 'images', file: 'Facebook-Social-Bar-64.png')}"/>
            </a>
        </p>

        <p>
            &#169; Oficina de Eventos. Avenida Portugal n.41, Setor Oeste, Goiânia GO / (62) 3622 7245<br/><br/>
            Desenvolvido por <a href="http://twitter.com/cleydsonjr" target="_blank">@cleydsonjr</a>.<br/>
        </p>
    </div>
</footer>

</body>

</html>