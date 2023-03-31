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
      'where  ((a.rest_kol > 0) and (cast (a.dt as date) < :p0))'
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
    ReportOptions.CreateDate = 43305.491713182900000000
    ReportOptions.LastChange = 44749.431516307900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 24
    Top = 16
    Datasets = <
      item
        DataSet = frxDBRepPril3
        DataSetName = 'frxDBRepPril3'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 154.960730000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 2.559060000000000000
          Top = 14.354360000000000000
          Width = 1043.150280000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1090#1095#1077#1090' '#1074#1083#1072#1076#1077#1083#1100#1094#1072' '#1090#1072#1084#1086#1078#1077#1085#1085#1086#1075#1086' '#1089#1082#1083#1072#1076#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 294.976500000000000000
          Top = 111.267716540000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1087#1088#1077#1076#1089#1090#1072#1074#1083#1103#1077#1090#1089#1103' '#1079#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 3.795300000000000000
          Top = 42.472480000000000000
          Width = 1039.370750000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              #1054#1073#1097#1077#1089#1090#1074#1086' '#1089' '#1086#1075#1088#1072#1085#1080#1095#1077#1085#1085#1086#1081' '#1086#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086#1089#1090#1100#1102' "'#1057#1080#1088#1080#1091#1089'", '#1048#1053#1053' 391544701' +
              '5, '#1050#1055#1055' 391501001')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 149.897650000000000000
          Top = 74.858380000000000000
          Width = 525.354670000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              #1057#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086' '#1086' '#1074#1082#1083#1102#1095#1077#1085#1080#1080' '#1074' '#1088#1077#1077#1089#1090#1088' '#1074#1083#1072#1076#1077#1083#1100#1094#1077#1074' '#1090#1072#1084#1086#1078#1077#1085#1085#1099#1093' '#1089#1082#1083#1072#1076#1086#1074 +
              ' '#1086#1090)
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 676.937540000000000000
          Top = 75.078850000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '18.09.2018 '#1075'.')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 800.433520000000000000
          Top = 74.637910000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '10012/002')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 768.969080000000000000
          Top = 74.637910000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #8470)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 438.598640000000000000
          Top = 111.267716535433000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 513.968770000000000000
          Top = 111.267780000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1086#1090#1095#1077#1090#1085#1099#1081' '#1082#1074#1072#1088#1090#1072#1083)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 654.031850000000000000
          Top = 111.267716540000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Left = 724.638220000000000000
          Top = 111.118110240000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #1075#1086#1076#1072)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 34.015770000000000000
        ParentFont = False
        Top = 574.488560000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBRepPril3
        DataSetName = 'frxDBRepPril3'
        RowCount = 0
        Stretched = True
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Width = 30.236240000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Width = 56.692950000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[<frxDBRepPril3."N_DECL">]/[<frxDBRepPril3."N_GOODS">]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Width = 71.811070000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBRepPril3."TNVED_CODE"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Width = 68.031540000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBRepPril3."NAME_GOODS"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Width = 41.574830000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRepPril3."WEIGHT_VOL"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 268.346630000000000000
          Width = 56.692950000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[<frxDBRepPril3."KOL">]/[<frxDBRepPril3."KOL_EDIZM">]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039580000000000000
          Width = 56.692950000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBRepPril3."DATE_IN"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Width = 45.354360000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRepPril3."PLACES"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Width = 52.913420000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBRepPril3."DATE_FINISHED"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000310000000000000
          Width = 49.133890000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBRepPril3
          DataSetName = 'frxDBRepPril3'
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBRepPril3."DATESOLD_HUMAN"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Width = 45.354360000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRepPril3."CUSTPROC_CODE"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Width = 56.692950000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[<frxDBRepPril3."GTD_OUT">]/[<frxDBRepPril3."N_TOV_OUT">]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Width = 71.811070000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBRepPril3."TNVED_OUT"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 702.992580000000000000
          Width = 68.031540000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBRepPril3."NAME_GOODS_OUT"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 771.024120000000000000
          Width = 41.574830000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRepPril3."WEIGHT_OUT"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 812.598950000000000000
          Width = 56.692950000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[<frxDBRepPril3."KOL_OUT">]/[<frxDBRepPril3."EDIZM_OUT">]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 869.291900000000000000
          Width = 56.692950000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBRepPril3
          DataSetName = 'frxDBRepPril3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBRepPril3."DT_OUT"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Width = 49.133890000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRepPril3."REST_WEIGHT"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 975.118740000000000000
          Width = 60.472480000000000000
          Height = 34.015770000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[<frxDBRepPril3."REST_KOL">]/[frxDBRepPril3."KOL_EDIZM"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 317.480520000000000000
        Top = 196.535560000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 30.236240000000000000
          Height = 298.582870000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470
            #1087'/'#1087)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Width = 498.897960000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1072#1079#1076#1077#1083' I'
            #1058#1086#1074#1072#1088#1099', '#1087#1086#1084#1077#1097#1077#1085#1085#1099#1077' '#1087#1086#1076' '#1090#1072#1084#1086#1078#1077#1085#1085#1091#1102' '#1087#1088#1086#1094#1077#1076#1091#1088#1091' '#1090#1072#1084#1086#1078#1077#1085#1085#1086#1075#1086' '#1089#1082#1083#1072#1076#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 52.913420000000000000
          Width = 56.692950000000000000
          Height = 245.669450000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1085#1086#1084#1077#1088' '#1076#1077#1082#1083#1072#1088#1072#1094#1080#1080' '#1085#1072
            #1090#1086#1074#1072#1088#1099'/'#1085#1086#1084#1077#1088' '#1090#1086#1074#1072#1088#1072' '#1074' '#1076#1077#1082#1083#1072#1088#1072#1094#1080#1080' '#1085#1072
            #1090#1086#1074#1072#1088#1099)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 52.913420000000000000
          Width = 71.811070000000000000
          Height = 245.669450000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1076' '#1090#1086#1074#1072#1088#1072' '#1074' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1080' '#1089' '#1077#1076#1080#1085#1086#1081
            #1058#1086#1074#1072#1088#1085#1086#1081' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1086#1081
            #1074#1085#1077#1096#1085#1077#1101#1082#1086#1085#1086#1084#1080#1095#1077#1089#1082#1086#1081' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1080
            #1045#1074#1088#1072#1079#1080#1081#1089#1082#1086#1075#1086' '#1101#1082#1086#1085#1086#1084#1080#1095#1077#1089#1082#1086#1075#1086' '#1089#1086#1102#1079#1072)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 52.913420000000000000
          Width = 68.031540000000000000
          Height = 245.669450000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 52.913420000000000000
          Width = 41.574830000000000000
          Height = 245.669450000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1077#1089' '#1073#1088#1091#1090#1090#1086', '#1082#1075)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 268.346630000000000000
          Top = 52.913420000000000000
          Width = 56.692950000000000000
          Height = 245.669450000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1090#1086#1074#1072#1088#1072' '#1074' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086#1081' '
            #1077#1076#1080#1085#1080#1094#1077' '#1080#1079#1084#1077#1088#1077#1085#1080#1103'/'#1077#1076#1080#1085#1080#1094#1072' '#1080#1079#1084#1077#1088#1077#1085#1080#1103)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039580000000000000
          Top = 52.913420000000000000
          Width = 56.692950000000000000
          Height = 245.669450000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1088#1072#1079#1084#1077#1097#1077#1085#1080#1103' '#1090#1086#1074#1072#1088#1072
            #1085#1072' '#1090#1072#1084#1086#1078#1077#1085#1085#1086#1084' '#1089#1082#1083#1072#1076#1077)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 52.913420000000000000
          Width = 45.354360000000000000
          Height = 245.669450000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1086#1084#1077#1088' '#1089#1082#1083#1072#1076#1089#1082#1086#1075#1086' '#1084#1077#1089#1090#1072)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 52.913420000000000000
          Width = 52.913385826771700000
          Height = 245.669450000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1080#1089#1090#1077#1095#1077#1085#1080#1103' '#1089#1088#1086#1082#1072' '#1076#1077#1081#1089#1090#1074#1080#1103
            #1090#1072#1084#1086#1078#1077#1085#1085#1086#1081' '#1087#1088#1086#1094#1077#1076#1091#1088#1099' '#1090#1072#1084#1086#1078#1077#1085#1085#1086#1075#1086
            #1089#1082#1083#1072#1076#1072)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000310000000000000
          Top = 52.913420000000000000
          Width = 49.133890000000000000
          Height = 245.669450000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1088#1086#1082' '#1075#1086#1076#1085#1086#1089#1090#1080' '#1080' ('#1080#1083#1080') '#1088#1077#1072#1083#1080#1079#1072#1094#1080#1080
            #1090#1086#1074#1072#1088#1072)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Top = 298.582870000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '1')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 298.582870000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '2')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 298.582870000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '3')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 298.582870000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '4')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 298.582870000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '5')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 268.346630000000000000
          Top = 298.582870000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '6')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039580000000000000
          Top = 298.582870000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '7')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 298.582870000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '8')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 298.582870000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '9')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000310000000000000
          Top = 298.582870000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '10')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Width = 396.850650000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1072#1079#1076#1077#1083' II'
            #1058#1086#1074#1072#1088#1099', '#1074' '#1086#1090#1085#1086#1096#1077#1085#1080#1080' '#1082#1086#1090#1086#1088#1099#1093' '#1090#1072#1084#1086#1078#1077#1085#1085#1072#1103' '#1087#1088#1086#1094#1077#1076#1091#1088#1072' '#1090#1072#1084#1086#1078#1077#1085#1085#1086#1075#1086
            #1089#1082#1083#1072#1076#1072' '#1079#1072#1074#1077#1088#1096#1077#1085#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 52.913420000000000000
          Width = 45.354360000000000000
          Height = 245.669450000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1076' '#1090#1072#1084#1086#1078#1077#1085#1085#1086#1081' '#1087#1088#1086#1094#1077#1076#1091#1088#1099)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 52.913420000000000000
          Width = 56.692950000000000000
          Height = 245.669450000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1085#1086#1084#1077#1088' '#1076#1077#1082#1083#1072#1088#1072#1094#1080#1080' '#1085#1072
            #1090#1086#1074#1072#1088#1099'/'#1085#1086#1084#1077#1088' '#1090#1086#1074#1072#1088#1072' '#1074' '#1076#1077#1082#1083#1072#1088#1072#1094#1080#1080' '#1085#1072
            #1090#1086#1074#1072#1088#1099)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 52.913420000000000000
          Width = 71.811070000000000000
          Height = 245.669450000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1076' '#1090#1086#1074#1072#1088#1072' '#1074' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1080' '#1089' '#1077#1076#1080#1085#1086#1081
            #1058#1086#1074#1072#1088#1085#1086#1081' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1086#1081
            #1074#1085#1077#1096#1085#1077#1101#1082#1086#1085#1086#1084#1080#1095#1077#1089#1082#1086#1081' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1080
            #1045#1074#1088#1072#1079#1080#1081#1089#1082#1086#1075#1086' '#1101#1082#1086#1085#1086#1084#1080#1095#1077#1089#1082#1086#1075#1086' '#1089#1086#1102#1079#1072)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 702.992580000000000000
          Top = 52.913420000000000000
          Width = 68.031540000000000000
          Height = 245.669450000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 771.024120000000000000
          Top = 52.913420000000000000
          Width = 41.574830000000000000
          Height = 245.669450000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1077#1089' '#1073#1088#1091#1090#1090#1086', '#1082#1075)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 812.598950000000000000
          Top = 52.913420000000000000
          Width = 56.692950000000000000
          Height = 245.669450000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1090#1086#1074#1072#1088#1072' '#1074' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086#1081' '
            #1077#1076#1080#1085#1080#1094#1077' '#1080#1079#1084#1077#1088#1077#1085#1080#1103'/'#1077#1076#1080#1085#1080#1094#1072' '#1080#1079#1084#1077#1088#1077#1085#1080#1103)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 869.291900000000000000
          Top = 52.913420000000000000
          Width = 56.692950000000000000
          Height = 245.669450000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1074#1099#1074#1086#1079#1072' '#1090#1086#1074#1072#1088#1072
            #1089' '#1090#1072#1084#1086#1078#1077#1085#1085#1086#1075#1086' '#1089#1082#1083#1072#1076#1072)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 702.992580000000000000
          Top = 298.582870000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '14')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 771.024120000000000000
          Top = 298.582870000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '15')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 812.598950000000000000
          Top = 298.582870000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '16')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 869.291900000000000000
          Top = 298.582870000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '17')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 298.582870000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '12')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 298.582870000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '13')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 298.582870000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '11')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Top = 52.913420000000000000
          Width = 49.133890000000000000
          Height = 245.669450000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1042#1077#1089' '#1073#1088#1091#1090#1090#1086', '#1082#1075)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 975.118740000000000000
          Top = 52.913420000000000000
          Width = 60.472480000000000000
          Height = 245.669450000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1090#1086#1074#1072#1088#1072' '#1074' '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086#1081' '
            #1077#1076#1080#1085#1080#1094#1077' '#1080#1079#1084#1077#1088#1077#1085#1080#1103'/'#1077#1076#1080#1085#1080#1094#1072' '#1080#1079#1084#1077#1088#1077#1085#1080#1103)
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Top = 298.582870000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '18')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 975.118740000000000000
          Top = 298.582870000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '19')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Width = 109.606370000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1072#1079#1076#1077#1083' III'
            #1054#1089#1090#1072#1090#1086#1082' '#1090#1086#1074#1072#1088#1086#1074' '#1085#1072' '
            #1090#1072#1084#1086#1078#1077#1085#1085#1086#1084' '#1089#1082#1083#1072#1076#1077)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 71.811070000000000000
        Top = 668.976810000000000000
        Width = 1046.929810000000000000
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 948.662030000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #1057#1090#1088'. [Page#] '#1080#1079' [TotalPages#]')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 11.338590000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 17.677180000000000000
          Top = 33.015770000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1076#1086#1083#1078#1085#1086#1089#1090#1100')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 268.346630000000000000
          Top = 11.338590000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 267.126160000000000000
          Top = 33.015770000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1080#1085#1080#1094#1080#1072#1083#1099','#1092#1072#1084#1080#1083#1080#1103')')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 11.338590000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 569.488560000000000000
          Top = 33.015770000000000000
          Width = 147.401670000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1087#1086#1076#1087#1080#1089#1100')'
            #1087#1077#1095#1072#1090#1100' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 759.685530000000000000
          Top = 11.338590000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 758.465060000000000000
          Top = 33.015770000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1076#1072#1090#1072')')
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
end
