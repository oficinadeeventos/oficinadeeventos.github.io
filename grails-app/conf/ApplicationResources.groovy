modules = {
    jquery152 {
        resource url: 'http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js'
    }
    jquery132 {
        resource url: 'js/jquery-1.3.2.js'
    }
    application {
        dependsOn 'jquery152'
        resource url: 'js/application.js'
    }
    bootstrap {
        dependsOn 'jquery'
        resource url: 'http://twitter.github.com/bootstrap/assets/css/bootstrap.css'
        resource url: 'js/bootstrap.js'
    }
    principal {
        dependsOn 'bootstrap'
        resource url: 'css/principal.css'
    }
    home {
        dependsOn 'principal'
        dependsOn 'jquery152'
        resource url: 'js/jquery.bgpos.js'
        dependsOn 'application'
        resource url: 'css/index.css'
        resource url: 'css/style.css'
    }
    pages {
        resource url: 'css/pages.css'
    }
    galleriffic {
        dependsOn 'principal'
        dependsOn 'jquery132'
        resource url: 'js/jquery.history.js'
        resource url: 'js/jquery.galleriffic.js'
        resource url: 'js/jquery.opacityrollover.js'
        resource url: 'css/galleriffic/galleriffic-5.css'
        resource url: 'css/galleriffic/white.css'
    }
}