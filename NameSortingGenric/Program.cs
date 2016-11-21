using System;
namespace NameSorting
{
    class Program
    {
        static void Main(string[] args)
        {
            int i,j;
            Console.Write("How many names You want to enter: ");
            j = Convert.ToInt16(Console.ReadLine());
            Console.WriteLine("\nPlease Enter"+" "+j+" "+"Names");
            string[] nam = new string[j];
            for (i=0; i<j; i++)
            {
                Console.Write("\nplease enter"+" "+(i+1)+" "+"Name: ");
                nam[i] = Convert.ToString(Console.ReadLine());      
            }
            Console.WriteLine("\n--------Sorted Names----------\n");
            Array.Sort(nam);
            nam[j].ToUpper();
            foreach (string str in nam)
            {
                Console.WriteLine(str + "\n");
            }
        }
    }
}
