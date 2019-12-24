tableextension 50004 PurchaseRecptHeaderTableExt extends "Purch. Rcpt. Header"
{
    fields
    {
        field(50000; "Mode Of Transport"; Text[20])
        {
            DataClassification = CustomerContent;
        }
    }
}