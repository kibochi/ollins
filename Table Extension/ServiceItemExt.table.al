tableextension 72568903 "Service Item Extension" extends "Service Item"
{
    fields
    {
        field(50000; "Service Type"; Enum "Service Type")
        {

        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }
    trigger OnInsert()
    begin
        "Service Type" := "Service Type"::"Renting Units";
    end;

    var
        myInt: Integer;
}