report 50008 "TS Purchase - Order"
{
    // Version     Code  Date     Author Description
    // ======================================================================================================================================================
    // #MSC1.00         28/05/15 MSC.T  Add func.
    //                                   - fnResetDS => Reset the Info.
    //                                   - fnInitializeRequest => Set Buy-from/Pay-to to Address
    //                                   - fnSetBillingAddress => Get Buy-from/Pay-to Address
    //                                   - fnSetBillingCommunication = Get Bill Communication
    //                                   - fnSetShippingAddress => Get Shipping Address
    //                                   - fnSetShippingCommunication => Get Shipping Communication
    //                                   - fnSetCompanyAddress => Get Company Address
    //                                   - fnGetCurrency => Get Currency Code
    //                                   - fnCalcAmount => Calc. Amount
    //                                   <RDLC>
    //                                   - tblDocInformation
    //                                     =
    //                                     (Code.SetFindBoldData(Cstr(Fields!Find_Bold_Value_.Value), Cstr(Fields!Find_Bold_Delimeter_Value_.Value)))
    //                                     OR
    //                                     (Code.SetDataInfo(Company Information, 1))
    //                                     OR
    //                                     (Code.SetDataInfo(Sell-to/Bill-to Address, 3))
    //                                     OR
    //                                     (Code.SetDataInfo(Ship-to Address, 4))
    //                                     OR
    //                                     (Code.SetDataInfo(Document Information, 5))
    //                                   - tblFooter
    //                                     =
    //                                     (Code.SetDataInfo(Amount, 6))
    //                                     OR
    //                                     (Code.SetDataInfo(Amount (LCY), Amount In Words, 7)
    //                                     )
    //                                   - Margin(Left,Right,Top,Bottom) 1.27, 0.635, 1.27, 0.635
    //                                   - Body (Width) 19.095cm
    //                                   - Padding 2pt, 5pt, 0pt, 0pt
    //                                   - Row Header Height 0.6cm <VerticalAlign - Middle>
    //                                   - Row Height 0.48cm <VerticalAlign - Default>
    //                                   - Location 0.05cm
    DefaultLayout = RDLC;
    RDLCLayout = './MSC Purchase - Order.rdlc';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = all;
    Caption = 'Purchase Order';
    PreviewMode = PrintLayout;

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            DataItemTableView = SORTING("Document Type", "No.")
                                WHERE("Document Type" = CONST(Order));
            RequestFilterFields = "No.", "Buy-from Vendor No.", "No. Printed";
            RequestFilterHeading = 'Purchase Order';
            column(MSCSTD_1; 'MSCSTD_1')
            {
            }
            column(CompanyInfo2Picture; CompanyInfo."IATA Logo")
            {
            }
            column(CompanyInfo3Picture; CompanyInfo."FIATA Logo")
            {
            }
            column(CompanyInfo1Picture; CompanyInfo.Picture)
            {
            }
            column(CompanyInfoName2; CompanyInfo."Name 2")
            { }
            column(CompanyInfoaddr; CompanyInfo.Address)
            { }
            column(CompanyInfoAddr2; CompanyInfo."Address 2")
            { }
            column(CompanyInfoCity; CompanyInfo.City)
            { }
            column(CompanyInfoPostcode; CompanyInfo."Post Code")
            { }
            column(CompanyInfoPhoneNo; CompanyInfo."Phone No.")
            { }
            column(CompanyInfoFax; CompanyInfo."Fax No.")
            { }
            column(CompanyInfoEmail; CompanyInfo."E-Mail")
            { }
            column(CompanyInfoWebSite; CompanyInfo."Home Page")
            { }
            column(CompanyInfoShipToAddr; CompanyInfo."Ship-to Address")
            { }
            column(CompanyInfoShipToAddr2; CompanyInfo."Ship-to Address 2")
            { }
            column(CompanyInfoShipToCity; CompanyInfo."Ship-to City")
            { }
            column(CompanyInfoShipToPostcode; CompanyInfo."Ship-to Post Code")
            { }
            column(CompanyInfoTelephone; CompanyInfo.Telephone)
            { }
            column(CompanyInfoFax2; CompanyInfo."Fax 2")
            { }
            column(Page_Caption_Value_; Text90012)
            {
            }
            column(S_No_Capt_; Text90100)
            {
            }
            column(Item_No_Capt_; Text90101)
            {
            }
            column(Description_Capt_; Text90102)
            {
            }
            column(Qty_Capt_; Text90103)
            {
            }
            column(UoM_Capt_; Text90104)
            {
            }
            column(Unit_Price_Capt_; Text90105)
            {
            }
            column(Discount_Capt_; Text90106)
            {
            }
            column(Amount_Capt_; Text90107)
            {
            }
            column(Find_Bold_Value_; STRSUBSTNO(Text90300, STRSUBSTNO(Text90202, g_cdeCurrency), STRSUBSTNO(Text90205, g_cdeCurrency)))
            {
            }
            column(Find_Bold_Delimeter_Value_; Text90301)
            {
            }
            column(Show_Item_No_Value_; g_blnShowItemNo)
            {
            }
            column(Show_VAT_Specification_Value_; NOT g_blnShowVATSpecification)
            {
            }
            column(Show_Ship_to_Address_Value_; NOT g_blnShowShipToAddress)
            {
            }
            column(Show_Grid_Lines_Value_; g_optShowGridLines)
            {
            }
            column(Show_Amount_On_Footer_Value_; g_blnShowAmtOnFooter)
            {
            }
            column(AmtCaption; AmtCaptionLbl)
            {
            }
            column(NO_USE_1; 'NO_USE_1')
            {
            }
            dataitem(CopyLoop; Integer)
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop; Integer)
                {
                    DataItemTableView = SORTING(Number)
                                        WHERE(Number = CONST(1));
                    column(MSCSTD_2; 'MSCSTD_2')
                    {
                    }
                    column(Report_Capt_Value_; STRSUBSTNO(Text004, CopyText))
                    {
                    }
                    column(PHdr_Doc_Type_Value_; "Purchase Header"."Document Type")
                    {
                    }
                    column(PHdr_No_Capt_; OrderNoCaptionLbl)
                    {
                    }
                    column(PHdr_No_Value_; "Purchase Header"."No.")
                    {
                    }
                    column(OutputNo_Value_; OutputNo)
                    {
                    }
                    column(PHdr_Document_Date_Capt_; DocDateCaptionLbl)
                    {
                    }
                    column(PHdr_Document_Date_Value_; "Purchase Header"."Document Date")
                    {
                    }
                    column(PHdr_Expected_Receipt_Date_Capt_; ExpectedReceiptDateCaptionLbl)
                    {
                    }
                    column(PHdr_Expected_Receipt_Date_Value_; "Purchase Header"."Expected Receipt Date")
                    {
                    }
                    column(PHdr_Payment_Terms_Capt_; PaymentTermsCaptionLbl)
                    {
                    }
                    column(PHdr_Payment_Terms_Desc_Value_; PaymentTerms.Description)
                    {
                    }
                    column(PHdr_Shipment_Method_Capt_; ShpMethodCaptionLbl)
                    {
                    }
                    column(PHdr_Shipment_Method_Desc_Value_; ShipmentMethod.Description)
                    {
                    }
                    column(PHdr_Pay_To_Vendor_No_Capt_; "Purchase Header".FIELDCAPTION("Pay-to Vendor No."))
                    {
                    }
                    column(PHdr_Pay_To_Vendor_No_Value_; "Purchase Header"."Pay-to Vendor No.")
                    {
                    }
                    column(PHdr_Salesperson_Capt_; PurchaserText)
                    {
                    }
                    column(PHdr_Salesperson_Value_; SalesPurchPerson.Name)
                    {
                    }
                    column(PHdr_Your_Reference_Capt_; ReferenceText)
                    {
                    }
                    column(PHdr_Your_Reference_Value_; "Purchase Header"."Your Reference")
                    {
                    }
                    column(PHdr_Prices_Inclu_VAT_Capt_; "Purchase Header".FIELDCAPTION("Prices Including VAT"))
                    {
                    }
                    column(PHdr_Prices_Inclu_VAT_Value_; "Purchase Header"."Prices Including VAT")
                    {
                    }
                    column(PHdr_Prices_Inclu_VAT_1_Value_; FORMAT("Purchase Header"."Prices Including VAT"))
                    {
                    }
                    column(PHdr_PricesIncVAT_PurchHdr; "Purchase Header"."Prices Including VAT")
                    {
                    }
                    column(PHdr_Inv_Disc_Amount_Capt_; InvDiscAmtCaptionLbl)
                    {
                    }
                    column(ShowInternalInfo; ShowInternalInfo)
                    {
                    }
                    column(FieldDelimiter_Value_; Text90000)
                    {
                    }
                    column(g_txtArrCompAddress_1_Value_; g_txtArrCompAddress[1])
                    {
                    }
                    column(g_txtArrCompAddress_2_Value_; g_txtArrCompAddress[2])
                    {
                    }
                    column(g_txtArrCompAddress_3_Value_; g_txtArrCompAddress[3])
                    {
                    }
                    column(g_txtArrCompAddress_4_Value_; g_txtArrCompAddress[4])
                    {
                    }
                    column(g_txtArrCompAddress_5_Value_; g_txtArrCompAddress[5])
                    {
                    }
                    column(g_txtArrCompAddress_6_Value_; g_txtArrCompAddress[6])
                    {
                    }
                    column(g_txtArrCompAddress_7_Value_; g_txtArrCompAddress[7])
                    {
                    }
                    column(g_txtArrCompAddress_8_Value_; g_txtArrCompAddress[8])
                    {
                    }
                    column(g_txtArrCompAddress_9_Value_; g_txtArrCompAddress[9])
                    {
                    }
                    column(g_txtArrCompAddress_10_Value_; g_txtArrCompAddress[10])
                    {
                    }
                    column(g_txtArrCompAddress_11_Value_; g_txtArrCompAddress[11])
                    {
                    }
                    column(g_txtArrCompAddress_12_Value_; g_txtArrCompAddress[12])
                    {
                    }
                    column(g_txtArrCompAddress_13_Value_; g_txtArrCompAddress[13])
                    {
                    }
                    column(g_txtArrCompAddress_14_Value_; g_txtArrCompAddress[14])
                    {
                    }
                    column(g_txtArrBillingAddress_1_Value_; g_txtArrBillingAddress[1])
                    {
                    }
                    column(g_txtArrBillingAddress_2_Value_; g_txtArrBillingAddress[2])
                    {
                    }
                    column(g_txtArrBillingAddress_3_Value_; g_txtArrBillingAddress[3])
                    {
                    }
                    column(g_txtArrBillingAddress_4_Value_; g_txtArrBillingAddress[4])
                    {
                    }
                    column(g_txtArrBillingAddress_5_Value_; g_txtArrBillingAddress[5])
                    {
                    }
                    column(g_txtArrBillingAddress_6_Value_; g_txtArrBillingAddress[6])
                    {
                    }
                    column(g_txtArrBillingAddress_7_Value_; g_txtArrBillingAddress[7])
                    {
                    }
                    column(g_txtArrBillingAddress_8_Value_; g_txtArrBillingAddress[8])
                    {
                    }
                    column(g_txtArrBillingAddress_9_Value_; g_txtArrBillingAddress[9])
                    {
                    }
                    column(g_txtArrBillingAddress_10_Value_; g_txtArrBillingAddress[10])
                    {
                    }
                    column(g_txtArrBillingAddress_11_Value_; g_txtArrBillingAddress[11])
                    {
                    }
                    column(g_txtArrBillingAddress_12_Value_; g_txtArrBillingAddress[12])
                    {
                    }
                    column(g_txtArrBillingAddress_13_Value_; g_txtArrBillingAddress[13])
                    {
                    }
                    column(g_txtArrBillingAddress_14_Value_; g_txtArrBillingAddress[14])
                    {
                    }
                    column(g_txtArrShippingAddress_1_Value_; g_txtArrShippingAddress[1])
                    {
                    }
                    column(g_txtArrShippingAddress_2_Value_; g_txtArrShippingAddress[2])
                    {
                    }
                    column(g_txtArrShippingAddress_3_Value_; g_txtArrShippingAddress[3])
                    {
                    }
                    column(g_txtArrShippingAddress_4_Value_; g_txtArrShippingAddress[4])
                    {
                    }
                    column(g_txtArrShippingAddress_5_Value_; g_txtArrShippingAddress[5])
                    {
                    }
                    column(g_txtArrShippingAddress_6_Value_; g_txtArrShippingAddress[6])
                    {
                    }
                    column(g_txtArrShippingAddress_7_Value_; g_txtArrShippingAddress[7])
                    {
                    }
                    column(g_txtArrShippingAddress_8_Value_; g_txtArrShippingAddress[8])
                    {
                    }
                    column(g_txtArrShippingAddress_9_Value_; g_txtArrShippingAddress[9])
                    {
                    }
                    column(g_txtArrShippingAddress_10_Value_; g_txtArrShippingAddress[10])
                    {
                    }
                    column(g_txtArrShippingAddress_11_Value_; g_txtArrShippingAddress[11])
                    {
                    }
                    column(g_txtArrShippingAddress_12_Value_; g_txtArrShippingAddress[12])
                    {
                    }
                    column(NO_USE_2; 'NO_USE_2')
                    {
                    }
                    dataitem(DimensionLoop1; Integer)
                    {
                        DataItemLinkReference = "Purchase Header";
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = FILTER(1 ..));
                        column(DimText; DimText)
                        {
                        }
                        column(HdrDimsCaption; HdrDimsCaptionLbl)
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
                                    DimText := STRSUBSTNO('%1 %2', DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code")
                                ELSE
                                    DimText :=
                                      STRSUBSTNO(
                                        '%1, %2 %3', DimText,
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
                    dataitem("Purchase Line"; "Purchase Line")
                    {
                        DataItemLink = "Document Type" = FIELD("Document Type"),
                                       "Document No." = FIELD("No.");
                        DataItemLinkReference = "Purchase Header";
                        DataItemTableView = SORTING("Document Type", "Document No.", "Line No.");

                        trigger OnPreDataItem()
                        begin
                            CurrReport.BREAK;
                        end;
                    }
                    dataitem(RoundLoop; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(MSCSTD_3; 'MSCSTD_3')
                        {
                        }
                        column(SNo_Value_; STRSUBSTNO('%1%2', g_intSNo, '.'))
                        {
                        }
                        column(PLine_Line_No_Value_; "Purchase Line"."Line No.")
                        {
                        }
                        column(PLine_Type_Value_; FORMAT("Purchase Line".Type, 0, 2))
                        {
                        }
                        column(PLine_No_Value_; "Purchase Line"."No.")
                        {
                        }
                        column(PLine_Description_Value_; STRSUBSTNO('%1 %2', "Purchase Line".Description, "Purchase Line"."Description 2"))
                        {
                        }
                        column(PLine_Quantity_Value_; "Purchase Line".Quantity)
                        {
                        }
                        column(PLine_UoM_Value_; "Purchase Line"."Unit of Measure Code")
                        {
                        }
                        column(PLine_Direct_Unit_Cost_Value_; "Purchase Line"."Direct Unit Cost")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 2;
                        }
                        column(PLine_Line_Disc_Perc_Value_; "Purchase Line"."Line Discount %")
                        {
                        }
                        column(PLine_Line_Amount_Value_; "Purchase Line"."Line Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PLine_Allow_Invoice_Disc_Value_; "Purchase Line"."Allow Invoice Disc.")
                        {
                        }
                        column(PLine_VAT_Identifier_Value_; "Purchase Line"."VAT Identifier")
                        {
                        }
                        column(PLine_Inv_Discount_Amount_Value_; -"Purchase Line"."Inv. Discount Amount")
                        {
                            AutoFormatExpression = "Purchase Line"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(NO_USE_3; 'NO_USE_3')
                        {
                        }
                        dataitem(DimensionLoop2; Integer)
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number = FILTER(1 ..));
                            column(DimText1; DimText)
                            {
                            }
                            column(LineDimsCaption; LineDimsCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord()
                            begin
                                IF Number = 1 THEN BEGIN
                                    IF NOT DimSetEntry2.FINDSET THEN
                                        CurrReport.BREAK;
                                END ELSE
                                    IF NOT Continue THEN
                                        CurrReport.BREAK;

                                CLEAR(DimText);
                                Continue := FALSE;
                                REPEAT
                                    OldDimText := DimText;
                                    IF DimText = '' THEN
                                        DimText := STRSUBSTNO('%1 %2', DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code")
                                    ELSE
                                        DimText :=
                                          STRSUBSTNO(
                                            '%1, %2 %3', DimText,
                                            DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code");
                                    IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                        DimText := OldDimText;
                                        Continue := TRUE;
                                        EXIT;
                                    END;
                                UNTIL DimSetEntry2.NEXT = 0;
                            end;

                            trigger OnPreDataItem()
                            begin
                                IF NOT ShowInternalInfo THEN
                                    CurrReport.BREAK;

                                DimSetEntry2.SETRANGE("Dimension Set ID", "Purchase Line"."Dimension Set ID");
                            end;
                        }

                        trigger OnAfterGetRecord()
                        begin
                            IF Number = 1 THEN
                                PurchLine.FIND('-')
                            ELSE
                                PurchLine.NEXT;
                            "Purchase Line" := PurchLine;

                            IF NOT "Purchase Header"."Prices Including VAT" AND
                               (PurchLine."VAT Calculation Type" = PurchLine."VAT Calculation Type"::"Full VAT")
                            THEN
                                PurchLine."Line Amount" := 0;

                            IF (PurchLine.Type = PurchLine.Type::"G/L Account") AND (NOT ShowInternalInfo) THEN
                                "Purchase Line"."No." := '';
                            AllowInvDisctxt := FORMAT("Purchase Line"."Allow Invoice Disc.");
                            TotalSubTotal += "Purchase Line"."Line Amount";
                            TotalInvoiceDiscountAmount -= "Purchase Line"."Inv. Discount Amount";
                            TotalAmount += "Purchase Line".Amount;
                            fnSetAmount(PurchLine); // MSC.T - 28/05/15 #MSC1.00-+
                        end;

                        trigger OnPostDataItem()
                        begin
                            PurchLine.DELETEALL;
                        end;

                        trigger OnPreDataItem()
                        begin
                            MoreLines := PurchLine.FIND('+');
                            WHILE MoreLines AND (PurchLine.Description = '') AND (PurchLine."Description 2" = '') AND
                                  (PurchLine."No." = '') AND (PurchLine.Quantity = 0) AND
                                  (PurchLine.Amount = 0) DO
                                MoreLines := PurchLine.NEXT(-1) <> 0;
                            IF NOT MoreLines THEN
                                CurrReport.BREAK;
                            PurchLine.SETRANGE("Line No.", 0, PurchLine."Line No.");
                            SETRANGE(Number, 1, PurchLine.COUNT);
                            // CurrReport.CREATETOTALS(PurchLine."Line Amount", PurchLine."Inv. Discount Amount");
                            fnResetDS; // MSC.T - 28/05/15 #MSC1.00-+
                        end;
                    }
                    dataitem(VATCounter; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATAmtLineVATBase; VATAmountLine."VAT Base")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmt; VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineLineAmt; VATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscBaseAmt; VATAmountLine."Inv. Disc. Base Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvoiceDiscAmt; VATAmountLine."Invoice Discount Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVAT; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATAmtLineVATIdentifier; VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATPercentCaption; VATPercentCaptionLbl)
                        {
                        }
                        column(VATBaseCaption; VATBaseCaptionLbl)
                        {
                        }
                        column(VATAmtCaption; VATAmtCaptionLbl)
                        {
                        }
                        column(VATAmtSpecCaption; VATAmtSpecCaptionLbl)
                        {
                        }
                        column(VATIdentCaption; VATIdentCaptionLbl)
                        {
                        }
                        column(InvDiscBaseAmtCaption; InvDiscBaseAmtCaptionLbl)
                        {
                        }
                        column(LineAmtCaption; LineAmtCaptionLbl)
                        {
                        }
                        column(InvDiscAmt1Caption; InvDiscAmt1CaptionLbl)
                        {
                        }
                        column(TotalCaption; TotalCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);
                        end;

                        trigger OnPreDataItem()
                        begin
                            // MSC.T - 28/05/15 #MSC1.00-
                            IF NOT g_blnShowVATSpecification THEN
                                CurrReport.BREAK;
                            // MSC.T - 28/05/15 #MSC1.00+
                            IF VATAmount = 0 THEN
                                CurrReport.BREAK;
                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            // CurrReport.CREATETOTALS(
                            //  VATAmountLine."Line Amount", VATAmountLine."Inv. Disc. Base Amount",
                            // VATAmountLine."Invoice Discount Amount", VATAmountLine."VAT Base", VATAmountLine."VAT Amount");
                        end;
                    }
                    dataitem(VATCounterLCY; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(VALExchRate; VALExchRate)
                        {
                        }
                        column(VALSpecLCYHeader; VALSpecLCYHeader)
                        {
                        }
                        column(VALVATAmtLCY; VALVATAmountLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VALVATBaseLCY; VALVATBaseLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVAT1; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATAmtLineVATIdentifier1; VATAmountLine."VAT Identifier")
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);
                            VALVATBaseLCY :=
                              VATAmountLine.GetBaseLCY(
                                "Purchase Header"."Posting Date", "Purchase Header"."Currency Code", "Purchase Header"."Currency Factor");
                            VALVATAmountLCY :=
                              VATAmountLine.GetAmountLCY(
                                "Purchase Header"."Posting Date", "Purchase Header"."Currency Code", "Purchase Header"."Currency Factor");
                        end;

                        trigger OnPreDataItem()
                        begin
                            // MSC.T - 28/05/15 #MSC1.00-
                            IF NOT g_blnShowVATSpecification THEN
                                CurrReport.BREAK;
                            // MSC.T - 28/05/15 #MSC1.00+
                            IF (NOT GLSetup."Print VAT specification in LCY") OR
                               ("Purchase Header"."Currency Code" = '') OR
                               (VATAmountLine.GetTotalVATAmount = 0) THEN
                                CurrReport.BREAK;

                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            // CurrReport.CREATETOTALS(VALVATBaseLCY, VALVATAmountLCY);

                            IF GLSetup."LCY Code" = '' THEN
                                VALSpecLCYHeader := Text007 + Text008
                            ELSE
                                VALSpecLCYHeader := Text007 + FORMAT(GLSetup."LCY Code");

                            CurrExchRate.FindCurrency("Purchase Header"."Posting Date", "Purchase Header"."Currency Code", 1);
                            VALExchRate := STRSUBSTNO(Text009, CurrExchRate."Relational Exch. Rate Amount", CurrExchRate."Exchange Rate Amount");
                        end;
                    }
                    dataitem(Total; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));
                    }
                    dataitem(Total2; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));
                        column(PaytoVendNo_PurchHdr; "Purchase Header"."Pay-to Vendor No.")
                        {
                        }
                        column(VendAddr8; VendAddr[8])
                        {
                        }
                        column(VendAddr7; VendAddr[7])
                        {
                        }
                        column(VendAddr6; VendAddr[6])
                        {
                        }
                        column(VendAddr5; VendAddr[5])
                        {
                        }
                        column(VendAddr4; VendAddr[4])
                        {
                        }
                        column(VendAddr3; VendAddr[3])
                        {
                        }
                        column(VendAddr2; VendAddr[2])
                        {
                        }
                        column(VendAddr1; VendAddr[1])
                        {
                        }
                        column(PaymentDetailsCaption; PaymentDetailsCaptionLbl)
                        {
                        }
                        column(VendNoCaption; VendNoCaptionLbl)
                        {
                        }

                        trigger OnPreDataItem()
                        begin
                            IF "Purchase Header"."Buy-from Vendor No." = "Purchase Header"."Pay-to Vendor No." THEN
                                CurrReport.BREAK;
                        end;
                    }
                    dataitem(Total3; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));
                        column(SelltoCustNo_PurchHdr; "Purchase Header"."Sell-to Customer No.")
                        {
                        }
                        column(ShipToAddr1; ShipToAddr[1])
                        {
                        }
                        column(ShipToAddr2; ShipToAddr[2])
                        {
                        }
                        column(ShipToAddr3; ShipToAddr[3])
                        {
                        }
                        column(ShipToAddr4; ShipToAddr[4])
                        {
                        }
                        column(ShipToAddr5; ShipToAddr[5])
                        {
                        }
                        column(ShipToAddr6; ShipToAddr[6])
                        {
                        }
                        column(ShipToAddr7; ShipToAddr[7])
                        {
                        }
                        column(ShipToAddr8; ShipToAddr[8])
                        {
                        }
                        column(ShiptoAddCaption; ShiptoAddCaptionLbl)
                        {
                        }
                        column(SelltoCustNo_PurchHdrCaption; "Purchase Header".FIELDCAPTION("Sell-to Customer No."))
                        {
                        }

                        trigger OnPreDataItem()
                        begin
                            // MSC.T - 28/05/15 #MSC1.00-
                            IF NOT g_blnShowShipToAddress THEN
                                CurrReport.BREAK;
                            // MSC.T - 28/05/15 #MSC1.00+
                            IF ("Purchase Header"."Sell-to Customer No." = '') AND (ShipToAddr[1] = '') THEN
                                CurrReport.BREAK;
                        end;
                    }
                    dataitem(PrepmtLoop; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = FILTER(1 ..));
                        column(PrepmtLineAmt; PrepmtLineAmount)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtInvBufGLAccNo; PrepmtInvBuf."G/L Account No.")
                        {
                        }
                        column(PrepmtInvBufDesc; PrepmtInvBuf.Description)
                        {
                        }
                        column(TotalExclVATText1; TotalExclVATText)
                        {
                        }
                        column(PrepmtVATAmtLineVATAmtText; PrepmtVATAmountLine.VATAmountText)
                        {
                        }
                        column(PrepmtVATAmt; PrepmtVATAmount)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalInclVATText1; TotalInclVATText)
                        {
                        }
                        column(PrepmtInvBufAmtPrepmtVATAmt; PrepmtInvBuf.Amount + PrepmtVATAmount)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtTotalAmtInclVAT; PrepmtTotalAmountInclVAT)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(Number_IntegerLine; Number)
                        {
                        }
                        column(DescCaption; DescCaptionLbl)
                        {
                        }
                        column(GLAccNoCaption; GLAccNoCaptionLbl)
                        {
                        }
                        column(PrepmtSpecCaption; PrepmtSpecCaptionLbl)
                        {
                        }
                        dataitem(PrepmtDimLoop; Integer)
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number = FILTER(1 ..));
                            column(DimText2; DimText)
                            {
                            }

                            trigger OnAfterGetRecord()
                            begin
                                IF Number = 1 THEN BEGIN
                                    IF NOT PrepmtDimSetEntry.FINDSET THEN
                                        CurrReport.BREAK;
                                END ELSE
                                    IF NOT Continue THEN
                                        CurrReport.BREAK;

                                CLEAR(DimText);
                                Continue := FALSE;
                                REPEAT
                                    OldDimText := DimText;
                                    IF DimText = '' THEN
                                        DimText := STRSUBSTNO('%1 %2', PrepmtDimSetEntry."Dimension Code", PrepmtDimSetEntry."Dimension Value Code")
                                    ELSE
                                        DimText :=
                                          STRSUBSTNO(
                                            '%1, %2 %3', DimText,
                                            PrepmtDimSetEntry."Dimension Code", PrepmtDimSetEntry."Dimension Value Code");
                                    IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                        DimText := OldDimText;
                                        Continue := TRUE;
                                        EXIT;
                                    END;
                                UNTIL PrepmtDimSetEntry.NEXT = 0;
                            end;
                        }

                        trigger OnAfterGetRecord()
                        begin
                            IF Number = 1 THEN BEGIN
                                IF NOT PrepmtInvBuf.FIND('-') THEN
                                    CurrReport.BREAK;
                            END ELSE
                                IF PrepmtInvBuf.NEXT = 0 THEN
                                    CurrReport.BREAK;

                            IF ShowInternalInfo THEN
                                PrepmtDimSetEntry.SETRANGE("Dimension Set ID", PrepmtInvBuf."Dimension Set ID");

                            IF "Purchase Header"."Prices Including VAT" THEN
                                PrepmtLineAmount := PrepmtInvBuf."Amount Incl. VAT"
                            ELSE
                                PrepmtLineAmount := PrepmtInvBuf.Amount;
                        end;

                        trigger OnPreDataItem()
                        begin
                            // CurrReport.CREATETOTALS(
                            //  PrepmtInvBuf.Amount, PrepmtInvBuf."Amount Incl. VAT",
                            // PrepmtVATAmountLine."Line Amount", PrepmtVATAmountLine."VAT Base",
                            // PrepmtVATAmountLine."VAT Amount",
                            // PrepmtLineAmount);
                        end;
                    }
                    dataitem(PrepmtVATCounter; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(PrepmtVATAmtLineVATAmt; PrepmtVATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtVATAmtLineVATBase; PrepmtVATAmountLine."VAT Base")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtVATAmtLineLineAmt; PrepmtVATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(PrepmtVATAmtLineVAT; PrepmtVATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(PrepmtVATAmtLineVATIdentifier; PrepmtVATAmountLine."VAT Identifier")
                        {
                        }
                        column(PrepmtVATAmtSpecCaption; PrepmtVATAmtSpecCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            PrepmtVATAmountLine.GetLine(Number);
                        end;

                        trigger OnPreDataItem()
                        begin
                            SETRANGE(Number, 1, PrepmtVATAmountLine.COUNT);
                        end;
                    }
                    dataitem(PrepmtTotal; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));

                        trigger OnPreDataItem()
                        begin
                            IF NOT PrepmtInvBuf.FIND('-') THEN
                                CurrReport.BREAK;
                        end;
                    }
                    dataitem(intdtFooter; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));
                        column(MSCSTD_4; 'MSCSTD_4')
                        {
                        }
                        column(g_arrtxtAmount_Capt_1_; g_arrtxtAmountCapt[1])
                        {
                        }
                        column(g_arrtxtAmount_Capt_2_; g_arrtxtAmountCapt[2])
                        {
                        }
                        column(g_arrtxtAmount_Capt_3_; g_arrtxtAmountCapt[3])
                        {
                        }
                        column(g_arrtxtAmount_Capt_4_; g_arrtxtAmountCapt[4])
                        {
                        }
                        column(g_arrtxtAmount_Capt_5_; g_arrtxtAmountCapt[5])
                        {
                        }
                        column(g_arrtxtAmount_Capt_6_; g_arrtxtAmountCapt[6])
                        {
                        }
                        column(g_arrdecAmount_1_Value_; g_arrdecAmount[1])
                        {
                            AutoFormatExpression = g_recTmpPurchHdr."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(g_arrdecAmount_2_Value_; g_arrdecAmount[2])
                        {
                            AutoFormatExpression = g_recTmpPurchHdr."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(g_arrdecAmount_3_Value_; g_arrdecAmount[3])
                        {
                            AutoFormatExpression = g_recTmpPurchHdr."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(g_arrdecAmount_4_Value_; g_arrdecAmount[4])
                        {
                            AutoFormatExpression = g_recTmpPurchHdr."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(g_arrdecAmount_5_Value_; g_arrdecAmount[5])
                        {
                            AutoFormatExpression = g_recTmpPurchHdr."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(g_arrdecAmount_6_Value_; g_arrdecAmount[6])
                        {
                            AutoFormatExpression = g_recTmpPurchHdr."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(g_txtFieldDelimeter_Value_; STRSUBSTNO(Text90200, Text90000))
                        {
                        }
                        column(g_arrtxtAmountInWords_1_Value_; g_arrtxtAmountInWords[1])
                        {
                        }
                        column(g_decTotalAmount_Value_; g_decTotalAmount)
                        {
                            AutoFormatExpression = g_recTmpPurchHdr."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(g_arrtxtAmountLCY_Capt_1_; g_arrtxtAmountLCYCapt[1])
                        {
                        }
                        column(g_arrtxtAmountLCY_Capt_2_; g_arrtxtAmountLCYCapt[2])
                        {
                        }
                        column(g_arrtxtAmountLCY_Capt_3_; g_arrtxtAmountLCYCapt[3])
                        {
                        }
                        column(g_arrdecAmountLCY_1_Value_; g_arrdecAmountLCY[1])
                        {
                            AutoFormatExpression = g_recTmpPurchHdr."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(g_arrdecAmountLCY_2_Value_; g_arrdecAmountLCY[2])
                        {
                            AutoFormatExpression = g_recTmpPurchHdr."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(g_arrdecAmountLCY_3_Value_; g_arrdecAmountLCY[3])
                        {
                            AutoFormatExpression = g_recTmpPurchHdr."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(g_txtExchangeRateInWords_Value_; g_txtExchangeRateInWords)
                        {
                        }
                        column(g_decExchangeRate_Value_; g_decExchangeRate)
                        {
                        }
                        column(g_txtVATLCYInWords_Value_; g_txtVATLCYInWords)
                        {
                        }
                        column(g_decVATLCY_Value_; g_decVATLCY)
                        {
                        }

                        trigger OnPreDataItem()
                        begin
                            fnCalcAmount;// MSC.T - 28/05/15 #MSC1.00-+
                        end;
                    }

                    trigger OnAfterGetRecord()
                    begin
                        // MSC.T - 28/05/15 #MSC1.00-
                        fnSetBillingAddress;
                        fnSetShippingAddress;
                        fnGetCurrency;
                        // MSC.T - 28/05/15 #MSC1.00+
                    end;
                }

                trigger OnAfterGetRecord()
                var
                    PrepmtPurchLine: Record "Purchase Line" temporary;
                    TempPurchLine: Record "Purchase Line" temporary;
                begin
                    CLEAR(PurchLine);
                    CLEAR(PurchPost);
                    PurchLine.DELETEALL;
                    VATAmountLine.DELETEALL;
                    PurchPost.GetPurchLines("Purchase Header", PurchLine, 0);
                    PurchLine.CalcVATAmountLines(0, "Purchase Header", PurchLine, VATAmountLine);
                    PurchLine.UpdateVATOnLines(0, "Purchase Header", PurchLine, VATAmountLine);
                    VATAmount := VATAmountLine.GetTotalVATAmount;
                    VATBaseAmount := VATAmountLine.GetTotalVATBase;
                    VATDiscountAmount :=
                      VATAmountLine.GetTotalVATDiscount("Purchase Header"."Currency Code", "Purchase Header"."Prices Including VAT");
                    TotalAmountInclVAT := VATAmountLine.GetTotalAmountInclVAT;

                    PrepmtInvBuf.DELETEALL;
                    PurchPostPrepmt.GetPurchLines("Purchase Header", 0, PrepmtPurchLine);
                    IF (NOT PrepmtPurchLine.ISEMPTY) THEN BEGIN
                        PurchPostPrepmt.GetPurchLinesToDeduct("Purchase Header", TempPurchLine);
                        IF NOT TempPurchLine.ISEMPTY THEN
                            PurchPostPrepmt.CalcVATAmountLines("Purchase Header", TempPurchLine, PrePmtVATAmountLineDeduct, 1);
                    END;
                    PurchPostPrepmt.CalcVATAmountLines("Purchase Header", PrepmtPurchLine, PrepmtVATAmountLine, 0);
                    PrepmtVATAmountLine.DeductVATAmountLine(PrePmtVATAmountLineDeduct);
                    PurchPostPrepmt.UpdateVATOnLines("Purchase Header", PrepmtPurchLine, PrepmtVATAmountLine, 0);
                    // PurchPostPrepmt.BuildInvLineBuffer2("Purchase Header", PrepmtPurchLine, 0, PrepmtInvBuf);
                    PrepmtVATAmount := PrepmtVATAmountLine.GetTotalVATAmount;
                    PrepmtVATBaseAmount := PrepmtVATAmountLine.GetTotalVATBase;
                    PrepmtTotalAmountInclVAT := PrepmtVATAmountLine.GetTotalAmountInclVAT;

                    IF Number > 1 THEN
                        CopyText := Text003;
                    //CurrReport.PAGENO := 1;
                    OutputNo := OutputNo + 1;

                    TotalSubTotal := 0;
                    TotalAmount := 0;
                end;

                trigger OnPostDataItem()
                begin
                    IF NOT CurrReport.PREVIEW THEN
                        PurchCountPrinted.RUN("Purchase Header");
                end;

                trigger OnPreDataItem()
                begin
                    NoOfLoops := ABS(NoOfCopies) + 1;
                    CopyText := '';
                    SETRANGE(Number, 1, NoOfLoops);
                    OutputNo := 0;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                // CurrReport.LANGUAGE := Language.GetLanguageID("Language Code");

                FormatAddressFields("Purchase Header");
                FormatDocumentFields("Purchase Header");
                PricesInclVATtxt := FORMAT("Prices Including VAT");

                DimSetEntry1.SETRANGE("Dimension Set ID", "Dimension Set ID");
                // MSC.T - 28/05/15 #MSC1.00-
                IF (GUIALLOWED) AND
                   (Status = Status::Open) AND
                   (NOT CurrReport.PREVIEW) THEN
                    TESTFIELD(Status);
                // MSC.T - 28/05/15 #MSC1.00+
                IF NOT CurrReport.PREVIEW THEN BEGIN
                    IF ArchiveDocument THEN
                        ArchiveManagement.StorePurchDocument("Purchase Header", LogInteraction);

                    IF LogInteraction THEN BEGIN
                        CALCFIELDS("No. of Archived Versions");
                        SegManagement.LogDocument(
                          13, "No.", "Doc. No. Occurrence", "No. of Archived Versions", DATABASE::Vendor, "Buy-from Vendor No.",
                          "Purchaser Code", '', "Posting Description", '');
                    END;
                END;
                // MSC.T - 28/05/15 #MSC1.00-
                g_recTmpPurchHdr.INIT;
                g_recTmpPurchHdr.TRANSFERFIELDS("Purchase Header");
                // MSC.T - 28/05/15 #MSC1.00-
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
                    field(NoofCopies; NoOfCopies)
                    {
                        Caption = 'No. of Copies';
                        ApplicationArea = all;
                    }
                    field(ShowInternalInformation; ShowInternalInfo)
                    {
                        Caption = 'Show Internal Information';
                        ApplicationArea = all;
                    }
                    field(ArchiveDocument; ArchiveDocument)
                    {
                        Caption = 'Archive Document';
                        ApplicationArea = all;

                        trigger OnValidate()
                        begin
                            IF NOT ArchiveDocument THEN
                                LogInteraction := FALSE;
                        end;
                    }
                    field(LogInteraction; LogInteraction)
                    {
                        Caption = 'Log Interaction';
                        Enabled = LogInteractionEnable;
                        ApplicationArea = all;

                        trigger OnValidate()
                        begin
                            IF LogInteraction THEN
                                ArchiveDocument := ArchiveDocumentEnable;
                        end;
                    }
                    field(ctlShowItemNo; g_blnShowItemNo)
                    {
                        Caption = 'Show Item No.';
                        ApplicationArea = all;
                    }
                    field(ctlShowVATSpecification; g_blnShowVATSpecification)
                    {
                        Caption = 'Show GST Specification';
                        ApplicationArea = all;
                    }
                    field(ctlShowLCYforFCY; g_blnShowLCYforFCY)
                    {
                        Caption = 'Show LCY for FCY';
                        ApplicationArea = all;
                    }
                    field(ctlShowAmountInWords; g_blnShowAmountInWords)
                    {
                        Caption = 'Show Total In Words';
                        ApplicationArea = all;
                    }
                    field(ctlShowShipToAddress; g_blnShowShipToAddress)
                    {
                        Caption = 'Show Ship-to Address';
                        ApplicationArea = all;
                    }
                    field(ctlShowGridLines; g_optShowGridLines)
                    {
                        Caption = 'Show Grid Lines';
                        ApplicationArea = all;
                    }
                }
                group("Billing Address and Communication")
                {
                    group(Address)
                    {
                        field("Billing Address"; g_optBillingAddress)
                        {
                            Editable = false;
                            ApplicationArea = all;
                        }
                        field("Show Vendor No."; g_blnShowVendNo)
                        {
                            ApplicationArea = all;
                        }
                    }
                    group(Communication)
                    {
                        group(General)
                        {
                            grid(Gen)
                            {
                                GridLayout = Rows;
                                group(grpShowAttention)
                                {
                                    Caption = 'Show Attention';
                                    //The GridLayout property is only supported on controls of type Grid
                                    //GridLayout = Rows;
                                    field("Use Vendor Card if invoice is empty."; g_blnShowCommunication[1])
                                    {
                                        ApplicationArea = all;
                                    }
                                    field(Invoice; g_blnShowCommunication[2])
                                    {
                                        ApplicationArea = all;
                                    }
                                }
                                group(grpShowPhoneNo)
                                {
                                    Caption = 'Show Phone No.';
                                    field(Empty_1; '')
                                    {
                                        Visible = false;
                                        ApplicationArea = all;
                                    }
                                    field("Show Phone No."; g_blnShowCommunication[3])
                                    {
                                        RowSpan = 1;
                                        ShowCaption = false;
                                        ApplicationArea = all;
                                    }
                                }
                                group(grpShowFaxNo)
                                {
                                    Caption = 'Show Fax No.';
                                    field(Empty_2; '')
                                    {
                                        Visible = false;
                                        ApplicationArea = all;
                                    }
                                    field("Show Fax No."; g_blnShowCommunication[4])
                                    {
                                        ShowCaption = false;
                                        ApplicationArea = all;
                                    }
                                }
                                group(grpShowEMail)
                                {
                                    Caption = 'Show E-Mail';
                                    field(Empty_3; '')
                                    {
                                        Visible = false;
                                        ApplicationArea = all;
                                    }
                                    field("Show E-Mail"; g_blnShowCommunication[5])
                                    {
                                        ShowCaption = false;
                                        ApplicationArea = all;
                                    }
                                }
                            }
                        }
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
            ArchiveDocument := PurchSetup."Archive Orders";
            LogInteraction := SegManagement.FindInteractTmplCode(13) <> '';

            LogInteractionEnable := LogInteraction;
            fnInitializeRequest; // MSC.T - 28/05/15 #MSC1.00-+
        end;
    }

    labels
    {
    }

    trigger OnInitReport()
    begin
        GLSetup.GET;
        PurchSetup.GET;
        // MSC.T - 28/05/15 #MSC1.00-
        /*===
        CASE PurchSetup."Logo Position on Documents" OF
          PurchSetup."Logo Position on Documents"::"0":;
          PurchSetup."Logo Position on Documents"::"1":
            BEGIN
              CompanyInfo3.GET;
              CompanyInfo3.CALCFIELDS(Picture);
            END;
          PurchSetup."Logo Position on Documents"::"2":
            BEGIN
              CompanyInfo1.GET;
              CompanyInfo1.CALCFIELDS(Picture);
            END;
          PurchSetup."Logo Position on Documents"::"3":
            BEGIN
              CompanyInfo2.GET;
              CompanyInfo2.CALCFIELDS(Picture);
            END;
        END;
        ===*/
        CompanyInfo.GET;
        CompanyInfo.CALCFIELDS(Picture);
        CompanyInfo.CalcFields("IATA Logo");
        CompanyInfo.CalcFields("FIATA Logo");
        fnSetCompanyAddress;
        // MSC.T - 28/05/15 #MSC1.00+

    end;

    var
        Text000: Label 'Purchaser';
        Text001: Label 'Total %1';
        Text002: Label 'Total %1 Incl. VAT';
        Text003: Label ' COPY';
        Text004: Label 'Purchase - Order %1';
        Text005: Label 'Page%1';
        Text006: Label 'Total %1 Excl. VAT';
        GLSetup: Record "General Ledger Setup";
        CompanyInfo: Record "Company Information";
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        PrepmtPaymentTerms: Record "Payment Terms";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        VATAmountLine: Record "VAT Amount Line" temporary;
        PrepmtVATAmountLine: Record "VAT Amount Line" temporary;
        PrePmtVATAmountLineDeduct: Record "VAT Amount Line" temporary;
        PurchLine: Record "Purchase Line" temporary;
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        PrepmtDimSetEntry: Record "Dimension Set Entry";
        PrepmtInvBuf: Record "Prepayment Inv. Line Buffer" temporary;
        RespCenter: Record "Responsibility Center";
        Language: Record Language;
        CurrExchRate: Record "Currency Exchange Rate";
        PurchSetup: Record "Purchases & Payables Setup";
        PurchCountPrinted: Codeunit "Purch.Header-Printed";
        FormatAddr: Codeunit "Format Address";
        FormatDocument: Codeunit "Format Document";
        PurchPost: Codeunit "Purch.-Post";
        ArchiveManagement: Codeunit ArchiveManagement;
        SegManagement: Codeunit SegManagement;
        PurchPostPrepmt: Codeunit "Purchase-Post Prepayments";
        VendAddr: array[8] of Text[50];
        ShipToAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
        BuyFromAddr: array[8] of Text[50];
        PurchaserText: Text[30];
        VATNoText: Text[80];
        ReferenceText: Text[80];
        TotalText: Text[50];
        TotalInclVATText: Text[50];
        TotalExclVATText: Text[50];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        OutputNo: Integer;
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        ArchiveDocument: Boolean;
        LogInteraction: Boolean;
        VATAmount: Decimal;
        VATBaseAmount: Decimal;
        VATDiscountAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        VALVATBaseLCY: Decimal;
        VALVATAmountLCY: Decimal;
        VALSpecLCYHeader: Text[80];
        VALExchRate: Text[50];
        Text007: Label 'VAT Amount Specification in ';
        Text008: Label 'Local Currency';
        Text009: Label 'Exchange rate: %1/%2';
        PrepmtVATAmount: Decimal;
        PrepmtVATBaseAmount: Decimal;
        PrepmtAmountInclVAT: Decimal;
        PrepmtTotalAmountInclVAT: Decimal;
        PrepmtLineAmount: Decimal;
        PricesInclVATtxt: Text[30];
        AllowInvDisctxt: Text[30];
        [InDataSet]
        ArchiveDocumentEnable: Boolean;
        [InDataSet]
        LogInteractionEnable: Boolean;
        TotalSubTotal: Decimal;
        TotalAmount: Decimal;
        TotalInvoiceDiscountAmount: Decimal;
        "=MSCSTD": Integer;
        CompanyInfo1: Record "Company Information";
        CompanyInfo2: Record "Company Information";
        CompanyInfo3: Record "Company Information";
        g_intSNo: Integer;
        g_intPervSNo: Integer;
        g_intResetCounter: Integer;
        g_optBillingAddress: Option "Buy-from Vendor","Pay-to Vendor";
        g_blnIsDraft: Boolean;
        g_blnShowVendNo: Boolean;
        g_blnShowCommunication: array[5] of Boolean;
        g_txtArrSupplierAddr: array[8] of Text[50];
        g_txtArrCompAddress: array[14] of Text[250];
        g_txtArrBillingAddress: array[14] of Text[250];
        g_txtArrShippingAddress: array[14] of Text[250];
        g_blnShowItemNo: Boolean;
        g_optShowGridLines: Option "None",Dotted,Dashed,Solid;
        g_cdeCurrency: Code[20];
        g_decTotalSubTotal: Decimal;
        g_decTotalInvoiceDiscountAmount: Decimal;
        g_decTotalAmount: Decimal;
        g_decTotalAmountVAT: Decimal;
        g_decTotalAmountInclVAT: Decimal;
        g_decTotalPaymentDiscountOnVAT: Decimal;
        g_arrtxtAmountCapt: array[6] of Text[50];
        g_arrdecAmount: array[6] of Decimal;
        g_arrtxtAmountInWords: array[2] of Text[250];
        g_arrtxtAmountLCYCapt: array[3] of Text[50];
        g_arrdecAmountLCY: array[3] of Decimal;
        g_txtVATLCYInWords: Text[1024];
        g_decVATLCY: Decimal;
        g_cdeCurrencyLCY: Code[10];
        g_txtExchangeRateInWords: Text[1024];
        g_decExchangeRate: Decimal;
        g_blnShowAmountInWords: Boolean;
        g_blnShowVATSpecification: Boolean;
        g_blnShowShipToAddress: Boolean;
        g_blnShowAmtOnFooter: Boolean;
        g_blnShowLCYforFCY: Boolean;
        g_txtSDateFormat: Text[35];
        g_txtLDateFormat: Text[35];
        g_txtSTimeFormat: Text[35];
        g_txtLTimeFormat: Text[35];
        g_txtFullDateTimeFormat: Text[35];
        g_txtCurrencySymbol: Text[5];
        g_txtCurrencyLCYSymbol: Text[5];
        g_recLanguage: Record Language;
        g_recTmpPurchHdr: Record "Purchase Header" temporary;
        OrderNoCaptionLbl: Label 'Order No.';
        DocDateCaptionLbl: Label 'Document Date';
        HdrDimsCaptionLbl: Label 'Header Dimensions';
        InvDiscAmtCaptionLbl: Label 'Invoice Discount Amount';
        LineDimsCaptionLbl: Label 'Line Dimensions';
        VATPercentCaptionLbl: Label 'VAT %';
        VATBaseCaptionLbl: Label 'VAT Base';
        VATAmtCaptionLbl: Label 'VAT Amount';
        VATAmtSpecCaptionLbl: Label 'VAT Amount Specification';
        VATIdentCaptionLbl: Label 'VAT Identifier';
        InvDiscBaseAmtCaptionLbl: Label 'Invoice Discount Base Amount';
        LineAmtCaptionLbl: Label 'Line Amount';
        InvDiscAmt1CaptionLbl: Label 'Invoice Discount Amount';
        TotalCaptionLbl: Label 'Total';
        PaymentDetailsCaptionLbl: Label 'Payment Details';
        VendNoCaptionLbl: Label 'Vendor No.';
        ShiptoAddCaptionLbl: Label 'Ship-to Address';
        DescCaptionLbl: Label 'Description';
        GLAccNoCaptionLbl: Label 'G/L Account No.';
        PrepmtSpecCaptionLbl: Label 'Prepayment Specification';
        PrepmtVATAmtSpecCaptionLbl: Label 'Prepayment VAT Amount Specification';
        AmtCaptionLbl: Label 'Amount';
        ExpectedReceiptDateCaptionLbl: Label 'Expected Receipt Date';
        PaymentTermsCaptionLbl: Label 'Payment Terms';
        ShpMethodCaptionLbl: Label 'Shipment Method';
        PrepmtPaymentTermsDescCaptionLbl: Label 'Prepayment Payment Terms';
        AllowInvDiscCaptionLbl: Label 'Allow Invoice Discount';
        //"==MSCSTD": ;
        Text90000: Label ':';
        Text90001: Label 'Vendor';
        Text90002: Label 'Buy-from Vendor';
        Text90003: Label 'Pay-to Vendor';
        Text90004: Label 'Ship-to';
        Text90005: Label 'Attn';
        Text90006: Label 'Phone No.';
        Text90007: Label 'Fax No.';
        Text90008: Label 'E-Mail';
        Text90009: Label 'Web Site';
        Text90010: Label 'Registration No.';
        Text90011: Label 'GST Registration No.';
        Text90012: Label 'Page %1 of %2';
        Text90100: Label 'S/No.';
        Text90101: Label 'Item No.';
        Text90102: Label 'Description';
        Text90103: Label 'Qty.';
        Text90104: Label 'UoM';
        Text90105: Label 'Unit Price';
        Text90106: Label 'Discount %';
        Text90107: Label 'Amount';
        Text90200: Label '%1';
        Text90201: Label 'Subtotal';
        Text90202: Label 'Total %1';
        Text90203: Label 'Invoice Discount Amount';
        Text90204: Label 'Payment Discount on GST';
        Text90205: Label 'Total %1 Incl. GST';
        Text90206: Label 'Total %1 Excl. GST';
        Text90207: Label 'Exchange rate: %1';
        Text90208: Label '%1 - %2 :';
        Text90300: Label 'Attn;Phone No.;Fax No.;E-Mail;Web Site;GST Registration No.;Registration No.;Subtotal;%1;%2';
        Text90301: Label ';';

    procedure InitializeRequest(NewNoOfCopies: Integer; NewShowInternalInfo: Boolean; NewArchiveDocument: Boolean; NewLogInteraction: Boolean)
    begin
        NoOfCopies := NewNoOfCopies;
        ShowInternalInfo := NewShowInternalInfo;
        ArchiveDocument := NewArchiveDocument;
        LogInteraction := NewLogInteraction;
    end;

    local procedure FormatAddressFields(var PurchaseHeader: Record "Purchase Header")
    begin
        FormatAddr.GetCompanyAddr(PurchaseHeader."Responsibility Center", RespCenter, CompanyInfo, CompanyAddr);
        FormatAddr.PurchHeaderBuyFrom(BuyFromAddr, PurchaseHeader);
        IF PurchaseHeader."Buy-from Vendor No." <> PurchaseHeader."Pay-to Vendor No." THEN
            FormatAddr.PurchHeaderPayTo(VendAddr, PurchaseHeader);
        FormatAddr.PurchHeaderShipTo(ShipToAddr, PurchaseHeader);
    end;

    local procedure FormatDocumentFields(PurchaseHeader: Record "Purchase Header")
    begin
        WITH PurchaseHeader DO BEGIN
            FormatDocument.SetTotalLabels("Currency Code", TotalText, TotalInclVATText, TotalExclVATText);
            FormatDocument.SetPurchaser(SalesPurchPerson, "Purchaser Code", PurchaserText);
            FormatDocument.SetPaymentTerms(PaymentTerms, "Payment Terms Code", "Language Code");
            FormatDocument.SetPaymentTerms(PrepmtPaymentTerms, "Prepmt. Payment Terms Code", "Language Code");
            FormatDocument.SetShipmentMethod(ShipmentMethod, "Shipment Method Code", "Language Code");

            ReferenceText := FormatDocument.SetText("Your Reference" <> '', FIELDCAPTION("Your Reference"));
            VATNoText := FormatDocument.SetText("VAT Registration No." <> '', FIELDCAPTION("VAT Registration No."));

            PurchaserText := Text000; // MSC.T - 28/05/15 #MSC1.00-+
            ReferenceText := FIELDCAPTION("Your Reference"); // MSC.T - 28/05/15 #MSC1.00-+
        END;
    end;

    local procedure "===MSCSTD"()
    begin
        // MSC.T - 28/05/15 #MSC1.00-+
    end;

    local procedure fnResetDS()
    begin
        // MSC.T - 28/05/15 #MSC1.00-
        CLEAR(g_txtArrCompAddress);
        CLEAR(g_txtArrBillingAddress);
        CLEAR(g_txtArrShippingAddress);
        CLEAR(CompanyInfo1);
        CLEAR(CompanyInfo2);
        CLEAR(CompanyInfo3);
        g_intSNo := 0;
        g_intPervSNo := 0;
        // MSC.T - 28/05/15 #MSC1.00+
    end;

    local procedure fnInitializeRequest()
    begin
        // MSC.T - 28/05/15 #MSC1.00-
        g_optBillingAddress := g_optBillingAddress::"Buy-from Vendor";
        g_blnShowAmountInWords := FALSE;
        g_blnShowAmtOnFooter := TRUE; // Show and Hide Amount on Body

        g_blnShowCommunication[1] := TRUE; // Use Customer Card if invoice is empty.
        g_blnShowCommunication[2] := TRUE; // Invoice
        g_blnShowCommunication[3] := TRUE; // Show Phone No.
        g_blnShowCommunication[4] := TRUE; // Show Fax No.
        g_blnShowCommunication[5] := TRUE; // Show E-Mail

        WITH g_recLanguage DO BEGIN
            //g_txtSDateFormat := GetDateTimeFormat(0); // Get Short Date
            /*=== Remove Comment if you need to use
            g_txtLDateFormat := GetDateTimeFormat(2); // Get Long Date

            g_txtSTimeFormat := GetDateTimeFormat(1); // Get Short Time
            g_txtLTimeFormat := GetDateTimeFormat(3); // Get Short Time

            g_txtFullDateTimeFormat := GetDateTimeFormat(4); // Get Full Date Time
            */
        END;
        // MSC.T - 28/05/15 #MSC1.00+

    end;

    local procedure fnSetBillingAddress()
    var
        arrtxtAddress: array[8] of Text[50];
        intIndex: Integer;
    begin
        // MSC.T - 28/05/15 #MSC1.00-
        CLEAR(g_txtArrBillingAddress);
        CLEAR(FormatAddr);
        WITH g_recTmpPurchHdr DO BEGIN
            /*===Get Sell-to or Bill-to Address*/
            CLEAR(arrtxtAddress);
            IF g_optBillingAddress = 0 THEN
                FormatAddr.FormatAddr(arrtxtAddress, UPPERCASE("Buy-from Vendor Name"), "Buy-from Vendor Name 2", '',
                           "Buy-from Address", "Buy-from Address 2", "Buy-from City",
                           "Buy-from Post Code", "Buy-from County", "Buy-from Country/Region Code")
            ELSE
                FormatAddr.FormatAddr(arrtxtAddress, UPPERCASE("Pay-to Name"), "Pay-to Name 2", '',
                           "Pay-to Address", "Pay-to Address 2", "Pay-to City",
                           "Pay-to Post Code", "Pay-to County", "Pay-to Country/Region Code");

            FOR intIndex := 1 TO ARRAYLEN(arrtxtAddress) DO
                g_txtArrBillingAddress[intIndex + 1] := arrtxtAddress[intIndex];
        END;
        fnSetBillingCommunication;
        // MSC.T - 28/05/15 #MSC1.00+

    end;

    local procedure fnSetBillingCommunication()
    var
        recVend: Record Vendor;
        cdVendNo: Code[20];
        txtContact: Text[50];
        arrtxtAddress: array[8] of Text[50];
        intIndex: Integer;
    begin
        // MSC.T - 28/05/15 #MSC1.00-
        intIndex := 8;
        WITH g_recTmpPurchHdr DO BEGIN
            IF g_optBillingAddress = 0 THEN BEGIN
                cdVendNo := "Buy-from Vendor No.";
                txtContact := "Buy-from Contact";
            END ELSE BEGIN
                cdVendNo := "Pay-to Vendor No.";
                txtContact := "Pay-to Contact";
            END;
        END;

        WITH recVend DO BEGIN
            IF GET(cdVendNo) THEN;
            IF g_blnShowCommunication[2] THEN BEGIN
                intIndex += 1;
                g_txtArrBillingAddress[intIndex] := STRSUBSTNO('%1%2 %3', Text90005, Text90000, txtContact);
                IF g_blnShowCommunication[1] AND (txtContact = '') THEN
                    g_txtArrBillingAddress[intIndex] := STRSUBSTNO('%1%2 %3', Text90005, Text90000, Contact);
            END;

            intIndex := 1;
            g_txtArrBillingAddress[intIndex] := STRSUBSTNO('%1 %2', Text90001, Text90000);
            IF g_blnShowVendNo THEN
                g_txtArrBillingAddress[intIndex] := STRSUBSTNO('%1%2 %3', FORMAT(g_optBillingAddress), Text90000, cdVendNo);
            //COMPRESSARRAY(g_txtArrBillingAddress); // Fixed Position of Tel, Fax, E-Mail

            intIndex := 15;
            IF g_blnShowCommunication[5] THEN BEGIN
                intIndex -= 1;
                g_txtArrBillingAddress[intIndex] := STRSUBSTNO('%1%2 %3', Text90008, Text90000, "E-Mail");
            END;

            IF g_blnShowCommunication[4] THEN BEGIN
                intIndex -= 1;
                g_txtArrBillingAddress[intIndex] := STRSUBSTNO('%1%2 %3', Text90007, Text90000, "Fax No.");
            END;

            IF g_blnShowCommunication[3] THEN BEGIN
                intIndex -= 1;
                g_txtArrBillingAddress[intIndex] := STRSUBSTNO('%1%2 %3', Text90006, Text90000, "Phone No.");
            END;

        END;
        COMPRESSARRAY(g_txtArrBillingAddress); // Dynamics Position of Tel, Fax, E-Mail
        // MSC.T - 28/05/15 #MSC1.00+
    end;

    procedure fnSetShippingAddress()
    var
        arrtxtAddress: array[8] of Text[50];
        intIndex: Integer;
    begin
        // MSC.T - 28/05/15 #MSC1.00-
        CLEAR(arrtxtAddress);
        CLEAR(g_txtArrShippingAddress);
        CLEAR(FormatAddr);
        WITH g_recTmpPurchHdr DO BEGIN
            FormatAddr.FormatAddr(arrtxtAddress, UPPERCASE("Ship-to Name"), "Ship-to Name 2", '',
                       "Ship-to Address", "Ship-to Address 2", "Ship-to City",
                       "Ship-to Post Code", "Ship-to County", "Ship-to Country/Region Code");

            FOR intIndex := 1 TO ARRAYLEN(arrtxtAddress) DO
                g_txtArrShippingAddress[intIndex + 1] := arrtxtAddress[intIndex];
        END;
        fnSetShippingCommunication;
        // MSC.T - 28/05/15 #MSC1.00+
    end;

    procedure fnSetShippingCommunication()
    var
        recShipToAddress: Record "Ship-to Address";
        cdVendNo: Code[20];
        cdShipToCode: Code[10];
        txtContact: Text[50];
        arrtxtAddress: array[8] of Text[50];
        intIndex: Integer;
    begin
        // MSC.T - 28/05/15 #MSC1.00-
        intIndex := 8;
        WITH g_recTmpPurchHdr DO BEGIN
            cdVendNo := "Buy-from Vendor No.";
            cdShipToCode := "Ship-to Code";
            txtContact := "Ship-to Contact";
        END;

        WITH recShipToAddress DO BEGIN
            IF GET(cdVendNo, cdShipToCode) THEN;
            IF g_blnShowCommunication[2] THEN BEGIN
                intIndex += 1;
                g_txtArrShippingAddress[intIndex] := STRSUBSTNO('%1%2 %3', Text90005, Text90000, txtContact);
                IF g_blnShowCommunication[1] AND (txtContact = '') THEN
                    g_txtArrShippingAddress[intIndex] := STRSUBSTNO('%1%2 %3', Text90005, Text90000, Contact);
            END;

            intIndex := 1;
            g_txtArrShippingAddress[intIndex] := STRSUBSTNO('%1 %2', Text90004, Text90000);
            //COMPRESSARRAY(g_txtArrShippingAddress); // Fixed Position of Tel, Fax, E-Mail

            intIndex := 15;
            IF g_blnShowCommunication[5] THEN BEGIN
                intIndex -= 1;
                g_txtArrShippingAddress[intIndex] := STRSUBSTNO('%1%2 %3', Text90008, Text90000, "E-Mail");
            END;

            IF g_blnShowCommunication[4] THEN BEGIN
                intIndex -= 1;
                g_txtArrShippingAddress[intIndex] := STRSUBSTNO('%1%2 %3', Text90007, Text90000, "Fax No.");
            END;

            IF g_blnShowCommunication[3] THEN BEGIN
                intIndex -= 1;
                g_txtArrShippingAddress[intIndex] := STRSUBSTNO('%1%2 %3', Text90006, Text90000, "Phone No.");
            END;
        END;
        COMPRESSARRAY(g_txtArrShippingAddress); // Dynamics Position of Tel, Fax, E-Mail
        // MSC.T - 28/05/15 #MSC1.00+
    end;

    local procedure fnSetCompanyAddress()
    var
        recCompanyInfo: Record "Company Information";
        arrtxtAddress: array[8] of Text[50];
        intIndex: Integer;
    begin
        // MSC.T - 28/05/15 #MSC1.00-
        CLEAR(g_txtArrCompAddress);
        CLEAR(FormatAddr);
        WITH recCompanyInfo DO BEGIN
            GET;
            FormatAddr.FormatAddr(arrtxtAddress, UPPERCASE(Name), "Name 2", '',
                       Address, "Address 2", City,
                       "Post Code", County, "Country/Region Code");

            FOR intIndex := 1 TO ARRAYLEN(arrtxtAddress) DO
                g_txtArrCompAddress[intIndex] := arrtxtAddress[intIndex];

            //COMPRESSARRAY(g_txtArrCompAddress); // Fixed Position of Tel, Fax, E-Mail, Reg No., VAT Reg No.
            intIndex := 15;

            IF "VAT Registration No." <> '' THEN BEGIN
                intIndex -= 1;
                g_txtArrCompAddress[intIndex] := STRSUBSTNO('%1%2 %3', Text90011, Text90000, "VAT Registration No.");
            END;

            IF "Registration No." <> '' THEN BEGIN
                intIndex -= 1;
                g_txtArrCompAddress[intIndex] := STRSUBSTNO('%1%2 %3', Text90010, Text90000, "Registration No.");
            END;

            IF "Home Page" <> '' THEN BEGIN
                intIndex -= 1;
                g_txtArrCompAddress[intIndex] := STRSUBSTNO('%1%2 %3', Text90009, Text90000, "Home Page");
            END;

            IF "E-Mail" <> '' THEN BEGIN
                intIndex -= 1;
                g_txtArrCompAddress[intIndex] := STRSUBSTNO('%1%2 %3', Text90008, Text90000, "E-Mail");
            END;

            IF "Fax No." <> '' THEN BEGIN
                intIndex -= 1;
                g_txtArrCompAddress[intIndex] := STRSUBSTNO('%1%2 %3', Text90007, Text90000, "Fax No.");
            END;

            IF "Phone No." <> '' THEN BEGIN
                intIndex -= 1;
                g_txtArrCompAddress[intIndex] := STRSUBSTNO('%1%2 %3', Text90006, Text90000, "Phone No.");
            END;
            COMPRESSARRAY(g_txtArrCompAddress);  // Dynamics Position of Tel, Fax, E-Mail, Reg No., VAT Reg No.
        END;
        // MSC.T - 28/05/15 #MSC1.00+
    end;

    local procedure fnGetCurrency()
    var
        recGLSetup: Record "General Ledger Setup";
    begin
        // MSC.T - 28/05/15 #MSC1.00-
        recGLSetup.GET;
        g_cdeCurrencyLCY := recGLSetup."LCY Code";
        WITH g_recTmpPurchHdr DO
            IF "Currency Code" <> '' THEN
                g_cdeCurrency := "Currency Code"
            ELSE
                g_cdeCurrency := g_cdeCurrencyLCY;
        // MSC.T - 28/05/15 #MSC1.00+
    end;

    local procedure fnSetAmount(precPurchLine: Record "Purchase Line")
    begin
        WITH precPurchLine DO BEGIN
            g_intSNo := 0;
            IF ((precPurchLine.Type <> precPurchLine.Type::" ") AND (precPurchLine."No." <> '')) THEN BEGIN
                g_intPervSNo += 1;
                g_intSNo := g_intPervSNo;
            END;
            g_decTotalSubTotal += "Line Amount";
            g_decTotalInvoiceDiscountAmount -= "Inv. Discount Amount";
            g_decTotalAmount += Amount;
            g_decTotalAmountVAT += "Amount Including VAT" - Amount;
            g_decTotalAmountInclVAT += "Amount Including VAT";
            g_decTotalPaymentDiscountOnVAT += -("Line Amount" - "Inv. Discount Amount" - "Amount Including VAT");
        END;
    end;

    local procedure fnCalcAmount()
    var
        recSalesLine: Record "Sales Line";
        recTmpSalesLine: Record "Sales Line" temporary;
        intIndex: Integer;
        decAmountLCY: Decimal;
        decAmountIncLCY: Decimal;
        decTotalAmount: Decimal;
        optShowFormat: Option " ","Show Sub","Show Pre Printed";
    begin
        // MSC.T - 28/05/15 #MSC1.00-
        fnGetCurrency;
        CLEAR(g_arrtxtAmountCapt);
        CLEAR(g_arrdecAmount);
        CLEAR(g_arrtxtAmountLCYCapt);
        CLEAR(g_arrdecAmountLCY);
        CLEAR(g_arrtxtAmountInWords);
        CLEAR(g_txtExchangeRateInWords);
        CLEAR(g_txtVATLCYInWords);
        g_decVATLCY := 0;
        g_decExchangeRate := 0;
        decTotalAmount := 0;
        decAmountLCY := 0;
        decAmountIncLCY := 0;
        // ,Show Sub,Show Pre Printed
        optShowFormat := optShowFormat::" ";

        WITH g_recTmpPurchHdr DO BEGIN
            CASE optShowFormat OF
                optShowFormat::" ":
                    BEGIN
                        IF ((g_decTotalInvoiceDiscountAmount <> 0)) THEN BEGIN
                            intIndex += 1;
                            g_arrtxtAmountCapt[intIndex] := STRSUBSTNO(Text90200, Text90201);
                            g_arrdecAmount[intIndex] := g_decTotalSubTotal;

                            IF (g_decTotalInvoiceDiscountAmount <> 0) THEN BEGIN
                                intIndex += 1;
                                g_arrtxtAmountCapt[intIndex] := STRSUBSTNO(Text90200, Text90203);
                                g_arrdecAmount[intIndex] := g_decTotalInvoiceDiscountAmount;
                            END;
                        END;

                        IF (g_decTotalAmountVAT = 0) THEN BEGIN
                            intIndex += 1;
                            g_arrtxtAmountCapt[intIndex] := STRSUBSTNO(Text90200, STRSUBSTNO(Text90202, g_cdeCurrency));
                            g_arrdecAmount[intIndex] := g_decTotalSubTotal + g_decTotalInvoiceDiscountAmount;
                        END;

                        IF (NOT g_recTmpPurchHdr."Prices Including VAT") AND (g_decTotalAmountVAT <> 0) THEN BEGIN
                            intIndex += 1;
                            g_arrtxtAmountCapt[intIndex] := STRSUBSTNO(Text90200, STRSUBSTNO(Text90206, g_cdeCurrency));
                            g_arrdecAmount[intIndex] := g_decTotalAmount;

                            intIndex += 1;
                            g_arrtxtAmountCapt[intIndex] := STRSUBSTNO(Text90200, VATAmountLine.VATAmountText);
                            g_arrdecAmount[intIndex] := g_decTotalAmountVAT;

                            intIndex += 1;
                            g_arrtxtAmountCapt[intIndex] := STRSUBSTNO(Text90200, STRSUBSTNO(Text90205, g_cdeCurrency));
                            g_arrdecAmount[intIndex] := g_decTotalSubTotal + g_decTotalInvoiceDiscountAmount + g_decTotalAmountVAT;
                        END;

                        IF ((g_decTotalPaymentDiscountOnVAT <> 0) AND (g_decTotalAmountVAT <> 0) AND
                           ("Prices Including VAT") AND
                           ("VAT Base Discount %" <> 0)) THEN BEGIN
                            intIndex += 1;
                            g_arrtxtAmountCapt[intIndex] := STRSUBSTNO(Text90200, Text90204);
                            g_arrdecAmount[intIndex] := g_decTotalPaymentDiscountOnVAT;
                        END;

                        IF "Prices Including VAT" AND (g_decTotalAmountVAT <> 0) THEN BEGIN
                            intIndex += 1;
                            g_arrtxtAmountCapt[intIndex] := STRSUBSTNO(Text90200, STRSUBSTNO(Text90206, g_cdeCurrency));
                            g_arrdecAmount[intIndex] := g_decTotalAmount;

                            intIndex += 1;
                            g_arrtxtAmountCapt[intIndex] := STRSUBSTNO(Text90200, VATAmountLine.VATAmountText);
                            g_arrdecAmount[intIndex] := g_decTotalAmountVAT;

                            intIndex += 1;
                            g_arrtxtAmountCapt[intIndex] := STRSUBSTNO(Text90200, STRSUBSTNO(Text90205, g_cdeCurrency));
                            g_arrdecAmount[intIndex] := g_decTotalAmountInclVAT;
                        END;
                        decTotalAmount := g_decTotalAmountInclVAT;
                    END;
                optShowFormat::"Show Sub":
                    BEGIN
                        intIndex += 1;
                        g_arrtxtAmountCapt[intIndex] := STRSUBSTNO(Text90200, STRSUBSTNO(Text90202, g_cdeCurrency));
                        g_arrdecAmount[intIndex] := g_decTotalAmount;
                        decTotalAmount := g_decTotalAmount;
                    END;
                optShowFormat::"Show Pre Printed":
                    BEGIN
                        intIndex += 1;
                        g_arrtxtAmountCapt[intIndex] := STRSUBSTNO(Text90200, Text90201);
                        g_arrdecAmount[intIndex] := g_decTotalAmount;

                        intIndex += 1;
                        g_arrtxtAmountCapt[intIndex] := STRSUBSTNO(Text90200, VATAmountLine.VATAmountText);
                        g_arrdecAmount[intIndex] := g_decTotalAmountVAT;

                        intIndex += 1;
                        g_arrtxtAmountCapt[intIndex] := STRSUBSTNO(Text90200, STRSUBSTNO(Text90202, g_cdeCurrency));
                        g_arrdecAmount[intIndex] := g_decTotalAmountInclVAT;
                        decTotalAmount := g_decTotalAmountInclVAT;
                    END;
            END;
            IF g_blnShowAmountInWords THEN BEGIN
                // recTmpSalesLine.InitTextVariable;
                //recTmpSalesLine.FormatNoText(g_arrtxtAmountInWords,decTotalAmount,g_cdeCurrency);
            END;
            FOR intIndex := 1 TO 2 DO BEGIN
                g_arrtxtAmountInWords[intIndex] := DELCHR(g_arrtxtAmountInWords[intIndex], '=', '*');
                //g_arrtxtAmountInWords[intIndex] := DELCHR(g_arrtxtAmountInWords[intIndex],'>',STRSUBSTNO('(%1)',g_cdeCurrency)); //Uncomment if you want to remove "("
            END;

            intIndex := 0;
            IF ("Currency Code" <> '') AND (g_blnShowLCYforFCY) THEN BEGIN
                decAmountLCY :=
                  ROUND(
                    CurrExchRate.ExchangeAmtFCYToLCY(
                      WORKDATE, "Currency Code", g_decTotalAmount, "Currency Factor"));
                decAmountIncLCY :=
                  ROUND(
                    CurrExchRate.ExchangeAmtFCYToLCY(
                      WORKDATE, "Currency Code", g_decTotalAmountInclVAT, "Currency Factor"));

                g_decExchangeRate := ROUND(1 / "Currency Factor", 0.01);
                g_txtExchangeRateInWords := STRSUBSTNO(Text90207, g_decExchangeRate);

                IF decAmountLCY = decAmountIncLCY THEN BEGIN
                    intIndex += 1;
                    g_arrtxtAmountLCYCapt[intIndex] := STRSUBSTNO(Text90202, g_cdeCurrencyLCY);
                    g_arrdecAmountLCY[intIndex] := decAmountLCY;
                END ELSE BEGIN
                    intIndex += 1;
                    g_arrtxtAmountLCYCapt[intIndex] := STRSUBSTNO(Text90206, g_cdeCurrencyLCY);
                    g_arrdecAmountLCY[intIndex] := decAmountLCY;

                    intIndex += 1;
                    g_arrtxtAmountLCYCapt[intIndex] := STRSUBSTNO(Text90200, VATAmountLine.VATAmountText);
                    g_arrdecAmountLCY[intIndex] := decAmountIncLCY - decAmountLCY;

                    intIndex += 1;
                    g_arrtxtAmountLCYCapt[intIndex] := STRSUBSTNO(Text90205, g_cdeCurrencyLCY);
                    g_arrdecAmountLCY[intIndex] := decAmountIncLCY;

                    g_decVATLCY := g_decExchangeRate * (decAmountIncLCY - decAmountLCY);
                    g_txtVATLCYInWords := STRSUBSTNO(Text90208, VATAmountLine.VATAmountText, g_cdeCurrencyLCY);
                END;
            END;
        END;
        fnClearAmount;
        // MSC.T - 28/05/15 #MSC1.00+
    end;

    local procedure fnClearAmount()
    begin
        // MSC.T - 28/05/15 #MSC1.00-
        g_decTotalSubTotal := 0;
        g_decTotalInvoiceDiscountAmount := 0;
        g_decTotalAmount := 0;
        g_decTotalAmountVAT := 0;
        g_decTotalAmountInclVAT := 0;
        g_decTotalPaymentDiscountOnVAT := 0;
        // MSC.T - 28/05/15 #MSC1.00+
    end;
}

