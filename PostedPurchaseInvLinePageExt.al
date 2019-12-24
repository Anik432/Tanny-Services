pageextension 50007 PostedPurchaseInvLineExt extends "Posted Purch. Invoice Subform"
{
    layout
    {
        addafter("Deferral Code")
        {
            field("BL No."; "BL No.")
            {
                ApplicationArea = all;
            }
            field("Shipment No."; "Shipment No.")
            {
                ApplicationArea = all;
            }
            field("Outer box Grouping"; "Outer box Grouping")
            {
                ApplicationArea = all;
            }
            field("Serial No."; "Serial No.")
            {
                ApplicationArea = all;
            }
            field(Length; Length)
            {
                ApplicationArea = all;
                DecimalPlaces = 2 : 5;
            }
            field(Width; Width)
            {
                ApplicationArea = all;
                DecimalPlaces = 2 : 5;
            }
            field(Height; Height)
            {
                ApplicationArea = all;
                DecimalPlaces = 2 : 5;
            }
            field("Size UOM"; "Size UOM")
            {
                ApplicationArea = all;
            }
            field("Net Weight / Kg"; "Net Weight / Kg")
            {
                ApplicationArea = all;
                DecimalPlaces = 2 : 5;
            }
            field("Gross Weight / Kg"; "Gross Weight / Kg")
            {
                ApplicationArea = all;
                DecimalPlaces = 2 : 5;
            }
            field(Packing; Packing)
            {
                ApplicationArea = all;
            }
            field("Outer PKG Qty"; "Outer PKG Qty")
            {
                ApplicationArea = all;
            }
            field("Volume (CBM)"; "Volume (CBM)")
            {
                ApplicationArea = all;
                DecimalPlaces = 2 : 5;
            }
            field("Container No."; "Container No.")
            {
                ApplicationArea = all;
            }
            field(Bonded; Bonded)
            {
                ApplicationArea = all;
            }
            field("Import Permit No."; "Import Permit No.")
            {
                ApplicationArea = all;
            }
            field("Custom Lot No."; "Custom Lot No.")
            {
                ApplicationArea = all;
            }
            field(Remark; Remark)
            {
                ApplicationArea = all;
            }
            field(Condition; Condition)
            {
                ApplicationArea = all;
            }
            field("Total CM"; "Total CM")
            {
                ApplicationArea = all;
                DecimalPlaces = 2 : 5;
            }
        }
    }
}