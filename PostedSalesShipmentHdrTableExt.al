tableextension 50013 PostedSalesShipmntHeaderTblExt extends "Sales Shipment Header"
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
        }
    }

}