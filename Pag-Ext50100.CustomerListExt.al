// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

pageextension 50100 "CustomerListExt" extends "Customer List"
{
    layout
    {
        addlast(Control1)
        {
            field(WarningLevel; WarningLevel)
            {
                ApplicationArea = All;
            }
        }

        modify("Phone No.")
        {
            Visible = false;
        }

    }
    actions
    {
        addlast(Action104)
        {
            action("Update Warning Level")
            {
                ApplicationArea = All;
                Image = UpdateDescription;
                trigger OnAction()
                var
                    UpdateWarningLevel: Codeunit UpdateWarningLevelIVD;
                begin
                    UpdateWarningLevel.Run();
                end;
            }
        }
        addlast(Reports)
        {
            action("Customer List Report")
            {
                ApplicationArea = All;
                Image = List;
                RunObject = Report 50100;
                trigger OnAction()
                begin

                end;
            }
        }
    }
    trigger OnOpenPage();
    begin
        //Message('App published: Hello world');
    end;

}