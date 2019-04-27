using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EjemploIF
{
    class Program
    {
        static void Main(string[] args)
        {
            /*Dados 3 numeros enteros
             * mostrar en consola el numero mayor
             */

             //declaro mis variables
            int intNro1;
            int intNro2;
            int intNro3;

            //pido al usuario los numeros 
            Console.WriteLine("inserte el numero 1: ");
            intNro1 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("inserte el numero 2: ");
            intNro2 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("inserte el numero 3: ");
            intNro3 = Convert.ToInt32(Console.ReadLine());

            // voy a empezar mi comparación
            //en el caso del 2 mas grande

            if(intNro1<=intNro2 && intNro3<=intNro2)
            {
                Console.WriteLine("el numero mas grande es el {0} " , intNro2);
            }
            //en el caso del 1 mas grande

            if(intNro2<=intNro1 && intNro3<=intNro1)
            {
                Console.WriteLine("el numero mas grande es el {0}",intNro1);

            }
            //en el caso de 3 mas grande

            if(intNro1<=intNro3 && intNro2<=intNro3)
            {
                Console.WriteLine("el numero mas grande es el {0}",intNro3);

            }
            //pauso la consola

            Console.ReadKey();

        }
    }
}