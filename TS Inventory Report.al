report 50002 "TS Inventory Report"
{
    DefaultLayout = RDLC;
    RDLCLayout = './TS Inventory Report.rdlc';
    PreviewMode = PrintLayout;
    Caption = 'TS Inventory';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = all;

    dataset
    {
        dataitem("Item Ledger Entry"; "Item Ledger Entry")
        {
            DataItemTableView = SORTING("Entry No.")
                                ORDER(Ascending)
                                WHERE("Document Type" = CONST("Purchase Receipt"));
            RequestFilterFields = "Posting Date";
            column(ItemNo; "Item Ledger Entry"."Item No.")
            {
            }
            column(ReceivedDate; FORMAT("Item Ledger Entry"."Posting Date"))
            {
            }
            column(DocNo; "Item Ledger Entry"."Document No.")
            {
            }
            column(DTNo; "Item Ledger Entry"."Lot No.")
            {
            }
            column(SerialNo; "Item Ledger Entry"."Serial Number")
            {
            }
            column(LocationCode; "Item Ledger Entry"."Location Code")
            {
            }
            column(ReceivedQty; "Item Ledger Entry".Quantity)
            {
            }
            column(UOM; "Item Ledger Entry"."Unit of Measure Code")
            {
            }
            column(RemQty; "Item Ledger Entry"."Remaining Quantity")
            {
            }
            column(SourceNo; "Item Ledger Entry"."Source No.")
            {
            }
            column(CustName; CustName)
            { }
            column(Location_Code; "Location Code")
            { }
            column(Length; Length)
            { }
            column(Width; Width)
            { }
            column(Height; Height)
            { }
            column(Size_UOM; "Size UOM")
            { }
            column(Net_Weight___Kg; "Net Weight / Kg")
            { }
            column(Gross_Weight___Kg; "Gross Weight / Kg")
            { }
            column(Volume__CBM_; "Volume (CBM)")
            { }
            column(Outer_box_Grouping; "Outer box Grouping")
            { }
            column(Outer_PKG_Qty; "Outer PKG Qty")
            { }
            column(Packing; Packing)
            { }
            column(Import_Permit_No_; "Import Permit No.")
            { }
            column(Custom_Lot_No_; "Custom Lot No.")
            { }
            column(BL_No_; "BL No.")
            { }
            column(Shipment_No_; "Shipment No.")
            { }
            column(Container_No_; "Container No.")
            { }
            column(Remark; Remark)
            { }
            column(Condition; Condition)
            { }
            column(Total_CM; "Total CM")
            { }
            column(HideFields; Hide)
            {
            }
            column(CompName; CompanyInformation.Name)
            {
            }
            column(CompPicture; CompanyInformation.Picture)
            {
            }
            trigger OnAfterGetRecord()
            begin
                Clear(CustName);
                Vend.Reset();
                Vend.SetRange("No.", "Source No.");
                if Vend.FindFirst() then
                    CustName := vend.Name;
            end;
        }
    }


    requestpage
    {

        layout
        {
            area(content)
            {
                field("Hide Fields"; Hide)
                {
                    ApplicationArea = all;
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnInitReport()
    begin
        CompanyInformation.GET;
        CompanyInformation.CALCFIELDS(Picture);
    end;

    var
        CustNo: Code[30];
        PurchaseRecpHdr: Record "Purch. Rcpt. Header";
        CustName: Text[50];
        Vend: Record Vendor;
        Hide: Boolean;
        CompanyInformation: Record "Company Information";
}

