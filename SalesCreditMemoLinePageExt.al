pageextension 50020 SalesCreditMemoLinePageext extends "Sales Cr. Memo Subform"
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