public class Serie 
{
    public int idSerie {get; set;}
    public string nombre {get; set;}
    public int anioInicio {get; set;}
    public string sinopsis {get; set;}
    public string imagenSerie {get; set;}

    Serie(int id, string name, int year, string sin, string image)
    {
        idSerie = id;
        nombre = name;
        anioInicio = year;
        sinopsis = sin;
        imagenSerie = image;
    }

    Serie(){}
}