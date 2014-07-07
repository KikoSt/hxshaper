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
        return(this.dataSource.toString());
    }


}
