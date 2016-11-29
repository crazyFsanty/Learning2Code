using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConstructorQuestionSelfTry
{
    //class Circle
    class Circle
    {
        //state or data
        double pi,r;
        //Construct type=Parameterised
        public Circle(double Pi,double R)
        {
            pi = Pi;
            r = R;
        }
        //Method 1
        public void AreaOfCircle() 
        {
            Console.WriteLine("Area Of Circle: "+(pi*r*r));
        }
        //Method 2
        public void PerimeterOfcircle() 
        {
            Console.WriteLine("Perimeter of circle: "+(2*pi*r));
        }
       
    }
    //Main Program 
    class Program
    {
        static void Main(string[] args)
        {
            // creating a class instance
            Circle c1 = new Circle(3.14, 5);
            c1.AreaOfCircle();
            c1.PerimeterOfcircle();
           
        }
    }
}
