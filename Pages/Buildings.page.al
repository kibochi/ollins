page 72569002 "Buildings"
{
    ;
    ApplicationArea = All;
    Caption = 'Available Buildings';
    CardPageID = "Item Card";
    Editable = false;
    PageType = List;
    QueryCategory = 'Buildings';
    SourceTable = Item;
    SourceTableView = where("Service Type" = filter("Renting Units"), Status = filter(Active));
    UsageCategory = Lists;
    layout
    {
        area(Content)
        {
            repeater(General)
            {

                field("No."; "No.")
                {
                    ApplicationArea = all;
                }
                field(Description; Description)
                {
                    ApplicationArea = all;
                }
                field(Inventory; Inventory)
                {
                    ApplicationArea = all;
                }
                field("Base Unit of Measure"; "Base Unit of Measure")
                {
                    ApplicationArea = all;
                }
                field("Routing No."; "Routing No.")
                {
                    ApplicationArea = all;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}