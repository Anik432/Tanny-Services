tableextension 50011 SalesHeaderTableExt extends "Sales Header"
{
    fields
    {
        field(50000; "Shipment Mode"; text[30])
        {
            DataClassification = CustomerContent;
        }
        field(50001; "Export Permit No."; Text[50])
        {
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                salesline.Reset();
                salesline.SetRange("Document No.", "No.");
                if salesline.FindSet() then begin
                    repeat
                        SalesLine."Export Permit No." := "Export Permit No.";
                        salesline.Modify();
                    until salesline.Next = 0;
                end;
            end;
        }
        modify("Shipping No.")
        {
            Caption = 'Shipment Reference No.';
        }
        field(50002; "Pickup Information"; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(50003; "Port of Loading"; Text[30])
        {
            DataClassification = CustomerContent;
        }
        field(50004; "Post of Discharge"; Text[30])
        {
            DataClassification = CustomerContent;
            TableRelation = "Country/Region";
        }
        field(50005; "Destination"; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(50006; "Date & Time Faxed"; Date)
        {
            DataClassification = CustomerContent;
        }
        field(50007; "Effective Date"; Date)
        {
            DataClassification = CustomerContent;
        }
        field(50008; "Date & Time Received"; Date)
        {
            DataClassification = CustomerContent;
        }
        field(50009; "Quote Expires"; Date)
        {
            DataClassification = CustomerContent;
        }
        field(50010; "Shipper"; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(50011; "Consignee"; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(50012; "Origin"; Code[10])
        {
            DataClassification = CustomerContent;
            TableRelation = "Country/Region";
        }
        field(50013; "Desti-nation"; Code[10])
        {
            DataClassification = CustomerContent;
            TableRelation = "Country/Region";
        }
        field(50014; "Vessel/Flight"; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(50015; "ETA/ETD Date"; date)
        {
            DataClassification = CustomerContent;
        }
        field(50016; "Steamship Line/Air Line"; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(50017; "B/L or AWB No."; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(50018; "SOA Particular"; text[50])
        {
            DataClassification = CustomerContent;
        }
        field(50019; "Debit Note"; Boolean)
        {
            DataClassification = CustomerContent;
        }
        Field(50020; "Cash Sales"; Boolean)
        {
            DataClassification = CustomerContent;
        }
    }
    var
        salesline: Record "Sales Line";
}