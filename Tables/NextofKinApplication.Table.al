table 72568689 "Next of Kin Application"
{
    fields
    {
        field(1; "Application No."; Code[20])
        {
        }
        field(2; "Line No."; Integer)
        {
            AutoIncrement = true;
        }
        field(3; "Full Name"; Code[100])
        {
        }
        field(4; Relationship; Enum "Nominee Relationship")
        {
        }
        field(5; "National ID/Passport"; Text[30])
        {
            trigger OnValidate()
            var
                Error000: Label 'ID Number cannot contain characters!';
                Error001: Label 'ID number must be less than 9 characters';
                Error002: Label 'ID number must be greater than 4 characters';
            begin
                if DelChr("National ID/Passport", '=', '1234567890') <> '' then
                    Error(Error000);
                //FOSAManagement.validateIdNo("National ID/Passport");

                //VerifyIfIDExistsForApprovedMember();

            end;
        }
        field(6; "Date of Birth"; Date)
        {
            trigger OnValidate()
            var
                Year: array[4] of Integer;
            begin
                // if FOSAManagement.IsDoBOver100("Date of Birth") then
                //     Error(MemberOver100Err);

                // if not FOSAManagement.IsMemberOver18("Date of Birth") then
                //     Error(MemberNotOver18Err);
            end;
        }
        field(7; "Postal Address"; Text[50])
        {
        }
        field(8; "Phone No."; Text[30])
        {
            ExtendedDatatype = PhoneNo;

            trigger OnValidate()
            begin
                IF Rec."Phone No." <> '' THEN BEGIN
                    if not Diaspora then begin
                        // FOSAManagement.IsNumeric("Phone No.");
                        // FOSAManagement.ValidatePhoneNo("Phone No.");
                    end;

                END;
            end;
        }
        field(9; "E-Mail"; Text[70])
        {
            ExtendedDatatype = EMail;
            trigger OnValidate()
            var

            begin
                IF "E-mail" <> '' THEN BEGIN
                    //FOSAManagement.IsValidEmail("E-Mail");
                END;
            end;
        }
        field(10; Contact; Boolean)
        { }
        field(11; Description; Text[50])
        { }
        field(13; "First Name"; Code[50])
        {
            trigger OnValidate()
            begin
                GetFullName();
            end;
        }
        field(14; "Last Name"; Code[50])
        {
            Caption = 'Middle Name';
            trigger OnValidate()
            begin
                GetFullName();
            end;
        }
        field(15; "Sur Name"; Code[50])
        {
            trigger OnValidate()
            begin
                GetFullName();
            end;
        }
        field(60001; Diaspora; Boolean)
        {

        }
    }

    keys
    {
        key(Key1; "Application No.", "Line No.")
        {
            Clustered = true;
        }


    }


    var
        MemberApplication: Record "Students Application";

        NotContainCharErr: Label 'Phone No. cannot contain characters.';
        ExceedCharErr: Label 'Phone No. cannot exceed %1 characters.';
        NotLessThanCharErr: Label 'Phone No. cannot be less than %1 characters.';
        MemberNotOver18Err: Label 'Member must be 18 years and above.';
        MemberOver100Err: Label 'Nominee cannot be older than 100 years';
        InvalidRegDateErr: Label '%1 cannot be TODAY or future date';
        InvalidEmailErr: Label 'Email Address is not valid';
        NextofKinApplication: Record "Next of Kin Application";

    local procedure GetFullName(): Code[100]
    begin
        "Full Name" := UpperCase("First Name") + ' ' + UpperCase("Last Name") + ' ' + UpperCase("Sur Name");
    end;

    local procedure IsValidEmail(EmailAddress: Code[20]): Boolean
    var
        Email: Code[20];
        Regex: DotNet Regex;
        RegexOptions: DotNet RegexOptions;
        Pattern: Text[50];
        Result: Boolean;
    begin
        Pattern := '^[A-Z0-9._%+-]+@(?:[A-Z0-9-]+\.)+[A-Z]{2,4}$';

        RegexOptions := 0;
        RegexOptions := RegexOptions.Parse(RegexOptions.GetType(), 'IgnoreCase');

        Result := Regex.IsMatch(EmailAddress, Pattern, RegexOptions);

        EXIT(Result);
    end;

    trigger OnInsert()
    var
        Error000: Label 'Member can only register 1 next of kin!';
    begin
        NextofKinApplication.Reset();
        NextofKinApplication.SetRange("Application No.", Rec."Application No.");
        if NextofKinApplication.Count > 1 then
            Error(Error000);
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



    local procedure IsMemberOver18(Variant: Date): Boolean
    var
        Year: array[4] of Integer;
    begin
        Year[1] := DATE2DMY(Variant, 3);
        Year[2] := DATE2DMY(TODAY, 3);
        IF (Year[2] - Year[1]) >= 18 THEN
            EXIT(TRUE)
        ELSE
            EXIT(FALSE);
    end;

}