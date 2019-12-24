pageextension 50011 SalesOrderLinePageExt extends "Sales Order Subform"
{
    layout
    {
        addafter("Drop Shipment")
        {
            field("BL No."; "BL No.")
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
                LookupPageId = 50000;
            }
            field("Outer PKG Qty"; "Outer PKG Qty")
            {
                ApplicationArea = all;
            }
            field("Volume (CBM)"; "Volume (CBM)")
            {
                ApplicationArea = all;
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
            field("Export Permit No."; "Export Permit No.")
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
            field(Particulars; Particulars)
            {
                ApplicationArea = all;
            }
        }
    }
    actions
    {
        addafter(SelectMultiItems)
        {
            action(UpdateSalesLine)
            {
                ApplicationArea = all;
                image = Recalculate;
                trigger OnAction()
                begin
                    repeat
                        ReservEntry.Reset();
                        ReservEntry.SetRange("Source ID", "Document No.");
                        ReservEntry.SetRange("Item No.", "No.");
                        ReservEntry.SetRange("Source Ref. No.", "Line No.");
                        if ReservEntry.FindSet() then begin
                            Ile.Reset();
                            Ile.SetRange("Lot No.", ReservEntry."Lot No.");
                            ile.SetRange("Item No.", "No.");
                            if Ile.FindSet() then begin
                                "Custom Lot No." := Ile."Custom Lot No.";
                                "Import Permit No." := Ile."Import Permit No.";
                                Modify();
                            end;

                        end;
                    until Next = 0;
                end;

            }
        }
    }
    var
        ReservEntry: Record "Reservation Entry";
        Ile: Record "Item Ledger Entry";
}