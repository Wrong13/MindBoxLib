using MindBoxLib.Figures;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MindBoxLib
{
    public static class FigureFactory
    {
        public static IFigure CreateCircle(double radius)
        {
            return new Circle(radius);
        }
        public static IFigure CreateTriangle(double side1,double side2, double side3)
        {
            return new Triangle(side1,side2,side3);
        }
    }
}
