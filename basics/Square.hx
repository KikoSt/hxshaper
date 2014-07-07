package basics;

class Square extends GfxElement
{
    // while pixels only can be integers, when using Flash coordinates and dimensions can be floats as well;
    // there are downsides to it like slightly blurred lines, but especially when it comes to animating objects,
    // float measurements can be advantageous;
    // TODO: provide methods to return integer measurements
    private var x : Float;
    private var y : Float;
    private var sidelength : Float;

    public function new() : Void
    {
        super();
        this.x = this.y = this.sidelength = 0;
    }


    public function setOrigin(newOrigin : Point) : Void
    {
        this.x = newOrigin.getX();
        this.y = newOrigin.getY();
    }


    /* Setters */
    public function setX(newX : Float) : Void
    {
        this.x = newX;
    }

    public function setY(newY : Float) : Void
    {
        this.y = newY;
    }

    public function setSidelenght(newSidelength : Float) : Void
    {
        this.sidelength = newSidelength;
    }


    public function toString() : String
    {
        var output : String = '';
        output += '[[ Square: ';

        output += 'x = ' + this.x;
        output += ', y = ' + this.y;
        output += ', sidelength = ' + this.sidelength;

        output += ' ]]';
        return(output);
    }


    /* Getters */
    public function getX() : Float
    {
        return this.x;
    }

    public function getY() : Float
    {
        return this.y;
    }

    public function getSidelenght(newSidelength : Float) : Float
    {
        return this.sidelength;
    }
}
