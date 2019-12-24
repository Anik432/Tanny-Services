table 50003 PackingType
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Packing Type"; Code[20])
        {
            DataClassification = CustomerContent;

        }
        field(2; "Description"; Text[50])
        {
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Packing Type")
        {
            Clustered = true;
        }
    }

}