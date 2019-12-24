pageextension 50004 PostedPurchaseReceiptHeaderExt extends "Posted Purchase Receipt"
{
    layout
    {
        modify("Vendor Order No.")
        {
            Caption = 'Customer Reference No.';
        }
        addafter("Responsibility Center")
        {
            field("Mode Of Transport"; "Mode Of Transport")
            {
                ApplicationArea = all;
            }
        }
    }

}