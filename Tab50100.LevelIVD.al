table 50100 "LevelIVD"
{
    DataClassification = ToBeClassified;
    Caption = 'Level';

    fields
    {
        field(1; Level; Enum CustomerWarningLevelIVD)
        {
            Caption = 'Level';
            DataClassification = ToBeClassified;
        }

        field(2; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }

        field(3; Treshhold; Decimal)
        {
            Caption = 'Treshhold';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; Level)
        {
            Clustered = true;
        }

        key(SK; Treshhold)
        {

        }
    }

}