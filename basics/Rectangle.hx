package basics;

class Rectangle extends GfxElement
{
    // while pixels only can be integers, when using Flash coordinates and dimensions can be floats as well;
    // there are downsides to it like slightly blurred lines, but especially when it comes to animating objects,
    // float measurements can be advantageous;
    // TODO: provide methods to return integer measurements
    private var x : Float;
    private var y : Float;
    private var width : Float;
    private var height : Float;

    public function new() : Void
    {
        super();
        this.x = this.y = this.width = this.height = 0;
    }


    public function setOrigin(newOrigin : Point)
    {
        this.x = newOrigin.getX();
        this.y = newOrigin.getY();
    }


    public function toString() : String
    {
        var output : String = '';
        output += '[[ Rectangle: ';

        output += 'x = ' + this.x;
        output += ', y = ' + this.y;
        output += ', width = ' + this.width;
        output += ', height = ' + this.height;

        output += ' ]]';
        return(output);
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

    public function setWidth(newWidth : Float) : Void
    {
        this.width = newWidth;
    }

    public function setHeight(newHeight : Float) : Void
    {
        this.height = newHeight;
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
    public function getWidth(newWidth : Float) : Float
    {
        return this.width;
    }

    public function getHeight(newHeight : Float) : Float
    {
        return this.height;
    }
}
