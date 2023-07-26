using MindBoxLib;
using MindBoxLib.Figures;

namespace TestLib
{
    public class UnitTest1
    {
        [Fact]
        public void TestCircle1()
        {
            IFigure circle = FigureFactory.CreateCircle(5);
            Assert.Equal(78.539816339744831, circle.GetArea());
        }
        [Fact]
        public void TestTriangleArea()
        {
            IFigure triangle = FigureFactory.CreateTriangle(3, 4, 5);
            Assert.Equal(6, triangle.GetArea(), 0.00001);
        }
        [Fact]
        public void TestNonRightAngledTriangle()
        {
            IFigure triangle = FigureFactory.CreateTriangle(3, 3, 3);
            Assert.False(triangle.IsRightAngledTriangle());
        }
        [Fact]
        public void TestRightAngledTriangle()
        {
            IFigure rightTriangle = FigureFactory.CreateTriangle(3, 4, 5);
            Assert.True(rightTriangle.IsRightAngledTriangle());
        }
    }
}