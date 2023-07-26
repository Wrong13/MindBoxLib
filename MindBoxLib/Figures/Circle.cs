namespace MindBoxLib.Figures
{
    public class Circle : IFigure
    {
        double radius;

        public Circle(double radius)
        {
            this.radius = radius;
        }
        public double GetArea()
        {
            return Math.PI * radius * radius;
        }
        public bool IsRightAngledTriangle()
        {
            return false;
        }
    }
}