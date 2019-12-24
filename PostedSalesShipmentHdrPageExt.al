pageextension 50013 PostedSalesShpmntHeaderPageExt extends "Posted Sales Shipment"
{
    layout
    {
        addafter("Responsibility Center")
        {
            field("Shipment Mode"; "Shipment Mode")
            {
                ApplicationArea = all;
            }
            field("Export Permit No."; "Export Permit No.")
            {
                ApplicationArea = all;
            }
        }

    }
}