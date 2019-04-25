using System;

namespace ConsoleClse2
{
    class Program
    {
        static void Main(string[] args)
        {
            //Punto de inicio de programa

             Console.WriteLine("Hola Mundo");

            //Pausa en la consola 

            Console.ReadKey();

            //Definir una variable,asignar un nombre,mostrar valor en consola

            //Defino variable

            string strNombre;
            int intNota; 

            //Solicito valores al usuario

            Console.Write("Ingrese su nombre: ");
            strNombre = Console.ReadLine();
            Console.Write("Ingrese su nota de \n entre 1 y 10 : "); // la \n es para un salto de linea
            intNota = Convert.ToInt32(Console.ReadLine()); // convierte de int a string

            //Muestro con la condicion si es aprobado o no, estructura de if

            string strCalificacion= "Desaprobado";

            if (intNota>=4)
            {
                //Salida cuando difiere del default

                strCalificacion = "Aprobaste";

            }

            /* else ESTO LO USO PARA CUANDO USO EL ELSE
            {
               Salida cuando NO cumple condicion
                strCalificacion = "Desaprobaste";
            }*/ 


            //Muestro en pantalla lo que toma de valor la variable

            Console.WriteLine("Hola {0} ¿como andas? Nota {1} ",strNombre,strCalificacion);

            //Pausa en la consola

            Console.ReadKey();

        }
    }
}
