package extended;
import basics.*;

class GfxContainer
{
//  private var elements : Array<Dynamic>;
    private var elements : haxe.ds.GenericStack<GfxElement>;

    public function new() : Void
    {
        this.elements = new haxe.ds.GenericStack();
    }

    public function toString() : String
    {
        var output : String = '';
        for(elem in this.elements) {
            output += '\n' + elem;
        }
        return output;
    }

    public function addElement(element : GfxElement) : Void
    {
        this.elements.add(element);
    }
}
