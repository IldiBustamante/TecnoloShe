using System;


namespace Entidades
{
      public class Alumno
    {
        //Aca voy a crear atributos 

        private int dni;
        private string apellido;
        private string nombre;

        //Hay propiedades explicitas y recordar que la minuscula es para privado. 

        public int DNI
        {
            get { return dni; }
            set { dni = value; }
        }

        public string Apellido
        {
            get { return apellido; }
            set { apellido = value; }
        }

        //propiedad auto implementada(atributo aplicado directamente dentro)

        public string Nombre { get ; set; }
    }
}
