tableextension 72568900 "Customer Extension" extends Customer
{
    fields
    {
        field(72568578; Status; Enum "General Status")
        {
            Caption = 'Account Status';
        }
        field(72568579; "Customer Type"; Enum "Customer Category")
        {
            Caption = 'Customer Type';

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
        "Customer Type" := "Customer Type"::"Tenant Accounts";
    end;

    var
        myInt: Integer;
}