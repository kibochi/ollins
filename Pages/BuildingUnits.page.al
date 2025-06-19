page 72569003 "Building Unit List"
{
    ApplicationArea = Service;
    Caption = 'Building Unit List';
    CardPageID = "Service Item Card";
    Editable = false;
    PageType = List;
    RefreshOnActivate = true;
    SourceTable = "Service Item";
    SourceTableView = where("Service Type" = filter("Renting Units"));

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
                field("Item No."; "Item No.")
                {
                    ApplicationArea = all;
                }
                field("Item Description"; "Item Description")
                {
                    ApplicationArea = all;
                }
                field("Customer No."; "Customer No.")
                {
                    ApplicationArea = all;
                }
                field(Name; Name)
                {
                    ApplicationArea = all;
                }
            }
        }
    }
}