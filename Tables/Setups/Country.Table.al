table 72568754 "Country Setup"
{

    fields
    {
        field(1; "Country Code"; Code[10])
        {
        }
        field(2; "Country Name"; CODE[60])
        {
        }
        field(3; "Nationality"; Code[60])
        {
        }
    }

    keys
    {
        key(Key1; "Country Name", Nationality)
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Country Code", "Country Name", "Nationality")
        {
        }
    }
}

