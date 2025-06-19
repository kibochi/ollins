tableextension 72568901 "Item Extension" extends Item
{
    fields
    {
        field(50000; "Service Type"; Enum "Service Type")
        {

        }
        field(50001; Status; Enum "General Status")
        {
            Caption = 'Account Status';
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