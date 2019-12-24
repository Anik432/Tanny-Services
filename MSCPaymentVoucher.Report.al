report 50006 "TS Payment Voucher"
{
    // Code           Date     Author Description
    // ======================================================================================================================================================
    DefaultLayout = RDLC;
    RDLCLayout = './R50099_MSCSTDPAYMENTVOUCHER.rdl'; 
    UsageCategory=ReportsAndAnalysis;
    ApplicationArea=all;
    Caption = 'Payment Voucher';

    dataset
    {
        dataitem("Gen. Journal Batch"; "Gen. Journal Batch")
        {
            DataItemTableView = SORTING ("Journal Template Name", Name);
            PrintOnlyIfDetail = true;
            column(JnlTmplName_GenJnlBatch; "Journal Template Name")
            {
            }
            column(Name_GenJnlBatch; Name)
            {
            }
            column(g_txtCompanyInfo; g_txtCompanyInfo)
            {
            }
            
            
            dataitem("Integer"; "Integer")
            {
                DataItemTableView = SORTING (Number)
                                    WHERE (Number = CONST (1));
                PrintOnlyIfDetail = true;
                column(PageNoCaption; PageNoCap)
                {
                }
                column(PostingDateCaption; PostingDateCap)
                {
                }
                column(g_rsCompanyInfo_Picture; g_rsCompanyInfo.Picture)
                {
                }
                column(CompanyName; g_rsCompanyInfo.Name + ' ' + g_rsCompanyInfo."Name 2" + '\' + g_txtCompanyInfo)
                {
                }
                column(CompanyContact; STRSUBSTNO('Tel: %1     Fax: %2', g_rsCompanyInfo."Phone No.", g_rsCompanyInfo."Fax No."))
                {
                }
                column(PAYMENT_VOUCHERCaption; PAYMENT_VOUCHERCaptionLbl)
                {
                }
                column(Integer_Number; Number)
                {
                }
                dataitem("Gen. Journal Line"; "Gen. Journal Line")
                {
                    DataItemLink = "Journal Template Name"=FIELD("Journal Template Name"),
                                   "Journal Batch Name"=FIELD(Name);
                    DataItemLinkReference = "Gen. Journal Batch";
                    DataItemTableView = SORTING("Journal Template Name", "Journal Batch Name", "Line No.");
                    RequestFilterFields = "Posting Date";
                    column(g_intRow;g_intRow)
                    {
                    }
                    column(g_blnFirstRow;g_blnFirstRow)
                    {
                    }
                    column(CompanyInfoPic;CompanyInfo.Picture)
                    {}
                    column(CompanyInfoName;CompanyInfo.Name)
                    {}
                    column(CompanyInfoAddr;CompanyInfo.Address)
                    {}
                    column(CompanyInfoAddr2;CompanyInfo."Address 2")
                    {}
                    column(CompanyInfoCity;CompanyInfo.City)
                    {}
                    column(CompanyInfoCountry;CompanyInfo."Country/Region Code")
                    {}
                    column(CompanyInfoPostCode;CompanyInfo."Post Code")
                    {}
                    column(CompanyInfoPhone;CompanyInfo."Phone No.")
                    {}
                    column(CompanyInfoFax;CompanyInfo."Fax No.")
                    {}
                    column(CompanyInfoEmail;CompanyInfo."E-Mail")
                    {}
                    column(CompanyInfoWebsite;CompanyInfo."Home Page")
                    {}
                    column(CompanyInfoShpToAddr;CompanyInfo."Ship-to Address")
                    {}
                    column(CompanyInfoShipToAddr2;CompanyInfo."Ship-to Address 2")
                    {}
                    column(CompanyInfoShpToCity;CompanyInfo."Ship-to City")
                    {}
                    column(CompanyInfoShpToCountry;CompanyInfo."Ship-to Country/Region Code")
                    {}
                    column(CompanyInfoShpToPostCode;CompanyInfo."Ship-to Post Code")
                    {}
                    column(CompanyInfoTelephone;CompanyInfo.Telephone)
                    {}
                    column(CompanyInfoFax2;CompanyInfo."Fax 2")
                    {}
                    column(PostingDate_GenJnlLine;FORMAT("Posting Date"))
                    {
                    }
                    column(DocType_GenJnlLine;"Document Type")
                    {
                    }
                    column(DocNo_GenJnlLine;"Document No.")
                    {
                    }
                    column(AccountType_GenJnlLine;"Account Type")
                    {
                    }
                    column(g_intPageNo;g_intPageNo)
                    {
                    }
                    column(g_cdeVoucherNo;g_cdeVoucherNo)
                    {
                    }
                    column(ChequeCap;ChequeCap)
                    {
                    }
                    column(PayToCap;PayToCap)
                    {
                    }
                    column(BillToPayToName;billtoname)
                    {
                    }
                    column(ShowHeaderType;g_optShowHeaderType)
                    {
                    }
                    column(g_txtArrBilltoPaytoAddr_1_;g_txtArrBilltoPaytoAddr[1])
                    {
                    }
                    column(g_txtArrBilltoPaytoAddr_2_;g_txtArrBilltoPaytoAddr[2])
                    {
                    }
                    column(g_txtArrBilltoPaytoAddr_3_;g_txtArrBilltoPaytoAddr[3])
                    {
                    }
                    column(g_txtArrBilltoPaytoAddr_4_;g_txtArrBilltoPaytoAddr[4])
                    {
                    }
                    column(g_txtArrBilltoPaytoAddr_5_;g_txtArrBilltoPaytoAddr[5])
                    {
                    }
                    column(g_txtArrBilltoPaytoAddr_6_;g_txtArrBilltoPaytoAddr[6])
                    {
                    }
                    column(Gen__Journal_Line_Amount;Amount)
                    {
                    }
                    column(g_cdeCurrency;g_cdeCurrency)
                    {
                    }
                    column(Gen_Journal_Line_DescriptionOnly;Description)
                    {
                    }
                    column(g_blnShowGenJnlLine;g_blnShowGenJnlLine)
                    {
                    }
                    column(Gen_Journal_Line_No;"Line No.")
                    {
                    }
                    column(DescriptionCaption;DescriptionCaptionLbl)
                    {
                    }
                    column(AmountCaption;AmountCaptionLbl)
                    {
                    }
                    column(EmptyStringCaption;EmptyStringCaptionLbl)
                    {
                    }
                    column(g_cdeVoucherNoCaption;VoucherNoCap)
                    {
                    }
                    column(Being_payment_for__Caption;Being_payment_for__CaptionLbl)
                    {
                    }
                    column(Vendor_Ledger_Entry__External_Document_No__Caption;Vendor_Ledger_Entry__External_Document_No__CaptionLbl)
                    {
                    }
                    column(Vendor_Ledger_Entry__Document_No__Caption;Vendor_Ledger_Entry__Document_No__CaptionLbl)
                    {
                    }
                    column(Vendor_Ledger_Entry__Document_Date_Caption;Vendor_Ledger_Entry__Document_Date_CaptionLbl)
                    {
                    }
                    column(Continue___Caption;Continue___CaptionLbl)
                    {
                    }
                    column(JnlTmplName_GenJnlLine;"Journal Template Name")
                    {
                    }
                    column(JnlBatchName_GenJnlLine;"Journal Batch Name")
                    {
                    }
                    column(AmountInText;g_txtArrTotal[1] + ' ' + g_txtArrTotal[2])
                    {
                    }
                    column(AmountInTextCap;AmountInTextCap)
                    {
                    }
                    column(FooterDateCap;FooterDateCap)
                    {
                    }
                    column(FooterApprovedByCap;FooterApprovedByCap)
                    {
                    }
                    column(FooterReceivedByCap;FooterReceivedByCap)
                    {
                    }
                    dataitem("Vendor Ledger Entry";"Vendor Ledger Entry")
                    {
                        DataItemTableView = SORTING("Vendor No.","Applies-to ID",Open,Positive,"Due Date");
                        column(Vendor_Ledger_Entry_Amount;Amount)
                        {
                            AutoFormatExpression = "Currency Code";
                            AutoFormatType = 1;
                        }
                        column(Vendor_Ledger_Entry__Currency_Code_;g_cdeCurrencyAppln)
                        {
                        }
                        column(Vendor_Ledger_Entry__External_Document_No__;"External Document No.")
                        {
                        }
                        column(fnCalcApplnAmounttoApply__Amount_to_Apply__;-fnCalcApplnAmounttoApply("Amount to Apply"))
                        {
                        }
                        column(g_cdeCurrency_Control1000000045;g_cdeCurrency)
                        {
                        }
                        column(Vendor_Ledger_Entry__Document_No__;"Document No.")
                        {
                        }
                        column(Vendor_Ledger_Entry__Document_Date_;FORMAT("Document Date"))
                        {
                        }
                        column(Vendor_Ledger_Entry_Entry_No_;"Entry No.")
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                          
                            //J - 11/03/11 #MSC802-
                          
                            IF "Currency Code" = '' THEN
                              g_cdeCurrencyAppln := GLSetup."LCY Code"
                            ELSE
                              g_cdeCurrencyAppln := "Currency Code";
                            //#MSC802+
                            g_intRow += 1;
                        end;

                        trigger OnPreDataItem()
                        begin
                            IF g_optShowHeaderType = g_optShowHeaderType::Vendor THEN
                              /*===Filter @ Gen. Journal Line level as it determine g_blnShowGenJnlLine*/
                              COPYFILTERS(g_rsVendLedgEntry)
                            ELSE
                              CurrReport.BREAK;
                            g_blnShowGenJnlLine := FALSE;//#MSC802- 12/04/12 HCL-+

                        end;
                    }
                    dataitem(DimensionLoop;Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number=FILTER(1..));
                        column(DimText;DimText)
                        {
                        }
                        column(ShowDim;ShowDim)
                        {
                        }
                        column(Number_DimensionLoop;Number)
                        {
                        }
                        column(DimensionsCaption;DimensionsCap)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            IF Number = 1 THEN BEGIN
                              IF NOT DimSetEntry.FINDFIRST THEN
                                CurrReport.BREAK;
                            END ELSE
                              IF NOT Continue THEN
                                CurrReport.BREAK;

                            CLEAR(DimText);
                            Continue := FALSE;
                            REPEAT
                              OldDimText := COPYSTR(DimText,1,MAXSTRLEN(OldDimText));
                              IF DimText = '' THEN
                                DimText := STRSUBSTNO('%1 - %2',DimSetEntry."Dimension Code",DimSetEntry."Dimension Value Code")
                              ELSE
                                DimText :=
                                  STRSUBSTNO(
                                    '%1; %2 - %3',DimText,DimSetEntry."Dimension Code",DimSetEntry."Dimension Value Code");
                              IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                DimText := OldDimText;
                                Continue := TRUE;
                                EXIT;
                              END;
                            UNTIL (DimSetEntry.NEXT = 0);

                            //J - 06/04/09 #MSC802
                            g_intRow += 1;
                        end;

                        trigger OnPreDataItem()
                        begin
                            IF NOT ShowDim THEN
                              CurrReport.BREAK;
                            DimSetEntry.SETRANGE("Dimension Set ID","Gen. Journal Line"."Dimension Set ID");
                            g_blnShowGenJnlLine := FALSE;    //#MSC802- 12/04/12 HCL-+
                        end;
                    }
                    dataitem(ErrorLoop;Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(ErrorTextNumber;ErrorText[Number])
                        {
                        }
                        column(ErrorText_Number_Caption;ErrorText_Number_CaptionLbl)
                        {
                        }
                        column(ErrorLoop_Number;Number)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            //J - 21/10/10 #MSC1.01-
                            g_intRow += 1;
                            //#MSC1.01+
                        end;

                        trigger OnPostDataItem()
                        begin
                            ErrorCounter := 0;
                        end;

                        trigger OnPreDataItem()
                        begin
                            AmountLCY := 0;
                            BalanceLCY := 0;

                            SETRANGE(Number,1,ErrorCounter);
                            g_blnShowGenJnlLine := FALSE;    //#MSC802- 12/04/12 HCL-+
                        end;
                    }
                    dataitem(dtiBalanceRowLoop;Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number=FILTER(1..));
                        column(g_intBalanceRow;g_intBalanceRow)
                        {
                        }
                        column(dtiBalanceRowLoop_Number;Number)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            g_intBalanceRow := Number;
                        end;

                        trigger OnPreDataItem()
                        begin
                            IF g_blnShowFooter THEN
                              SETRANGE(Number, 1, g_intMinRow - (g_intRow MOD g_intMinRow))
                            ELSE
                              CurrReport.BREAK;
                            g_blnShowGenJnlLine := FALSE;//#MSC802- 12/04/12 HCL-+
                        end;
                    }
                    dataitem(dtiPageFooter;Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number=CONST(1));
                        column(g_decTotal;g_decTotal)
                        {
                            AutoFormatExpression = "Gen. Journal Line"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(g_cdeBankCurrency;g_cdeBankCurrency)
                        {
                        }
                        column(g_cdeChequeNo;g_cdeChequeNo)
                        {
                        }
                        column(g_txtExchangeRate;g_txtExchangeRate)
                        {
                        }
                        column(g_blnShowFooter;g_blnShowFooter)
                        {
                        }
                        column(dtiPageFooter_Number;Number)
                        {
                        }

                        trigger OnPreDataItem()
                        begin
                            g_blnShowGenJnlLine := FALSE;//#MSC802- 12/04/12 HCL-+
                        end;
                    }

                    trigger OnAfterGetRecord()
                    var
                        PaymentTerms: Record "Payment Terms";
                        DimMgt: Codeunit "DimensionManagement";
                        TableID: array [10] of Integer;
                        No: array [10] of Code[20];
                    begin
                        g_blnShowGenJnlLine := TRUE;//#MSC802- 12/04/12 HCL-+
                        IF "Currency Code" = '' THEN
                          "Amount (LCY)" := Amount;

                        UpdateLineBalance;

                        AccName := '';
                        BalAccName := '';

                        IF NOT EmptyLine THEN BEGIN
                          MakeRecurringTexts("Gen. Journal Line");

                          AmountError := FALSE;

                          IF ("Account No." = '') AND ("Bal. Account No." = '') THEN
                            AddError(STRSUBSTNO(Text001,FIELDCAPTION("Account No."),FIELDCAPTION("Bal. Account No.")))
                          ELSE
                            IF ("Account Type" <> "Account Type"::"Fixed Asset") AND
                               ("Bal. Account Type" <> "Bal. Account Type"::"Fixed Asset")
                            THEN
                              TestFixedAssetFields("Gen. Journal Line");
                          CheckICDocument;
                          IF "Account No." <> '' THEN
                            CASE "Account Type" OF
                              "Account Type"::"G/L Account":
                                BEGIN
                                  IF ("Gen. Bus. Posting Group" <> '') OR ("Gen. Prod. Posting Group" <> '') OR
                                     ("VAT Bus. Posting Group" <> '') OR ("VAT Prod. Posting Group" <> '')
                                  THEN BEGIN
                                    IF "Gen. Posting Type" = 0 THEN
                                      AddError(STRSUBSTNO(Text002,FIELDCAPTION("Gen. Posting Type")));
                                  END;
                                  IF ("Gen. Posting Type" <> "Gen. Posting Type"::" ") AND
                                     ("VAT Posting" = "VAT Posting"::"Automatic VAT Entry")
                                  THEN BEGIN
                                    IF "VAT Amount" + "VAT Base Amount" <> Amount THEN
                                      AddError(
                                        STRSUBSTNO(
                                          Text003,FIELDCAPTION("VAT Amount"),FIELDCAPTION("VAT Base Amount"),
                                          FIELDCAPTION(Amount)));
                                    IF "Currency Code" <> '' THEN
                                      IF "VAT Amount (LCY)" + "VAT Base Amount (LCY)" <> "Amount (LCY)" THEN
                                        AddError(
                                          STRSUBSTNO(
                                            Text003,FIELDCAPTION("VAT Amount (LCY)"),
                                            FIELDCAPTION("VAT Base Amount (LCY)"),FIELDCAPTION("Amount (LCY)")));
                                  END;
                                  TestJobFields("Gen. Journal Line");
                                END;
                              "Account Type"::Customer,"Account Type"::Vendor:
                                BEGIN
                                  IF "Gen. Posting Type" <> 0 THEN BEGIN
                                    AddError(
                                      STRSUBSTNO(
                                        Text004,
                                        FIELDCAPTION("Gen. Posting Type"),FIELDCAPTION("Account Type"),"Account Type"));
                                  END;
                                  IF ("Gen. Bus. Posting Group" <> '') OR ("Gen. Prod. Posting Group" <> '') OR
                                     ("VAT Bus. Posting Group" <> '') OR ("VAT Prod. Posting Group" <> '')
                                  THEN
                                    AddError(
                                      STRSUBSTNO(
                                        Text005,
                                        FIELDCAPTION("Gen. Bus. Posting Group"),FIELDCAPTION("Gen. Prod. Posting Group"),
                                        FIELDCAPTION("VAT Bus. Posting Group"),FIELDCAPTION("VAT Prod. Posting Group"),
                                        FIELDCAPTION("Account Type"),"Account Type"));

                                  IF "Document Type" <> 0 THEN BEGIN
                                    IF "Account Type" = "Account Type"::Customer THEN
                                      CASE "Document Type" OF
                                        "Document Type"::"Credit Memo":
                                          WarningIfPositiveAmt("Gen. Journal Line");
                                        "Document Type"::Payment:
                                          IF ("Applies-to Doc. Type" = "Applies-to Doc. Type"::"Credit Memo") AND
                                             ("Applies-to Doc. No." <> '')
                                          THEN
                                            WarningIfNegativeAmt("Gen. Journal Line")
                                          ELSE
                                            WarningIfPositiveAmt("Gen. Journal Line");
                                        "Document Type"::Refund:
                                          WarningIfNegativeAmt("Gen. Journal Line");
                                        ELSE
                                          WarningIfNegativeAmt("Gen. Journal Line");
                                      END
                                    ELSE
                                      CASE "Document Type" OF
                                        "Document Type"::"Credit Memo":
                                          WarningIfNegativeAmt("Gen. Journal Line");
                                        "Document Type"::Payment:
                                          IF ("Applies-to Doc. Type" = "Applies-to Doc. Type"::"Credit Memo") AND
                                             ("Applies-to Doc. No." <> '')
                                          THEN
                                            WarningIfPositiveAmt("Gen. Journal Line")
                                          ELSE
                                            WarningIfNegativeAmt("Gen. Journal Line");
                                        "Document Type"::Refund:
                                          WarningIfPositiveAmt("Gen. Journal Line");
                                        ELSE
                                          WarningIfPositiveAmt("Gen. Journal Line");
                                      END
                                  END;

                                  IF Amount * "Sales/Purch. (LCY)" < 0 THEN
                                    AddError(
                                      STRSUBSTNO(
                                        Text008,
                                        FIELDCAPTION("Sales/Purch. (LCY)"),FIELDCAPTION(Amount)));
                                  IF "Job No." <> '' THEN
                                    AddError(STRSUBSTNO(Text009,FIELDCAPTION("Job No.")));
                                END;
                              "Account Type"::"Bank Account":
                                BEGIN
                                  IF "Gen. Posting Type" <> 0 THEN BEGIN
                                    AddError(
                                      STRSUBSTNO(
                                        Text004,
                                        FIELDCAPTION("Gen. Posting Type"),FIELDCAPTION("Account Type"),"Account Type"));
                                  END;
                                  IF ("Gen. Bus. Posting Group" <> '') OR ("Gen. Prod. Posting Group" <> '') OR
                                     ("VAT Bus. Posting Group" <> '') OR ("VAT Prod. Posting Group" <> '')
                                  THEN
                                    AddError(
                                      STRSUBSTNO(
                                        Text005,
                                        FIELDCAPTION("Gen. Bus. Posting Group"),FIELDCAPTION("Gen. Prod. Posting Group"),
                                        FIELDCAPTION("VAT Bus. Posting Group"),FIELDCAPTION("VAT Prod. Posting Group"),
                                        FIELDCAPTION("Account Type"),"Account Type"));

                                  IF "Job No." <> '' THEN
                                    AddError(STRSUBSTNO(Text009,FIELDCAPTION("Job No.")));
                                  IF (Amount < 0) AND ("Bank Payment Type" = "Bank Payment Type"::"Computer Check") THEN
                                    IF NOT "Check Printed" THEN
                                      AddError(STRSUBSTNO(Text010,FIELDCAPTION("Check Printed")));
                                END;
                              "Account Type"::"Fixed Asset":
                                TestFixedAsset("Gen. Journal Line");
                            END;

                          IF "Bal. Account No." <> '' THEN
                            CASE "Bal. Account Type" OF
                              "Bal. Account Type"::"G/L Account":
                                BEGIN
                                  IF ("Bal. Gen. Bus. Posting Group" <> '') OR ("Bal. Gen. Prod. Posting Group" <> '') OR
                                     ("Bal. VAT Bus. Posting Group" <> '') OR ("Bal. VAT Prod. Posting Group" <> '')
                                  THEN BEGIN
                                    IF "Bal. Gen. Posting Type" = 0 THEN
                                      AddError(STRSUBSTNO(Text002,FIELDCAPTION("Bal. Gen. Posting Type")));
                                  END;
                                  IF ("Bal. Gen. Posting Type" <> "Bal. Gen. Posting Type"::" ") AND
                                     ("VAT Posting" = "VAT Posting"::"Automatic VAT Entry")
                                  THEN BEGIN
                                    IF "Bal. VAT Amount" + "Bal. VAT Base Amount" <> -Amount THEN
                                      AddError(
                                        STRSUBSTNO(
                                          Text011,FIELDCAPTION("Bal. VAT Amount"),FIELDCAPTION("Bal. VAT Base Amount"),
                                          FIELDCAPTION(Amount)));
                                    IF "Currency Code" <> '' THEN
                                      IF "Bal. VAT Amount (LCY)" + "Bal. VAT Base Amount (LCY)" <> -"Amount (LCY)" THEN
                                        AddError(
                                          STRSUBSTNO(
                                            Text011,FIELDCAPTION("Bal. VAT Amount (LCY)"),
                                            FIELDCAPTION("Bal. VAT Base Amount (LCY)"),FIELDCAPTION("Amount (LCY)")));
                                  END;
                                END;
                              "Bal. Account Type"::Customer,"Bal. Account Type"::Vendor:
                                BEGIN
                                  IF "Bal. Gen. Posting Type" <> 0 THEN BEGIN
                                    AddError(
                                      STRSUBSTNO(
                                        Text004,
                                        FIELDCAPTION("Bal. Gen. Posting Type"),FIELDCAPTION("Bal. Account Type"),"Bal. Account Type"));
                                  END;
                                  IF ("Bal. Gen. Bus. Posting Group" <> '') OR ("Bal. Gen. Prod. Posting Group" <> '') OR
                                     ("Bal. VAT Bus. Posting Group" <> '') OR ("Bal. VAT Prod. Posting Group" <> '')
                                  THEN
                                    AddError(
                                      STRSUBSTNO(
                                        Text005,
                                        FIELDCAPTION("Bal. Gen. Bus. Posting Group"),FIELDCAPTION("Bal. Gen. Prod. Posting Group"),
                                        FIELDCAPTION("Bal. VAT Bus. Posting Group"),FIELDCAPTION("Bal. VAT Prod. Posting Group"),
                                        FIELDCAPTION("Bal. Account Type"),"Bal. Account Type"));

                                  IF "Document Type" <> 0 THEN BEGIN
                                    IF ("Bal. Account Type" = "Bal. Account Type"::Customer) =
                                       ("Document Type" IN ["Document Type"::Payment,"Document Type"::"Credit Memo"])
                                    THEN
                                      WarningIfNegativeAmt("Gen. Journal Line")
                                    ELSE
                                      WarningIfPositiveAmt("Gen. Journal Line")
                                  END;
                                  IF Amount * "Sales/Purch. (LCY)" > 0 THEN
                                    AddError(
                                      STRSUBSTNO(
                                        Text012,
                                        FIELDCAPTION("Sales/Purch. (LCY)"),FIELDCAPTION(Amount)));
                                  IF "Job No." <> '' THEN
                                    AddError(STRSUBSTNO(Text009,FIELDCAPTION("Job No.")));
                                END;
                              "Bal. Account Type"::"Bank Account":
                                BEGIN
                                  IF "Bal. Gen. Posting Type" <> 0 THEN BEGIN
                                    AddError(
                                      STRSUBSTNO(
                                        Text004,
                                        FIELDCAPTION("Bal. Gen. Posting Type"),FIELDCAPTION("Bal. Account Type"),"Bal. Account Type"));
                                  END;
                                  IF ("Bal. Gen. Bus. Posting Group" <> '') OR ("Bal. Gen. Prod. Posting Group" <> '') OR
                                     ("Bal. VAT Bus. Posting Group" <> '') OR ("Bal. VAT Prod. Posting Group" <> '')
                                  THEN
                                    AddError(
                                      STRSUBSTNO(
                                        Text005,
                                        FIELDCAPTION("Bal. Gen. Bus. Posting Group"),FIELDCAPTION("Bal. Gen. Prod. Posting Group"),
                                        FIELDCAPTION("Bal. VAT Bus. Posting Group"),FIELDCAPTION("Bal. VAT Prod. Posting Group"),
                                        FIELDCAPTION("Bal. Account Type"),"Bal. Account Type"));

                                  IF "Job No." <> '' THEN
                                    AddError(STRSUBSTNO(Text009,FIELDCAPTION("Job No.")));
                                  IF (Amount > 0) AND ("Bank Payment Type" = "Bank Payment Type"::"Computer Check") THEN
                                    IF NOT "Check Printed" THEN
                                      AddError(STRSUBSTNO(Text010,FIELDCAPTION("Check Printed")));
                                END;
                              "Bal. Account Type"::"Fixed Asset":
                                TestFixedAsset("Gen. Journal Line");
                            END;

                          IF ("Account No." <> '') AND
                             NOT "System-Created Entry" AND
                             ("Gen. Posting Type" = "Gen. Posting Type"::" ") AND
                             (Amount = 0) AND
                             NOT GenJnlTemplate.Recurring AND
                             NOT "Allow Zero-Amount Posting" AND
                             ("Account Type" <> "Account Type"::"Fixed Asset")
                          THEN
                            WarningIfZeroAmt("Gen. Journal Line");

                          CheckRecurringLine("Gen. Journal Line");
                          CheckAllocations("Gen. Journal Line");

                          IF "Posting Date" = 0D THEN
                            AddError(STRSUBSTNO(Text002,FIELDCAPTION("Posting Date")))
                          ELSE BEGIN
                            IF "Posting Date" <> NORMALDATE("Posting Date") THEN
                              IF ("Account Type" <> "Account Type"::"G/L Account") OR
                                 ("Bal. Account Type" <> "Bal. Account Type"::"G/L Account")
                              THEN
                                AddError(
                                  STRSUBSTNO(
                                    Text013,FIELDCAPTION("Posting Date")));

                            IF (AllowPostingFrom = 0D) AND (AllowPostingTo = 0D) THEN BEGIN
                              IF USERID <> '' THEN
                                IF UserSetup.GET(USERID) THEN BEGIN
                                  AllowPostingFrom := UserSetup."Allow Posting From";
                                  AllowPostingTo := UserSetup."Allow Posting To";
                                END;
                              IF (AllowPostingFrom = 0D) AND (AllowPostingTo = 0D) THEN BEGIN
                                AllowPostingFrom := GLSetup."Allow Posting From";
                                AllowPostingTo := GLSetup."Allow Posting To";
                              END;
                              ///IF AllowPostingTo = 0D THEN
                                ///AllowPostingTo := 31129999D;
                            END;
                            IF ("Posting Date" < AllowPostingFrom) OR ("Posting Date" > AllowPostingTo) THEN
                              AddError(
                                STRSUBSTNO(
                                  Text014,FORMAT("Posting Date")));

                            IF "Gen. Journal Batch"."No. Series" <> '' THEN BEGIN
                              IF NoSeries."Date Order" AND ("Posting Date" < LastEntrdDate) THEN
                                AddError(Text015);
                              LastEntrdDate := "Posting Date";
                            END;
                          END;

                          IF ("Document Date" <> 0D) THEN
                            IF ("Document Date" <> NORMALDATE("Document Date")) AND
                               (("Account Type" <> "Account Type"::"G/L Account") OR
                                ("Bal. Account Type" <> "Bal. Account Type"::"G/L Account"))
                            THEN
                              AddError(
                                STRSUBSTNO(
                                  Text013,FIELDCAPTION("Document Date")));

                          IF "Document No." = '' THEN
                            AddError(STRSUBSTNO(Text002,FIELDCAPTION("Document No.")))
                          ELSE
                            IF "Gen. Journal Batch"."No. Series" <> '' THEN BEGIN
                              IF (LastEntrdDocNo <> '') AND
                                 ("Document No." <> LastEntrdDocNo) AND
                                 ("Document No." <> INCSTR(LastEntrdDocNo))
                              THEN
                                AddError(Text016);
                              LastEntrdDocNo := "Document No.";
                            END;

                          IF ("Account Type" IN ["Account Type"::Customer,"Account Type"::Vendor,"Account Type"::"Fixed Asset"]) AND
                             ("Bal. Account Type" IN ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor,"Bal. Account Type"::"Fixed Asset"])
                          THEN
                            AddError(
                              STRSUBSTNO(
                                Text017,
                                FIELDCAPTION("Account Type"),FIELDCAPTION("Bal. Account Type")));

                          IF Amount * "Amount (LCY)" < 0 THEN
                            AddError(
                              STRSUBSTNO(
                                Text008,FIELDCAPTION("Amount (LCY)"),FIELDCAPTION(Amount)));

                          IF ("Account Type" = "Account Type"::"G/L Account") AND
                             ("Bal. Account Type" = "Bal. Account Type"::"G/L Account")
                          THEN
                            IF "Applies-to Doc. No." <> '' THEN
                              AddError(STRSUBSTNO(Text009,FIELDCAPTION("Applies-to Doc. No.")));

                          IF (("Account Type" = "Account Type"::"G/L Account") AND
                              ("Bal. Account Type" = "Bal. Account Type"::"G/L Account")) OR
                             ("Document Type" <> "Document Type"::Invoice)
                          THEN BEGIN
                            IF PaymentTerms.GET("Payment Terms Code") THEN BEGIN
                              IF ("Document Type" = "Document Type"::"Credit Memo") AND
                                (NOT PaymentTerms."Calc. Pmt. Disc. on Cr. Memos")
                              THEN BEGIN
                                IF "Pmt. Discount Date" <> 0D THEN
                                  AddError(STRSUBSTNO(Text009,FIELDCAPTION("Pmt. Discount Date")));
                                IF "Payment Discount %" <> 0 THEN
                                  AddError(STRSUBSTNO(Text018,FIELDCAPTION("Payment Discount %")));
                              END;
                            END ELSE BEGIN
                              IF "Pmt. Discount Date" <> 0D THEN
                                AddError(STRSUBSTNO(Text009,FIELDCAPTION("Pmt. Discount Date")));
                              IF "Payment Discount %" <> 0 THEN
                                AddError(STRSUBSTNO(Text018,FIELDCAPTION("Payment Discount %")));
                            END;
                          END;

                          IF (("Account Type" = "Account Type"::"G/L Account") AND
                              ("Bal. Account Type" = "Bal. Account Type"::"G/L Account")) OR
                             ("Applies-to Doc. No." <> '')
                          THEN
                            IF "Applies-to ID" <> '' THEN
                              AddError(STRSUBSTNO(Text009,FIELDCAPTION("Applies-to ID")));

                          IF ("Account Type" <> "Account Type"::"Bank Account") AND
                             ("Bal. Account Type" <> "Bal. Account Type"::"Bank Account")
                          THEN
                            IF GenJnlLine2."Bank Payment Type" > 0 THEN
                              AddError(STRSUBSTNO(Text009,FIELDCAPTION("Bank Payment Type")));

                          IF ("Account No." <> '') AND ("Bal. Account No." <> '') THEN BEGIN
                            PurchPostingType := FALSE;
                            SalesPostingType := FALSE;
                          END;
                          IF "Account No." <> '' THEN
                            CASE "Account Type" OF
                              "Account Type"::"G/L Account":
                                CheckGLAcc("Gen. Journal Line",AccName);
                              "Account Type"::Customer:
                                CheckCust("Gen. Journal Line",AccName);
                              "Account Type"::Vendor:
                                CheckVend("Gen. Journal Line",AccName);
                              "Account Type"::"Bank Account":
                                CheckBankAcc("Gen. Journal Line",AccName);
                              "Account Type"::"Fixed Asset":
                                CheckFixedAsset("Gen. Journal Line",AccName);
                              //"Account Type"::"IC Partner":
                                //CheckICPartner("Gen. Journal Line",AccName);
                            END;
                          IF "Bal. Account No." <> '' THEN BEGIN
                            ///ExchAccGLJnlLine.RUN("Gen. Journal Line");
                            CASE "Account Type" OF
                              "Account Type"::"G/L Account":
                                CheckGLAcc("Gen. Journal Line",BalAccName);
                              "Account Type"::Customer:
                                CheckCust("Gen. Journal Line",BalAccName);
                              "Account Type"::Vendor:
                                CheckVend("Gen. Journal Line",BalAccName);
                              "Account Type"::"Bank Account":
                                CheckBankAcc("Gen. Journal Line",BalAccName);
                              "Account Type"::"Fixed Asset":
                                CheckFixedAsset("Gen. Journal Line",BalAccName);
                              ///"Account Type"::"IC Partner":
                                ///CheckICPartner("Gen. Journal Line",AccName);
                            END;
                            ///ExchAccGLJnlLine.RUN("Gen. Journal Line");
                          END;

                          IF NOT DimMgt.CheckDimIDComb("Gen. Journal Line"."Dimension Set ID") THEN
                            AddError(DimMgt.GetDimCombErr);

                          TableID[1] := DimMgt.TypeToTableID1("Account Type");
                          No[1] := "Account No.";
                          TableID[2] := DimMgt.TypeToTableID1("Bal. Account Type");
                          No[2] := "Bal. Account No.";
                          TableID[3] := DATABASE::Job;
                          No[3] := "Job No.";
                          TableID[4] := DATABASE::"Salesperson/Purchaser";
                          No[4] := "Salespers./Purch. Code";
                          TableID[5] := DATABASE::Campaign;
                          No[5] := "Campaign No.";
                          IF NOT DimMgt.CheckDimValuePosting(TableID,No,"Gen. Journal Line"."Dimension Set ID") THEN
                            AddError(DimMgt.GetDimValuePostingErr);
                        END;
                        if "Account Type"="Account Type"::Customer then
                        BilltoName:=Cust.Name
                        else if "Account Type"="Account Type"::Vendor then
                        BilltoName:=Vend.Name;

                      //  WHTAmount := 0; //blocked by Anik
                        

                        // IF "Account Type"="Account Type"::Customer THEN BEGIN
                        //   MYGenJnlLine.COPY("Gen. Journal Line");
                        //   IF (NOT "Skip WHT") THEN BEGIN
                        //     IF WHTPostingSetup.GET(
                        //         MYGenJnlLine."WHT Business Posting Group",
                        //         MYGenJnlLine."WHT Product Posting Group")
                        //     THEN BEGIN
                        //       ///IF (WHTPostingSetup."Realized WHT Type" = WHTPostingSetup."Realized WHT Type"::Payment) THEN
                        //         ///WHTAmount := WHTManagement.ApplyCustCalcWHT(MYGenJnlLine);
                        //       ///IF (WHTPostingSetup."Realized WHT Type" = WHTPostingSetup."Realized WHT Type"::Earliest) THEN
                        //         ///WHTAmount := ABS(WHTManagement.CalcCustExtraWHTForEarliest(MYGenJnlLine));
                        //       IF (WHTPostingSetup."Realized WHT Type" = WHTPostingSetup."Realized WHT Type"::Invoice) THEN BEGIN
                        //         IF (MYGenJnlLine."WHT Absorb Base" <> 0) THEN
                        //           WHTAmount := MYGenJnlLine."WHT Absorb Base" * WHTPostingSetup."WHT %" / 100
                        //         ELSE
                        //           WHTAmount := MYGenJnlLine.Amount * WHTPostingSetup."WHT %" / 100;
                        //       END;
                        //     END;
                        //     TotalWHTAmount := TotalWHTAmount + WHTAmount;
                        //   END;
                        // END ELSE
                        //   IF "Account Type"="Account Type"::Vendor THEN BEGIN
                        //     MYGenJnlLine.COPY("Gen. Journal Line");
                        //     IF (NOT "Skip WHT") THEN BEGIN
                        //       IF WHTPostingSetup.GET(
                        //         MYGenJnlLine."WHT Business Posting Group",
                        //         MYGenJnlLine."WHT Product Posting Group")
                        //       THEN BEGIN
                        //         IF (WHTPostingSetup."Realized WHT Type" = WHTPostingSetup."Realized WHT Type"::Payment) THEN
                        //           WHTAmount := WHTManagement.WHTAmountJournal(MYGenJnlLine,FALSE);
                        //         IF (WHTPostingSetup."Realized WHT Type" = WHTPostingSetup."Realized WHT Type"::Earliest) THEN
                        //           WHTAmount := ABS(WHTManagement.CalcVendExtraWHTForEarliest(MYGenJnlLine));
                        //         IF (WHTPostingSetup."Realized WHT Type" = WHTPostingSetup."Realized WHT Type"::Invoice) THEN BEGIN
                        //           IF (MYGenJnlLine."WHT Absorb Base" <> 0) THEN
                        //             WHTAmount := ABS(MYGenJnlLine."WHT Absorb Base" * WHTPostingSetup."WHT %" / 100)
                        //           ELSE
                        //             WHTAmount := ABS(MYGenJnlLine.Amount * WHTPostingSetup."WHT %" / 100);
                        //         END;
                        //       END;
                        //       TotalWHTAmount := TotalWHTAmount + WHTAmount;
                        //     END;
                        //   END;
                        CheckBalance;
                        AmountLCY += "Amount (LCY)";
                        BalanceLCY += "Balance (LCY)";

                        //J - 30/12/08 #001
                        fnFormatPage;

                        g_blnFirstRow := g_blnNewPage AND ((g_optShowHeaderType = g_optShowHeaderType::Description)
                          OR ((g_intRow = 0) AND (g_optShowHeaderType = g_optShowHeaderType::" ")));
                    end;

                    trigger OnPreDataItem()
                    begin
                        COPYFILTER("Journal Template Name","Gen. Journal Batch"."Journal Template Name");
                        COPYFILTER("Journal Batch Name","Gen. Journal Batch".Name);
                        GenJnlLineFilter := GETFILTERS;
                        
                        GenJnlTemplate.GET("Gen. Journal Batch"."Journal Template Name");
                        IF GenJnlTemplate.Recurring THEN BEGIN
                          IF GETFILTER("Posting Date") <> '' THEN
                            AddError(
                              STRSUBSTNO(
                                Text000,
                                FIELDCAPTION("Posting Date")));
                          SETRANGE("Posting Date",0D,WORKDATE);
                          IF GETFILTER("Expiration Date") <> '' THEN
                            AddError(
                              STRSUBSTNO(
                                Text000,
                                FIELDCAPTION("Expiration Date")));
                          SETFILTER("Expiration Date",'%1 | %2..',0D,WORKDATE);
                        END;
                        
                        IF "Gen. Journal Batch"."No. Series" <> '' THEN BEGIN
                          NoSeries.GET("Gen. Journal Batch"."No. Series");
                          LastEntrdDocNo := '';
                          LastEntrdDate := 0D;
                        END;
                        
                        CurrentCustomerVendors := 0;
                        VATEntryCreated := FALSE;
                        
                        GenJnlLine2.RESET;
                        GenJnlLine2.COPYFILTERS("Gen. Journal Line");
                        
                        GLAccNetChange.DELETEALL;
                        ///CurrReport.CREATETOTALS("Amount (LCY)","Balance (LCY)");
                        
                        //J - 06/04/09 #MSC802-
                        g_blnNewPage := TRUE;    /*===Handle EmptyLine*/
                        g_intRow := 0;
                        //#MSC802+

                    end;
                }
            }

            trigger OnAfterGetRecord()
            begin
              
                //CurrReport.PageNo() := 1;
                g_blnShowGenJnlLine := FALSE;   //#MSC802- 12/04/12 HCL-+
                g_intPageNo := 1;               //J - 31/10/12 MSC2.00-+
            end;

            trigger OnPreDataItem()
            var
                txtLineFeed: Text[2];
                i: Integer;
                j: Integer;
                chrArr: array [2] of Char;
            begin
                GLSetup.GET;
                SalesSetup.GET;
                PurchSetup.GET;

                //J - 06/04/09 #MSC802
                chrArr[1] := 13;
                chrArr[2] := 10;
                txtLineFeed := STRSUBSTNO('%1%2', chrArr[1], chrArr[2]);
                g_txtCompanyInfo := '';
                g_rptCheck.InitTextVariable;

                WITH g_rsCompanyInfo DO BEGIN
                  GET;
                  IF g_blnShowCompanyLogo THEN
                    CALCFIELDS(Picture);

                  g_cuFormatAddr.FormatAddr(
                    g_txtArrCompanyAddr, '', '', '', Address,"Address 2",
                    City, "Post Code",County,"Country/Region Code");

                  g_txtCompanyInfo := '';
                  IF "Name 2" = '' THEN
                    j := 2
                  ELSE
                    j := 3;

                  FOR i := j TO ARRAYLEN(g_txtArrCompanyAddr) DO BEGIN
                    IF g_txtArrCompanyAddr[i] <> '' THEN
                      g_txtCompanyInfo += STRSUBSTNO('%1 ', g_txtArrCompanyAddr[i]);
                  END;

                  g_txtCompanyInfo := STRSUBSTNO('%1 %2 %3 %4 %5', g_rsCompanyInfo.Name,txtLineFeed,
                    g_txtCompanyInfo,txtLineFeed,
                    STRSUBSTNO('Tel: %1     Fax: %2', g_rsCompanyInfo."Phone No.", g_rsCompanyInfo."Fax No."));
                END;
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
                group(Option)
                {
                    Caption = 'Option';
                    field("Row Count";g_intMinRow)
                    {
                        Caption = 'Row Count';
                        ApplicationArea=all;
                    }
                    field("Show Company Logo";g_blnShowCompanyLogo)
                    {
                        Caption = 'Show Company Logo';
                        ApplicationArea=all;
                    }
                    field("Show Dimension";ShowDim)
                    {
                        Caption = 'Show Dimension';
                        ApplicationArea=all;
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnOpenPage()
        begin
            g_intMinRow := 20;
            g_blnShowCompanyLogo := TRUE;
        end;
    }

    labels
    {
    }
    trigger OnInitReport()
    begin
      CompanyInfo.get;
      CompanyInfo.CalcFields(Picture);
    end;
    trigger OnPreReport()
    begin
        "Gen. Journal Line".COPYFILTER("Journal Template Name","Gen. Journal Batch"."Journal Template Name");
        "Gen. Journal Line".COPYFILTER("Journal Batch Name","Gen. Journal Batch".Name);
        GenJnlLineFilter := "Gen. Journal Line".GETFILTERS;
    end;

    var
        Text000: Label '%1 cannot be filtered when you post recurring journals.';
        Text001: Label '%1 or %2 must be specified.';
        Text002: Label '%1 must be specified.';
        Text003: Label '%1 + %2 must be %3.';
        Text004: Label '%1 must be " " when %2 is %3.';
        Text005: Label '%1, %2, %3 or %4 must not be completed when %5 is %6.';
        Text006: Label '%1 must be negative.';
        Text007: Label '%1 must be positive.';
        Text008: Label '%1 must have the same sign as %2.';
        Text009: Label '%1 cannot be specified.';
        Text010: Label '%1 must be Yes.';
        Text011: Label '%1 + %2 must be -%3.';
        Text012: Label '%1 must have a different sign than %2.';
        Text013: Label '%1 must only be a closing date for G/L entries.';
        Text014: Label '%1 is not within your allowed range of posting dates.';
        Text015: Label 'The lines are not listed according to Posting Date because they were not entered in that order.';
        Text016: Label 'There is a gap in the number series.';
        Text017: Label '%1 or %2 must be G/L Account or Bank Account.';
        Text018: Label '%1 must be 0.';
        Text019: Label '%1 cannot be specified when using recurring journals.';
        Text020: Label '%1 must not be %2 when %3 = %4.';
        Text021: Label 'Allocations can only be used with recurring journals.';
        Text022: Label 'Please specify %1 in the %2 allocation lines.';
        Text023: Label '<Month Text>';
        Text024: Label '%1 %2 posted on %3, must be separated by an empty line';
        Text025: Label '%1 %2 is out of balance by %3.';
        Text026: Label 'The reversing entries for %1 %2 are out of balance by %3.';
        Text027: Label 'As of %1, the lines are out of balance by %2.';
        Text028: Label 'As of %1, the reversing entries are out of balance by %2.';
        Text029: Label 'The total of the lines is out of balance by %1.';
        Text030: Label 'The total of the reversing entries is out of balance by %1.';
        Text031: Label '%1 %2 does not exist.';
        Text032: Label '%1 must be %2 for %3 %4.';
        Text036: Label '%1 %2 %3 does not exist.';
        Text037: Label '%1 must be %2.';
        Text038: Label 'The currency %1 cannot be found. Please check the currency table.';
        Text039: Label 'Sales %1 %2 already exists.';
        Text040: Label 'Purchase %1 %2 already exists.';
        Text041: Label '%1 must be entered.';
        Text042: Label '%1 must not be filled when %2 is different in %3 and %4.';
        Text043: Label '%1 %2 must not have %3 = %4.';
        Text044: Label '%1 must not be specified in fixed asset journal lines.';
        Text045: Label '%1 must be specified in fixed asset journal lines.';
        Text046: Label '%1 must be different than %2.';
        Text047: Label '%1 and %2 must not both be %3.';
        Text048: Label '%1  must not be specified when %2 = %3.';
        Text049: Label '%1 must not be specified when %2 = %3.';
        Text050: Label 'must not be specified together with %1 = %2.';
        Text051: Label '%1 must be identical to %2.';
        Text052: Label '%1 cannot be a closing date.';
        Text053: Label '%1 is not within your range of allowed posting dates.';
        Text054: Label 'Insurance integration is not activated for %1 %2.';
        Text055: Label 'must not be specified when %1 is specified.';
        Text056: Label 'When G/L integration is not activated, %1 must not be posted in the general journal.';
        Text057: Label 'When G/L integration is not activated, %1 must not be specified in the general journal.';
        Text058: Label '%1 must not be specified.';
        Text059: Label 'The combination of Customer and Gen. Posting Type Purchase is not allowed.';
        Text060: Label 'The combination of Vendor and Gen. Posting Type Sales is not allowed.';
        Text061: Label 'The Balance and Reversing Balance recurring methods can be used only with Allocations.';
        Text062: Label '%1 must not be 0.';
        g_cuFormatAddr: Codeunit "Format Address";
        BilltoName:Text[50];
        CompanyInfo:Record "Company Information";
        g_rsCompanyInfo: Record "Company Information";
        g_rptCheck: Report "Check";
                        g_rsCurrExchRate: Record "Currency Exchange Rate";
                        g_rsNextGenJnlLine: Record "Gen. Journal Line";
                        g_rsPrevGenJnlLine: Record "Gen. Journal Line";
                        g_rsVendLedgEntry: Record "Vendor Ledger Entry";
                        g_txtArrCompanyAddr: array [8] of Text[50];
                        g_txtArrBilltoPaytoAddr: array [8] of Text[90];
                        g_txtArrTotal: array [2] of Text[80];
                        g_txtCompanyInfo: Text[1024];
                        g_txtExchangeRate: Text[50];
                        g_cdeBank: Code[20];
                        g_cdeBankCurrency: Code[10];
                        g_cdeCurrency: Code[10];
                        g_cdeCurrencyAppln: Code[10];
                        g_cdeChequeNo: Code[20];
                        g_cdeVoucherNo: Code[20];
                        g_optShowHeaderType: Option " ",Description,Vendor,Customer;
                        g_decExchangeRate: Decimal;
                        g_decAmount: Decimal;
                        g_decTotal: Decimal;
                        g_intBalanceRow: Integer;
                        g_intMinRow: Integer;
                        g_intPageNo: Integer;
                        g_intRow: Integer;
                        g_blnNewPage: Boolean;
                        g_blnShowCompanyLogo: Boolean;
                        g_blnShowFooter: Boolean;
                        g_blnShowGenJnlLine: Boolean;
                        g_blnFirstRow: Boolean;
                        GLSetup: Record "General Ledger Setup";
                        SalesSetup: Record "Sales & Receivables Setup";
                        PurchSetup: Record "Purchases & Payables Setup";
                        UserSetup: Record "User Setup";
                        AccountingPeriod: Record "Accounting Period";
                        GLAcc: Record "G/L Account";
                        Currency: Record "Currency";
                        Cust: Record "Customer";
                        Vend: Record "Vendor";
                        BankAccPostingGr: Record "Bank Account Posting Group";
                        BankAcc: Record "Bank Account";
                        GenJnlTemplate: Record "Gen. Journal Template";
                        GenJnlLine2: Record "Gen. Journal Line";
                        TempGenJnlLine: Record "Gen. Journal Line" temporary;
                        TempGenJnlLine2: Record "Gen. Journal Line" temporary;
                        GenJnlAlloc: Record "Gen. Jnl. Allocation";
                        OldCustLedgEntry: Record "Cust. Ledger Entry";
                        OldVendLedgEntry: Record "Vendor Ledger Entry";
                        VATPostingSetup: Record "VAT Posting Setup";
                        NoSeries: Record "No. Series";
                        FA: Record "Fixed Asset";
                        ICPartner: Record "IC Partner";
                        DeprBook: Record "Depreciation Book";
                        FADeprBook: Record "FA Depreciation Book";
                        FASetup: Record "FA Setup";
                        GLAccNetChange: Record "G/L Account Net Change" temporary;
                        DimSetEntry: Record "Dimension Set Entry";
                        //ExchAccGLJnlLine: Codeunit "Analysis View Budget Entry";
                        GenJnlLineFilter: Text[250];
                        AllowPostingFrom: Date;
                        AllowPostingTo: Date;
                        AllowFAPostingFrom: Date;
                        AllowFAPostingTo: Date;
                        LastDate: Date;
                        LastDocType: Option Document,Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder;
                        LastDocNo: Code[20];
                        LastEntrdDocNo: Code[20];
                        LastEntrdDate: Date;
                        BalanceLCY: Decimal;
                        AmountLCY: Decimal;
                        DocBalance: Decimal;
                        DocBalanceReverse: Decimal;
                        DateBalance: Decimal;
                        DateBalanceReverse: Decimal;
                        TotalBalance: Decimal;
                        TotalBalanceReverse: Decimal;
                        AccName: Text[50];
                        LastLineNo: Integer;
                        GLDocNo: Code[20];
                        Day: Integer;
                        Week: Integer;
                        Month: Integer;
                        MonthText: Text[30];
                        AmountError: Boolean;
                        ErrorCounter: Integer;
                        ErrorText: array [50] of Text[250];
                        TempErrorText: Text[250];
                        BalAccName: Text[50];
                        CurrentCustomerVendors: Integer;
                        VATEntryCreated: Boolean;
                        CustPosting: Boolean;
                        VendPosting: Boolean;
                        SalesPostingType: Boolean;
                        PurchPostingType: Boolean;
                        DimText: Text[120];
                        OldDimText: Text[75];
                        ShowDim: Boolean;
                        Continue: Boolean;
                        Text063: Label 'Document,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
        Text064: Label '%1 %2 is already used in line %3 (%4 %5).';
        Text065: Label '%1 must not be blocked with type %2 when %3 is %4';
        CurrentICPartner: Code[20];
        Text066: Label 'You cannot enter G/L Account or Bank Account in both %1 and %2.';
        Text067: Label '%1 %2 is linked to %3 %4.';
        Text069: Label '%1 must not be specified when %2 is %3.';
        Text070: Label '%1 must not be specified when the document is not an intercompany transaction.';
        Text071: Label '%1 %2 does not exist.';
        Text072: Label '%1 must not be %2 for %3 %4.';
        Text073: Label '%1 %2 already exists.';
        MYGenJnlLine: Record "Gen. Journal Line";
       // WHTManagement: Codeunit "WHTManagement";
       // WHTAmount: Decimal;
       // TotalWHTAmount: Decimal;
        //WHTPostingSetup: Record "WHT Posting Setup";
        ChequeCap: Label 'Cheque No.: ';
        PageNoCap: Label 'Page';
        JnlBatchNameCap: Label 'Journal Batch';
        PostingDateCap: Label 'Posting Date';
        DocumentTypeCap: Label 'Document Type';
        AccountTypeCap: Label 'Account Type';
        AccNameCap: Label 'Name';
        PAYMENT_VOUCHERCaptionLbl: Label 'PAYMENT VOUCHER';
        DescriptionCaptionLbl: Label 'Description';
        AmountCaptionLbl: Label 'Amount';
        EmptyStringCaptionLbl: Label ': ';
        VoucherNoCap: Label 'Voucher No.';
        Gen__Journal_Line__Posting_Date_CaptionLbl: Label 'Date';
        PayToCap: Label 'PAY TO';
        Being_payment_for__CaptionLbl: Label 'Being payment for :';
        Vendor_Ledger_Entry__External_Document_No__CaptionLbl: Label 'Invoice No.';
        Vendor_Ledger_Entry__Document_No__CaptionLbl: Label 'Document No.';
        Vendor_Ledger_Entry__Document_Date_CaptionLbl: Label 'Doc. Date';
        AmountCaption_Control1000000064Lbl: Label 'Amount';
        Continue___CaptionLbl: Label 'Continue...';
        DimensionsCap: Label 'Dimensions';
        ErrorText_Number_CaptionLbl: Label 'Warning!';
        FooterDateCap: Label 'Date:';
        FooterApprovedByCap: Label 'Approved By: ';
        FooterReceivedByCap: Label 'Received By:';
        Received_By___CaptionLbl: Label 'Received By : ';
        Approved_By___CaptionLbl: Label 'Approved By : ';
        AmountInTextCap: Label 'The Sum of Dollars';
        ReconciliationCap: Label 'Reconciliation';
        NoCap: Label 'No.';
        NameCap: Label 'Name';

    ///[Scope('Internal')]
    procedure fnInitialization()
    begin
        CLEAR(g_txtArrBilltoPaytoAddr);
        g_optShowHeaderType := g_optShowHeaderType::" ";
        
        WITH "Gen. Journal Line" DO BEGIN
          /*===Get Document No. / Vourcher No.*/
          IF "Gen. Journal Line"."Check Printed" THEN BEGIN
            g_cdeVoucherNo := "Gen. Journal Line"."External Document No.";
            g_cdeChequeNo := "Gen. Journal Line"."Document No.";
          END ELSE BEGIN
            g_cdeVoucherNo := "Gen. Journal Line"."Document No.";
            g_cdeChequeNo := "Gen. Journal Line"."External Document No.";
          END;
          g_cdeCurrency := '';
        END;
        g_txtExchangeRate := '';
        g_decTotal := 0;
        g_decExchangeRate := 0;
        g_cdeBankCurrency := '';

    end;

    local procedure fnCalcApplnAmounttoApply(decAmounttoApply: Decimal): Decimal
    var
        ApplnAmounttoApply: Decimal;
        cdeApplnCurrencyCode: Code[10];
        dteApplnDate: Date;
        blnValidExchRate: Boolean;
    begin
        //J - 06/04/09 #MSC802
        blnValidExchRate := TRUE;

        cdeApplnCurrencyCode := "Gen. Journal Line"."Currency Code";
        dteApplnDate := "Gen. Journal Line"."Posting Date";
        WITH "Vendor Ledger Entry" DO BEGIN
          IF cdeApplnCurrencyCode = "Currency Code" THEN
            EXIT(decAmounttoApply);

          IF dteApplnDate = 0D THEN
            dteApplnDate := "Posting Date";
          ApplnAmounttoApply :=
            g_rsCurrExchRate.ApplnExchangeAmtFCYToFCY(
              dteApplnDate, "Currency Code", cdeApplnCurrencyCode,decAmounttoApply, blnValidExchRate);
        END;
        EXIT(ApplnAmounttoApply);
    end;

    local procedure fnFormatPage()
    begin
        //J - 06/04/09 #MSC802
        WITH "Gen. Journal Line" DO BEGIN
          IF NOT EmptyLine THEN BEGIN
            /*===1. Get Page Break*/
            g_blnNewPage := (g_rsPrevGenJnlLine."Journal Template Name" <> "Journal Template Name")
              OR (g_rsPrevGenJnlLine."Journal Batch Name" <> "Journal Batch Name")
              OR (g_rsPrevGenJnlLine."Document No." <> "Document No.");
            g_rsPrevGenJnlLine.COPY("Gen. Journal Line");
        
            IF g_blnNewPage THEN BEGIN
              /*===New Document*/
              IF (g_intRow <> 0)  THEN BEGIN
                ///CurrReport.NEWPAGE;
                ///CurrReport.PAGENO := 1;
                g_intPageNo := 1;              //J - 31/10/12 #MSC2.00-+
              END;
              g_intRow := 0;
              fnGetPageHeaderInfo;
            END ELSE BEGIN
              /*===New Page but same Voucher No.*/
              IF (g_intRow MOD g_intMinRow = 0)
              AND (g_intRow <> 0) THEN BEGIN   //J - 05/01/10 #MSC1.00-+
                ///CurrReport.NEWPAGE;
                g_blnNewPage := TRUE;
                g_intPageNo += 1;              //J - 31/10/12 #MSC2.00-+
              END;
            END;
        
            /*===2. Get Page Footer*/
            g_rsNextGenJnlLine.COPY("Gen. Journal Line");
            IF g_rsNextGenJnlLine.NEXT = 0 THEN
              g_blnShowFooter := TRUE
            ELSE
              g_blnShowFooter := (g_rsPrevGenJnlLine."Journal Template Name" <> "Journal Template Name")
                OR (g_rsNextGenJnlLine."Journal Batch Name" <> "Journal Batch Name")
                OR (g_rsNextGenJnlLine."Document No." <> "Document No.");
        
            /*===3. Get Application Entry if any*/
            g_optShowHeaderType := g_optShowHeaderType::Description;
            IF ("Account Type" = "Account Type"::Vendor) OR ("Bal. Account Type" = "Bal. Account Type"::Vendor) THEN
              fnGetVendApplication
            ELSE IF "Bal. Account No." = '' THEN
              IF ("Account Type" = "Account Type"::"Bank Account")
              AND (((Amount < 0) AND (NOT Correction)) OR ((Amount > 0) AND Correction)) THEN
                g_optShowHeaderType := g_optShowHeaderType::" ";
        
            /*===4. Update Row No.*/
            IF g_optShowHeaderType = g_optShowHeaderType::Description THEN
              g_intRow += 1;
        
            IF g_blnShowFooter THEN
              fnGetPaymentTotal;
          END ELSE
            fnInitialization;
        
          IF "Currency Code" = '' THEN
            g_cdeCurrency := GLSetup."LCY Code"
          ELSE
            g_cdeCurrency := "Currency Code";
        END;

    end;

    local procedure fnGetPaymentTotal()
    var
        rsGenJnlLine: Record "Gen. Journal Line";
        cdeAccountNo: Code[20];
    begin
        //J - 06/04/09 #MSC802 - Get Total Based on Bank Account
        WITH rsGenJnlLine DO BEGIN
          //J - 05/01/11 #MSC802-    WITH Gen. Journal Line" DO BEGIN
          COPY("Gen. Journal Line");
          RESET;
          SETRANGE("Journal Template Name", "Gen. Journal Line"."Journal Template Name");
          SETRANGE("Journal Batch Name", "Gen. Journal Line"."Journal Batch Name");
          SETRANGE("Document No.", "Gen. Journal Line"."Document No.");
          IF FINDSET(FALSE, FALSE) THEN
            REPEAT
          //#J
              cdeAccountNo := '';
              IF ("Account Type" = "Account Type"::"Bank Account") AND ("Account No." <> '') THEN BEGIN
                IF ("Bal. Account Type" = "Bal. Account Type"::"Bank Account")
                AND ("Bal. Account No." <> '') THEN     //J - 05/01/11 #MSC802-+
                  g_decTotal += "Debit Amount"
                ELSE
                  g_decTotal += "Credit Amount";
                g_cdeBank := "Account No.";
                g_cdeBankCurrency := "Currency Code";
              END ELSE BEGIN
                IF "Bal. Account No." <> '' THEN
                  IF "Bal. Account Type" = "Bal. Account Type"::"Bank Account" THEN BEGIN
                    g_decTotal += "Debit Amount";
                    g_cdeBank := "Bal. Account No.";
                    g_cdeBankCurrency := "Currency Code";
                  END ELSE BEGIN
                    /*====Bal. Account Type = G/L Account*/
                    g_decTotal += ABS(Amount);
                    g_cdeBank := '';
                    g_cdeBankCurrency := "Currency Code";
                  END;
              END;
            UNTIL NEXT = 0;
        
          IF g_cdeBankCurrency = '' THEN
            g_cdeBankCurrency := GLSetup."LCY Code";
        
          g_rptCheck.FormatNoText(g_txtArrTotal, g_decTotal, '');
        
          IF "Currency Code" <> '' THEN
            g_decExchangeRate := ROUND(1 / "Gen. Journal Line"."Currency Factor", 0.00001)
          ELSE
            g_decExchangeRate := 0;
        
          IF (g_decExchangeRate <> 0) THEN
            g_txtExchangeRate := STRSUBSTNO('Exchange Rate 1 %1 : %2 %3',
              g_cdeBankCurrency, g_decExchangeRate, GLSetup."LCY Code");
        END;

    end;

    local procedure fnGetPageHeaderInfo()
    var
        rsCustomer: Record "Customer";
        rsVendor: Record "Vendor";
        cdeAccountNo: Code[20];
    begin
        //J - 06/04/09 #MSC802
        fnInitialization;
        WITH "Gen. Journal Line" DO BEGIN
          /*===Get Bill-to/Pay-to Vendor Address*/
          CLEAR(g_txtArrBilltoPaytoAddr);
          IF ("Account Type" = "Account Type"::Vendor) AND ("Account No." <> '') THEN
            cdeAccountNo := "Account No."
          ELSE BEGIN
            IF ("Bal. Account Type" = "Bal. Account Type"::Vendor) AND ("Bal. Account No." <> '') THEN
              cdeAccountNo := "Bal. Account No.";
          END;
        
          IF cdeAccountNo <> '' THEN BEGIN
            rsVendor.GET(cdeAccountNo);
            g_cuFormatAddr.FormatAddr(g_txtArrBilltoPaytoAddr, '', '', rsVendor.Contact,
                           rsVendor.Address, rsVendor."Address 2", rsVendor.City,
                           rsVendor."Post Code", rsVendor.County, rsVendor."Country/Region Code");
          END ELSE BEGIN
            /*===Get Bill-to/Pay-to Customer Address*/
            IF ("Account Type" = "Account Type"::Customer) AND ("Account No." <> '') THEN
              cdeAccountNo := "Account No."
            ELSE BEGIN
              IF ("Bal. Account Type" = "Bal. Account Type"::Customer) AND ("Bal. Account No." <> '') THEN
                cdeAccountNo := "Bal. Account No.";
            END;
        
            IF cdeAccountNo <> '' THEN BEGIN
              rsCustomer.GET(cdeAccountNo);
              g_cuFormatAddr.FormatAddr(g_txtArrBilltoPaytoAddr, '', '', rsCustomer.Contact,
                             rsCustomer.Address, rsCustomer."Address 2", rsCustomer.City,
                             rsCustomer."Post Code", rsCustomer.County, rsCustomer."Country/Region Code");
            END;
          END;
        END;

    end;

    local procedure fnGetVendApplication()
    var
        cdeAccountNo: Code[20];
    begin
        /*===Get Vendor applied information*/
        WITH "Gen. Journal Line" DO BEGIN
          IF "Account Type" = "Account Type"::Vendor THEN
            cdeAccountNo := "Account No.";
          IF cdeAccountNo <> '' THEN
            IF "Bal. Account Type" = "Bal. Account Type"::Vendor THEN
              cdeAccountNo := "Bal. Account No.";
        
          IF (cdeAccountNo <> '') THEN
            g_rsVendLedgEntry.RESET;
            g_rsVendLedgEntry.SETCURRENTKEY("Vendor No.", "Applies-to ID");
            g_rsVendLedgEntry.SETRANGE("Vendor No.", cdeAccountNo);
            IF "Applies-to Doc. No." <> '' THEN BEGIN
              g_rsVendLedgEntry.SETRANGE("Applies-to ID");
              g_rsVendLedgEntry.SETRANGE("Document Type", "Applies-to Doc. Type");
              g_rsVendLedgEntry.SETRANGE("Document No.", "Applies-to Doc. No.");
              IF g_rsVendLedgEntry.FINDFIRST THEN
                g_optShowHeaderType := g_optShowHeaderType::Vendor;
            END ELSE IF "Applies-to ID" <> '' THEN BEGIN
              g_rsVendLedgEntry.SETRANGE("Document No.");
              g_rsVendLedgEntry.SETRANGE("Document Type");
              g_rsVendLedgEntry.SETRANGE("Applies-to ID", "Applies-to ID");
              IF g_rsVendLedgEntry.FINDFIRST THEN
                g_optShowHeaderType := g_optShowHeaderType::Vendor;
            END;
        END;

    end;

    local procedure CheckRecurringLine(GenJnlLine2: Record "Gen. Journal Line")
    begin
        WITH GenJnlLine2 DO BEGIN
          IF GenJnlTemplate.Recurring THEN BEGIN
            IF "Recurring Method" = 0 THEN
              AddError(STRSUBSTNO(Text002,FIELDCAPTION("Recurring Method")));
            IF FORMAT("Recurring Frequency") = '' THEN
              AddError(STRSUBSTNO(Text002,FIELDCAPTION("Recurring Frequency")));
            IF "Bal. Account No." <> '' THEN
              AddError(
                STRSUBSTNO(
                  Text019,
                  FIELDCAPTION("Bal. Account No.")));
            CASE "Recurring Method" OF
              "Recurring Method"::"V  Variable","Recurring Method"::"RV Reversing Variable",
              "Recurring Method"::"F  Fixed","Recurring Method"::"RF Reversing Fixed":
                 WarningIfZeroAmt("Gen. Journal Line");
              "Recurring Method"::"B  Balance","Recurring Method"::"RB Reversing Balance":
                 WarningIfNonZeroAmt("Gen. Journal Line");
            END;
            IF ("Recurring Method" > "Recurring Method"::"V  Variable") THEN BEGIN
              IF "Account Type" = "Account Type"::"Fixed Asset" THEN
                AddError(
                  STRSUBSTNO(
                    Text020,
                    FIELDCAPTION("Recurring Method"),"Recurring Method",
                    FIELDCAPTION("Account Type"),"Account Type"));
              IF "Bal. Account Type" = "Bal. Account Type"::"Fixed Asset" THEN
                AddError(
                  STRSUBSTNO(
                    Text020,
                    FIELDCAPTION("Recurring Method"),"Recurring Method",
                    FIELDCAPTION("Bal. Account Type"),"Bal. Account Type"));
            END;
          END ELSE BEGIN
            IF "Recurring Method" <> 0 THEN
              AddError(STRSUBSTNO(Text009,FIELDCAPTION("Recurring Method")));
            IF FORMAT("Recurring Frequency") <> '' THEN
              AddError(STRSUBSTNO(Text009,FIELDCAPTION("Recurring Frequency")));
          END;
        END;
    end;

    local procedure CheckAllocations(GenJnlLine2: Record "Gen. Journal Line")
    begin
        WITH GenJnlLine2 DO BEGIN
          IF "Recurring Method" IN
             ["Recurring Method"::"B  Balance",
              "Recurring Method"::"RB Reversing Balance"]
          THEN BEGIN
            GenJnlAlloc.RESET;
            GenJnlAlloc.SETRANGE("Journal Template Name","Journal Template Name");
            GenJnlAlloc.SETRANGE("Journal Batch Name","Journal Batch Name");
            GenJnlAlloc.SETRANGE("Journal Line No.","Line No.");
            IF NOT GenJnlAlloc.FIND('-') THEN
              AddError(Text061);
          END;

          GenJnlAlloc.RESET;
          GenJnlAlloc.SETRANGE("Journal Template Name","Journal Template Name");
          GenJnlAlloc.SETRANGE("Journal Batch Name","Journal Batch Name");
          GenJnlAlloc.SETRANGE("Journal Line No.","Line No.");
          GenJnlAlloc.SETFILTER(Amount,'<>0');
          IF GenJnlAlloc.FIND('-') THEN BEGIN
            IF NOT GenJnlTemplate.Recurring THEN
              AddError(Text021)
            ELSE BEGIN
              GenJnlAlloc.SETRANGE("Account No.",'');
              IF GenJnlAlloc.FIND('-') THEN
                AddError(
                  STRSUBSTNO(
                    Text022,
                    GenJnlAlloc.FIELDCAPTION("Account No."),GenJnlAlloc.COUNT));
            END;
          END;
        END;
    end;

    local procedure MakeRecurringTexts(var GenJnlLine2: Record "Gen. Journal Line")
    begin
        WITH GenJnlLine2 DO BEGIN
          GLDocNo := "Document No.";
          IF ("Posting Date" <> 0D) AND ("Account No." <> '') AND ("Recurring Method" <> 0) THEN BEGIN
            Day := DATE2DMY("Posting Date",1);
            Week := DATE2DWY("Posting Date",2);
            Month := DATE2DMY("Posting Date",2);
            MonthText := FORMAT("Posting Date",0,Text023);
            AccountingPeriod.SETRANGE("Starting Date",0D,"Posting Date");
            IF NOT AccountingPeriod.FIND('+') THEN
              AccountingPeriod.Name := '';
            "Document No." :=
              DELCHR(
                PADSTR(
                  STRSUBSTNO("Document No.",Day,Week,Month,MonthText,AccountingPeriod.Name),
                  MAXSTRLEN("Document No.")),
                '>');
            Description :=
              DELCHR(
                PADSTR(
                  STRSUBSTNO(Description,Day,Week,Month,MonthText,AccountingPeriod.Name),
                  MAXSTRLEN(Description)),
                '>');
          END;
        END;
    end;

    local procedure CheckBalance()
    var
        GenJnlLine: Record "Gen. Journal Line";
        NextGenJnlLine: Record "Gen. Journal Line";
    begin
        GenJnlLine := "Gen. Journal Line";
        LastLineNo := "Gen. Journal Line"."Line No.";
        IF "Gen. Journal Line".NEXT = 0 THEN;
        NextGenJnlLine := "Gen. Journal Line";
        MakeRecurringTexts(NextGenJnlLine);
        "Gen. Journal Line" := GenJnlLine;
        WITH GenJnlLine DO
          IF NOT EmptyLine THEN BEGIN
            DocBalance := DocBalance + "Balance (LCY)";
            DateBalance := DateBalance + "Balance (LCY)";
            TotalBalance := TotalBalance + "Balance (LCY)";
            IF "Recurring Method" >= "Recurring Method"::"RF Reversing Fixed" THEN BEGIN
              DocBalanceReverse := DocBalanceReverse + "Balance (LCY)";
              DateBalanceReverse := DateBalanceReverse + "Balance (LCY)";
              TotalBalanceReverse := TotalBalanceReverse + "Balance (LCY)";
            END;
            LastDocType := "Document Type";
            LastDocNo := "Document No.";
            LastDate := "Posting Date";
            IF TotalBalance = 0 THEN BEGIN
              CurrentCustomerVendors := 0;
              VATEntryCreated := FALSE;
            END;
            IF GenJnlTemplate."Force Doc. Balance" THEN BEGIN
              VATEntryCreated :=
                VATEntryCreated OR
                (("Account Type" = "Account Type"::"G/L Account") AND ("Account No." <> '') AND
                 ("Gen. Posting Type" IN ["Gen. Posting Type"::Purchase,"Gen. Posting Type"::Sale])) OR
                (("Bal. Account Type" = "Bal. Account Type"::"G/L Account") AND ("Bal. Account No." <> '') AND
                 ("Bal. Gen. Posting Type" IN ["Bal. Gen. Posting Type"::Purchase,"Bal. Gen. Posting Type"::Sale]));
              IF (("Account Type" IN ["Account Type"::Customer,"Account Type"::Vendor]) AND
                  ("Account No." <> '')) OR
                 (("Bal. Account Type" IN ["Bal. Account Type"::Customer,"Bal. Account Type"::Vendor]) AND
                  ("Bal. Account No." <> ''))
                 THEN
                   CurrentCustomerVendors := CurrentCustomerVendors + 1;
               IF (CurrentCustomerVendors > 1) AND VATEntryCreated THEN
                 AddError(
                   STRSUBSTNO(
                     Text024,
                     "Document Type","Document No.","Posting Date"));
            END;
          END;

        WITH NextGenJnlLine DO BEGIN
          IF (LastDate <> 0D) AND (LastDocNo <> '') AND
             (("Posting Date" <> LastDate) OR
              ("Document Type" <> LastDocType) OR
              ("Document No." <> LastDocNo) OR
              ("Line No." = LastLineNo))
          THEN BEGIN
            IF GenJnlTemplate."Force Doc. Balance" THEN BEGIN
              CASE TRUE OF
                DocBalance <> 0:
                  AddError(
                    STRSUBSTNO(
                      Text025,
                      SELECTSTR(LastDocType + 1,Text063),LastDocNo,DocBalance));
                DocBalanceReverse <> 0:
                  AddError(
                    STRSUBSTNO(
                      Text026,
                      SELECTSTR(LastDocType + 1,Text063),LastDocNo,DocBalanceReverse));
              END;
              DocBalance := 0;
              DocBalanceReverse := 0;
            END;
            IF ("Posting Date" <> LastDate) OR
               ("Document Type" <> LastDocType) OR ("Document No." <> LastDocNo)
            THEN BEGIN
              CurrentCustomerVendors := 0;
              VATEntryCreated := FALSE;
              CustPosting := FALSE;
              VendPosting := FALSE;
              SalesPostingType := FALSE;
              PurchPostingType := FALSE;
            END;
          END;

          IF (LastDate <> 0D) AND (("Posting Date" <> LastDate) OR ("Line No." = LastLineNo)) THEN BEGIN
            CASE TRUE OF
              DateBalance <> 0:
                AddError(
                  STRSUBSTNO(
                    Text027,
                    LastDate,DateBalance));
              DateBalanceReverse <> 0:
                AddError(
                  STRSUBSTNO(
                    Text028,
                    LastDate,DateBalanceReverse));
            END;
            DocBalance := 0;
            DocBalanceReverse := 0;
            DateBalance := 0;
            DateBalanceReverse := 0;
          END;

          IF "Line No." = LastLineNo THEN BEGIN
            CASE TRUE OF
              TotalBalance <> 0:
                AddError(
                  STRSUBSTNO(
                    Text029,
                    TotalBalance));
              TotalBalanceReverse <> 0:
                AddError(
                  STRSUBSTNO(
                    Text030,
                    TotalBalanceReverse));
            END;
            DocBalance := 0;
            DocBalanceReverse := 0;
            DateBalance := 0;
            DateBalanceReverse := 0;
            TotalBalance := 0;
            TotalBalanceReverse := 0;
            LastDate := 0D;
            LastDocType := 0;
            LastDocNo := '';
          END;
        END;
    end;

    local procedure AddError(Text: Text[250])
    begin
        ErrorCounter := ErrorCounter + 1;
        ErrorText[ErrorCounter] := Text;
    end;

    local procedure ReconcileGLAccNo(GLAccNo: Code[20];ReconcileAmount: Decimal)
    begin
        IF NOT GLAccNetChange.GET(GLAccNo) THEN BEGIN
          GLAcc.GET(GLAccNo);
          GLAcc.CALCFIELDS("Balance at Date");
          GLAccNetChange.INIT;
          GLAccNetChange."No." := GLAcc."No.";
          GLAccNetChange.Name := GLAcc.Name;
          GLAccNetChange."Balance after Posting" := GLAcc."Balance at Date";
          GLAccNetChange.INSERT;
        END;
        GLAccNetChange."Net Change in Jnl." := GLAccNetChange."Net Change in Jnl." + ReconcileAmount;
        GLAccNetChange."Balance after Posting" := GLAccNetChange."Balance after Posting" + ReconcileAmount;
        GLAccNetChange.MODIFY;
    end;

    local procedure CheckGLAcc(var GenJnlLine: Record "Gen. Journal Line";var AccName: Text[30])
    begin
        WITH GenJnlLine DO BEGIN
          IF NOT GLAcc.GET("Account No.") THEN
            AddError(
              STRSUBSTNO(
                Text031,
                GLAcc.TABLECAPTION,"Account No."))
          ELSE BEGIN
            AccName := GLAcc.Name;

            IF GLAcc.Blocked THEN
              AddError(
                STRSUBSTNO(
                  Text032,
                  GLAcc.FIELDCAPTION(Blocked),FALSE,GLAcc.TABLECAPTION,"Account No."));
            IF GLAcc."Account Type" <> GLAcc."Account Type"::Posting THEN BEGIN
              GLAcc."Account Type" := GLAcc."Account Type"::Posting;
              AddError(
                STRSUBSTNO(
                  Text032,
                  GLAcc.FIELDCAPTION("Account Type"),GLAcc."Account Type",GLAcc.TABLECAPTION,"Account No."));
            END;
            IF NOT "System-Created Entry" THEN
              IF "Posting Date" = NORMALDATE("Posting Date") THEN
                IF NOT GLAcc."Direct Posting" THEN
                  AddError(
                    STRSUBSTNO(
                      Text032,
                      GLAcc.FIELDCAPTION("Direct Posting"),TRUE,GLAcc.TABLECAPTION,"Account No."));

            IF "Gen. Posting Type" > 0 THEN BEGIN
              CASE "Gen. Posting Type" OF
                "Gen. Posting Type"::Sale:
                  SalesPostingType := TRUE;
                "Gen. Posting Type"::Purchase:
                  PurchPostingType := TRUE;
              END;
              TestPostingType;

              IF NOT VATPostingSetup.GET("VAT Bus. Posting Group","VAT Prod. Posting Group") THEN
                AddError(
                  STRSUBSTNO(
                    Text036,
                    VATPostingSetup.TABLECAPTION,"VAT Bus. Posting Group","VAT Prod. Posting Group"))
              ELSE
                IF "VAT Calculation Type" <> VATPostingSetup."VAT Calculation Type" THEN
                  AddError(
                    STRSUBSTNO(
                      Text037,
                      FIELDCAPTION("VAT Calculation Type"),VATPostingSetup."VAT Calculation Type"))
            END;

            IF GLAcc."Reconciliation Account" THEN
              ReconcileGLAccNo("Account No.",ROUND("Amount (LCY)" / (1 + "VAT %" / 100)));
          END;
        END;
    end;

    local procedure CheckCust(var GenJnlLine: Record "Gen. Journal Line";var AccName: Text[50])
    begin
        WITH GenJnlLine DO BEGIN
          IF NOT Cust.GET("Account No.") THEN
            AddError(
              STRSUBSTNO(
                Text031,
                Cust.TABLECAPTION,"Account No."))
          ELSE BEGIN
            AccName := Cust.Name;
            IF ((Cust.Blocked = Cust.Blocked::All) OR
                ((Cust.Blocked IN [Cust.Blocked::Invoice, Cust.Blocked::Ship]) AND
                ("Document Type" IN ["Document Type"::Invoice,"Document Type"::" "]))
               )
            THEN
              AddError(
                STRSUBSTNO(
                  Text065,
                  "Account Type",Cust.Blocked,FIELDCAPTION("Document Type"),"Document Type"));
            IF "Currency Code" <> '' THEN
              IF NOT Currency.GET("Currency Code") THEN
                AddError(
                  STRSUBSTNO(
                    Text038,
                    "Currency Code"));
            IF (Cust."IC Partner Code" <> '') AND (GenJnlTemplate.Type = GenJnlTemplate.Type::Intercompany) THEN
              IF ICPartner.GET(Cust."IC Partner Code") THEN BEGIN
                IF ICPartner.Blocked THEN
                  AddError(
                    STRSUBSTNO(
                      '%1 %2',
                      STRSUBSTNO(
                        Text067,
                        Cust.TABLECAPTION,"Account No.",ICPartner.TABLECAPTION,"IC Partner Code"),
                      STRSUBSTNO(
                        Text032,
                        ICPartner.FIELDCAPTION(Blocked),FALSE,ICPartner.TABLECAPTION,Cust."IC Partner Code")));
              END ELSE
                AddError(
                  STRSUBSTNO(
                    '%1 %2',
                    STRSUBSTNO(
                      Text067,
                        Cust.TABLECAPTION,"Account No.",ICPartner.TABLECAPTION,Cust."IC Partner Code"),
                    STRSUBSTNO(
                      Text031,
                      ICPartner.TABLECAPTION,Cust."IC Partner Code")));
            CustPosting := TRUE;
            TestPostingType;

            IF "Recurring Method" = 0 THEN
              IF "Document Type" IN
                 ["Document Type"::Invoice,"Document Type"::"Credit Memo",
                  "Document Type"::"Finance Charge Memo","Document Type"::Reminder]
              THEN BEGIN
                OldCustLedgEntry.RESET;
                OldCustLedgEntry.SETCURRENTKEY("Document No.");
                OldCustLedgEntry.SETRANGE("Document Type","Document Type");
                OldCustLedgEntry.SETRANGE("Document No.","Document No.");
                IF OldCustLedgEntry.FIND('-') THEN
                  AddError(
                    STRSUBSTNO(
                      Text039,"Document Type","Document No."));

                IF SalesSetup."Ext. Doc. No. Mandatory" OR
                   ("External Document No." <> '')
                THEN BEGIN
                  IF "External Document No." = '' THEN
                    AddError(
                      STRSUBSTNO(
                        Text041,FIELDCAPTION("External Document No.")));

                  OldCustLedgEntry.RESET;
                  OldCustLedgEntry.SETCURRENTKEY("External Document No.");
                  OldCustLedgEntry.SETRANGE("Document Type","Document Type");
                  OldCustLedgEntry.SETRANGE("Customer No.","Account No.");
                  OldCustLedgEntry.SETRANGE("External Document No.","External Document No.");
                  IF OldCustLedgEntry.FIND('-') THEN
                    AddError(
                      STRSUBSTNO(
                        Text039,
                        "Document Type","External Document No."));
                  CheckAgainstPrevLines("Gen. Journal Line");
                END;
              END;
          END;
        END;
    end;

    local procedure CheckVend(var GenJnlLine: Record "Gen. Journal Line";var AccName: Text[50])
    begin
        WITH GenJnlLine DO BEGIN
          IF NOT Vend.GET("Account No.") THEN
            AddError(
              STRSUBSTNO(
                Text031,
                Vend.TABLECAPTION,"Account No."))
          ELSE BEGIN
            AccName := Vend.Name;

            IF ((Vend.Blocked = Vend.Blocked::All) OR
                ((Vend.Blocked = Vend.Blocked::Payment) AND ("Document Type" = "Document Type"::Payment))
               )
            THEN BEGIN
              AddError(
                STRSUBSTNO(
                  Text065,
                  "Account Type",Vend.Blocked,FIELDCAPTION("Document Type"),"Document Type"));
            END;
            IF "Currency Code" <> '' THEN
              IF NOT Currency.GET("Currency Code") THEN
                AddError(
                  STRSUBSTNO(
                    Text038,
                    "Currency Code"));

            IF (Vend."IC Partner Code" <> '') AND (GenJnlTemplate.Type = GenJnlTemplate.Type::Intercompany) THEN
              IF ICPartner.GET(Cust."IC Partner Code") THEN BEGIN
                IF ICPartner.Blocked THEN
                  AddError(
                    STRSUBSTNO(
                      '%1 %2',
                      STRSUBSTNO(
                        Text067,
                        Vend.TABLECAPTION,"Account No.",ICPartner.TABLECAPTION,Vend."IC Partner Code"),
                      STRSUBSTNO(
                        Text032,
                        ICPartner.FIELDCAPTION(Blocked),FALSE,ICPartner.TABLECAPTION,Vend."IC Partner Code")));
              END ELSE
                AddError(
                  STRSUBSTNO(
                    '%1 %2',
                    STRSUBSTNO(
                      Text067,
                      Vend.TABLECAPTION,"Account No.",ICPartner.TABLECAPTION,"IC Partner Code"),
                    STRSUBSTNO(
                      Text031,
                      ICPartner.TABLECAPTION,Vend."IC Partner Code")));
            VendPosting := TRUE;
            TestPostingType;

            IF "Recurring Method" = 0 THEN
              IF "Document Type" IN
                 ["Document Type"::Invoice,"Document Type"::"Credit Memo",
                  "Document Type"::"Finance Charge Memo","Document Type"::Reminder]
              THEN BEGIN
                OldVendLedgEntry.RESET;
                OldVendLedgEntry.SETCURRENTKEY("Document No.");
                OldVendLedgEntry.SETRANGE("Document Type","Document Type");
                OldVendLedgEntry.SETRANGE("Document No.","Document No.");
                IF OldVendLedgEntry.FIND('-') THEN
                  AddError(
                    STRSUBSTNO(
                      Text040,
                      "Document Type","Document No."));

                IF PurchSetup."Ext. Doc. No. Mandatory" OR
                  ("External Document No." <> '')
                THEN BEGIN
                  IF "External Document No." = '' THEN
                    AddError(
                      STRSUBSTNO(
                        Text041,FIELDCAPTION("External Document No.")));

                  OldVendLedgEntry.RESET;
                  OldVendLedgEntry.SETCURRENTKEY("External Document No.");
                  OldVendLedgEntry.SETRANGE("Document Type","Document Type");
                  OldVendLedgEntry.SETRANGE("Vendor No.","Account No.");
                  OldVendLedgEntry.SETRANGE("External Document No.","External Document No.");
                  IF OldVendLedgEntry.FIND('-') THEN
                    AddError(
                      STRSUBSTNO(
                        Text040,
                        "Document Type","External Document No."));
                  CheckAgainstPrevLines("Gen. Journal Line");
                END;
              END;
          END;
        END;
    end;

    local procedure CheckBankAcc(var GenJnlLine: Record "Gen. Journal Line";var AccName: Text[50])
    begin
        WITH GenJnlLine DO BEGIN
          IF NOT BankAcc.GET("Account No.") THEN
            AddError(
              STRSUBSTNO(
                Text031,
                BankAcc.TABLECAPTION,"Account No."))
          ELSE BEGIN
            AccName := BankAcc.Name;

            IF BankAcc.Blocked THEN
              AddError(
                STRSUBSTNO(
                  Text032,
                  BankAcc.FIELDCAPTION(Blocked),FALSE,BankAcc.TABLECAPTION,"Account No."));
            IF ("Currency Code" <> BankAcc."Currency Code") AND (BankAcc."Currency Code" <> '') THEN
              AddError(
                STRSUBSTNO(
                  Text037,
                  FIELDCAPTION("Currency Code"),BankAcc."Currency Code"));

            IF "Currency Code" <> '' THEN
              IF NOT Currency.GET("Currency Code") THEN
                AddError(
                  STRSUBSTNO(
                    Text038,
                    "Currency Code"));

            IF "Bank Payment Type" <> 0 THEN
              IF ("Bank Payment Type" = "Bank Payment Type"::"Computer Check") AND (Amount < 0) THEN
                IF BankAcc."Currency Code" <> "Currency Code" THEN
                  AddError(
                    STRSUBSTNO(
                      Text042,
                      FIELDCAPTION("Bank Payment Type"),FIELDCAPTION("Currency Code"),
                      TABLECAPTION,BankAcc.TABLECAPTION));

            IF BankAccPostingGr.GET(BankAcc."Bank Acc. Posting Group") THEN
              IF BankAccPostingGr."G/L Account No." <> '' THEN
                ReconcileGLAccNo(
                  BankAccPostingGr."G/L Account No.",
                  ROUND("Amount (LCY)" / (1 + "VAT %" / 100)));
          END;
        END;
    end;

    local procedure CheckFixedAsset(var GenJnlLine: Record "Gen. Journal Line";var AccName: Text[30])
    begin
        WITH GenJnlLine DO BEGIN
          IF NOT FA.GET("Account No.") THEN
            AddError(
              STRSUBSTNO(
                Text031,
                FA.TABLECAPTION,"Account No."))
          ELSE BEGIN
            AccName := FA.Description;
            IF FA.Blocked THEN
              AddError(
                STRSUBSTNO(
                  Text032,
                  FA.FIELDCAPTION(Blocked),FALSE,FA.TABLECAPTION,"Account No."));
            IF FA.Inactive THEN
              AddError(
                STRSUBSTNO(
                  Text032,
                  FA.FIELDCAPTION(Inactive),FALSE,FA.TABLECAPTION,"Account No."));
            IF FA."Budgeted Asset" THEN
              AddError(
                STRSUBSTNO(
                  Text043,
                  FA.TABLECAPTION,"Account No.",FA.FIELDCAPTION("Budgeted Asset"),TRUE));
            IF DeprBook.GET("Depreciation Book Code") THEN
              CheckFAIntegration(GenJnlLine)
            ELSE
              AddError(
                STRSUBSTNO(
                  Text031,
                  DeprBook.TABLECAPTION,"Depreciation Book Code"));
            IF NOT FADeprBook.GET(FA."No.","Depreciation Book Code") THEN
              AddError(
                STRSUBSTNO(
                  Text036,
                  FADeprBook.TABLECAPTION,FA."No.","Depreciation Book Code"));
          END;
        END;
    end;

    ///[Scope('Internal')]
    procedure CheckICPartner(var GenJnlLine: Record "Gen. Journal Line";var AccName: Text[50])
    begin
        WITH GenJnlLine DO BEGIN
          IF NOT ICPartner.GET("Account No.") THEN
            AddError(
              STRSUBSTNO(
                Text031,
                ICPartner.TABLECAPTION,"Account No."))
          ELSE BEGIN
            AccName := ICPartner.Name;
            IF ICPartner.Blocked THEN
              AddError(
                STRSUBSTNO(
                  Text032,
                  ICPartner.FIELDCAPTION(Blocked),FALSE,ICPartner.TABLECAPTION,"Account No."));
          END;
        END;
    end;

    local procedure TestFixedAsset(var GenJnlLine: Record "Gen. Journal Line")
    begin
        WITH GenJnlLine DO BEGIN
          IF "Job No." <> '' THEN
            AddError(
              STRSUBSTNO(
                Text044,FIELDCAPTION("Job No.")));
          IF "FA Posting Type" = "FA Posting Type"::" " THEN
            AddError(
              STRSUBSTNO(
                Text045,FIELDCAPTION("FA Posting Type")));
          IF "Depreciation Book Code" = '' THEN
            AddError(
              STRSUBSTNO(
                Text045,FIELDCAPTION("Depreciation Book Code")));
          IF "Depreciation Book Code" = "Duplicate in Depreciation Book" THEN
            AddError(
              STRSUBSTNO(
                Text046,
                FIELDCAPTION("Depreciation Book Code"),FIELDCAPTION("Duplicate in Depreciation Book")));
          CheckFADocNo(GenJnlLine);
          IF "Account Type" = "Bal. Account Type" THEN
            AddError(
              STRSUBSTNO(
                Text047,
                FIELDCAPTION("Account Type"),FIELDCAPTION("Bal. Account Type"),"Account Type"));
          IF "Account Type" = "Account Type"::"Fixed Asset" THEN BEGIN
            IF "FA Posting Type" IN
              ["FA Posting Type"::"Acquisition Cost","FA Posting Type"::Disposal,"FA Posting Type"::Maintenance]
            THEN BEGIN
              IF ("Gen. Bus. Posting Group" <> '') OR ("Gen. Prod. Posting Group" <> '') THEN
                IF "Gen. Posting Type" = "Gen. Posting Type"::" " THEN
                  AddError(STRSUBSTNO(Text002,FIELDCAPTION("Gen. Posting Type")));
            END ELSE BEGIN
              IF "Gen. Posting Type" <> "Gen. Posting Type"::" " THEN
                AddError(
                  STRSUBSTNO(
                    Text048,
                    FIELDCAPTION("Gen. Posting Type"),FIELDCAPTION("FA Posting Type"),"FA Posting Type"));
              IF "Gen. Bus. Posting Group" <> '' THEN
                AddError(
                  STRSUBSTNO(
                    Text049,
                    FIELDCAPTION("Gen. Bus. Posting Group"),FIELDCAPTION("FA Posting Type"),"FA Posting Type"));
              IF "Gen. Prod. Posting Group" <> '' THEN
                AddError(
                  STRSUBSTNO(
                    Text049,
                    FIELDCAPTION("Gen. Prod. Posting Group"),FIELDCAPTION("FA Posting Type"),"FA Posting Type"));
            END;
          END;
          IF "Bal. Account Type" = "Bal. Account Type"::"Fixed Asset" THEN BEGIN
            IF "FA Posting Type" IN
              ["FA Posting Type"::"Acquisition Cost","FA Posting Type"::Disposal,"FA Posting Type"::Maintenance]
            THEN BEGIN
              IF ("Bal. Gen. Bus. Posting Group" <> '') OR ("Bal. Gen. Prod. Posting Group" <> '') THEN
                IF "Bal. Gen. Posting Type" = "Bal. Gen. Posting Type"::" " THEN
                  AddError(STRSUBSTNO(Text002,FIELDCAPTION("Bal. Gen. Posting Type")));
            END ELSE BEGIN
              IF "Bal. Gen. Posting Type" <> "Bal. Gen. Posting Type"::" " THEN
                AddError(
                  STRSUBSTNO(
                  Text049,
                  FIELDCAPTION("Bal. Gen. Posting Type"),FIELDCAPTION("FA Posting Type"),"FA Posting Type"));
              IF "Bal. Gen. Bus. Posting Group" <> '' THEN
                AddError(
                  STRSUBSTNO(
                    Text049,
                    FIELDCAPTION("Bal. Gen. Bus. Posting Group"),FIELDCAPTION("FA Posting Type"),"FA Posting Type"));
              IF "Bal. Gen. Prod. Posting Group" <> '' THEN
                AddError(
                  STRSUBSTNO(
                    Text049,
                    FIELDCAPTION("Bal. Gen. Prod. Posting Group"),FIELDCAPTION("FA Posting Type"),"FA Posting Type"));
            END;
          END;
          TempErrorText :=
            '%1 ' +
            STRSUBSTNO(
              Text050,
              FIELDCAPTION("FA Posting Type"),"FA Posting Type");
          IF "FA Posting Type" <> "FA Posting Type"::"Acquisition Cost" THEN BEGIN
            IF "Depr. Acquisition Cost" THEN
              AddError(STRSUBSTNO(TempErrorText,FIELDCAPTION("Depr. Acquisition Cost")));
            IF "Salvage Value" <> 0 THEN
              AddError(STRSUBSTNO(TempErrorText,FIELDCAPTION("Salvage Value")));
            IF "FA Posting Type" <> "FA Posting Type"::Maintenance THEN
              IF Quantity <> 0 THEN
                AddError(STRSUBSTNO(TempErrorText,FIELDCAPTION(Quantity)));
            IF "Insurance No." <> '' THEN
              AddError(STRSUBSTNO(TempErrorText,FIELDCAPTION("Insurance No.")));
          END;
          IF ("FA Posting Type" = "FA Posting Type"::Maintenance) AND "Depr. until FA Posting Date" THEN
            AddError(STRSUBSTNO(TempErrorText,FIELDCAPTION("Depr. until FA Posting Date")));
          IF ("FA Posting Type" <> "FA Posting Type"::Maintenance) AND ("Maintenance Code" <> '') THEN
            AddError(STRSUBSTNO(TempErrorText,FIELDCAPTION("Maintenance Code")));

          IF ("FA Posting Type" <> "FA Posting Type"::Depreciation) AND
             ("FA Posting Type" <> "FA Posting Type"::"Custom 1") AND
             ("No. of Depreciation Days" <> 0)
          THEN
            AddError(STRSUBSTNO(TempErrorText,FIELDCAPTION("No. of Depreciation Days")));

          IF ("FA Posting Type" = "FA Posting Type"::Disposal) AND "FA Reclassification Entry" THEN
            AddError(STRSUBSTNO(TempErrorText,FIELDCAPTION("FA Reclassification Entry")));

          IF ("FA Posting Type" = "FA Posting Type"::Disposal) AND ("Budgeted FA No." <> '') THEN
            AddError(STRSUBSTNO(TempErrorText,FIELDCAPTION("Budgeted FA No.")));

          IF "FA Posting Date" = 0D THEN
            "FA Posting Date" := "Posting Date";
          IF DeprBook.GET("Depreciation Book Code") THEN
            IF DeprBook."Use Same FA+G/L Posting Dates" AND ("Posting Date" <> "FA Posting Date") THEN
              AddError(
                STRSUBSTNO(
                  Text051,
                  FIELDCAPTION("Posting Date"),FIELDCAPTION("FA Posting Date")));
          IF "FA Posting Date" <> 0D THEN BEGIN
            IF "FA Posting Date" <> NORMALDATE("FA Posting Date") THEN
              AddError(
                STRSUBSTNO(
                  Text052,
                  FIELDCAPTION("FA Posting Date")));
            if not ("FA Posting Date" in [DMY2Date(1, 1, 2) .. DMY2Date(31, 12, 9998)]) then
              AddError(
                STRSUBSTNO(
                  Text053,
                  FIELDCAPTION("FA Posting Date")));
            IF (AllowFAPostingFrom = 0D) AND (AllowFAPostingTo = 0D) THEN BEGIN
              IF USERID <> '' THEN
                IF UserSetup.GET(USERID) THEN BEGIN
                  AllowFAPostingFrom := UserSetup."Allow FA Posting From";
                  AllowFAPostingTo := UserSetup."Allow FA Posting To";
                END;
              IF (AllowFAPostingFrom = 0D) AND (AllowFAPostingTo = 0D) THEN BEGIN
                FASetup.GET;
                AllowFAPostingFrom := FASetup."Allow FA Posting From";
                AllowFAPostingTo := FASetup."Allow FA Posting To";
              END;
              IF AllowFAPostingTo = 0D THEN
                AllowFAPostingTo := DMY2Date(31, 12, 9998);
            END;
            IF ("FA Posting Date" < AllowFAPostingFrom) OR
               ("FA Posting Date" > AllowFAPostingTo)
            THEN
              AddError(
                STRSUBSTNO(
                  Text053,
                  FIELDCAPTION("FA Posting Date")));
          END;
          FASetup.GET;
          IF ("FA Posting Type" = "FA Posting Type"::"Acquisition Cost") AND
             ("Insurance No." <> '') AND ("Depreciation Book Code" <> FASetup."Insurance Depr. Book")
          THEN
            AddError(
              STRSUBSTNO(
                Text054,
                FIELDCAPTION("Depreciation Book Code"),"Depreciation Book Code"));

          IF "FA Error Entry No." > 0 THEN BEGIN
            TempErrorText :=
              '%1 ' +
              STRSUBSTNO(
              Text055,
               FIELDCAPTION("FA Error Entry No."));
            IF "Depr. until FA Posting Date" THEN
              AddError(STRSUBSTNO(TempErrorText,FIELDCAPTION("Depr. until FA Posting Date")));
            IF "Depr. Acquisition Cost" THEN
              AddError(STRSUBSTNO(TempErrorText,FIELDCAPTION("Depr. Acquisition Cost")));
            IF "Duplicate in Depreciation Book" <> '' THEN
              AddError(STRSUBSTNO(TempErrorText,FIELDCAPTION("Duplicate in Depreciation Book")));
            IF "Use Duplication List" THEN
              AddError(STRSUBSTNO(TempErrorText,FIELDCAPTION("Use Duplication List")));
            IF "Salvage Value" <> 0 THEN
              AddError(STRSUBSTNO(TempErrorText,FIELDCAPTION("Salvage Value")));
            IF "Insurance No." <> '' THEN
              AddError(STRSUBSTNO(TempErrorText,FIELDCAPTION("Insurance No.")));
            IF "Budgeted FA No." <> '' THEN
              AddError(STRSUBSTNO(TempErrorText,FIELDCAPTION("Budgeted FA No.")));
            IF "Recurring Method" > 0 THEN
              AddError(STRSUBSTNO(TempErrorText,FIELDCAPTION("Recurring Method")));
            IF "FA Posting Type" = "FA Posting Type"::Maintenance THEN
              AddError(STRSUBSTNO(TempErrorText,"FA Posting Type"));
          END;
        END;
    end;

    local procedure CheckFAIntegration(var GenJnlLine: Record "Gen. Journal Line")
    var
        GLIntegration: Boolean;
    begin
        WITH GenJnlLine DO BEGIN
          IF "FA Posting Type" = "FA Posting Type"::" " THEN
            EXIT;
          CASE "FA Posting Type" OF
            "FA Posting Type"::"Acquisition Cost":
              GLIntegration := DeprBook."G/L Integration - Acq. Cost";
            "FA Posting Type"::Depreciation:
              GLIntegration := DeprBook."G/L Integration - Depreciation";
            "FA Posting Type"::"Write-Down":
              GLIntegration := DeprBook."G/L Integration - Write-Down";
            "FA Posting Type"::Appreciation:
              GLIntegration := DeprBook."G/L Integration - Appreciation";
            "FA Posting Type"::"Custom 1":
              GLIntegration := DeprBook."G/L Integration - Custom 1";
            "FA Posting Type"::"Custom 2":
              GLIntegration := DeprBook."G/L Integration - Custom 2";
            "FA Posting Type"::Disposal:
              GLIntegration := DeprBook."G/L Integration - Disposal";
            "FA Posting Type"::Maintenance:
              GLIntegration := DeprBook."G/L Integration - Maintenance";
          END;
          IF NOT GLIntegration THEN
            AddError(
              STRSUBSTNO(
                Text056,
                "FA Posting Type"));

          IF NOT DeprBook."G/L Integration - Depreciation" THEN BEGIN
            IF "Depr. until FA Posting Date"THEN
              AddError(
                STRSUBSTNO(
                  Text057,
                  FIELDCAPTION("Depr. until FA Posting Date")));
            IF "Depr. Acquisition Cost" THEN
              AddError(
                STRSUBSTNO(
                  Text057,
                  FIELDCAPTION("Depr. Acquisition Cost")));
          END;
        END;
    end;

    local procedure TestFixedAssetFields(var GenJnlLine: Record "Gen. Journal Line")
    begin
        WITH GenJnlLine DO BEGIN
          IF "FA Posting Type" <> "FA Posting Type"::" " THEN
            AddError(STRSUBSTNO(Text058,FIELDCAPTION("FA Posting Type")));
          IF "Depreciation Book Code" <> '' THEN
            AddError(STRSUBSTNO(Text058,FIELDCAPTION("Depreciation Book Code")));
        END;
    end;

    ///[Scope('Internal')]
    procedure TestPostingType()
    begin
        CASE TRUE OF
          CustPosting AND PurchPostingType:
            AddError(Text059);
          VendPosting AND SalesPostingType:
            AddError(Text060);
        END;
    end;

    local procedure WarningIfNegativeAmt(GenJnlLine: Record "Gen. Journal Line")
    begin
        IF (GenJnlLine.Amount < 0) AND NOT AmountError THEN BEGIN
          AmountError := TRUE;
          AddError(STRSUBSTNO(Text007,GenJnlLine.FIELDCAPTION(Amount)));
        END;
    end;

    local procedure WarningIfPositiveAmt(GenJnlLine: Record "Gen. Journal Line")
    begin
        IF (GenJnlLine.Amount > 0) AND NOT AmountError THEN BEGIN
          AmountError := TRUE;
          AddError(STRSUBSTNO(Text006,GenJnlLine.FIELDCAPTION(Amount)));
        END;
    end;

    local procedure WarningIfZeroAmt(GenJnlLine: Record "Gen. Journal Line")
    begin
        IF (GenJnlLine.Amount = 0) AND NOT AmountError THEN BEGIN
          AmountError := TRUE;
          AddError(STRSUBSTNO(Text002,GenJnlLine.FIELDCAPTION(Amount)));
        END;
    end;

    local procedure WarningIfNonZeroAmt(GenJnlLine: Record "Gen. Journal Line")
    begin
        IF (GenJnlLine.Amount <> 0) AND NOT AmountError THEN BEGIN
          AmountError := TRUE;
          AddError(STRSUBSTNO(Text062,GenJnlLine.FIELDCAPTION(Amount)));
        END;
    end;

    local procedure CheckAgainstPrevLines(GenJnlLine: Record "Gen. Journal Line")
    var
        i: Integer;
        AccType: Integer;
        AccNo: Code[20];
        ErrorFound: Boolean;
    begin
        IF (GenJnlLine."External Document No." = '') OR
           NOT (GenJnlLine."Account Type" IN
            [GenJnlLine."Account Type"::Customer,GenJnlLine."Account Type"::Vendor]) AND
           NOT (GenJnlLine."Bal. Account Type" IN
            [GenJnlLine."Bal. Account Type"::Customer,GenJnlLine."Bal. Account Type"::Vendor])
        THEN
          EXIT;

        IF GenJnlLine."Account Type" IN [GenJnlLine."Account Type"::Customer,GenJnlLine."Account Type"::Vendor] THEN BEGIN
          AccType := GenJnlLine."Account Type";
          AccNo := GenJnlLine."Account No.";
        END ELSE BEGIN
          AccType := GenJnlLine."Bal. Account Type";
          AccNo := GenJnlLine."Bal. Account No.";
        END;

        TempGenJnlLine.RESET;
        TempGenJnlLine.SETRANGE("External Document No.",GenJnlLine."External Document No.");

        WHILE (i < 2) AND NOT ErrorFound DO BEGIN
          i := i + 1;
          IF i = 1 THEN BEGIN
            TempGenJnlLine.SETRANGE("Account Type",AccType);
            TempGenJnlLine.SETRANGE("Account No.",AccNo);
            TempGenJnlLine.SETRANGE("Bal. Account Type");
            TempGenJnlLine.SETRANGE("Bal. Account No.");
          END ELSE BEGIN
            TempGenJnlLine.SETRANGE("Account Type");
            TempGenJnlLine.SETRANGE("Account No.");
            TempGenJnlLine.SETRANGE("Bal. Account Type",AccType);
            TempGenJnlLine.SETRANGE("Bal. Account No.",AccNo);
          END;
          IF TempGenJnlLine.FIND('-') THEN BEGIN
            ErrorFound := TRUE;
            AddError(
              STRSUBSTNO(
                Text064,GenJnlLine.FIELDCAPTION("External Document No."),GenJnlLine."External Document No.",
                TempGenJnlLine."Line No.",GenJnlLine.FIELDCAPTION("Document No."),TempGenJnlLine."Document No."));
          END;
        END;

        TempGenJnlLine.RESET;
        TempGenJnlLine := GenJnlLine;
        TempGenJnlLine.INSERT;
    end;

    ///[Scope('Internal')]
    procedure CheckICDocument()
    var
        GenJnlLine4: Record "Gen. Journal Line";
        "IC G/L Account": Record "IC G/L Account";
    begin
        WITH "Gen. Journal Line" DO BEGIN
          IF GenJnlTemplate.Type = GenJnlTemplate.Type::Intercompany THEN BEGIN
            IF (("Posting Date" <> LastDate) OR ("Document Type" <> LastDocType) OR ("Document No." <> LastDocNo)) THEN BEGIN
              GenJnlLine4.SETCURRENTKEY("Journal Template Name","Journal Batch Name","Posting Date","Document No.");
              GenJnlLine4.SETRANGE("Journal Template Name","Journal Template Name");
              GenJnlLine4.SETRANGE("Journal Batch Name","Journal Batch Name");
              GenJnlLine4.SETRANGE("Posting Date","Posting Date");
              GenJnlLine4.SETRANGE("Document No.","Document No.");
              GenJnlLine4.SETFILTER("IC Partner Code",'<>%1','');
              IF GenJnlLine4.FIND('-') THEN
                CurrentICPartner := GenJnlLine4."IC Partner Code"
              ELSE
                CurrentICPartner := '';
            END;
            IF (CurrentICPartner <> '') AND ("IC Direction" = "IC Direction"::Outgoing) THEN BEGIN
              IF ("Account Type" IN ["Account Type"::"G/L Account", "Account Type"::"Bank Account"]) AND
                 ("Bal. Account Type" IN ["Bal. Account Type"::"G/L Account", "Account Type"::"Bank Account"]) AND
                 ("Account No." <> '') AND
                 ("Bal. Account No." <> '')
              THEN BEGIN
                AddError(
                  STRSUBSTNO(
                    Text066,FIELDCAPTION("Account No."),FIELDCAPTION("Bal. Account No.")));
              END ELSE BEGIN
                IF (("Account Type" IN ["Account Type"::"G/L Account", "Account Type"::"Bank Account"]) AND ("Account No." <> '')) XOR
                   (("Bal. Account Type" IN ["Bal. Account Type"::"G/L Account", "Account Type"::"Bank Account"]) AND
                  ("Bal. Account No." <> ''))
                THEN BEGIN
                  IF "IC Partner G/L Acc. No." = '' THEN
                    AddError(
                      STRSUBSTNO(
                        Text002,FIELDCAPTION("IC Partner G/L Acc. No.")))
                  ELSE BEGIN
                    IF "IC G/L Account".GET("IC Partner G/L Acc. No.") THEN
                      IF "IC G/L Account".Blocked THEN
                        AddError(
                          STRSUBSTNO(
                            Text032,
                            "IC G/L Account".FIELDCAPTION(Blocked),FALSE,FIELDCAPTION("IC Partner G/L Acc. No."),"IC Partner G/L Acc. No."
        ));
                  END;
                END ELSE
                  IF "IC Partner G/L Acc. No." <> '' THEN
                    AddError(
                      STRSUBSTNO(
                        Text009,FIELDCAPTION("IC Partner G/L Acc. No.")));
              END;
            END ELSE
              IF "IC Partner G/L Acc. No." <> '' THEN BEGIN
                IF "IC Direction" = "IC Direction"::Incoming THEN
                  AddError(
                    STRSUBSTNO(
                      Text069,FIELDCAPTION("IC Partner G/L Acc. No."),FIELDCAPTION("IC Direction"),FORMAT("IC Direction")));
                IF (CurrentICPartner = '') THEN
                  AddError(
                    STRSUBSTNO(
                      Text070,FIELDCAPTION("IC Partner G/L Acc. No.")));
              END;
          END;
        END;
    end;

    ///[Scope('Internal')]
    procedure TestJobFields(var GenJnlLine: Record "Gen. Journal Line")
    var
        Job: Record "Job";
        JT: Record "Job Task";
    begin
        WITH GenJnlLine DO BEGIN
          IF ("Job No." = '') OR ("Account Type" <> "Account Type"::"G/L Account") THEN
            EXIT;
          IF NOT Job.GET("Job No.") THEN
             AddError(STRSUBSTNO(Text071,Job.TABLECAPTION,"Job No."))
          ELSE
            IF Job.Blocked > Job.Blocked::" " THEN
              AddError(
                STRSUBSTNO(
                  Text072,Job.FIELDCAPTION(Blocked),Job.Blocked,Job.TABLECAPTION,"Job No."));

          IF "Job Task No." = '' THEN
            AddError(STRSUBSTNO(Text002,FIELDCAPTION("Job Task No.")))
          ELSE
            IF NOT JT.GET("Job No.","Job Task No.") THEN
              AddError(STRSUBSTNO(Text071,JT.TABLECAPTION,"Job Task No."))
        END;
    end;

    local procedure CheckFADocNo(GenJnlLine: Record "Gen. Journal Line")
    var
        DeprBook: Record "Depreciation Book";
        FAJnlLine: Record "FA Journal Line";
        OldFALedgEntry: Record "FA Ledger Entry";
        OldMaintenanceLedgEntry: Record "Maintenance Ledger Entry";
        FANo: Code[20];
    begin
        WITH GenJnlLine DO BEGIN
          IF "Account Type" = "Account Type"::"Fixed Asset" THEN
            FANo := "Account No.";
          IF "Bal. Account Type" = "Bal. Account Type"::"Fixed Asset" THEN
            FANo := "Bal. Account No.";
          IF (FANo = '') OR
             ("FA Posting Type" = "FA Posting Type"::" ") OR
             ("Depreciation Book Code" = '') OR
             ("Document No." = '')
          THEN
            EXIT;
          IF NOT DeprBook.GET("Depreciation Book Code") THEN
            EXIT;
          IF DeprBook."Allow Identical Document No." THEN
            EXIT;

          FAJnlLine."FA Posting Type" := "FA Posting Type" - 1;
          IF "FA Posting Type" <> "FA Posting Type"::Maintenance THEN BEGIN
            OldFALedgEntry.SETCURRENTKEY(
              "FA No.","Depreciation Book Code","FA Posting Category","FA Posting Type","Document No.");
            OldFALedgEntry.SETRANGE("FA No.",FANo);
            OldFALedgEntry.SETRANGE("Depreciation Book Code","Depreciation Book Code");
            OldFALedgEntry.SETRANGE("FA Posting Category",OldFALedgEntry."FA Posting Category"::" ");
            OldFALedgEntry.SETRANGE("FA Posting Type",FAJnlLine.ConvertToLedgEntry(FAJnlLine));
            OldFALedgEntry.SETRANGE("Document No.","Document No.");
            IF OldFALedgEntry.FINDFIRST THEN
              AddError(
                STRSUBSTNO(
                  Text073,
                  FIELDCAPTION("Document No."),"Document No."));
          END ELSE BEGIN
            OldMaintenanceLedgEntry.SETCURRENTKEY(
              "FA No.","Depreciation Book Code","Document No.");
            OldMaintenanceLedgEntry.SETRANGE("FA No.",FANo);
            OldMaintenanceLedgEntry.SETRANGE("Depreciation Book Code","Depreciation Book Code");
            OldMaintenanceLedgEntry.SETRANGE("Document No.","Document No.");
            IF OldMaintenanceLedgEntry.FINDFIRST THEN
              AddError(
                STRSUBSTNO(
                  Text073,
                  FIELDCAPTION("Document No."),"Document No."));
          END;
        END;
    end;
}

