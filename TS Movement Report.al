report 50005 "TS Movement Report"
{
    DefaultLayout = RDLC;
    RDLCLayout = './TS Movement Report.rdlc';
    PreviewMode = PrintLayout;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = all;

    dataset
    {
        dataitem("Item Ledger Entry"; "Item Ledger Entry")
        {
            DataItemTableView = SORTING("Entry No.")
                                ORDER(Ascending)
                                WHERE("Document Type" = FILTER("Purchase Receipt" | "Sales Shipment"));
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
            column(InitialReceivedQty; "Item Ledger Entry".Quantity)
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
            column(ReceivedQty; Quantity)
            { }
            column(HideFields; Hide)
            {
            }
            column(Entry_Type; "Entry Type")
            { }
            column(CompName; CompanyInformation.Name)
            {
            }
            column(CompPicture; CompanyInformation.Picture)
            {
            }

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
            column(Export_Permit_No_; "Export Permit No.")
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
            column(Location_Code; "Location Code")
            { }
            column(OutDate; OutDate)
            { }
            column(OutQty; OutQty)
            { }
            column(ShiprefNo; ShiprefNo)
            { }
            column(recDate; recDate)
            { }
            column(recQty; recQty)
            { }
            column(Documentno; Documentno)
            { }
            trigger OnAfterGetRecord()
            begin
                Clear(OutQty);
                Clear(OutDate);
                Clear(ShiprefNo);
                Clear(recDate);
                clear(recQty);
                Clear(Documentno);
                Clear(CustName);
                if "Entry Type" = "Entry Type"::Sale then begin
                    OutDate := "Posting Date";
                    OutQty := Quantity;
                    ShiprefNo := "Document No.";
                    Cust.Reset();
                    Cust.SetRange("No.", "Source No.");
                    if Cust.FindFirst() then
                        CustName := Cust.Name;
                end

                else
                    if "Entry Type" = "Entry Type"::Purchase then begin
                        recQty := Quantity;
                        recDate := "Posting Date";
                        Documentno := "Document No.";
                        Clear(CustName);
                        Vend.Reset();
                        Vend.SetRange("No.", "Source No.");
                        if Vend.FindFirst() then
                            CustName := Vend.Name;
                    end;
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

        CustName: Text[50];
        Cust: Record Customer;
        Vend: Record Vendor;
        Hide: Boolean;
        CompanyInformation: Record "Company Information";
        OutDate: Date;
        ShiprefNo: code[20];
        OutQty: Decimal;
        recDate: Date;
        recQty: Decimal;
        Documentno: code[20];
}

