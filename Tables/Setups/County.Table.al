table 72568627 County
{
    fields
    {
        field(1; Code; Code[10])
        {
        }
        field(2; Description; Code[100])
        { }

    }

    keys
    {
        key(Key1; Code)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}