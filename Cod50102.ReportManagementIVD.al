codeunit 50102 "ReportManagement-IVD"
{
    trigger OnRun()
    begin

    end;
    /*
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Report Management V2.-AdLoc", 'OnBeforeFillHeaderAddr', '', TRUE, TRUE)]
    local procedure ReportMgtOnBeforeFillHeaderAddr(ReportType: enum "Report Type-AdLoc"; var PrimaryLbl: Text[50]; var SecondaryLbl: Text[50])
    begin
        CASE ReportType OF
            ReportType::SalesInvoice:
                BEGIN
                    PrimaryLbl := Customerbl;
                END;
        END;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Report Management V2.-AdLoc", 'OnAfterFillLineLabels', '', TRUE, TRUE)]
    local procedure MyProcedure()
    begin

    end;
    */
    var
        Customerbl: Label 'Customer:';

}