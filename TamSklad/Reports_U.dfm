object Reports_F: TReports_F
  Left = 0
  Top = 0
  Caption = 'Reports_F'
  ClientHeight = 416
  ClientWidth = 323
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Qry_ReportPril3: TIBQuery
    Database = DM.DB
    Transaction = DM.IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.*,'
      ' iif(a.date_goodssold is null,'#39#1085#1077' '#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#39','
      
        ' substring(100+extract(day from a.date_goodssold) from 2 for 2)|' +
        '|'#39'.'#39'||'
      
        ' substring(100+extract(month from a.date_goodssold) from 2 for 2' +
        ')||'#39'.'#39'||'
      ' extract(year from a.date_goodssold)) as datesold_human,'
      'b.dt_out,'
      'b.custproc,'
      'b.kol as kol_out,'
      'b.kol_edizm as edizm_out,'
      'b.kol_edizm_code as edizm_code_out,'
      'b.weight_vol as weight_out,'
      'b.weight_edizm as edizm1_out,'
      'b.stoim as stoim_out,'
      'b.n_decl as gtd_out,'
      'b.N_GOODS as n_tov_out,'
      'b.CUSTPROC_CODE, '
      'b.TNVED_OUT,'
      'b.NAME_GOODS_OUT,'
      'c.n_doc as doc_sold,'
      'c.date_doc as date_sold,'
      'c.owner,c.kol as kol_sold,'
      'c.kol_edizm as edizm_sold,'
      'c.weight_vol as weight_sold,'
      'c.weight_edizm as edizm1_sold,'
      'c.stoim as stoim_sold,'
      'd.nomer_dt as n_decl,'
      'cast(d.dt as date) as date_in'
      'from goods_header a'
      'left join goods_out b on a.id = b.id_head'
      'left join goods_sold c on a.id = c.id_head'
      'left join decls d on a.id_decl = d.id'
      
        'where ( (a.rest_kol > 0) and (cast (a.dt as date) < :p0) and (a.' +
        'not_report <> 1) )'
      '   or (cast(a.dt as date) between :p1 and :p2)'
      '   or (cast (b.dt_out as date) between :p3 and :p4)'
      '   or (c.date_doc between :p5 and :p6 )'
      'order by a.id_decl, a.n_goods')
    Left = 101
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p4'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p5'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p6'
        ParamType = ptUnknown
      end>
  end
  object Rep1: TfrxReport
    Version = '6.9.15'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45181.449579178200000000
    ReportOptions.LastChange = 45181.477982048600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 24
    Top = 16
    Datasets = <
      item
        DataSet = frxDB_QryNotInReport
        DataSetName = 'frxDB_QryNotInReport'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1058#1086#1074#1072#1088#1099', '#1085#1077' '#1074#1093#1086#1076#1103#1097#1080#1077' '#1074' '#1086#1090#1095#1077#1090)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        DataSet = frxDB_QryNotInReport
        DataSetName = 'frxDB_QryNotInReport'
        RowCount = 0
        Stretched = True
        object frxDB_QryNotInReportNAME_GOODS: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 181.417440000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'NAME_GOODS'
          DataSet = frxDB_QryNotInReport
          DataSetName = 'frxDB_QryNotInReport'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDB_QryNotInReport."NAME_GOODS"]')
          ParentFont = False
        end
        object frxDB_QryNotInReportTNVED_CODE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 415.748300000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'TNVED_CODE'
          DataSet = frxDB_QryNotInReport
          DataSetName = 'frxDB_QryNotInReport'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDB_QryNotInReport."TNVED_CODE"]')
          ParentFont = False
        end
        object frxDB_QryNotInReportREST_KOL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 529.134200000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'REST_KOL'
          DataSet = frxDB_QryNotInReport
          DataSetName = 'frxDB_QryNotInReport'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_QryNotInReport."REST_KOL"]')
          ParentFont = False
        end
        object frxDB_QryNotInReportREST_WEIGHT: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 589.606680000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'REST_WEIGHT'
          DataSet = frxDB_QryNotInReport
          DataSetName = 'frxDB_QryNotInReport'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_QryNotInReport."REST_WEIGHT"]')
          ParentFont = False
        end
        object frxDB_QryNotInReportREST_STOIM: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 650.079160000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'REST_STOIM'
          DataSet = frxDB_QryNotInReport
          DataSetName = 'frxDB_QryNotInReport'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_QryNotInReport."REST_STOIM"]')
          ParentFont = False
        end
        object frxDB_QryNotInReportNOMER_DT: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'NOMER_DT'
          DataSet = frxDB_QryNotInReport
          DataSetName = 'frxDB_QryNotInReport'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDB_QryNotInReport."NOMER_DT"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 109.606370000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 181.417440000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1086#1084#1077#1088' '#1044#1058)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Width = 234.330860000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Width = 113.385900000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1076' '#1058#1053#1042#1069#1044)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1089#1090#1072#1090#1086#1082' '#1082#1086#1083'-'#1074#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1089#1090#1072#1090#1086#1082' '#1074#1077#1089#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Width = 68.031540000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1089#1090#1072#1090#1086#1082' '#1089#1090#1086#1080#1084#1086#1089#1090#1080)
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDBRepPril3: TfrxDBDataset
    UserName = 'frxDBRepPril3'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'DT=DT'
      'ID_DECL=ID_DECL'
      'N_GOODS=N_GOODS'
      'NAME_GOODS=NAME_GOODS'
      'TNVED_CODE=TNVED_CODE'
      'VALUTA=VALUTA'
      'DATE_FINISHED=DATE_FINISHED'
      'KOL=KOL'
      'KOL_EDIZM=KOL_EDIZM'
      'WEIGHT_VOL=WEIGHT_VOL'
      'WEIGHT_EDIZM=WEIGHT_EDIZM'
      'STOIM=STOIM'
      'PLACES=PLACES'
      'REST_KOL=REST_KOL'
      'REST_WEIGHT=REST_WEIGHT'
      'REST_STOIM=REST_STOIM'
      'DATE_GOODSSOLD=DATE_GOODSSOLD'
      'DATESOLD_HUMAN=DATESOLD_HUMAN'
      'DT_OUT=DT_OUT'
      'CUSTPROC=CUSTPROC'
      'KOL_OUT=KOL_OUT'
      'EDIZM_OUT=EDIZM_OUT'
      'WEIGHT_OUT=WEIGHT_OUT'
      'EDIZM1_OUT=EDIZM1_OUT'
      'STOIM_OUT=STOIM_OUT'
      'GTD_OUT=GTD_OUT'
      'N_TOV_OUT=N_TOV_OUT'
      'CUSTPROC_CODE=CUSTPROC_CODE'
      'TNVED_OUT=TNVED_OUT'
      'NAME_GOODS_OUT=NAME_GOODS_OUT'
      'DOC_SOLD=DOC_SOLD'
      'DATE_SOLD=DATE_SOLD'
      'OWNER=OWNER'
      'KOL_SOLD=KOL_SOLD'
      'EDIZM_SOLD=EDIZM_SOLD'
      'WEIGHT_SOLD=WEIGHT_SOLD'
      'EDIZM1_SOLD=EDIZM1_SOLD'
      'STOIM_SOLD=STOIM_SOLD'
      'N_DECL=N_DECL'
      'DATE_IN=DATE_IN')
    DataSet = Qry_ReportPril3
    BCDToCurrency = False
    Left = 24
    Top = 72
  end
  object frxDBD_QryRepActIn: TfrxDBDataset
    UserName = 'frxDBD_QryRepActIn'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_HEAD=ID_HEAD'
      'DT=DT'
      'GOODS_NUMBER=GOODS_NUMBER'
      'GOODS_NAME=GOODS_NAME'
      'DATE_FINISHED=DATE_FINISHED'
      'KOL_EDIZM=KOL_EDIZM'
      'KOL_DOC=KOL_DOC'
      'KOL_FACT=KOL_FACT'
      'WEIGHT_EDIZM=WEIGHT_EDIZM'
      'WEIGHT_DOC=WEIGHT_DOC'
      'WEIGHT_FACT=WEIGHT_FACT'
      'NOTES=NOTES'
      'ID1=ID1'
      'ID_DECL=ID_DECL'
      'DT1=DT1'
      'OWNER=OWNER'
      'SDAL_DOLJ=SDAL_DOLJ'
      'SDAL_FIO=SDAL_FIO'
      'KEEPER_DOLJ=KEEPER_DOLJ'
      'KEEPER_FIO=KEEPER_FIO'
      'NOMER_DT=NOMER_DT')
    DataSet = Qry_RepActIn
    BCDToCurrency = False
    Left = 24
    Top = 136
  end
  object Qry_RepActIn: TIBQuery
    Database = DM.DB
    Transaction = DM.IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.*, b.* , c.nomer_dt'
      'from whact_in_items_ts a'
      'left join whact_in_head_ts b on a.id_head = b.id'
      'left join decls c on b.id_decl = c.id'
      'where b.id_decl=:p0'
      'order by a.id')
    Left = 104
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 24
    Top = 264
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 112
    Top = 264
  end
  object frxDB_RepActOut: TfrxDBDataset
    UserName = 'frxDB_RepActOut'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_GOODS_HEAD=ID_GOODS_HEAD'
      'DT=DT'
      'ID_ACT_IN=ID_ACT_IN'
      'NAME_GOODS=NAME_GOODS'
      'KOL=KOL'
      'WEIGHT=WEIGHT'
      'WEIGHT_EDIZM=WEIGHT_EDIZM'
      'NAME_DOCOUT=NAME_DOCOUT'
      'NOMER_DOCOUT=NOMER_DOCOUT'
      'DATE_DOCOUT=DATE_DOCOUT'
      'KEEPER_DOLJ=KEEPER_DOLJ'
      'KEEPER_FIO=KEEPER_FIO'
      'PRIEM_DOLJ=PRIEM_DOLJ'
      'PRIEM_FIO=PRIEM_FIO'
      'KOL_EDIZM=KOL_EDIZM')
    DataSet = Qry_ActOut
    BCDToCurrency = False
    Left = 32
    Top = 208
  end
  object Qry_ActOut: TIBQuery
    Database = DM.DB
    Transaction = DM.IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *  from WHACT_OUT_TS where id=:p0')
    Left = 112
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p0'
        ParamType = ptUnknown
      end>
  end
  object frxDB_QryNotInReport: TfrxDBDataset
    UserName = 'frxDB_QryNotInReport'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NOMER_DT=NOMER_DT'
      'NAME_GOODS=NAME_GOODS'
      'TNVED_CODE=TNVED_CODE'
      'REST_KOL=REST_KOL'
      'REST_WEIGHT=REST_WEIGHT'
      'REST_STOIM=REST_STOIM')
    DataSource = DM.DS_NotInReport
    BCDToCurrency = False
    Left = 40
    Top = 328
  end
end
