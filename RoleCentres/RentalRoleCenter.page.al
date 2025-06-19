page 72571884 "Rentals Role Centre"
{

    PageType = RoleCenter;
    Caption = 'Rentals Role Centre';
    layout

    {
        area(RoleCenter)
        {
            group(Group1)
            {
                part(ApprovalsActivities; "Approvals Activities")
                {
                    ApplicationArea = Suite;
                }

            }

        }

    }

    actions

    {

        area(Sections)

        {

            group(Tenants)

            {
                action("Active Tenants")

                {
                    RunObject = Page "Active Tenants";
                    ApplicationArea = All;

                }
                action("Inactive Tenants")

                {
                    RunObject = Page "Inactive Tenants";
                    ApplicationArea = All;

                }
            }
            group(Buildings)
            {
                action("Company Buildings")

                {
                    RunObject = Page "Buildings";
                    ApplicationArea = All;

                }
                action("Company Building Units")

                {
                    RunObject = Page "Building Unit List";
                    ApplicationArea = All;

                }
            }
            group("Tenant Contracts")
            {
                action("Contracts")

                {
                    RunObject = Page "Service Contract";
                    ApplicationArea = All;

                }
            }
            Group("Staff Self-Care")
            {

            }


        }

        area(Embedding)

        {


        }

        area(Processing)

        {



        }

        area(Creation)

        {



        }

        area(Reporting)

        {



        }

    }

}



// Creates a profile that uses the Role Center

profile RentalsRoleCentre
{

    ProfileDescription = 'Rentals Role Center';
    RoleCenter = "Rentals Role Centre";
    Caption = 'Rentals Role Center';
}