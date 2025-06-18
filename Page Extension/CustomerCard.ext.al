pageextension 72568622 CustomerCardExt extends "Customer Card"
{
    layout
    {
        addafter(Blocked)
        {
            field("Customer Type"; "Customer Type")
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