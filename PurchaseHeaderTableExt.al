tableextension 50000 PurchaseHeaderTableExt extends "Purchase Header"
{
    fields
    {
        field(50000; "Mode Of Transport"; Text[20])
        {
            DataClassification = CustomerContent;

        }
        field(50001; "BL No."; text[30])
        {
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                if "BL No." = '' then
                    exit
                else
                    PurchLine.Reset();
                PurchLine.SetRange("Document No.", "No.");
                if PurchLine.FindSet then begin
                    repeat
                        PurchLine."BL No." := "BL No.";
                        PurchLine.Modify();
                    until PurchLine.Next = 0;
                end;

            end;
        }
        field(50102; "Shipment No."; Text[30])
        {
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                if "Shipment No." = '' then
                    exit
                else
                    PurchLine.Reset();
                PurchLine.SetRange("Document No.", "No.");
                if PurchLine.FindSet then begin
                    repeat
                        PurchLine."Shipment No." := "Shipment No.";
                        PurchLine.Modify();
                    until PurchLine.Next = 0;
                end;
            end;
        }
        field(50103; "Import Permit No."; Text[50])
        {
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                if "Import Permit No." = '' then
                    exit
                else
                    PurchLine.Reset();
                PurchLine.SetRange("Document No.", "No.");
                if PurchLine.FindSet then begin
                    repeat
                        PurchLine."Import Permit No." := "Import Permit No.";
                        PurchLine.Modify();
                    until PurchLine.Next = 0;
                end;
            end;

        }
        field(50104; "Custom Lot No."; Text[30])
        {
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                if "Custom Lot No." = '' then
                    exit
                else
                    PurchLine.Reset();
                PurchLine.SetRange("Document No.", "No.");
                if PurchLine.FindSet then begin
                    repeat
                        PurchLine."Custom Lot No." := "Custom Lot No.";
                        PurchLine.Modify();
                    until PurchLine.Next = 0;
                end;
            end;

        }
        field(50105; "Container No."; Text[50])
        {
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                if "Container No." = '' then
                    exit
                else
                    PurchLine.Reset();
                PurchLine.SetRange("Document No.", "No.");
                if PurchLine.FindSet then begin
                    repeat
                        PurchLine."Container No." := "Container No.";
                        PurchLine.Modify();
                    until PurchLine.Next = 0;
                end;
            end;
        }
    }
    var
        PurchLine: Record "Purchase Line";
}