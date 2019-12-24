pageextension 50008 CompanyInfoPageExt extends "Company Information"
{
    layout
    {
        addafter(Picture)
        {
            field("IATA Logo"; "IATA Logo")
            {
                ApplicationArea = all;
            }
            field("FIATA Logo"; "FIATA Logo")
            {
                ApplicationArea = all;
            }
            field("Biz Safe Logo"; "Biz Safe Logo")
            {
                ApplicationArea = all;
            }
        }
        addafter("Ship-to Contact")
        {
            field(Telephone; Telephone)
            {
                ApplicationArea = all;
                ExtendedDatatype = PhoneNo;
            }
            field("Fax 2"; "Fax 2")
            {
                ApplicationArea = all;
            }
        }
    }
}