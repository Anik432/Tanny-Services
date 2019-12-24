codeunit 50000 SubscribingCUExt
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Table, 83, 'OnAfterCopyItemJnlLineFromPurchLine', '', true, true)]
    local procedure CopyItemJnlLineFromPurchLine(var ItemJnlLine: Record "Item Journal Line"; PurchLine: Record "Purchase Line")
    begin
        ItemJnlLine."BL No." := purchLine."BL No.";
        ItemJnlLine."Shipment No." := purchLine."Shipment No.";
        ItemJnlLine."Outer box Grouping" := purchLine."Outer box Grouping";
        ItemJnlLine."Serial Number" := PurchLine."Serial No.";
        ItemJnlLine.Length := PurchLine.Length;
        ItemJnlLine.Width := PurchLine.Width;
        ItemJnlLine.Height := PurchLine.Height;
        ItemJnlLine."Size UOM" := PurchLine."Size UOM";
        ItemJnlLine."Net Weight / Kg" := PurchLine."Net Weight / Kg";
        ItemJnlLine."Gross Weight / Kg" := PurchLine."Gross Weight / Kg";
        ItemJnlLine.Packing := PurchLine.Packing;
        ItemJnlLine."Outer PKG Qty" := PurchLine."Outer PKG Qty";
        ItemJnlLine."Volume (CBM)" := PurchLine."Volume (CBM)";
        ItemJnlLine."Container No." := PurchLine."Container No.";
        ItemJnlLine.Bonded := PurchLine.Bonded;
        ItemJnlLine."Import Permit No." := PurchLine."Import Permit No.";
        ItemJnlLine."Custom Lot No." := PurchLine."Custom Lot No.";
        ItemJnlLine.Remark := PurchLine.Remark;
        ItemJnlLine.Condition := PurchLine.Condition;
        ItemJnlLine."Total CM" := PurchLine."Total CM";

    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnAfterInitItemLedgEntry', '', true, true)]
    local procedure UpdateItemLedgerEntry(var NewItemLedgEntry: Record "Item Ledger Entry"; ItemJournalLine: Record "Item Journal Line"; var ItemLedgEntryNo: Integer)
    begin
        NewItemLedgEntry."BL No." := ItemJournalLine."BL No.";
        NewItemLedgEntry."Shipment No." := ItemJournalLine."Shipment No.";
        NewItemLedgEntry."Outer box Grouping" := ItemJournalLine."Outer box Grouping";
        NewItemLedgEntry."Serial Number" := ItemJournalLine."Serial Number";
        NewItemLedgEntry.Length := ItemJournalLine.Length;
        NewItemLedgEntry.Width := ItemJournalLine.Width;
        NewItemLedgEntry.Height := ItemJournalLine.Height;
        NewItemLedgEntry."Size UOM" := ItemJournalLine."Size UOM";
        NewItemLedgEntry."Net Weight / Kg" := ItemJournalLine."Net Weight / Kg";
        NewItemLedgEntry."Gross Weight / Kg" := ItemJournalLine."Gross Weight / Kg";
        NewItemLedgEntry.Packing := ItemJournalLine.Packing;
        NewItemLedgEntry."Outer PKG Qty" := ItemJournalLine."Outer PKG Qty";
        NewItemLedgEntry."Volume (CBM)" := ItemJournalLine."Volume (CBM)";
        NewItemLedgEntry."Container No." := ItemJournalLine."Container No.";
        NewItemLedgEntry.Bonded := ItemJournalLine.Bonded;
        NewItemLedgEntry."Import Permit No." := ItemJournalLine."Import Permit No.";
        NewItemLedgEntry."Export Permit No." := ItemJournalLine."Export Permit No.";
        NewItemLedgEntry."Custom Lot No." := ItemJournalLine."Custom Lot No.";
        NewItemLedgEntry.Remark := ItemJournalLine.Remark;
        NewItemLedgEntry.Condition := ItemJournalLine.Condition;
        NewItemLedgEntry."Total CM" := ItemJournalLine."Total CM";
    end;

    [EventSubscriber(ObjectType::Table, 39, 'OnAfterGetPurchHeader', '', true, true)]
    local procedure UpdatePurchaseLine(var PurchaseLine: Record "Purchase Line"; var PurchaseHeader: Record "Purchase Header")
    begin
        with Purchaseline do begin
            if PurchaseHeader."BL No." <> '' then
                "BL No." := Purchaseheader."BL No.";
            if PurchaseHeader."Shipment No." <> '' then
                "Shipment No." := Purchaseheader."Shipment No.";
            if PurchaseHeader."Import Permit No." <> '' then
                "Import Permit No." := PurchaseHeader."Import Permit No.";
            if PurchaseHeader."Custom Lot No." <> '' then
                "Custom Lot No." := PurchaseHeader."Custom Lot No.";
            if PurchaseHeader."Container No." <> '' then
                "Container No." := PurchaseHeader."Container No.";
        end;
    end;

    [EventSubscriber(ObjectType::Table, 83, 'OnAfterCopyItemJnlLineFromSalesLine', '', true, true)]
    local procedure OnAfterCopyItemJnlLineFromSalesLine(var ItemJnlLine: Record "Item Journal Line"; SalesLine: Record "Sales Line")
    begin
        ItemJnlLine."BL No." := SalesLine."BL No.";
        ItemJnlLine."Shipment No." := SalesLine."Shipment No.";
        ItemJnlLine."Outer box Grouping" := SalesLine."Outer box Grouping";
        ItemJnlLine."Serial Number" := SalesLine."Serial No.";
        ItemJnlLine.Length := SalesLine.Length;
        ItemJnlLine.Width := SalesLine.Width;
        ItemJnlLine.Height := SalesLine.Height;
        ItemJnlLine."Size UOM" := SalesLine."Size UOM";
        ItemJnlLine."Net Weight / Kg" := SalesLine."Net Weight / Kg";
        ItemJnlLine."Gross Weight / Kg" := SalesLine."Gross Weight / Kg";
        ItemJnlLine.Packing := SalesLine.Packing;
        ItemJnlLine."Outer PKG Qty" := SalesLine."Outer PKG Qty";
        ItemJnlLine."Volume (CBM)" := SalesLine."Volume (CBM)";
        ItemJnlLine."Container No." := SalesLine."Container No.";
        ItemJnlLine.Bonded := SalesLine.Bonded;
        ItemJnlLine."Import Permit No." := SalesLine."Import Permit No.";
        ItemJnlLine."Export Permit No." := SalesLine."Export Permit No.";
        ItemJnlLine."Custom Lot No." := SalesLine."Custom Lot No.";
        ItemJnlLine.Remark := SalesLine.Remark;
        ItemJnlLine.Condition := SalesLine.Condition;
        // ItemJnlLine."Total CM" := SalesLine."Total CM";
    end;

    [EventSubscriber(ObjectType::Codeunit, 90, 'OnBeforePurchRcptHeaderInsert', '', true, true)]
    local procedure OnBeforePurchRcptHeaderInsert(var PurchRcptHeader: Record "Purch. Rcpt. Header"; var PurchaseHeader: Record "Purchase Header")
    begin
        PurchLine.Reset();
        PurchLine.SetRange("Document No.", PurchaseHeader."No.");
        PurchLine.SetRange(Type, PurchLine.Type::Item);
        PurchLine.SetRange(Bonded, true);
        if PurchLine.FindSet() then begin
            repeat
                PurchLine.TestField("Import Permit No.");
                PurchLine.TestField("Custom Lot No.");
            until PurchLine.Next = 0;
        end;
    end;

    [EventSubscriber(ObjectType::table, 37, 'OnAfterAssignHeaderValues', '', true, true)]
    local procedure UpdateSalesLine(var SalesLine: Record "Sales Line"; SalesHeader: Record "Sales Header")
    begin
        with SalesLine do begin
            if SalesHeader."Export Permit No." <> '' then
                "Export Permit No." := SalesHeader."Export Permit No.";
        end;
    end;

    var
        PurchLine: Record "Purchase Line";
}