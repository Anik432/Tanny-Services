report 50001 "Update Item Ledger Entry Ext"
{
    UsageCategory = ReportsAndAnalysis;
    //ApplicationArea = All;
    ProcessingOnly = true;
    AccessByPermission = tabledata 32 = RMID;
    dataset
    {
        dataitem("Item Ledger Entry"; "Item Ledger Entry")
        {
            RequestFilterFields = "Document No.";
            trigger OnAfterGetRecord()
            begin
                "Item Ledger Entry".Validate(Length, varLength);
                "Item Ledger Entry".Validate(Width, varWidth);
                "Item Ledger Entry".Validate(Height, varHeight);
                "Item Ledger Entry".Validate("Net Weight / Kg", varNetWeight);
                "Item Ledger Entry".Validate("Gross Weight / Kg", VarGrossWeight);
                "Item Ledger Entry".Modify();
            end;
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(General)
                {
                    field(Height; varHeight)
                    {
                        ApplicationArea = All;

                    }
                    field(Length; varLength)
                    {
                        ApplicationArea = all;
                    }
                    field(Width; varWidth)
                    {
                        ApplicationArea = all;
                    }
                    field(NetWeight; VarNetWeight)
                    {
                        ApplicationArea = aLL;
                    }
                    field(GrossWeight; VarGrossWeight)
                    {
                        ApplicationArea = all;
                    }
                }
            }
        }


    }

    var
        varHeight: Decimal;
        varLength: Decimal;
        varWidth: Decimal;
        varNetWeight: Decimal;
        VarGrossWeight: Decimal;
}