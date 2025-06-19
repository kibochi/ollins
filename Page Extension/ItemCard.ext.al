pageextension 72568623 ItemCardExt extends "Item Card"
{
    layout
    {
        addafter("Base Unit of Measure")
        {
            field("Service Type"; "Service Type")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the type of customer.';
            }
            field(Status; Status)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the status of the customer account.';
            }
        }
    }
}