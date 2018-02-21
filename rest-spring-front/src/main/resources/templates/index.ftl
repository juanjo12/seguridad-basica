<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css"
          integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
    <title>RestAPI</title>
</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <a class="navbar-brand" href="#">IES Emili Darder</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault"
            aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" href="/restaurants">RestAPI</a>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" href="/restUse.html">Ajax version</a>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" href="/logout">logout</a>
            </li>
        </ul>
    </div>
</nav>
<main role="main" class="container">
    <div class="row featurette">
        <div class="col-md-7">
            <!-- title = titulo asignado en la clase Launcher, subtitle = sub  -->
            <h1>Restaurantes</h1>
            <h2 class="featurette-heading">Pagina creada apartir de FTL</h2>
        </div>

    </div>
    <!-- posts = restaurantes -->

<#if restaurantes??>
    <div class="row center mt-2">
        <!--lista los restaurantes y les asigna el nombre item, atraves de item accedemos a los atributos de los restaurantes -->
        <#list restaurantes as item>
            <div class="col-md-5 border border-dark">
                <div class="media mt-5 ml-5">
                    <!-- se utiliza !"" para que tener un control de los errores, y que se muestre en blanco si ha ocurrido alguno -->
                    <img class="align-self-start mr-3 rounded-circle"
                         src="${item.images}"
                         alt="Random Image" width="80" height="80">
                    <div class="media-body">
                        <h5 class="mt-0"> Nombre: ${item.name!""}</h5>
                        <p>${item.address!""}</p>
                        <p>${item.numero!""}</p>
                        <a href="${item.website!""}">Web</a>
                        <p>${item.type!""}</p>
                        <p></p>
                    </div>
                </div>
            </div>
        </#list>
    </div>
</#if>
</main>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<form action="/restaurants">
<button type="submit">RestAPI</button>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"
            integrity="sha384-a5N7Y/aK3qNeh15eJKGWxsqtnX/wWdSZSKp+81YjTmS15nvnvxKHuzaWwXHDli+4"
            crossorigin="anonymous"></script>
</form>
</body>
</html>