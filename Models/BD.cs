using System.Data.SqlClient;
using Dapper;

public static class BD
{
    private static string _connectionString = @"Server=localhost;DataBase=TP10_SeriesEnHome;Trusted_Connection=True;";

    public static List<Serie> ObtenerSeries()
    {
        List<Serie> ListaSeries = new List<Serie>();
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Serie";
            ListaSeries = db.Query<Serie>(sql).ToList();
        }
        return ListaSeries;
    }

    public static List<Temporada> ObtenerTemporadas()
    {
        List<Temporada> ListaTemporadas = new List<Temporada>();
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Temporada";
            ListaTemporadas = db.Query<Temporada>(sql).ToList();
        }
        return ListaTemporadas;
    }

    public static List<Actor> ObtenerActores()
    {
        List<Actor> ListaActores = new List<Actor>();
        using(SqlConnection db = new SqlConnection(_connectionString))
        {
            string sql = "SELECT * FROM Actor";
            ListaActores = db.Query<Actor>(sql).ToList();
        }
        return ListaActores;
    }
}