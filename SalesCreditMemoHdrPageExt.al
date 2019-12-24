pageextension 50018 SalesCreditMemoHdrPageExt extends "Sales Credit Memo"
{
    layout
    {
        addafter(Status)
        {
            field(Shipper; Shipper)
            {
                ApplicationArea = all;
            }
            field(Consignee; Consignee)
            {
                ApplicationArea = all;
            }
            field(Origin; Origin)
            {
                ApplicationArea = all;
            }
            field("Desti-nation"; "Desti-nation")
            {
                ApplicationArea = all;
            }
            field("Vessel/Flight"; "Vessel/Flight")
            {
                ApplicationArea = all;
            }
            field("ETA/ETD Date"; "ETA/ETD Date")
            {
                ApplicationArea = all;
            }
            field("Steamship Line/Air Line"; "Steamship Line/Air Line")
            {
                ApplicationArea = all;
            }
            field("B/L or AWB No."; "B/L or AWB No.")
            {
                ApplicationArea = all;
            }
            field("SOA Particular"; "SOA Particular")
            {
                ApplicationArea = all;
            }

        }
    }
}