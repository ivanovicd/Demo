tableextension 50100 "CustomerTableExtIVD" extends Customer
{
    fields
    {
        field(50100; WarningLevel; Enum CustomerWarningLevelIVD)
        {
            DataClassification = ToBeClassified;
            Caption = 'Warning Level';
        }
    }

}