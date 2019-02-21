page 50100 "LevelListIVD"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = LevelIVD;
    Editable = false;
    CardPageId = 50101;
    Caption = 'Level List';
    SourceTableView = sorting (Treshhold);

    layout
    {
        area(Content)
        {
            repeater(Group)
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
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}