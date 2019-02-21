pageextension 50102 "SalesReceivablesExt" extends "Sales & Receivables Setup"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addlast(Navigation)
        {
            action("Levels")
            {
                ApplicationArea = All;
                RunObject = page LevelListIVD;
                Image = List;
                trigger OnAction()
                begin

                end;
            }
        }

    }

}