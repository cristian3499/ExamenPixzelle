using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ExamenPixzelle
{
    /*Conexion a la base de datos y recuperacion de datos*/
    public class BLExamen
    {
        examenPixzelleEntities model = new examenPixzelleEntities(); /*Intanciadno el Framework*/
        /*Obtenienod los datos*/
        public List<Videojuegos> GetVideojuegos{

            get{
                return model.Videojuegos.ToList();
            }
        }
    }
}