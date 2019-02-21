page 50101 "LevelCardIVD"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = LevelIVD;
    Caption = 'Level Card';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Level; Level)
                {
                    ApplicationArea = All;

                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }

                field(Treshhold; Treshhold)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}