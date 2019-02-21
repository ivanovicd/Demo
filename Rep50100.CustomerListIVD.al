report 50100 "CustomerListIVD"
{
    UsageCategory = Administration;
    ApplicationArea = All;
    Caption = 'Customer List';
    RDLCLayout = 'CustomerListIVD.rdl';

    dataset
    {
        dataitem(Customer; Customer)

        {
            DataItemTableView = sorting ("No.");
            RequestFilterFields = "No.";
            PrintOnlyIfDetail = true;

            column(No; "No.")
            {

            }

            column(Name; Name)
            {

            }

            column(Name2; "Name 2")
            {

            }

            column(BalanceLCY; "Balance (LCY)")
            {

            }
            dataitem("Cust. Ledger Entry"; "Cust. Ledger Entry")
            {
                DataItemLink = "Customer No." = FIELD ("No.");
                DataItemLinkReference = Customer;
                DataItemTableView = sorting ("posting Date");

                column(Posting_Date; FORMAT("Posting Date"))
                {

                }

                column(Document_Type; "Document Type")
                {

                }
                column(Document_No_; "Document No.")
                {

                }
                column(AmountLCY; Amount)
                {

                }

                column(RemainingAmtLC; "Remaining Amt. (LCY)")
                {

                }

                trigger OnAfterGetRecord()
                begin
                    CalcFields("Amount (LCY)", "Remaining Amt. (LCY)");
                end;

            }

            trigger OnAfterGetRecord()
            begin
                CalcFields("Balance (LCY)");
            end;


        }
    }

    requestpage
    {
        SaveValues = true;
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(OnlyOpenEntries; OnlyOpenEntries)
                    {
                        ApplicationArea = All;
                        Caption = 'Print Open Entries Only';

                    }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    var
        OnlyOpenEntries: Boolean;
}