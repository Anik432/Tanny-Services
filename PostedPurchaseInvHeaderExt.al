pageextension 50006 PostedPurchaseInvoicePageExt extends "Posted Purchase Invoice"
{
    layout
    {
        modify("Vendor Order No.")
        {
            Caption = 'Customer Reference No.';
        }
        addafter("No. Printed")
        {
            field("Mode Of Transport"; "Mode Of Transport")
            {
                ApplicationArea = all;
            }
        }
    }
}