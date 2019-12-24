tableextension 50009 CompanyInfoTableExt extends "Company Information"
{
    fields
    {
        field(50001; "IATA Logo"; blob)
        {
            DataClassification = CustomerContent;
            Subtype = Bitmap;
        }
        field(50002; "FIATA Logo"; Blob)
        {
            DataClassification = CustomerContent;
            Subtype = Bitmap;
        }
        field(50003; "Biz Safe Logo"; Blob)
        {
            DataClassification = CustomerContent;
            Subtype = Bitmap;
        }
        field(50004; "Telephone"; Text[30])
        {
            DataClassification = CustomerContent;
        }
        field(50005; "Fax 2"; Text[30])
        {
            DataClassification = CustomerContent;
        }
    }
}