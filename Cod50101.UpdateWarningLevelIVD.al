codeunit 50101 "UpdateWarningLevelIVD"
{
    trigger OnRun()
    var
        Customer: Record Customer;
    begin
        Customer.RESET;
        IF Customer.FindSet(true) THEN
            REPEAT
                CheckAndUpdateCustomerWarningLevel(Customer);
            UNTIL Customer.NEXT = 0;
    end;

    procedure CheckAndUpdateCustomerWarningLevel(var Customer: Record Customer)
    var
        NewWarningLevel: Enum CustomerWarningLevelIVD;
    begin
        NewWarningLevel := CalcWarningLevel(Customer);
        IF Customer.WarningLevel <> NewWarningLevel THEN BEGIN
            Customer.WarningLevel := NewWarningLevel;
            Customer.MODIFY();
        END;
    end;

    local procedure CalcWarningLevel(Customer: Record Customer): enum CustomerWarningLevelIVD;
    var
        Level: Record LevelIVD;
    begin
        Customer.CalcFields("Balance (LCY)");
        Level.Reset();
        Level.SetCurrentKey(Treshhold);
        Level.SetFilter(Treshhold, '<%1', Customer."Balance (LCY)");
        IF NOT Level.FindLast() THEN
            EXIT(Customer.WarningLevel::None)
        ELSE
            EXIT(Level.Level);

    end;



}