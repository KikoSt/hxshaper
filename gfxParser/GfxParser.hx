package gfxParser;

import gfxData.*;

class GfxParser
{
    private var dataSource : GfxDataSource;

    public function new(?sourceAddress : String) : Void
    {
        if(sourceAddress != null) {
            this.dataSource = new GfxDataSourceFile(sourceAddress);
        }
    }

    public function toString() : String
    {
        var output : String = '\n\n';
        output += ('DEFS: ' + this.dataSource.getDefs());
        output += '\n\n';
        output += ('GRAPHICS: ' + this.dataSource.getGraphic());
        output += '\n\n';
     //   return(this.dataSource.toString());
        return(output);
    }


}
