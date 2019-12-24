pageextension 50017 SalesQuoteHeaderPageExt extends "Sales Quote"
{
    layout
    {
        addafter(Status)
        {
            field("Pickup Information"; "Pickup Information")
            {
                ApplicationArea = all;
            }
            field("Port of Loading"; "Port of Loading")
            {
                ApplicationArea = all;
            }
            field("Post of Discharge"; "Post of Discharge")
            {
                ApplicationArea = all;
            }
            field(Destination; Destination)
            {
                ApplicationArea = all;
            }
            field("Date & Time Faxed"; "Date & Time Faxed")
            {
                ApplicationArea = all;
            }
            field("Effective Date"; "Effective Date")
            {
                ApplicationArea = all;
            }
            field("Date & Time Received"; "Date & Time Received")
            {
                ApplicationArea = all;
            }
            field("Quote Expires"; "Quote Expires")
            {
                ApplicationArea = all;
            }
        }
    }
}