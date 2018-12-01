page 50100 "Building Key List"
{

    PageType = List;
    SourceTable = "Building Key";
    CaptionML = ENU = 'Building Keys',
                NLD = 'Gebouwsleutels';
    ApplicationArea = All;
    UsageCategory = Lists;
    Editable = true;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Entry No."; "Entry No.")
                {
                    ApplicationArea = All;
                }
                field("Key Code"; "Key Code")
                {
                    ApplicationArea = All;
                }
                field("User"; "User")
                {
                    ApplicationArea = All;
                }
                field("Issue date"; "Issue date")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
