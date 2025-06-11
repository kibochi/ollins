page 72568575 "Student Application Card"
{
    ApplicationArea = All;
    Caption = 'Student Application Card';
    PageType = Card;
    SourceTable = "Students Application";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Application No."; Rec."Application No.")
                {
                    ToolTip = 'Specifies the value of the Application No. field.', Comment = '%';
                }
                field("First Name"; Rec."First Name")
                {
                    ToolTip = 'Specifies the value of the First Name field.', Comment = '%';
                }
                field(Surname; Rec.Surname)
                {
                    ToolTip = 'Specifies the value of the Surname field.', Comment = '%';
                }
                field("Last Name"; Rec."Last Name")
                {
                    ToolTip = 'Specifies the value of the Middle Name field.', Comment = '%';
                }
                field("Full Name"; Rec."Full Name")
                {
                    ToolTip = 'Specifies the value of the Full Name field.', Comment = '%';
                }
                field(Gender; Rec.Gender)
                {
                    ToolTip = 'Specifies the value of the Gender field.', Comment = '%';
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ToolTip = 'Specifies the value of the Date of Birth field.', Comment = '%';
                }
            }
            group(Communications)
            {
                Caption = 'Communications';

                field("Country of Residence"; Rec."Country of Residence")
                {
                    ToolTip = 'Specifies the value of the Country of Residence field.', Comment = '%';
                }
                field(County; Rec.County)
                {
                    ToolTip = 'Specifies the value of the County of Residence field.', Comment = '%';
                }
                field("E-mail"; Rec."E-mail")
                {
                    ToolTip = 'Specifies the value of the E-mail field.', Comment = '%';
                }
                field("Postal Address"; Rec."Postal Address")
                {
                    ToolTip = 'Specifies the value of the Postal Address field.', Comment = '%';
                }
                field(Town; Rec.Town)
                {
                    ToolTip = 'Specifies the value of the Town field.', Comment = '%';
                }
            }
            group(Audit)
            {
                Caption = 'Audit';

                field("Created Date"; Rec."Created Date")
                {
                    ToolTip = 'Specifies the value of the Created Date field.', Comment = '%';
                }
                field("Created Time"; Rec."Created Time")
                {
                    ToolTip = 'Specifies the value of the Created Time field.', Comment = '%';
                }
                field("Created By"; Rec."Created By")
                {
                    ToolTip = 'Specifies the value of the Created By field.', Comment = '%';
                }
            }
        }
    }
}
