table 72568575 "Students Application"
{
    // version TL2.0

    DataCaptionFields = "No.", "Full Name";
    // DrillDownPageId = "Member Application List";
    // LookupPageId = "Member Application List";

    fields
    {
        field(1; "No."; Code[10])
        {

            trigger OnValidate()
            begin
                IF "No." <> xRec."No." THEN
                    "No. Series" := '';
            end;
        }
        field(2; Surname; Code[40])
        {

            trigger OnValidate()
            begin
                Surname := UpperCase(Surname);
                //"Full Name" := GetFullName;
            end;
        }
        field(3; "First Name"; Code[150])
        {

            trigger OnValidate()
            begin
                "First Name" := UpperCase("First Name");
                // "Full Name" := GetFullName;
            end;
        }
        field(4; "Last Name"; Code[40])
        {
            Caption = 'Middle Name';
            trigger OnValidate()
            begin
                "Last Name" := UpperCase("Last Name");
                // "Full Name" := GetFullName;
            end;
        }


        field(7; "Registration No."; Code[20])
        {
        }
        field(8; Gender; Enum Gender)
        {
        }
        field(9; "Date of Birth"; Date)
        {
            trigger OnValidate()
            var
                Year: array[4] of Integer;
            begin
                if "Date of Birth" >= Today then
                    Error(StrSubstNo(InvalidRegDateErr, "Date of Birth"));

                // if not FOSAManagement.IsMemberOver18("Date of Birth") then
                //     Error(MemberNotOver18Err);

                // if FOSAManagement.IsDoBOver100("Date of Birth") then
                //     Error(MemberOver100Err);
            end;
        }
        field(10; "Date of Registration"; Date)
        {
            trigger OnValidate()
            var
                Text000: Label 'Please ensure you provide the date of registration renewal';
            begin
                IF TODAY - "Date of Registration" > 365 THEN BEGIN
                    MESSAGE(Text000);
                END;

            end;
        }

        field(11; "Phone No."; Code[30])
        {
            ExtendedDatatype = PhoneNo;

            trigger OnValidate()
            var

            begin

            end;
        }


        field(12; Picture; Media)
        {
        }
        field(13; Signature; Media)
        {
        }
        field(14; "Front ID"; Media)
        {
        }
        field(15; "Back ID"; Media)
        {
        }
        field(16; Occupation; Code[20])
        {
        }
        field(17; Status; Enum "Member Application Status")
        {
            Editable = false;
        }

        field(18; "Country of Residence"; text[100])
        {
            TableRelation = "Country Setup"."Country Name";

            trigger OnValidate()
            var
                CountrySetup: Record "Country Setup";
            begin


            end;
        }

        field(19; "E-mail"; Code[90])
        {
            ExtendedDatatype = EMail;
            trigger OnValidate()
            var

            begin
                IF "E-mail" <> '' THEN BEGIN
                    // IF NOT IsValidEmail(Rec."E-mail") THEN
                    //     ERROR(InvalidEmailErr);
                END;
            end;
        }
        field(20; "Postal Address"; Code[50])
        {
        }
        field(21; "Physical Address"; Code[50])
        {
        }

        field(22; "Created By"; Code[100])
        {
            Editable = false;
        }

        field(23; "Approved By"; Code[100])
        {
            Editable = false;
        }
        field(24; "Approved Date"; Date)
        {
            Editable = false;
        }
        field(25; "Application No."; Code[30])
        {
            Editable = false;
        }
        field(26; "Created Time"; Time)
        {
            Editable = false;
        }
        field(27; "Approved Time"; Time)
        {
            Editable = false;
        }
        field(28; "Last Modified Date"; Date)
        {
            Editable = false;
        }
        field(29; "Last Modified Time"; Time)
        {
            Editable = false;
        }
        field(30; "Last Modified By"; Code[30])
        {
            Editable = false;
        }
        field(31; "Created By Host Name"; Code[30])
        {
            Editable = false;
        }
        field(32; "Created By Host IP"; Code[20])
        {
            Editable = false;
        }
        field(33; "Created By Host MAC"; Code[30])
        {
            Editable = false;
        }


        field(34; "Approved By Host Name"; Code[30])
        {
            Editable = false;
        }
        field(35; "Approved By Host IP"; Code[30])
        {
            Editable = false;
        }
        field(50; "Approved By Host MAC"; Code[30])
        {
            Editable = false;
        }
        field(36; "No. Series"; Code[20])
        {
            TableRelation = "No. Series";
        }


        field(37; "Full Name"; Code[150])
        {
            trigger OnValidate()
            var

            begin
                "Full Name" := UpperCase("Full Name");
            end;

        }


        field(38; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            CaptionClass = '1,1,1';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
            //  Editable = false;

            trigger OnValidate()
            var
                DimValue: Record "Dimension Value";
                Error000: Label 'No member can be registered to this branch code!';
            begin
                DimValue.Reset();
                DimValue.SetRange("Global Dimension No.", 1);
                DimValue.SetRange(Code, "Global Dimension 1 Code");
                if DimValue.FindFirst() then begin
                    //if "Global Dimension 1 Code" = '01' then
                    //  Error(Error000);
                    //"Branch Name" := DimValue.Name;
                end;
            end;
        }
        field(39; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            CaptionClass = '1,1,2';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
            Editable = false;
        }


        field(40; Town; Code[50])
        {
        }


        field(41; "Picture Path"; Code[250])
        {
        }
        field(42; "Front ID Path"; Code[250])
        {
        }
        field(43; "Back ID Path"; Code[250])
        {
        }
        field(44; "Signature Path"; Code[250])
        {
        }
        Field(45; "Registration Fee Paid"; Decimal)
        {
        }





        field(46; County; Code[100])
        {
            TableRelation = County;
            Caption = 'County of Residence';
            trigger OnValidate()
            var
                County_: Record County;
            begin
                if County_.Get(County) then
                    County := County_.Description;
            end;
        }


        field(47; "Activated By"; Code[100])
        {
            Editable = false;
        }
        field(48; "Activated Date"; Date)
        {
            Editable = false;
        }
        field(49; "Activated Time"; Time)
        {
            Editable = false;
        }


        field(51; "Activated By Host IP"; Code[20])
        {
            Editable = false;
        }
        field(52; "Activated By Host MAC"; Code[30])
        {
            Editable = false;
        }
        field(53; "Approver Comments"; Code[100])
        { }
        field(54; "Activator Comments"; Code[100])
        { }
        // field(134; "Registration Fee Payment Mode"; Enum "Fee Payment Mode")
        // { }



        field(55; "Approver Reset Comments"; Text[100])
        {

        }
        field(56; "Activator Reset Comments"; Text[100])
        {

        }
        field(57; "Nationality"; Text[30])
        {
            TableRelation = "Country Setup"."Nationality";

        }
        field(58; "Created Date"; Date)
        {
        }

        field(59; "Activated By Host Name"; Code[30])
        {
            Editable = false;
        }







    }

    keys
    {
        key(Key1; "No.")
        {
        }
        key(Key2; "Full Name")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", "Full Name", "Global Dimension 1 Code")
        {
        }
    }

    trigger OnInsert()
    begin



        IF "No." = '' THEN BEGIN
            //"No." := NoSeries.GetNextNo(CBSSetup."MA Individual Nos.", Today, true);
        END;








        "Created By" := GetUser.GetUser();
        "Created By Host IP" := HostIP;
        "Created By Host MAC" := HostMac;
        "Created By Host Name" := HostName;
        "Created Date" := TODAY;
        "Created Time" := TIME;



    end;

    trigger OnModify()
    begin


        "Last Modified Date" := TODAY;
        "Last Modified Time" := TIME;
        "Last Modified By" := GetUser.GetUser();
    end;

    var

        GetUser: Codeunit "Get User";
        NoSeries: Codeunit "No. Series";
        HostMac: Code[50];
        HostName: Code[50];
        HostIP: Code[50];
        RecRef: RecordRef;
        XRecRef: RecordRef;
        UserSetup: Record "User Setup";
        "Trigger": Option OnCreate,OnModify;

        Text001: Label 'Identification Number has been used before for %1.Kindly check your No.';
        UserNotSetupErr: Label 'User does not exist in user setup. Kindly contact system admin!';







    local procedure CheckMembersExist()
    begin
    end;



    procedure IsNumeric(Variant: Code[20]): Integer
    var
        j: Integer;
    begin
        FOR i := 1 TO STRLEN(Variant) DO BEGIN
            IF NOT (Variant[i] IN ['0' .. '9', '+']) THEN
                j += 1;
        END;
        EXIT(j);
    end;



    local procedure CheckNextofKin()
    var
        NextofKin: Record "Next of Kin Application";
        Error000: label 'Application must contain a Next of Kin!';
        Error001: Label 'Name must have a value in Next of Kin!';
        Error002: Label 'First Name must have a value in Next of Kin!';
        Error003: Label 'Relationship must have a value for Next of Kin %1!';
        Error004: Label 'National ID must have a value for Next of Kin %1!';
        Error005: Label 'Phone No. must have a value for Next of Kin %1!';
        Error006: Label 'Surname must have a value for Next of Kin %1!';
    begin
        NextofKin.Reset();
        NextofKin.SetRange("Application No.", Rec."No.");
        if NextofKin.FindSet() then begin
            repeat
                if NextofKin."Full Name" = '' then
                    Error(Error001);
                if NextofKin."First Name" = '' then
                    Error(Error002);
                if NextofKin."Sur Name" = '' then
                    Error(StrSubstNo(Error006, NextofKin."Full Name"));
                // if NextofKin."National ID/Passport" = '' then
                // Error(StrSubstNo(Error004, NextofKin."Full Name"));
                if NextofKin."Phone No." = '' then
                    Error(StrSubstNo(Error005, NextofKin."Full Name"));
            /*  if NextofKin."Date of Birth" = 0D then
                 Error(Error002); */
            until NextofKin.Next() = 0;
        end else
            Error(Error000);
    end;






    var
        i: Integer;

        NotContainCharErr: Label 'Phone No. cannot contain characters.';
        IDNotContainCharErr: Label 'National ID cannot contain characters.';
        ExceedCharErr: Label 'Phone No. cannot exceed %1 characters.';
        NotLessThanCharErr: Label 'Phone No. cannot be less than %1 characters.';

        PhoneNoExists: Label 'Phone No. provided is in use by another member!';
        InvalidEmailErr: Label 'Email Address is not valid';
        MemberNotOver18Err: Label 'Member must be 18 years and above.';
        MemberOver100Err: Label 'Member cannot be more than 100 years';
        InvalidRegDateErr: Label '%1 cannot be TODAY or future date';

}

