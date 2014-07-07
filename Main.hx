import basics.*;
import extended.*;
import gfxParser.*;
import haxe.*;

class Main
{
    public static function main()
    {
        var container : GfxContainer = new GfxContainer();
        var parser : GfxParser = new GfxParser('dummy.svg');

        trace('Parser: ');
        trace(parser);

        var line : Line = new Line();

        var myRectangle : Rectangle = new Rectangle();
        myRectangle.setX(2);
        myRectangle.setY(2);

        var mySquare : Square = new Square();

        for(i in 0...10) {
            var myPoint : Point = new Point(0,0);
            var newX : Float = Math.ceil(Math.random() * 10);
            var newY : Float = Math.ceil(Math.random() * 10);
            myPoint.setX(cast(newX, Int));
            myPoint.setY(cast(newY, Int));
            myRectangle.setOrigin(myPoint);
            line.addPoint(myPoint);
        }
        container.addElement(myRectangle);
        container.addElement(line);
        container.addElement(mySquare);
        trace(container);
    }

}
