using System;
namespace SimpleCalc
{
    class Program
    {
        static void Main(string[] args)
        {
            //Declaration//
            double x, y=0;
            int z;
            double Answer=0;
            char a;
            here:
            //Welcome & First digit Input//
            Console.Write("************BASIC CALCULATOR*************\n");
            Console.Write("\nInput first Number:");
            x=Convert.ToDouble(Console.ReadLine());

            //Operator Selector//
            Console.Write("\nChose the operation:");
            Console.WriteLine("\n1:Add\n2:Sub\n3:Mul\n4:Div\n");
            z = Convert.ToInt16(Console.ReadLine());
           
            switch(z)
            {
                case 1:
                    Console.Write("\nInput 2nd No:\n"+x+" + ");
                y = Convert.ToDouble(Console.ReadLine());
                    Answer = x + y; break;
                case 2:
                    Console.Write("\nInput 2nd No:\n" + x + " - ");
                y = Convert.ToDouble(Console.ReadLine());
                    Answer = x - y; break;
                case 3:
                    Console.Write("\nInput 2nd No:\n" + x + " X ");
                y = Convert.ToDouble(Console.ReadLine());
                    Answer = x * y; break;
                case 4:
                    Console.Write("\nInput 2nd No:\n" + x + " / ");
                y = Convert.ToDouble(Console.ReadLine());
                    Answer = x / y; break;
                default:
                    Console.WriteLine("Sorry Wrong Input");
                    break;
            }
            Console.WriteLine("\nAnswer="+Answer);
            Console.WriteLine("\n*********Thank You**************\n");
            Console.WriteLine("Do you Want to continue: Y or N");
            a = char.Parse(Console.ReadLine().ToUpper());
            if (a == 'Y')
            {
                goto here;
            }
        }

        
    }
}
