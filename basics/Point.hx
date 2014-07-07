package basics;

class Point extends GfxElement
{
    private var x : Int;
    private var y : Int;

    public function new(x,y)
    {
        super();
        this.x = x;
        this.y = y;
    }

    public function toString() : String
    {
        return "Point(" + x + "/" + y + ")";
    }

    public function setX(newX) : Void
    {
        this.x = newX;
    }

    public function setY(newY) : Void
    {
        this.y = newY;
    }

    public function getX() : Int
    {
        return this.x;
    }

    public function getY() : Int
    {
        return this.y;
    }
}
