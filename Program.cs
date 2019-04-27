using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EjemploSwitch
{
    class Program
    {
        static void Main(string[] args)
        {
            /* Ingresar dos valores 
             * primer valor 1, 2 o 3, 1 es Responsable inscripto
             * 2 consumidor final 
            * 3 exento 
            * Segundo valor : importe bruto
            * mostrar el total que si es 1 se suma el iva 21%
            * 2 18%
            * 3 0% */

            // declaro mis variables

            int intCodigoIva;
            double dblImporte;
            double dblTotal;
            const double IVA21 = 0.21;
            const double IVA18 = 0.18;

            // Pido al usuario que ingrese los dos valores

            Console.Write("Ingrese codigo de Iva: ");
            intCodigoIva = Convert.ToInt32(Console.ReadLine());
            Console.Write("Ingrese el importe:");
            dblImporte=Convert.ToDouble(Console.ReadLine());

            //ingreso el uso de switch

            switch (intCodigoIva)

            {
                
                case 1:
                    dblTotal = dblImporte + dblImporte * IVA21;
                    break;
                case 2:
                    dblTotal = dblImporte + dblImporte * IVA18;
                    break;
                case 3:
                    dblTotal = dblImporte;
                    break;
                default:
                    dblTotal = dblImporte;
                    break;

            }

            Console.Write("Total a pagar {0}", dblTotal);

            //pauso la consola

            Console.ReadKey();

           

        }
    }
}
