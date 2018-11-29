table 50100 "Building Key"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            CaptionML = ENU = 'Entry No.',
                        NLD = 'Volgnummer';
            DataClassification = ToBeClassified;

        }
        field(2; "Key Code"; Code[20])
        {
            CaptionML = ENU = 'Key Code',
                        NLD = 'Sleutel code';
            DataClassification = ToBeClassified;
        }
        field(3; User; Code[20])
        {
            CaptionML = ENU = 'User',
                        NLD = 'Gebruiker';
            DataClassification = ToBeClassified;
            TableRelation = User;

        }
        field(4; "Issue date"; Date)
        {
            CaptionML = ENU = 'Issue Date',
                        NLD = 'Afgifte datum';
            DataClassification = ToBeClassified;

        }

    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }

    var

    trigger OnInsert()
    begin
        "Entry No." := GetNextEntryNo();
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

    local procedure GetNextEntryNo() NewEntryNo: Integer;
    var
        BuildingKey: Record "Building Key";

    begin
        NewEntryNo := 1;
        BuildingKey.Reset();
        if BuildingKey.FindLast() then
            NewEntryNo := BuildingKey."Entry No." + 1;
    end;
}