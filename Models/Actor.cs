public class Actor
{
    int idActor {get; set;}
    int idSerie {get; set;}
    string nombre {get;set;} 

    Actor(int idA, int idS, string name)
    {
        idActor = idA;
        idSerie = idS;
        nombre = name;
    }
}