using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Prueba
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] alumnas = new string[3];
            alumnas[0] = "Nazarena";
            alumnas[1] = "Flor";
            alumnas[2] = "Ildi";

            for (int i = 0; i < 3; i++)
            {
                Console.WriteLine(alumnas[i]);
            }

            string[,] alumnas2 = new string[5, 2];

            alumnas2[0, 0] = "Naza";
            alumnas2[0, 1] = "Lopez";

            alumnas2[1, 0] = "Flor";
            alumnas2[1, 1] = "Fernandez";

            alumnas2[2, 0] = "Ildi";
            alumnas2[2, 1] = "Bustamante";

            for (int i = 0; i < 3; i++)
            {
                Console.WriteLine("Nombre:{0} Apellido:{1}", alumnas2[i,0],alumnas2[i,1] );
         
            }

            Console.ReadKey();
        }
        
    }
    
}
