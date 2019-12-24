tableextension 50006 PurchaseInvHeaderTableExt extends "Purch. Inv. Header"
{
    fields
    {
        field(50000; "Mode Of Transport"; Text[20])
        {
            DataClassification = CustomerContent;
        }
    }
}