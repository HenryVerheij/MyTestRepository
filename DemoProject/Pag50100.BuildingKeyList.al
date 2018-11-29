page 50100 "Building Key List"
{

    PageType = List;
    SourceTable = "Building Key";
    Caption = 'Building Key List';
    ApplicationArea = All;
    UsageCategory = Lists;

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
