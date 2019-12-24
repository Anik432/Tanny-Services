pageextension 50009 ItemLedgerEntryPageExt extends "Item Ledger Entries"
{
    layout
    {
        addafter("Order Type")
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
            field("Serial Number"; "Serial Number")
            {
                ApplicationArea = all;
            }
            field(Length; Length)
            {
                ApplicationArea = all;
                DecimalPlaces = 2 : 5;
                Editable = true;
            }
            field(Width; Width)
            {
                ApplicationArea = all;
                DecimalPlaces = 2 : 5;
                Editable = true;
            }
            field(Height; Height)
            {
                ApplicationArea = all;
                DecimalPlaces = 2 : 5;
                Editable = true;
            }
            field("Size UOM"; "Size UOM")
            {
                ApplicationArea = all;
            }
            field("Net Weight / Kg"; "Net Weight / Kg")
            {
                ApplicationArea = all;
                DecimalPlaces = 2 : 5;
                Editable = true;
            }
            field("Gross Weight / Kg"; "Gross Weight / Kg")
            {
                ApplicationArea = all;
                DecimalPlaces = 2 : 5;
                Editable = true;
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
                Editable = false;
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
                Editable = false;
            }
        }
    }
    actions
    {
        addlast("Ent&ry")
        {
            action("Update Ledger Entry")
            {
                ApplicationArea = All;
                Image = Close;
                Promoted = true;
                CaptionML = ENU = 'Update Ledger Entries';

                trigger OnAction()
                begin
                    Reset();
                    SetRange("Document No.", "Document No.");
                    SetRange("Entry No.", "Entry No.");
                    if FindSet then begin
                        Report.RunModal(50001, true, true, Rec);
                    end;
                end;
            }
        }
    }

}

