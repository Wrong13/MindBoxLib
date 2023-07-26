using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MindBoxLib.Figures
{
    public class Triangle : IFigure
    {
        double side1;
        double side2;
        double side3;

        public Triangle(double side1, double side2, double side3)
        {
            this.side1 = side1;
            this.side2 = side2;
            this.side3 = side3;
        }

        public double GetArea() // По герону
        {
            double p = (side1 + side2 + side3) / 2;
            return Math.Sqrt(p * (p - side1) * (p - side2) * (p - side3));
        }

        public bool IsRightAngledTriangle() // По пифагору
        {
            return side1 * side1 + side2 * side2 == side3 * side3 ||
                side1 * side1 + side3 * side3 == side2 * side2 ||
                side2 * side2 + side3 * side3 == side1 * side1;
        }
    }
}
