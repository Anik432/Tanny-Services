report 50004 "TS GRN"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Purchase - Receipt.rdlc';
    Caption = 'TS GRN';
    PreviewMode = PrintLayout;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = all;

    dataset
    {
        dataitem("Purch. Rcpt. Header"; "Purch. Rcpt. Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Buy-from Vendor No.", "No. Printed";
            RequestFilterHeading = 'Posted Purchase Receipt';
            column(No_PurchRcptHeader; "No.")
            {
            }
            column(HomePageCaption; HomePageCaptionLbl)
            {
            }
            column(Vendor_Order_No_; "Vendor Order No.")
            { }
            column(EmailCaption; EmailCaptionLbl)
            {
            }
            column(DocumentDateCaption; DocumentDateCaptionLbl)
            {
            }
            column(PageCaption; PageCaptionLbl)
            {
            }
            column(Buy_from_Vendor_Name; "Buy-from Vendor Name")
            { }
            column(Buy_from_Address; "Buy-from Address")
            { }
            column(Buy_from_City; "Buy-from City")
            { }
            column(Buy_from_Country_Region_Code; "Buy-from Country/Region Code")
            { }
            column(Buy_from_Post_Code; "Buy-from Post Code")
            { }
            column(Buy_from_Contact; "Buy-from Contact")
            { }
            dataitem(CopyLoop; Integer)
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop; integer)
                {
                    DataItemTableView = SORTING(Number)
                                        WHERE(Number = CONST(1));
                    column(PaytoVenNo_PurchRcptHeader; "Purch. Rcpt. Header"."Pay-to Vendor No.")
                    {
                    }
                    column(BuyfromVendNo_PurchRcptHdr; "Purch. Rcpt. Header"."Buy-from Vendor No.")
                    {
                    }
                    column(PurchRcptCaption; STRSUBSTNO(Text002, CopyText))
                    {
                    }
                    column(ShipToAddr1; ShipToAddr[1])
                    {
                    }
                    column(CompanyAddr1; CompanyAddr[1])
                    {
                    }
                    column(ShipToAddr2; ShipToAddr[2])
                    {
                    }
                    column(CompanyAddr2; CompanyAddr[2])
                    {
                    }
                    column(ShipToAddr3; ShipToAddr[3])
                    {
                    }
                    column(CompanyAddr3; CompanyAddr[3])
                    {
                    }
                    column(ShipToAddr4; ShipToAddr[4])
                    {
                    }
                    column(CompanyAddr4; CompanyAddr[4])
                    {
                    }
                    column(ShipToAddr5; ShipToAddr[5])
                    {
                    }
                    column(CompanyInfoPhoneNo; CompanyInfo."Phone No.")
                    {
                    }
                    column(CompanyInfoEmail; CompanyInfo."E-Mail")
                    {
                    }
                    column(CompanyInfoHomePage; CompanyInfo."Home Page")
                    {
                    }
                    column(ShipToAddr6; ShipToAddr[6])
                    {
                    }
                    column(CompanyInfoVATRegNo; CompanyInfo."VAT Registration No.")
                    {
                    }
                    column(CompanyInfoGiroNo; CompanyInfo."Giro No.")
                    {
                    }
                    column(CompanyInfoBankName; CompanyInfo."Bank Name")
                    {
                    }
                    column(CompanyInfoBankAccountNo; CompanyInfo."Bank Account No.")
                    {
                    }
                    column(CompanyInfoPicture; CompanyInfo.Picture)
                    { }
                    column(ShipToAddr7; ShipToAddr[7])
                    {
                    }
                    column(ShipToAddr8; ShipToAddr[8])
                    {
                    }
                    column(CompanyAddr5; CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6; CompanyAddr[6])
                    {
                    }
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(CompInfoABNDivPartNo; CompanyInfo."Registration No.")
                    {
                    }
                    column(CompanyInfoABN; CompanyInfo."Registration No.")
                    {
                    }
                    column(PurchaserText; PurchaserText)
                    {
                    }
                    column(Name_SalesPurchPerson; SalesPurchPerson.Name)
                    {
                    }
                    column(ReferenceText; ReferenceText)
                    {
                    }
                    column(YourRef_PurchRcptHdr; "Purch. Rcpt. Header"."Your Reference")
                    {
                    }
                    column(DocDate_PurchRcptHeader; FORMAT("Purch. Rcpt. Header"."Posting Date"))
                    {
                    }
                    column(No1_PurchRcptHeader; "Purch. Rcpt. Header"."No.")
                    {
                    }
                    column(ABN_PurchRcptHeader; "Purch. Rcpt. Header"."No.")
                    {
                    }
                    column(ABNDivPartNo_PurchRcptHdr; "Purch. Rcpt. Header"."No.")
                    {
                    }
                    column(CompanyInfoPhoneNoCaption; CompanyInfoPhoneNoCaptionLbl)
                    {
                    }
                    column(ComInfoVATRegNoCaption; ComInfoVATRegNoCaptionLbl)
                    {
                    }
                    column(CompanyInfoGiroNoCaption; CompanyInfoGiroNoCaptionLbl)
                    {
                    }
                    column(CompInfoBankNameCaption; CompInfoBankNameCaptionLbl)
                    {
                    }
                    column(ComInfoBankAccNoCaption; ComInfoBankAccNoCaptionLbl)
                    {
                    }
                    column(CompanyInfoABNCaption; CompanyInfoABNCaptionLbl)
                    {
                    }
                    column(CompInfoABNDivPartNoCaption; CompInfoABNDivPartNoCaptionLbl)
                    {
                    }
                    column(PurchRcptHeaderNoCaption; "Purch. Rcpt. Header"."Vendor Order No.")
                    {
                    }
                    column(PurchRcptHdrABNDivPartNoCaption; PurchRcptHdrABNDivPartNoCaptionLbl)
                    {
                    }
                    column(PurchRcptHeaderABNCaption; PurchRcptHeaderABNCaptionLbl)
                    {
                    }
                    column(PaytoVendNo_PurchRcptHdrCaption; "Purch. Rcpt. Header".FIELDCAPTION("Pay-to Vendor No."))
                    {
                    }
                    column(BuyfromVendNo_PurchRcptHdrCaption; "Purch. Rcpt. Header".FIELDCAPTION("Buy-from Vendor No."))
                    {
                    }
                    dataitem(DimensionLoop1; integer)
                    {
                        DataItemLinkReference = "Purch. Rcpt. Header";
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = FILTER(1 ..));
                        column(DimText; DimText)
                        {
                        }
                        column(HeaderDimensionsCaption; HeaderDimensionsCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            IF Number = 1 THEN BEGIN
                                IF NOT DimSetEntry1.FINDSET THEN
                                    CurrReport.BREAK;
                            END ELSE
                                IF NOT Continue THEN
                                    CurrReport.BREAK;

                            CLEAR(DimText);
                            Continue := FALSE;
                            REPEAT
                                OldDimText := DimText;
                                IF DimText = '' THEN
                                    DimText := STRSUBSTNO('%1 - %2', DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code")
                                ELSE
                                    DimText :=
                                      STRSUBSTNO(
                                        '%1; %2 - %3', DimText,
                                        DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code");
                                IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                    DimText := OldDimText;
                                    Continue := TRUE;
                                    EXIT;
                                END;
                            UNTIL DimSetEntry1.NEXT = 0;
                        end;

                        trigger OnPreDataItem()
                        begin

                            IF NOT ShowInternalInfo THEN
                                CurrReport.BREAK;
                        end;
                    }
                    dataitem("Purch. Rcpt. Line"; "Purch. Rcpt. Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Purch. Rcpt. Header";
                        DataItemTableView = SORTING("Document No.", "Line No.");
                        column(ShowInternalInfo; ShowInternalInfo)
                        {
                        }
                        column(ShowCorrectionLines; ShowCorrectionLines)
                        {
                        }
                        column(LogInteraction; LogInteraction)
                        {
                        }
                        column(Type_PurchRcptLine; FORMAT("Purch. Rcpt. Line".Type, 0, 2))
                        {
                        }
                        column(Description_PurchRcptLine; Description)
                        {
                        }
                        column(Qty_PurchRcptLine; Quantity)
                        {
                        }
                        column(UOM_PurchRcptLine; "Unit of Measure")
                        {
                        }
                        column(No_PurchRcptLine; "No.")
                        {
                        }
                        column(LineNo_PurchRcptLine; "Line No.")
                        {
                        }
                        column(Description_PurchRcptLineCaption; FIELDCAPTION(Description))
                        {
                        }
                        column(Quantity_PurchRcptLineCaption; FIELDCAPTION(Quantity))
                        {
                        }
                        column(UnitofMeasure_PurchRcptLineCaption; FIELDCAPTION("Unit of Measure"))
                        {
                        }
                        column(No_PurchRcptLineCaption; FIELDCAPTION("No."))
                        {
                        }
                        column(Serial_No_; "Serial No.")
                        { }
                        column(Length; Length)
                        { }
                        column(Width; Width)
                        { }
                        column(Height; Height)
                        { }
                        column(Volume__CBM_; "Volume (CBM)")
                        { }
                        column(Net_Weight___Kg; "Net Weight / Kg")
                        { }
                        column(Gross_Weight___Kg; "Gross Weight / Kg")
                        { }
                        column(Condition; Condition)
                        { }
                        column(Packing; Packing)
                        { }
                        column(Bonded; Bonded)
                        { }
                        column(Import_Permit_No_; "Import Permit No.")
                        { }
                        column(Custom_Lot_No_; "Custom Lot No.")
                        { }
                        column(DTNo; DTNo)
                        { }
                        dataitem(DimensionLoop2; integer)
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number = FILTER(1 ..));
                            column(DimText1; DimText)
                            {
                            }
                            column(LineDimensionsCaption; LineDimensionsCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord()
                            begin
                                IF Number = 1 THEN BEGIN
                                    IF NOT DimSetEntry2.FINDFIRST THEN
                                        CurrReport.BREAK;
                                END ELSE
                                    IF NOT Continue THEN
                                        CurrReport.BREAK;

                                CLEAR(DimText);
                                Continue := FALSE;
                                REPEAT
                                    OldDimText := DimText;
                                    IF DimText = '' THEN
                                        DimText := STRSUBSTNO(
                                          '%1 - %2', DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code")
                                    ELSE
                                        DimText :=
                                          STRSUBSTNO(
                                            '%1; %2 - %3', DimText,
                                            DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code");
                                    IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                        DimText := OldDimText;
                                        Continue := TRUE;
                                        EXIT;
                                    END;
                                UNTIL (DimSetEntry2.NEXT = 0);
                            end;

                            trigger OnPreDataItem()
                            begin

                                IF NOT ShowInternalInfo THEN
                                    CurrReport.BREAK;
                            end;
                        }

                        trigger OnAfterGetRecord()
                        var
                            ILE: Record "Item Ledger Entry";
                        begin
                            IF (NOT ShowCorrectionLines) AND Correction THEN
                                CurrReport.SKIP;

                            DimSetEntry2.SETRANGE("Dimension Set ID", "Purch. Rcpt. Line"."Dimension Set ID");
                            Clear(DTNo);
                            ILE.Reset();
                            ILE.SetRange("Document No.", "Document No.");
                            if ILE.FindSet then
                                DTNo := ILE."Lot No.";

                        end;

                        trigger OnPreDataItem()
                        begin

                            MoreLines := FIND('+');
                            WHILE MoreLines AND (Description = '') AND ("No." = '') AND (Quantity = 0) DO
                                MoreLines := NEXT(-1) <> 0;
                            IF NOT MoreLines THEN
                                CurrReport.BREAK;
                            SETRANGE("Line No.", 0, "Line No.");
                        end;
                    }
                    dataitem(Total; integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));

                        trigger OnPreDataItem()
                        begin

                            IF "Purch. Rcpt. Header"."Buy-from Vendor No." = "Purch. Rcpt. Header"."Pay-to Vendor No." THEN
                                CurrReport.BREAK;
                        end;
                    }
                    dataitem(Total2; integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));
                        column(VendAddr1; VendAddr[1])
                        {
                        }
                        column(VendAddr2; VendAddr[2])
                        {
                        }
                        column(VendAddr3; VendAddr[3])
                        {
                        }
                        column(VendAddr4; VendAddr[4])
                        {
                        }
                        column(VendAddr5; VendAddr[5])
                        {
                        }
                        column(VendAddr6; VendAddr[6])
                        {
                        }
                        column(VendAddr7; VendAddr[7])
                        {
                        }
                        column(VendAddr8; VendAddr[8])
                        {
                        }
                        column(PaytoAddressCaption; PaytoAddressCaptionLbl)
                        {
                        }
                    }
                }

                trigger OnAfterGetRecord()
                begin
                    IF Number > 1 THEN BEGIN
                        CopyText := FormatDocument.GetCOPYText;
                        OutputNo += 1;
                    END;
                    //CurrReport.PAGENO := 1;
                end;

                trigger OnPostDataItem()
                begin
                    IF NOT IsReportInPreviewMode THEN
                        CODEUNIT.RUN(CODEUNIT::"Purch.Rcpt.-Printed", "Purch. Rcpt. Header");
                end;

                trigger OnPreDataItem()
                begin
                    OutputNo := 1;

                    NoOfLoops := ABS(NoOfCopies) + 1;
                    CopyText := '';
                    SETRANGE(Number, 1, NoOfLoops);
                end;
            }

            trigger OnAfterGetRecord()
            begin
                // CurrReport.LANGUAGE := Language.GetLanguageID("Language Code");

                FormatAddressFields("Purch. Rcpt. Header");
                FormatDocumentFields("Purch. Rcpt. Header");

                DimSetEntry1.SETRANGE("Dimension Set ID", "Dimension Set ID");
            end;

            trigger OnPostDataItem()
            begin
                OnAfterPostDataItem("Purch. Rcpt. Header");
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(NoOfCopies; NoOfCopies)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'No. of Copies';
                        ToolTip = 'Specifies how many copies of the document to print.';
                    }
                    field(ShowInternalInfo; ShowInternalInfo)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Show Internal Information';
                        ToolTip = 'Specifies if you want the printed report to show information that is only for internal use.';
                    }
                    field(LogInteraction; LogInteraction)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Log Interaction';
                        Enabled = LogInteractionEnable;
                        ToolTip = 'Specifies if you want the program to log this interaction.';
                    }
                    field(ShowCorrectionLines; ShowCorrectionLines)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Show Correction Lines';
                        ToolTip = 'Specifies if the correction lines of an undoing of quantity posting will be shown on the report.';
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnInit()
        begin
            LogInteractionEnable := TRUE;
        end;

        trigger OnOpenPage()
        begin
            InitLogInteraction;
            LogInteractionEnable := LogInteraction;
        end;
    }

    labels
    {
    }

    trigger OnInitReport()
    begin
        CompanyInfo.GET;
        CompanyInfo.CalcFields(Picture);

        OnAfterInitReport;
    end;

    trigger OnPostReport()
    begin
        IF LogInteraction AND NOT IsReportInPreviewMode THEN
            IF "Purch. Rcpt. Header".FINDSET THEN
                REPEAT
                    SegManagement.LogDocument(
                      15, "Purch. Rcpt. Header"."No.", 0, 0, DATABASE::Vendor, "Purch. Rcpt. Header"."Buy-from Vendor No.",
                      "Purch. Rcpt. Header"."Purchaser Code",
                      '', "Purch. Rcpt. Header"."Posting Description", '');
                UNTIL "Purch. Rcpt. Header".NEXT = 0;
    end;

    trigger OnPreReport()
    begin
        IF NOT CurrReport.USEREQUESTPAGE THEN
            InitLogInteraction;
    end;

    var
        Text002: Label 'Purchase - Receipt %1', Comment = '%1 = Document No.';
        Text003: Label 'Page %1';
        CompanyInfo: Record "Company Information";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        Language: Record Language;
        RespCenter: Record "Responsibility Center";
        FormatAddr: Codeunit "Format Address";
        FormatDocument: Codeunit "Format Document";
        SegManagement: Codeunit SegManagement;
        DTNo: Code[50];
        VendAddr: array[8] of Text[100];
        ShipToAddr: array[8] of Text[100];
        CompanyAddr: array[8] of Text[100];
        PurchaserText: Text[30];
        ReferenceText: Text[80];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        LogInteraction: Boolean;
        ShowCorrectionLines: Boolean;
        OutputNo: Integer;
        [InDataSet]
        LogInteractionEnable: Boolean;
        CompanyInfoPhoneNoCaptionLbl: Label 'Phone No.';
        ComInfoVATRegNoCaptionLbl: Label 'VAT Registration No.';
        CompanyInfoGiroNoCaptionLbl: Label 'Giro No.';
        CompInfoBankNameCaptionLbl: Label 'Bank';
        ComInfoBankAccNoCaptionLbl: Label 'Account No.';
        CompanyInfoABNCaptionLbl: Label 'ABN';
        CompInfoABNDivPartNoCaptionLbl: Label 'Division Part No.';
        PurchRcptHeaderNoCaptionLbl: Label 'Shipment No.';
        PurchRcptHdrABNDivPartNoCaptionLbl: Label 'Division Part No.';
        PurchRcptHeaderABNCaptionLbl: Label 'ABN';
        HeaderDimensionsCaptionLbl: Label 'Header Dimensions';
        LineDimensionsCaptionLbl: Label 'Line Dimensions';
        PaytoAddressCaptionLbl: Label 'Pay-to Address';
        HomePageCaptionLbl: Label 'Home Page';
        EmailCaptionLbl: Label 'Email';
        DocumentDateCaptionLbl: Label 'Document Date';
        PageCaptionLbl: Label 'Page';

    [Scope('cloud')]
    procedure InitializeRequest(NewNoOfCopies: Integer; NewShowInternalInfo: Boolean; NewLogInteraction: Boolean; NewShowCorrectionLines: Boolean)
    begin
        NoOfCopies := NewNoOfCopies;
        ShowInternalInfo := NewShowInternalInfo;
        LogInteraction := NewLogInteraction;
        ShowCorrectionLines := NewShowCorrectionLines;
    end;

    local procedure InitLogInteraction()
    begin
        LogInteraction := SegManagement.FindInteractTmplCode(15) <> '';
    end;

    local procedure IsReportInPreviewMode(): Boolean
    var
        MailManagement: Codeunit "Mail Management";
    begin
        EXIT(CurrReport.PREVIEW OR MailManagement.IsHandlingGetEmailBody);
    end;

    local procedure FormatAddressFields(var PurchRcptHeader: Record "Purch. Rcpt. Header")
    begin
        FormatAddr.GetCompanyAddr(PurchRcptHeader."Responsibility Center", RespCenter, CompanyInfo, CompanyAddr);
        FormatAddr.PurchRcptShipTo(ShipToAddr, PurchRcptHeader);
        FormatAddr.PurchRcptPayTo(VendAddr, PurchRcptHeader);
    end;

    local procedure FormatDocumentFields(PurchRcptHeader: Record "Purch. Rcpt. Header")
    begin
        WITH PurchRcptHeader DO BEGIN
            FormatDocument.SetPurchaser(SalesPurchPerson, "Purchaser Code", PurchaserText);

            ReferenceText := FormatDocument.SetText("Your Reference" <> '', FIELDCAPTION("Your Reference"));
        END;
    end;

    [IntegrationEvent(TRUE, false)]
    local procedure OnAfterInitReport()
    begin
    end;

    [IntegrationEvent(TRUE, false)]
    local procedure OnAfterPostDataItem(var PurchRcptHeader: Record "Purch. Rcpt. Header")
    begin
    end;
}

