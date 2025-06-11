page 72568576 "New Student Application"
{
    ApplicationArea = All;
    Caption = 'New Student Application';
    PageType = List;
    SourceTable = "Students Application";
    UsageCategory = Lists;
    SourceTableView = where(Status=filter(New));
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Application No."; Rec."Application No.")
                {
                    ToolTip = 'Specifies the value of the Application No. field.', Comment = '%';
                }
                field("First Name"; Rec."First Name")
                {
                    ToolTip = 'Specifies the value of the First Name field.', Comment = '%';
                }
                field("Last Name"; Rec."Last Name")
                {
                    ToolTip = 'Specifies the value of the Middle Name field.', Comment = '%';
                }
                field(Surname; Rec.Surname)
                {
                    ToolTip = 'Specifies the value of the Surname field.', Comment = '%';
                }
                field("Created Date"; Rec."Created Date")
                {
                    ToolTip = 'Specifies the value of the Created Date field.', Comment = '%';
                }
            }
        }
    }
}
