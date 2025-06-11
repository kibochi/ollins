page 72571881 "Student Center"
{
    Caption = 'Student Role Center';
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {
            group(Control1900724808)
            {
                ShowCaption = false;

            }

        }
    }

    actions
    {
        area(reporting)
        {

        }


        area(processing)
        {
            separator(Tasks)
            {
                Caption = 'Tasks';
                IsHeader = true;
            }



            group("&Change Setup")
            {



#if not CLEAN20

#endif

            }



        }
    }
}

