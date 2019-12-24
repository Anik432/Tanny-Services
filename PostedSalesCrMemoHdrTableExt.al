tableextension 50017 PostedSalesCrMemoHdrTableExt extends "Sales Cr.Memo Header"
{
    fields
    {
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
    }
}