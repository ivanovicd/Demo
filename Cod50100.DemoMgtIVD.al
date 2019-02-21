codeunit 50100 "DemoMgtIVD"
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterCheckSalesDoc', '', true, true)]
    local procedure CU80OnAfterCheckSalesDoc(var SalesHeader: Record "Sales Header")
    var
        Customer: Record Customer;
    begin
        IF NOT Customer.GET(SalesHeader."Bill-to Customer No.") THEN
            Customer.Init();
        CASE Customer.WarningLevel OF
            Customer.WarningLevel::High:
                ERROR(ErrorTxt);
            Customer.WarningLevel::Low:
                MESSAGE(MessageTxt);
        END;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterPostSalesDoc', '', true, true)]
    local procedure CU80OnAfterPostSalesDoc(var SalesHeader: Record "Sales Header")
    var
        Customer: Record Customer;
        UpdateWarningLevel: Codeunit UpdateWarningLevelIVD;
    begin
        IF NOT Customer.GET(SalesHeader."Bill-to Customer No.") THEN
            EXIT;
        UpdateWarningLevel.CheckAndupdateCustomerWarningLevel(Customer);
    end;

    var
        ErrorTxt: Label 'Warning Level is set to High!';
        MessageTxt: Label 'Warning Level is set to Low!';




}