using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MindBoxLib.Figures
{
    public interface IFigure
    {
        double GetArea();
        bool IsRightAngledTriangle();
    }

}
