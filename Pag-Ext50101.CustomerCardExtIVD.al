pageextension 50101 "CustomerCardExtIVD" extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addlast(General)
        {
            field(WarningLevel; WarningLevel)
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

}