pageextension 50001 PurchaseOrderHeaderPageExt extends "Purchase Order"
{
    layout
    {
        addafter(Status)
        {
            field("Mode Of Transport"; "Mode Of Transport")
            {
                ApplicationArea = all;
            }
            field("BL No."; "BL No.")
            {
                ApplicationArea = all;
            }
            field("Shipment No."; "Shipment No.")
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
            field("Container No."; "Container No.")
            {
                ApplicationArea = all;
            }
            field("Receiving No."; "Receiving No.")
            {
                ApplicationArea = all;
            }
        }

    }

    trigger OnQueryClosePage(CloseAction: Action): Boolean

    var
        PurchLine: Record "Purchase Line";
    begin
        PurchLine.Reset();
        PurchLine.SetRange("Document No.", "No.");
        if PurchLine.FindSet then begin
            repeat
                if PurchLine.Type = PurchLine.Type::Item then
                    If PurchLine.Bonded = true then begin
                        PurchLine.TestField("Import Permit No.");
                        PurchLine.TestField("Custom Lot No.");
                    end
            until PurchLine.Next = 0;
        end;
    end;


}

