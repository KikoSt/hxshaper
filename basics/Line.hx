package basics;

class Line extends GfxElement
{
    private var points : haxe.ds.GenericStack<Point>;

    public function new() : Void
    {
        super();
        this.points = new haxe.ds.GenericStack();
    }

    public function addPoint(point) : Void
    {
        this.points.add(point);
    }

    public function toString() : String
    {
        var output : String = '';
        output += '[[ Line: ';
        for(cPoint in this.points) {
            output += cPoint;
            if(true) {
                output += ' --> ';
            }
        }
        output += ' ]]';
        return(output);
    }

    public function getPoints() : haxe.ds.GenericStack<Point>
    {
        return this.points;
    }
}
