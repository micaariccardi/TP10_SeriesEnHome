public class Actor
{
    public int idActor {get; set;}
    public int idSerie {get; set;}
    public string nombre {get;set;} 

    public Actor(int idA, int idS, string name)
    {
        idActor = idA;
        idSerie = idS;
        nombre = name;
    }

    public Actor(){}
}