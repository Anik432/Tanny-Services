pageextension 50015 PostedSalesInvHdrPageExt extends "Posted Sales Invoice"
{
    layout
    {
        addafter(Closed)
        {
            field("Shipment Mode"; "Shipment Mode")
            {
                ApplicationArea = all;
            }
            field("Export Permit No."; "Export Permit No.")
            {
                ApplicationArea = all;
            }
            field("Cash Sales"; "Cash Sales")
            {
                ApplicationArea = all;
            }
        }
    }
    actions
    {
        addafter(Print)
        {
            action("Sales Invoice without Shipping Details")
            {
                ApplicationArea = all;
                Promoted = true;
                Image = Report;
                trigger OnAction()
                begin
                    SetRange("No.", "No.");
                    if FindFirst() then
                        Report.RunModal(50012, true, true, rec);
                end;

            }
        }
    }
}