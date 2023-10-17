public class Temporada 
{
    public int idTemporada {get; set;}
    public int idSerie {get; set;}
    public int numeroTemporada {get; set;}
    public string tituloTemporada {get; set;}

    public Temporada(int idT, int idS, int numT, string tituloT)
    {
        idTemporada = idT;
        idSerie = idS;
        numeroTemporada = numT;
        tituloTemporada = tituloT;
    }

    public Temporada(){}
}
