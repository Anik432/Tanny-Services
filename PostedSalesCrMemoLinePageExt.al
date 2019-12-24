pageextension 50021 PostedSalesCrdtMemoLinePageExt extends "Posted Sales Cr. Memo Subform"
{
    layout
    {
        addafter("Deferral Code")
        {
            field(Particulars; Particulars)
            {
                ApplicationArea = all;
            }
        }
    }
}