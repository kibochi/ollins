page 72569001 "Inactive Tenants"
{
    ApplicationArea = All;
    Caption = 'Active Tenants';
    CardPageID = "Customer Card";
    Editable = false;
    PageType = List;
    QueryCategory = 'Active Tenants';
    SourceTable = Customer;
    SourceTableView = where("Customer Type" = filter("Tenant Accounts"), Status = filter(Closed));
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
                field(Name; Name)
                {
                    ApplicationArea = all;
                }
                field("Phone No."; "Phone No.")
                {
                    ApplicationArea = all;
                }
                field(Balance; Balance)
                {
                    ApplicationArea = all;
                }
                field("Balance (LCY)"; "Balance (LCY)")
                {
                    ApplicationArea = all;
                }
            }
        }
    }
}
