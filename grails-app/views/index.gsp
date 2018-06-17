<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
</head>
<body>
    <content tag="nav">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Acciones<span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#">Antojitos México</a></li>
                <li><a href="#">Personas</a></li>
            </ul>
        </li>
    </content>

    <div class="svg" role="presentation">
        <div class="grails-logo-container">
            <asset:image src="ABI.png" class="grails-logo"/>
        </div>
    </div>

    <div id="content" role="main">
        <section class="row colset-2-its">
            <h1>Welcome to Grails</h1>

            <p>
                Congratulations, you have successfully started your first Grails application! At the moment
                this is the default page, feel free to modify it to either redirect to a controller or display
                whatever content you may choose. Below is a list of controllers that are currently deployed in
                this application, click on each to execute its default action:
            </p>

            <div class="row">
                <div class="col-lg-6">
                <a href="/taco">
                <img src="/assets/antojitos.jpg"  class="img-circle" alt="" style="width: 100%" >
                <div class="row">
                    antojitos méxicanos
                </div>
                </a>
                </div>
                <div class="col-lg-6">
                <a href="/persona">
                <img src="/assets/antojitos.jpg"  class="img-circle" alt="" style="width: 100%" >
                <div class="row">
                    Agregar Persona
                </div>
                </a>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                <div class="col-lg-6  col-lg-offset-3">
                <a href="/compra">
                <img src="/assets/antojitos.jpg"  class="img-circle" alt="" style="width: 100%" >
                <div class="row">
                    Agregar Persona
                </div>
                </a>

                </div>

                </div>
            </div>
            <div class="row">

        </section>
    </div>

</body>
</html>
