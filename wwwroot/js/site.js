// Please see documentation at https://docs.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

// Write your JavaScript code.
function MostrarInfo(id)
{
    $.ajax(
        {
            type: 'POST',
            dataType: 'JSON',
            url: '/Home/VerSeriesAjax',
            data: {idSerie : id},
            success:
                function(response)
                {
                    $("#titulo").html(response.nombre);
                    $("#InfoModal").html(response.sinopsis);
                }
        }
    )
}

function MostrarReparto(id)
{
    $.ajax(
        {
            type: 'POST',
            dataType: 'JSON',
            url: '/Home/VerActoresAjax',
            data: {idSerie : id},
            success:
                function(response)
                {
                    $("#titulo").html("Reparto");
                    let list = "<ul>";
                    for (const item of response) 
                    {
                        list += "<li>" + item.nombre + "</li>";
                    }
                    list += "</ul>";
                    $("#InfoModal").html(list);
                }
            }
    )
}

function MostrarTemporadas(id)
{
    $.ajax(
        {
            type: 'POST',
            dataType: 'JSON',
            url: 'Home/VerTemporadasAjax',
            data: {idSerie : id},
            success:
                function(response)
                {
                    $("#titulo").html("Temporadas");
                    let list = "<ul>";
                    for (const item of response) 
                    {
                        list += "<li>" + item.tituloTemporada + "</li>";
                    }
                    list += "</ul>";
                    $("#InfoModal").html(list);
                }
        }
    )
}