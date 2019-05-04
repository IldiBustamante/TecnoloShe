using System;


namespace PracticaVector
{
    class Program
    {
        static void Main(string[] args)
        {
            //Voy a declarar un vector entero de cinco elementos 

            int[] vecNotas = new int[5];
            string[] vecNombres = { "Caro", "Flor", "Dani", "Nicky", "Ildi" };

            //(tambien puedo asi ("Caro","Flor","Dani","Nicky","Ildi");


            //ciclo para recibir las 5 notas

            for (int i = 0; i < vecNotas.Length; i++)
            {
                Console.Write("Ingrese Nota {0}: ", vecNombres[i]);
                vecNotas[i] = Convert.ToInt32(Console.ReadLine());

            }

            /* voy a mostrar las notas que recibi 

            for (int i = 0; i < vecNotas.Length; i++)
            {
                Console.Write("Nota {0} = {1} : ", i + 1, vecNotas[i]);
            }
            */

            foreach (var Nota in vecNotas)
            {
                Console.WriteLine(Nota);
            }

            //aca llamo a mi metodo para mostrar al mayor

            int intNotaMayor = TraerMayor(vecNotas);
            Console.WriteLine("Nota mayor {0}", vecNotas[intNotaMayor]);
            Console.WriteLine("Alumnas");

            foreach (var item in Abanderadas(vecNombres, vecNotas, vecNotas[intNotaMayor]))
            {
                Console.WriteLine(item);
            }
            

            //muestro mi nota mayor

            //Console.WriteLine("La nota mayor es : {0}", intNotaMayor);

            //llamo a mi metodo para mostrar el menor 

            //int intNotamenor = TraerMenor(vecNotas);

            //muestro mi nota menor 

            //Console.WriteLine("La nota menor es : {0}", intNotamenor);

            //pausa en la consola

            Console.ReadKey();
        }

        //voy a usar una funcion que devuelva el elemento mayor de  mi vector y puedo llamarla en mi codigo

        static int TraerMayor(int[] vector)
        {
            int intMayor = 0;

            for (int i = 1; i < vector.Length; i++)
            {
                if (vector[i] > vector[intMayor])
                {
                    intMayor = i;

                }
            }

            return intMayor;

            /*
             * static int TraerMayor (int[] vector)
            {
                int intMayor = vector[0];

                for (int i = 1; i < vector.Length; i++)
                {
                    if (vector[i]> intMayor)
                    {
                        intMayor = vector[i];

                    }
                }

                return intMayor;

            /*
            static int TraerMenor (int[]vector)
            {
                int intMenor = vector[0];

                for (int i = 1; i < vector.Length; i++)
                {
                    if (vector[i]<intMenor)
                    {
                        intMenor = vector[i];
                    }
                }

                return intMenor;

                */


        }

        //agrego esto para usar cuando tengo dos numeros iguales

        static string[] Abanderadas(string [] nombres,int [] notas, int mayor)
        {
            string[] vecAbanderadas = new string[notas.Length];
            int intIndiceAbanderadas = 0;

            for (int i = 0; i < notas.Length; i++)
            {
                if (mayor==notas[i])
                {
                    vecAbanderadas[intIndiceAbanderadas] = nombres[i];
                    intIndiceAbanderadas++;
                }
            }


            return vecAbanderadas;
        }


    }

}
