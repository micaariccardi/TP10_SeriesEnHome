﻿using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using TP10_SeriesEnHome.Models;

namespace TP10_SeriesEnHome.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        ViewBag.series = BD.ObtenerSeries();
        return View();
    }

    public List<Actor> VerActoresAjax(int idSerie)
    {
        List<Actor> actores = BD.ObtenerActores(idSerie);
        return actores;
    }

    public List<Temporada> VerTemporadasAjax(int idSerie)
    {
        List<Temporada> temporadas = BD.ObtenerTemporadas(idSerie);
        return temporadas;
    }

    public Serie VerSeriesAjax(int idSerie)
    {
        return BD.ObtenerSerie(idSerie);
    }

    public IActionResult Privacy()
    {
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
