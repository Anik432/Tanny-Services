page 50000 "Packing Type"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = PackingType;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Packing Type"; "Packing Type")
                {
                    ApplicationArea = All;

                }
                field(Description; Description)
                {
                    ApplicationArea = all;
                }
            }
        }

    }

}