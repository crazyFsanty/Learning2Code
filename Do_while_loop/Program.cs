using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tables
{
    class Program
    {
        static void Main(string[] args)
        {
            string usrinpt = " ";
            do
            {
            int x, z;
            int y = 1;
            Console.Write("Which Table You want: ");
            x = int.Parse(Console.ReadLine());
            while(y <= 10)
            {
                z = x * y;  
                Console.WriteLine(x + "X" + y + "=" + z);
                y = y + 1;
            }  
                    Console.WriteLine("Do you want to continue press: Y or N");
                    do
                    {
                    usrinpt = Console.ReadLine().ToUpper();
                    if (usrinpt != "Y" && usrinpt != "N")
                    {
                        Console.WriteLine("Invalid input please type Y or N");
                    }
                } while (usrinpt != "Y" && usrinpt != "N");
            } while (usrinpt == "Y");      
        }
    }
}
