tableextension 50016 PostedsalesInvoiceLineTbleext extends "Sales Invoice Line"
{
    fields
    {
        field(50001; "BL No."; Text[30])
        {
            DataClassification = CustomerContent;
        }
        field(50002; "Outer box Grouping"; Integer)
        {
            DataClassification = CustomerContent;
        }
        field(50003; "Serial No."; Text[30])
        {
            DataClassification = CustomerContent;
        }
        field(50004; "Length"; Decimal)
        {
            DataClassification = CustomerContent;

        }
        field(50005; "Width"; Decimal)
        {
            DataClassification = CustomerContent;
        }
        field(50006; "Height"; Decimal)
        {
            DataClassification = CustomerContent;

        }
        field(50007; "Size UOM"; Code[10])
        {
            DataClassification = CustomerContent;
            TableRelation = "Unit of Measure";
        }
        field(50008; "Net Weight / Kg"; Decimal)
        {
            DataClassification = CustomerContent;
        }
        field(50009; "Gross Weight / Kg"; Decimal)
        {
            DataClassification = CustomerContent;
        }
        field(50010; "Packing"; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = PackingType."Packing Type";
        }
        field(50011; "Outer PKG Qty"; Decimal)
        {
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                "Volume (CBM)" := (Length * Width * Height) / (1000000 * "Outer PKG Qty");  //Formula Calculation for volume(CBM)
            end;
        }
        field(50012; "Volume (CBM)"; Decimal)
        {
            DataClassification = CustomerContent;
        }
        field(50013; "Container No."; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(50014; "Bonded"; Boolean)
        {
            DataClassification = CustomerContent;
        }
        field(50015; "Import Permit No."; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(50016; "Export Permit No."; text[50])
        {
            DataClassification = CustomerContent;
        }
        field(50017; "Custom Lot No."; Text[30])
        {
            DataClassification = CustomerContent;
        }
        field(50018; "Remark"; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(50019; "Condition"; Text[100])
        {
            DataClassification = CustomerContent;
        }
        field(50020; "Particulars"; Text[250])
        {
            DataClassification = CustomerContent;
        }
    }
}