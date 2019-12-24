pageextension 50022 SalesInvheaderPage extends "Sales Invoice"
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
            field("Debit Note"; "Debit Note")
            {
                ApplicationArea = all;
            }
            field("Posting No."; "Posting No.")
            {
                ApplicationArea = all;
            }
        }
    }
    actions
    {
        addafter(DraftInvoice)
        {
            action("Pre-Post Sales Invoice without Shipping")
            {
                ApplicationArea = all;
                Promoted = true;
                Image = Report;
                trigger OnAction()
                begin
                    SetRange("No.", "No.");
                    if FindFirst() then
                        Report.RunModal(50011, true, true, rec);
                end;

            }
        }
    }
}