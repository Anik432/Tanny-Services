pageextension 50003 PaymentJournalPage extends "Payment Journal"
{
    actions
    {
        addafter("Post and &Print")
        {
            action("Print Payment Voucher")
            {
                Promoted = true;
                ApplicationArea = all;
                PromotedCategory = Process;
                Image = Report;
                trigger OnAction()
                begin
                    SetRange("Document No.", "Document No.");
                    if FindFirst() then
                        Report.RunModal(50006, true, true, Rec);
                end;
            }
        }

    }

}