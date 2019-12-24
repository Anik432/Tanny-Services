tableextension 50018 PostedSalesCrMemoLineTbleExt extends "Sales Cr.Memo Line"
{
    fields
    {
        field(50020; "Particulars"; Text[250])
        {
            DataClassification = CustomerContent;
        }
    }
}