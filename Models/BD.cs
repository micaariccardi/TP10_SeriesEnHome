using System.Data.SqlClient;
using Dapper;

public static class BD
{
    private static string _connectionString = @"Server=localhost;DataBase=BDSeries;Trusted_Connection=True;";

    public static List<Serie> ObtenerSeries()
    {
        List<Serie> ListaSeries = new List<Serie>();
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Series";
            ListaSeries = db.Query<Serie>(sql).ToList();
        }
        return ListaSeries;
    }

    public static List<Temporada> ObtenerTemporadas(int idSerie)
    {
        List<Temporada> ListaTemporadas = new List<Temporada>();
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Temporadas WHERE IdSerie = @pidSerie";
            ListaTemporadas = db.Query<Temporada>(sql, new {pidSerie = idSerie}).ToList();
        }
        return ListaTemporadas;
    }

    public static List<Actor> ObtenerActores(int idSerie)
    {
        List<Actor> ListaActores = new List<Actor>();
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Actores WHERE IdSerie = @pidSerie";
            ListaActores = db.Query<Actor>(sql, new {pidSerie = idSerie}).ToList();
        }
        return ListaActores;
    }

    public static Serie ObtenerSerie(int idSerie)
    {
        Serie serie = new Serie();
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Series WHERE IdSerie = @pidSerie";
            serie = db.QueryFirstOrDefault<Serie>(sql, new {pidSerie = idSerie});
        }
        return serie;
    }
}