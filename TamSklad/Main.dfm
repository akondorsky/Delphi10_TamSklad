object Main_F: TMain_F
  Left = 0
  Top = 0
  Caption = #1054#1054#1054' "'#1057#1080#1088#1080#1091#1089'". '#1040#1056#1052' "'#1058#1072#1084#1086#1078#1077#1085#1085#1099#1081' '#1089#1082#1083#1072#1076'"'
  ClientHeight = 825
  ClientWidth = 1465
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object MainToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 1465
    Height = 40
    ButtonHeight = 41
    ButtonWidth = 39
    DrawingStyle = dsGradient
    Images = ImL_32
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Action = AddDecl_A
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton2: TToolButton
      Left = 39
      Top = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1090#1086#1074#1072#1088
      Action = EditGoods_A
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton3: TToolButton
      Left = 78
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 13
      Style = tbsSeparator
    end
    object Btn_Refresh: TToolButton
      Left = 86
      Top = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Caption = 'Btn_Refresh'
      ImageIndex = 12
      ParentShowHint = False
      ShowHint = True
      OnClick = Btn_RefreshClick
    end
    object Btn_AllRec: TToolButton
      Left = 125
      Top = 0
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1089#1102' '#1073#1072#1079#1091
      Caption = 'Btn_AllRec'
      ImageIndex = 19
      OnClick = Btn_AllRecClick
    end
  end
  object Panel_main: TPanel
    Left = 9
    Top = 40
    Width = 1456
    Height = 766
    Align = alClient
    TabOrder = 1
    object Splitter2: TSplitter
      Left = 1
      Top = 397
      Width = 1454
      Height = 4
      Cursor = crVSplit
      Align = alTop
      Color = clGray
      ParentColor = False
      ExplicitTop = 353
    end
    object Splitter3: TSplitter
      Left = 1
      Top = 648
      Width = 1454
      Height = 4
      Cursor = crVSplit
      Align = alTop
      Color = clGray
      ParentColor = False
      ExplicitTop = 604
    end
    object Panel_Center: TPanel
      Left = 1
      Top = 426
      Width = 1454
      Height = 222
      Align = alTop
      Caption = 'Panel_Center'
      TabOrder = 0
      object Grid_GoodsOut: TDBGridEh
        Left = 1
        Top = 1
        Width = 1452
        Height = 220
        Align = alClient
        DataSource = DM.Ds_GoodsOut
        DynProps = <>
        Flat = True
        FooterParams.Color = clWindow
        OddRowColor = clWindow
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = PopMn_GoodsOut
        TabOrder = 0
        TitleParams.RowLines = 2
        OnDblClick = Grid_GoodsOutDblClick
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID_ACT_OUT'
            Footers = <>
            ImageList = ImL_Check
            KeyList.Strings = (
              '1')
            Title.Alignment = taCenter
            Title.Caption = #1040#1082#1090' '#1074#1099#1076#1072#1095#1080
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'N_GOODS'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #8470' '#1090#1086#1074'. '#1074' '#1044#1058
            Width = 53
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'N_DECL'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #8470' '#1044#1077#1082#1083#1072#1088#1072#1094#1080#1080
            Width = 99
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CUSTPROC_CODE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1086#1076' '#1090#1072#1084'. '#1087#1088#1086#1094#1077#1076#1091#1088#1099
            Width = 78
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CUSTPROC'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1058#1072#1084#1086#1078#1077#1085#1085#1072#1103' '#1087#1088#1086#1094#1077#1076#1091#1088#1072
            Width = 337
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TNVED_OUT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1086#1076' '#1058#1053#1042#1069#1044
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME_GOODS_OUT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DT_OUT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080' '#1089#1086' '#1089#1082#1083#1072#1076#1072
            Width = 148
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'KOL'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1086#1083'-'#1074#1086
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'KOL_EDIZM'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1045#1076'. '#1080#1079#1084'.'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'WEIGHT_VOL'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1042#1077#1089' '#1073#1088#1091#1090#1090#1086' '#1080#1083#1080' '#1086#1073#1098#1077#1084
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'WEIGHT_EDIZM'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1086#1087'. '#1077#1076' .'#1080#1079#1084'. '
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'STOIM'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Panel_Top: TPanel
      Left = 1
      Top = 70
      Width = 1454
      Height = 327
      Align = alTop
      TabOrder = 1
      object Splitter1: TSplitter
        Left = 1
        Top = 153
        Width = 1452
        Height = 4
        Cursor = crVSplit
        Align = alTop
        Color = clGray
        ParentColor = False
        ExplicitWidth = 447
      end
      object Grid_Goods: TDBGridEh
        Left = 1
        Top = 157
        Width = 1452
        Height = 169
        Align = alClient
        DataSource = DM.Ds_Goods
        DynProps = <>
        Flat = True
        FooterRowCount = 1
        FooterParams.Color = clMoneyGreen
        FooterParams.RowLines = 1
        OddRowColor = clWindow
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = PopMn_Head
        SumList.Active = True
        TabOrder = 0
        TitleParams.RowLines = 2
        OnDblClick = Grid_GoodsDblClick
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID'
            Footers = <>
            Title.Alignment = taCenter
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'N_GOODS'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #8470' '#1090#1086#1074'. '#1074' '#1044#1058
            Width = 82
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TNVED_CODE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1086#1076' '#1090#1086#1074#1072#1088#1072' '#1058#1053#1042#1069#1044
            Width = 85
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME_GOODS'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
            Width = 97
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'places'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1052#1077#1089#1090#1072' '#1093#1088#1072#1085#1077#1085#1080#1103
            Width = 79
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'VALUTA'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1042#1072#1083#1102#1090#1072
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'STOIM'
            Footers = <
              item
                FieldName = 'STOIM'
                ValueType = fvtSum
              end>
            Title.Alignment = taCenter
            Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'KOL'
            Footers = <
              item
                FieldName = 'KOL'
                ValueType = fvtSum
              end>
            Title.Alignment = taCenter
            Title.Caption = #1050#1086#1083'-'#1074#1086
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'KOL_EDIZM'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1045#1076'. '#1080#1079#1084'.'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'WEIGHT_VOL'
            Footers = <
              item
                FieldName = 'WEIGHT_VOL'
                ValueType = fvtSum
              end>
            Title.Alignment = taCenter
            Title.Caption = #1042#1077#1089' '#1073#1088#1091#1090#1090#1086' '#1080#1083#1080' '#1086#1073#1098#1077#1084
            Width = 79
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'WEIGHT_EDIZM'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1086#1087'. '#1077#1076'. '#1080#1079#1084'.'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DATE_FINISHED'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1072#1090#1072' '#1086#1082'. '#1093#1088#1072#1085#1077#1085#1080#1103
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REST_KOL'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1054#1089#1090#1072#1090#1086#1082' '#1082#1086#1083'.'
            Width = 83
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REST_WEIGHT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1054#1089#1090#1072#1090#1086#1082' '#1074#1077#1089#1072
            Width = 87
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'REST_STOIM'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1054#1089#1090#1072#1090#1086#1082' '#1089#1090#1086#1080#1084#1086#1089#1090#1080
            Width = 70
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Grid_Decl: TDBGridEh
        Left = 1
        Top = 1
        Width = 1452
        Height = 152
        Align = alTop
        DataSource = DM.Ds_Decl
        DynProps = <>
        Flat = True
        FooterParams.Color = clWindow
        OddRowColor = clWindow
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = PopMn_Decl
        TabOrder = 1
        TitleParams.RowLines = 2
        OnDblClick = Grid_GoodsDblClick
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1072#1090#1072', '#1074#1088#1077#1084#1103
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'N_PART'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #8470' '#1095#1072#1089#1090#1080' '#1050#1058
            Width = 78
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NOMER_DT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #8470' '#1044#1058
            Width = 187
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ZAYV'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1042#1083#1072#1076#1077#1083#1077#1094
            Width = 6671
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'INN'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1048#1053#1053
            Width = 172
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ADRESS'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1040#1076#1088#1077#1089' '#1074#1083#1072#1076#1077#1083#1100#1094#1072
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Panel_Bottom: TPanel
      Left = 1
      Top = 652
      Width = 1454
      Height = 113
      Align = alClient
      Caption = 'Panel_Bottom'
      TabOrder = 2
      object Grid_Sold: TDBGridEh
        Left = 1
        Top = 26
        Width = 1452
        Height = 86
        Align = alClient
        DataSource = DM.Ds_GoodsSold
        DynProps = <>
        Flat = True
        FooterParams.Color = clWindow
        OddRowColor = clWindow
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleParams.RowLines = 2
        OnDblClick = Grid_SoldDblClick
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'N_DOC'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072' '#1082#1086#1085#1090#1088#1086#1083#1103
            Width = 89
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DATE_DOC'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1072#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'OWNER'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1051#1080#1094#1086', '#1087#1088#1080#1086#1073#1088#1077#1090#1096#1077#1077' '#1090#1086#1074#1072#1088
            Width = 130
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'KOL'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1086#1083'-'#1074#1086
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'KOL_EDIZM'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1045#1076'. '#1080#1079#1084'.'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'WEIGHT_VOL'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1042#1077#1089' '#1073#1088#1091#1090#1090#1086' '#1080#1083#1080' '#1086#1073#1098#1077#1084
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'WEIGHT_EDIZM'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1044#1086#1087'. '#1077#1076'. '#1080#1079#1084'.'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'STOIM'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel1: TPanel
        Left = 1
        Top = 1
        Width = 1452
        Height = 25
        Align = alTop
        Alignment = taLeftJustify
        Caption = ' '#1056#1072#1089#1093#1086#1076' '#1090#1086#1074#1072#1088#1072' - '#1089#1084#1077#1085#1072' '#1089#1086#1073#1089#1090#1074#1077#1085#1085#1080#1082#1072
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 401
      Width = 1454
      Height = 25
      Align = alTop
      Alignment = taLeftJustify
      Caption = ' '#1056#1072#1089#1093#1086#1076' '#1090#1086#1074#1072#1088#1072' - '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1077' '#1087#1088#1086#1094#1077#1076#1091#1088#1099' '#1058#1057
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 1454
      Height = 69
      Align = alTop
      Alignment = taLeftJustify
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
      object Label1: TLabel
        Left = 5
        Top = 50
        Width = 100
        Height = 16
        Caption = #1055#1088#1080#1093#1086#1076' '#1090#1086#1074#1072#1088#1072
      end
      object RG_Find: TRadioGroup
        Left = 4
        Top = 3
        Width = 237
        Height = 41
        Caption = #1055#1086#1080#1089#1082
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          #1055#1086' '#8470' '#1044#1058
          #1055#1086' '#8470' '#1090#1072#1083#1086#1085#1072)
        TabOrder = 0
      end
      object E_Find: TEdit
        Left = 253
        Top = 16
        Width = 149
        Height = 24
        TabOrder = 1
        OnKeyPress = E_FindKeyPress
      end
      object Btn_Find: TButton
        Left = 408
        Top = 16
        Width = 66
        Height = 25
        Caption = #1048#1089#1082#1072#1090#1100
        TabOrder = 2
        OnClick = Btn_FindClick
      end
    end
  end
  object Panel_Left: TPanel
    Left = 0
    Top = 40
    Width = 9
    Height = 766
    Align = alLeft
    TabOrder = 2
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 806
    Width = 1465
    Height = 19
    Panels = <
      item
        Width = 500
      end
      item
        Width = 50
      end>
  end
  object MainMenu1: TMainMenu
    Left = 992
    Top = 8
    object N11: TMenuItem
      Caption = #1050#1083#1072#1076#1086#1074#1097#1080#1082
      OnClick = N11Click
    end
    object N1: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      object N9: TMenuItem
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
        OnClick = N9Click
      end
    end
    object N7: TMenuItem
      Caption = #1054#1090#1095#1077#1090#1099
      object N8: TMenuItem
        Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1090#1086#1074#1072#1088#1072#1084' '#1089' '#1079#1072#1074#1077#1088#1096#1077#1085#1085#1086#1081' '#1087#1088#1086#1094#1077#1076#1091#1088#1086#1081
        OnClick = N8Click
      end
      object N221: TMenuItem
        Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1087#1088#1080#1082#1072#1079#1091' '#1060#1058#1057' 33'
        OnClick = N221Click
      end
    end
    object N2: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
    end
    object N3: TMenuItem
      Caption = #1054' '#1055#1088#1086#1075#1088#1072#1084#1084#1077
    end
  end
  object ImL_32: TImageList
    ColorDepth = cd32Bit
    BkColor = 15790320
    Height = 32
    Width = 32
    Left = 944
    Top = 16
    Bitmap = {
      494C01011A00CC03040020002000F0F0F0002110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000080000000E0000000010020000000000000C0
      010000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F00060A6640060A664005BA25F005BA25F00569F5A00569F5A00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000196B3700196B3700196B3700196B3700196B3700196B3700196B3700196B
      3700196B3700196B3700F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F00060A6640060A664005BA25F005BA25F00569F5A00569F5A00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000196B3700196B3700196B3700196B3700196B3700196B3700196B3700196B
      3700196B3700196B3700F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FEFFFF00FEFFFF00FEFFFF00FEFF
      FF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000FEFFFF00FEFFFF00FEFFFF00FEFFFF00FEFFFF00FEFFFF00FEFF
      FF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0006AAE6E006AAE
      6E0065AA690065AA690060A6650060A665006BAE6F006BAE6F004C9750004C97
      5000529C5600529C56004E9952004E995200F0F0F000F0F0F000196B3700196B
      3700288C5300288C530064BA8D0064BA8D0095D2B20095D2B20064BA8D0064BA
      8D00288C5300288C5300196B3700196B37000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000FEFFFF00FCFDFE00F7FBFE00F4FAFD00F5FAFD00FAFC
      FE00FDFEFF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000FDFE
      FF00FAFDFE00F6FBFD00F3F9FD00F2F8FC00F1F8FC00F2F8FC00F4F9FD00F7FB
      FD00FBFDFE00FEFFFF00F0F0F000F0F0F000F0F0F000F0F0F0006AAE6E006AAE
      6E0065AA690065AA690060A6650060A665006BAE6F006BAE6F004C9750004C97
      5000529C5600529C56004E9952004E995200F0F0F000F0F0F000196B3700196B
      3700288C5300288C530064BA8D0064BA8D0095D2B20095D2B20064BA8D0064BA
      8D00288C5300288C5300196B3700196B37000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000FCFEFF00507BAC004C7DB000497EB300497EB30085A7
      CA00F7FBFE00FDFEFF00F0F0F000F0F0F000F0F0F000FEFFFF00FBFDFE00F4F9
      FD00D9E8F3007CA4CA005085B700427CB300427CB200427CB2005D8EBD008AAF
      D000EAF4FB00F6FBFD00FCFEFE00F0F0F000F0F0F000F0F0F0006FB274006FB2
      74007CBB81007CBB8100B7DEBB00B7DEBB0067AC6C0067AC6C0075B67A0075B6
      7A004E9851004E985100539C5700539C57004F9953004F9953001B6C39001B6C
      390062BA8B0062BA8B0060BA870060BA8700F0F0F000F0F0F00060B9870060B9
      870067BC8F0067BC8F00196B3700196B37000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000FBFDFE006A92BD004D92C8005CA9DE005AA8DD002266
      A400D9E9F400FAFCFE00FEFFFF00F0F0F000F0F0F000FCFEFE00F0F8FC0089AF
      D1001E66A600398BC8004399D400479DD700489DD800469CD7003D93D0003384
      C200286AA800B6CFE400F4FAFD00FDFEFF00F0F0F000F0F0F0006FB274006FB2
      74007CBB81007CBB8100B7DEBB00B7DEBB0067AC6C0067AC6C0075B67A0075B6
      7A004E9851004E985100539C5700539C57004F9953004F9953001B6C39001B6C
      390062BA8B0062BA8B0060BA870060BA8700F0F0F000F0F0F00060B9870060B9
      870067BC8F0067BC8F00196B3700196B37000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000FCFDFE00DEEBF5002467A6005DB2E60059B3E9004192
      CD006C9CC600F1F8FC00FDFEFF00F0F0F000FEFFFF00F6FBFD0098BAD7003381
      BF0045A0DB003EA1DE003DA0DE0046A3DF003B95D30044A3E000389CDC003C9E
      DD003891D0001B64A500C7DBEC00F9FCFE00F0F0F000F0F0F00075B67A0075B6
      7A009CCDA0009CCDA0006FB273006FB273008DC792008DC79200AADCAF00AADC
      AF0076B67B0076B67B00519B5500519B550077B77B0077B77B00317B4C00317B
      4C009CD4B6009CD4B600F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F00095D2B20095D2B200196B3700196B37000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000FDFEFF00F4FAFD007CA7CD004394CD0052B0E70054AF
      E6002672B100C6DCEC00F8FCFE00FEFFFF00FCFEFF00ECF6FC002C6EAB00459F
      DA00339CDC002E98DA00399AD9001A6EB2003F86BE002D85C600389CDC002793
      D7003399DA00388ECC005C8EBE00F2F8FC00F0F0F000F0F0F00075B67A0075B6
      7A009CCDA0009CCDA0006FB273006FB273008DC792008DC79200AADCAF00AADC
      AF0076B67B0076B67B00519B5500519B550077B77B0077B77B00317B4C00317B
      4C009CD4B6009CD4B600F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F00095D2B20095D2B200196B3700196B37000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000FEFFFF00FAFDFE00D9E9F400256DAB0055AFE40050AE
      E6004499D2005E93C200EEF7FC00FBFDFE00F9FCFE00ABC6DF002E7DBB0044A5
      E1002A97DA00359CDC003088C60079AAD100CFE7F600518EC1003590D0002994
      D7002491D60045A4E000115BA000E7F3FA007FBE84007FBE84007BBB80007BBB
      800077B77C0077B77C0091CB970091CB9700ABDEB100ABDEB1009CD7A2009CD7
      A200AADDB000AADDB00077B77C0077B77C0060AC650060AC6500478A6000478A
      600090D3B10090D3B10092D6B10092D6B100F0F0F000F0F0F00065BC8C0065BC
      8C0067BC8F0067BC8F00196B3700196B37000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000FDFEFF00F4FAFD007CA7CD003F91CB0052B1
      E70056B2E8002C7AB800B6D0E600F6FBFE00F6FBFD007DA6CB003D8FCA003DA2
      DF002A97DA003FA2E0001A69AC00CFE3F200ECF5FB0090B6D7002B81C1003099
      DA002190D500399DDD002978B800A2C2DD007FBE84007FBE84007BBB80007BBB
      800077B77C0077B77C0091CB970091CB9700ABDEB100ABDEB1009CD7A2009CD7
      A200AADDB000AADDB00077B77C0077B77C0060AC650060AC6500478A6000478A
      600090D3B10090D3B10092D6B10092D6B100F0F0F000F0F0F00065BC8C0065BC
      8C0067BC8F0067BC8F00196B3700196B37000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000FEFFFF00FBFDFE00E9F5FC003075B00054AC
      E30050AFE700499FD7004682B700ECF6FC00F3F9FD007CA6CB003D90CB003CA2
      DF002C98DB0044A6E1001561A400E6F3FA00F3F9FD00A3C3DE00297BBB00359B
      DC002190D600369CDB002779BA0099BEDC007FBD84007FBD84007FBD84007FBD
      840097CE9C0097CE9C00ADDFB300ADDFB3006FB374006FB3740096D59D0096D5
      9D009DD8A3009DD8A300AADDB000AADDB00078B87C0078B87C0061A46F0061A4
      6F0061AB810061AB810095D4B40095D4B400BAE6D000BAE6D0006ABB8F006ABB
      8F002D8F57002D8F57001F7039001F7039000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FDFEFF00F5FBFE008CB3D4004091
      CA0056B3E90057B3E9003382BE00A6C5DF00EFF7FC007DA6CB003F91CC003FA3
      E0002E9ADC0042A5E1001C6AAC00D2E5F200EEF6FC0092B8D7002E82C100339B
      DB002391D6003A9EDD002979B9009FC1DD007FBD84007FBD84007FBD84007FBD
      840097CE9C0097CE9C00ADDFB300ADDFB3006FB374006FB3740096D59D0096D5
      9D009DD8A3009DD8A300AADDB000AADDB00078B87C0078B87C0061A46F0061A4
      6F0061AB810061AB810095D4B40095D4B400BAE6D000BAE6D0006ABB8F006ABB
      8F002D8F57002D8F57001F7039001F7039000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000FBFDFE00ECF6FC003D7C
      B4004FA6DD0053B2E8004DA4DC004583B800E5F3FB009ABBD8003786C20047A8
      E300309CDD003CA2E0003086C4008BB5D700D6EBF7006098C7003690CF002E98
      DA002794D70045A4E1001964A800D5E6F3007BBB80007BBB80008EC893008EC8
      9300AFDFB500AFDFB500A1DAA700A1DAA70098D79F0098D79F0097D69E0097D6
      9E007EC083007EC0830082C1870082C18700ABDDB000ABDDB00079B97D0079B9
      7D005EA16B005EA16B005E9873005E9873004F8E66004F8E660046895E004689
      5E003F894E003F894E0045924900459249000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000FDFEFF00F7FBFE00A8C7
      E0003685C0005AB6EA0057B4E9003F8FC90088B1D300D3E6F300246AA90050AB
      E2003AA2E00037A0DF00409FDA00317DBA0063A0CD001D72B3003DA0DE002D98
      DA00349CDC00419AD600417DB300EFF7FC007BBB80007BBB80008EC893008EC8
      9300AFDFB500AFDFB500A1DAA700A1DAA70098D79F0098D79F0097D69E0097D6
      9E007EC083007EC0830082C1870082C18700ABDDB000ABDDB00079B97D0079B9
      7D005EA16B005EA16B005E9873005E9873004F8E66004F8E660046895E004689
      5E003F894E003F894E0045924900459249000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000FDFEFF00EEF8
      FD004A85B9004DA2DA0055B3E90055ADE3003075B000DEF0FA007BA7CD003E8E
      C90052AFE70043A6E20045A7E20046A3DD003590CD0045A3DE003CA1DF003BA0
      DF0045A0DC002D7AB900A8C5DE00F8FBFE008DC993008DC993007DBB82007DBB
      82008FC894008FC89400B0E0B600B0E0B600A2DAA800A2DAA8007FC185007FC1
      8500A4D0A700A4D0A700DDEEDF00DDEEDF0080B8830080B88300ABDEB100ABDE
      B1007AB97F007AB97F00569F5A00569F5A00C4E7C800C4E7C80078B87C0078B8
      7C004E9952004E995200F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000FEFFFF00FEFFFF00FEFFFF00FEFFFF00FEFFFF00FEFFFF00FDFEFF00F8FC
      FE00B8D3E700327FBB005DB8EB0057B4E9004092CB007AA7CD00E2F2FA006294
      C1003380BD004DA1D90057AFE6005AB3E9005BB3E80058B1E7004FA8E1004094
      CF00226DAE0089AFD100F1F8FC00FCFEFE008DC993008DC993007DBB82007DBB
      82008FC894008FC89400B0E0B600B0E0B600A2DAA800A2DAA8007FC185007FC1
      8500A4D0A700A4D0A700DDEEDF00DDEEDF0080B8830080B88300ABDEB100ABDE
      B1007AB97F007AB97F00569F5A00569F5A00C4E7C800C4E7C80078B87C0078B8
      7C004E9952004E995200F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000FEFEFF00FBFE
      FF00F8FCFE00F6FBFE00F5FBFE00F4FAFE00F4FAFE00F6FBFE00F9FCFE00FAFD
      FE00EFF8FD006396C4004C9FD60057B5EA0059B2E700276EAD00D4E7F400ECF6
      FC00ABC7E000558BBB002367A500175EA100175EA100165EA0002D6EAA006092
      BF00C8DCEC00F3F9FD00FBFDFE00FEFFFF00F0F0F000F0F0F0008EC993008EC9
      93007DBC82007DBC820090C9950090C99500B0E0B600B0E0B60085C28A0085C2
      8A00F7FCF800F7FCF80095C2970095C29700DDEEDF00DDEEDF0082C2870082C2
      8700ABDEB100ABDEB1007BBA7F007BBA7F0058A05C0058A05C0059A15D0059A1
      5D00539C5700539C5700F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFFFF00FCFEFF00F7FCFE00DFED
      F60085ACCF005C90BD004F86B9004E86B8004E86B8006797C20092B5D400EDF7
      FD00F3FAFD00C7DEEE002D78B5005DB7EB0059B5EB004598D0007CA8CE00F0F8
      FD00F7FBFE00F4FAFD00F1F8FD00EFF7FC00EFF7FC00EFF7FC00F1F8FD00F5FA
      FD00FAFCFE00FDFEFF00FEFFFF00F0F0F000F0F0F000F0F0F0008EC993008EC9
      93007DBC82007DBC820090C9950090C99500B0E0B600B0E0B60085C28A0085C2
      8A00F7FCF800F7FCF80095C2970095C29700DDEEDF00DDEEDF0082C2870082C2
      8700ABDEB100ABDEB1007BBA7F007BBA7F0058A05C0058A05C0059A15D0059A1
      5D00539C5700539C5700F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFEFF00F4FBFE0093B7D5003075
      AF0052A1D40060B1E20064B5E60064B4E50062B3E50058A8DC004996CC003676
      B000BBD4E700EAF6FC0070A0C900499BD2005AB7EB005AB3E700276FAE00D7E8
      F400F8FCFE00FDFEFF00FDFEFF00FDFEFF00FDFEFF00FDFEFF00FDFEFF00FEFF
      FF00FEFFFF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F0007EBD83007EBD830091CA960091CA9600B1E0B600B1E0
      B600D9F3DD00D9F3DD00F7FCF800F7FCF800A4D0A700A4D0A7007EC084007EC0
      84009FD9A5009FD9A500ACDEB200ACDEB2007BBB80007BBB8000569F5A00569F
      5A00F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F8FCFE00A1C1DC004993C90068BD
      EC0067C3F20067C2F20069C0F0005BB1E30069C2F10060BDEF0061BEF00055A9
      DE002B71AD00C9DEEE00D5E8F4002B71AF005DB5E9005AB7EB00479AD2006295
      C300F1F9FD00FDFEFF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F0007EBD83007EBD830091CA960091CA9600B1E0B600B1E0
      B600D9F3DD00D9F3DD00F7FCF800F7FCF800A4D0A700A4D0A7007EC084007EC0
      84009FD9A5009FD9A500ACDEB200ACDEB2007BBB80007BBB8000569F5A00569F
      5A00F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EEF9FE003B7BB20066BAEA0062C2
      F2005EC0F10061BBEC003786BF005799CA004C9FD50060BEF00055B9ED005CBB
      EE0053A5D9006798C400EAF6FC007FAACF004A9BD1005CB9EC0061BAED002C77
      B500C7DDED00F8FCFE00FEFFFF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0007FBE85007FBE850092CB970092CB
      9700B1E1B600B1E1B60085C38A0085C38A0080C1850080C1850099D7A00099D7
      A00098D79F0098D79F009FD9A5009FD9A500ACDFB200ACDFB2007DBB81007DBB
      810058A05C0058A05C00F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ABCCE4004591C8006BC6F4005DC0
      F20062C2F2004EA1D50089B7D900DAF0FB00639ECB0057AEE10057BAEE0054B9
      ED0068C1F1002168A700EAF6FC00D9EAF5003578B3005CB3E6005BB8EC004CA0
      D700568DBE00EFF8FD00FDFEFF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0007FBE85007FBE850092CB970092CB
      9700B1E1B600B1E1B60085C38A0085C38A0080C1850080C1850099D7A00099D7
      A00098D79F0098D79F009FD9A5009FD9A500ACDFB200ACDFB2007DBB81007DBB
      810058A05C0058A05C00F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007DB1D60057A8DB0067C5F4005DC1
      F30069C5F4003883BC00C9E0EF00F0F9FE008FB7D7004D9DD2005DBEF00053B9
      ED0062BFF0003E89C100B0CBE100F1F9FD008EB5D5004696CD005FBAEE0060BA
      EE003986C100ABC8E100F8FCFE00FEFFFF00F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00081BF860081BF
      860093CC980093CC9800B1E1B700B1E1B700A3DBA900A3DBA9009BD8A2009BD8
      A20073B4770073B47700AFDFB400AFDFB40087C38C0087C38C0065AA690065AA
      69005DA461005DA46100F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007AB4DA0057ABDD0065C5F4005EC3
      F3006DC7F5002971AE00ECF8FD00F6FBFE00ACCAE2004391C80060C0F10054BA
      EE0061BFF0003F8BC300AFCAE100F7FCFE00ECF7FD003678B2005AB1E4005CB9
      ED0055ABDF004A86BA00EDF7FC00FCFEFF00F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00081BF860081BF
      860093CC980093CC9800B1E1B700B1E1B700A3DBA900A3DBA9009BD8A2009BD8
      A20073B4770073B47700AFDFB400AFDFB40087C38C0087C38C0065AA690065AA
      69005DA461005DA46100F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007CB2D70058AADC0067C6F5005FC4
      F4006CC8F5002B76B200E8F6FD00F2FAFE009DC1DD004999CF0061C0F10056BC
      EF0064C0F100408AC300B1CBE100FAFDFE00F6FBFE009DBFDB004291C90062BC
      EF0061BCEE003A88C200A9C8E100F6FBFE00FDFEFF00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F00082C0870082C0870094CC990094CC9900B2E2B700B2E2B700A3DCAA00A3DC
      AA00B0E0B600B0E0B6008CC692008CC692006EB173006EB1730066AB6B0066AB
      6B00F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009BC2DF004D9BCF006DC9F60061C5
      F40068C7F5004C9DD10099C1DE00E0F3FC0072A7D00058ACDF005EC0F10059BD
      F0006BC4F3002B73B000E0EDF600FCFEFF00FBFDFF00EEF8FD004D88BB0059AD
      E1005EBBEE0056ACE0003576B000EBF6FC00FBFDFE00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F00082C0870082C0870094CC990094CC9900B2E2B700B2E2B700A3DCAA00A3DC
      AA00B0E0B600B0E0B6008CC692008CC692006EB173006EB1730066AB6B0066AB
      6B00F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DCEDF7003479B20070C6F20066C6
      F50065C6F40066BDEC004B93C7007AB2D8003A8AC20067C3F2005EC0F10061C2
      F20061B4E5005188BB00F4FAFE00FEFEFF00FEFEFF00F8FCFE00ACCAE1003D8A
      C30064BEEF0061BDEE004695CC008EB4D400F6FBFE00FDFEFF00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F00083C1880083C1880094CD9A0094CD9A00B3E2B700B3E2
      B70093CB980093CB980077B77C0077B77C0070B2740070B27400F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F6FCFE0086AED00054A0D30074CC
      F7006CC9F6006DC9F6006AC0EE0057ABDE006BC3F10068C5F40067C4F40068BE
      ED00428CC300B0CCE200F9FDFE00FEFFFF00F0F0F000FDFEFF00F0F9FD004D87
      BA0052A5DA0064BFEF0064B6E7003574AE00F0F8FD00FDFEFF00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F00083C1880083C1880094CD9A0094CD9A00B3E2B700B3E2
      B70093CB980093CB980077B77C0077B77C0070B2740070B27400F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFEFF00F2FAFE006B9BC5004690
      C60067B7E60076CAF5007ACDF8007BCDF80078CCF70070C4F1005CACDD00367E
      B70093B7D600F5FBFE00FDFEFF00F0F0F000F0F0F000FEFFFF00F9FDFE00CBE0
      EF003078B30078C7F4007AC8F4004C90C60089AACC00FCFEFF00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F00084C28A0084C28A0096CD9B0096CD
      9B0080BE850080BE850079B97E0079B97E00F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFFFF00FCFEFF00F4FBFE00B2CD
      E3006093C0003072AC00266BA800266BA800266BA8003B7AB1006C9BC500CEE2
      F000F6FCFE00FCFEFF00FEFFFF00F0F0F000F0F0F000F0F0F000FEFEFF00F6FB
      FE006C96C0001E5F9F001D5F9F001956970024599700FDFEFF00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F00084C28A0084C28A0096CD9B0096CD
      9B0080BE850080BE850079B97E0079B97E00F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000FEFFFF00FDFEFF00FAFD
      FF00F6FCFE00F4FBFE00F3FAFE00F3FAFE00F3FBFE00F4FBFE00F8FCFE00FBFD
      FF00FEFEFF00FEFFFF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000FEFE
      FF00F9FDFE00F5FBFE00F5FBFE00F8FCFE00FCFEFF00FEFFFF00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00086C38B0086C3
      8B0082C0870082C08700F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000FEFF
      FF00FEFFFF00FEFFFF00FEFFFF00FEFFFF00FEFFFF00FEFFFF00FEFFFF00FEFF
      FF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000FEFFFF00FEFFFF00FEFFFF00FEFFFF00F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00086C38B0086C3
      8B0082C0870082C08700F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000C8966200C8966200CA986500CA986500CA976500CA97
      6500CA976500CA976500CA976500CA976500CA976400CA976400C9976400C997
      6400C9976400C9976400CA986500CA986500C8956200C8956200F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F2E7DE00F2E7DE00D1AD9500D1AD9500BB8A6E00BB8A
      6E00B07A5700B07A5700A96D4500A96D4500AF795500AF795500B37E5C00B37E
      5C00BB8A6E00BB8A6E00BF927800BF927800D7B69D00D7B69D00EFE2D800EFE2
      D800F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000C8966200C8966200CA986500CA986500CA976500CA97
      6500CA976500CA976500CA976500CA976500CA976400CA976400C9976400C997
      6400C9976400C9976400CA986500CA986500C8956200C8956200F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F2E7DE00F2E7DE00D1AD9500D1AD9500BB8A6E00BB8A
      6E00B07A5700B07A5700A96D4500A96D4500AF795500AF795500B37E5C00B37E
      5C00BB8A6E00BB8A6E00BF927800BF927800D7B69D00D7B69D00EFE2D800EFE2
      D800F0F0F000F0F0F000F0F0F000F0F0F000A1A1A100A1A1A1007A7A7A007A7A
      7A005858580058585800C7956100C7956100F9F7F600F9F7F600F9F1EC00F9F1
      EC00F9F1EB00F9F1EB00F8F0E900F8F0E900F7EDE600F7EDE600F4EAE100F4EA
      E100F2E8DE00F2E8DE00FAF8F600FAF8F600C7946100C7946100242424002424
      24004B4B4B004B4B4B009696960096969600F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000BF000000BF00
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F0003F3DED003F3DED003B38EB003B38EB00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000211FE300211FE3001E1CE2001E1CE200F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000FFFEFE00FFFE
      FE00BF917500BF917500A45C1D00A45C1D00AB661F00AB661F00AC681F00AC68
      1F00AC681F00AC681F00AC681F00AC681F00AC681F00AC681F00AC681F00AC68
      1F00AC681F00AC681F00AC681F00AC681F00AA661F00AA661F00A45C1D00A45C
      1D00DFC2AD00DFC2AD00F0F0F000F0F0F000A1A1A100A1A1A1007A7A7A007A7A
      7A005858580058585800C7956100C7956100F9F7F600F9F7F600F9F1EC00F9F1
      EC00F9F1EB00F9F1EB00F8F0E900F8F0E900F7EDE600F7EDE600F4EAE100F4EA
      E100F2E8DE00F2E8DE00FAF8F600FAF8F600C7946100C7946100242424002424
      24004B4B4B004B4B4B009696960096969600F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000BF000000BF00
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F0003F3DED003F3DED003B38EB003B38EB00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000211FE300211FE3001E1CE2001E1CE200F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000FFFEFE00FFFE
      FE00BF917500BF917500A45C1D00A45C1D00AB661F00AB661F00AC681F00AC68
      1F00AC681F00AC681F00AC681F00AC681F00AC681F00AC681F00AC681F00AC68
      1F00AC681F00AC681F00AC681F00AC681F00AA661F00AA661F00A45C1D00A45C
      1D00DFC2AD00DFC2AD00F0F0F000F0F0F0006B6B6B006B6B6B00A7A7A700A7A7
      A700B5B5B500B5B5B5008181810081818100AFACAA00AFACAA00C5C0BD00C5C0
      BD00C5C0BD00C5C0BD00C5C0BD00C5C0BD00C5C0BD00C5C0BD00C5C0BD00C5C0
      BD00C5C0BD00C5C0BD00ADAAA800ADAAA8002C2C2C002C2C2C00B5B5B500B5B5
      B5009B9B9B009B9B9B002323230023232300F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000BF000000BF000000BF000000BF00
      0000BF000000BF000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F0004A47F0004A47F0004F4CF2004F4CF200403EED00403EED003C39EB003C39
      EB00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F0002725E5002725E5002422E4002422E400312FEA00312FEA001F1DE2001F1D
      E200F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000E3CCBA00E3CC
      BA00BA712600BA712600C57E2A00C57E2A00C57E2A00C57E2A00C57E2A00C57E
      2A00C57E2A00C57E2A00C57E2A00C57E2A00C57E2A00C57E2A00C57E2A00C57E
      2A00C57E2A00C57E2A00C57E2A00C57E2A00C57E2A00C57E2A00C47C2A00C47C
      2A00D5B09500D5B09500F0F0F000F0F0F0006B6B6B006B6B6B00A7A7A700A7A7
      A700B5B5B500B5B5B5008181810081818100AFACAA00AFACAA00C5C0BD00C5C0
      BD00C5C0BD00C5C0BD00C5C0BD00C5C0BD00C5C0BD00C5C0BD00C5C0BD00C5C0
      BD00C5C0BD00C5C0BD00ADAAA800ADAAA8002C2C2C002C2C2C00B5B5B500B5B5
      B5009B9B9B009B9B9B002323230023232300F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000BF000000BF000000BF000000BF00
      0000BF000000BF000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F0004A47F0004A47F0004F4CF2004F4CF200403EED00403EED003C39EB003C39
      EB00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F0002725E5002725E5002422E4002422E400312FEA00312FEA001F1DE2001F1D
      E200F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000E3CCBA00E3CC
      BA00BA712600BA712600C57E2A00C57E2A00C57E2A00C57E2A00C57E2A00C57E
      2A00C57E2A00C57E2A00C57E2A00C57E2A00C57E2A00C57E2A00C57E2A00C57E
      2A00C57E2A00C57E2A00C57E2A00C57E2A00C57E2A00C57E2A00C47C2A00C47C
      2A00D5B09500D5B09500F0F0F000F0F0F0007070700070707000B5B5B500B5B5
      B500B5B5B500B5B5B50095959500959595008181810081818100818181008181
      810079797900797979006E6E6E006E6E6E006161610061616100525252005252
      5200434343004343430042424200424242006E6E6E006E6E6E00B5B5B500B5B5
      B500B5B5B500B5B5B5002525250025252500F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000BF000000BF000000BF000000BF000000BF000000BF00
      0000BF000000BF000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0005451F3005451
      F3005856F5005856F5006361FA006361FA005855F6005855F600413FED00413F
      ED003D3AEC003D3AEC00F0F0F000F0F0F000F0F0F000F0F0F000302DE700302D
      E7002C2AE6002C2AE600413FF100413FF1004C4AF6004C4AF600312FEA00312F
      EA001F1DE2001F1DE200F0F0F000F0F0F000F0F0F000F0F0F000E7D4C700E7D4
      C700C97D2C00C97D2C00DC913400DC913400DC913400DC913400DC913400DC91
      3400DC913400DC913400DC913400DC913400DC913400DC913400DC913400DC91
      3400DC913400DC913400DC913400DC913400DC913400DC913400D88D3200D88D
      3200D6B49B00D6B49B00F0F0F000F0F0F0007070700070707000B5B5B500B5B5
      B500B5B5B500B5B5B50095959500959595008181810081818100818181008181
      810079797900797979006E6E6E006E6E6E006161610061616100525252005252
      5200434343004343430042424200424242006E6E6E006E6E6E00B5B5B500B5B5
      B500B5B5B500B5B5B5002525250025252500F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000BF000000BF000000BF000000BF000000BF000000BF00
      0000BF000000BF000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0005451F3005451
      F3005856F5005856F5006361FA006361FA005855F6005855F600413FED00413F
      ED003D3AEC003D3AEC00F0F0F000F0F0F000F0F0F000F0F0F000302DE700302D
      E7002C2AE6002C2AE600413FF100413FF1004C4AF6004C4AF600312FEA00312F
      EA001F1DE2001F1DE200F0F0F000F0F0F000F0F0F000F0F0F000E7D4C700E7D4
      C700C97D2C00C97D2C00DC913400DC913400DC913400DC913400DC913400DC91
      3400DC913400DC913400DC913400DC913400DC913400DC913400DC913400DC91
      3400DC913400DC913400DC913400DC913400DC913400DC913400D88D3200D88D
      3200D6B49B00D6B49B00F0F0F000F0F0F0007575750075757500BBBBBB00BBBB
      BB00BBBBBB00BBBBBB008D8D8D008D8D8D00D4D4D400D4D4D400B9B9B900B9B9
      B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9
      B900B9B9B900B9B9B900D3D3D300D3D3D3008383830083838300BBBBBB00BBBB
      BB00BBBBBB00BBBBBB002A2A2A002A2A2A00F0F0F000F0F0F000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BF000000BF000000BF000000BF000000BF000000BF000000F0F0F000F0F0
      F000BF000000BF000000BF000000BF000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0005956F5005956
      F5005B58F6005B58F6006562FA006562FA007170FF007170FF005956F6005956
      F6004240EE004240EE003E3BEC003E3BEC003937EB003937EB003532E9003532
      E9004745F2004745F2006362FF006362FF004A48F4004A48F4002F2DE9002F2D
      E9002220E3002220E300F0F0F000F0F0F000F0F0F000F0F0F000F2EAE400F2EA
      E400C7792C00C7792C00EC9F3B00EC9F3B00E2953700E2953700B4743500B474
      350081745F0081745F007E7562007E756200AD713700AD713700E2953700E295
      3700EC9F3B00EC9F3B00EC9F3B00EC9F3B00E89A3900E89A3900BF753100BF75
      3100EBDBCF00EBDBCF00F0F0F000F0F0F0007575750075757500BBBBBB00BBBB
      BB00BBBBBB00BBBBBB008D8D8D008D8D8D00D4D4D400D4D4D400B9B9B900B9B9
      B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9
      B900B9B9B900B9B9B900D3D3D300D3D3D3008383830083838300BBBBBB00BBBB
      BB00BBBBBB00BBBBBB002A2A2A002A2A2A00F0F0F000F0F0F000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BF000000BF000000BF000000BF000000BF000000BF000000F0F0F000F0F0
      F000BF000000BF000000BF000000BF000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0005956F5005956
      F5005B58F6005B58F6006562FA006562FA007170FF007170FF005956F6005956
      F6004240EE004240EE003E3BEC003E3BEC003937EB003937EB003532E9003532
      E9004745F2004745F2006362FF006362FF004A48F4004A48F4002F2DE9002F2D
      E9002220E3002220E300F0F0F000F0F0F000F0F0F000F0F0F000F2EAE400F2EA
      E400C7792C00C7792C00EC9F3B00EC9F3B00E2953700E2953700B4743500B474
      350081745F0081745F007E7562007E756200AD713700AD713700E2953700E295
      3700EC9F3B00EC9F3B00EC9F3B00EC9F3B00E89A3900E89A3900BF753100BF75
      3100EBDBCF00EBDBCF00F0F0F000F0F0F0007A7A7A007A7A7A00D7D7D700D7D7
      D700D7D7D700D7D7D7009797970097979700D8D8D800D8D8D800BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00D7D7D700D7D7D7008E8E8E008E8E8E00D7D7D700D7D7
      D700D7D7D700D7D7D7003F3F3F003F3F3F00F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000BF000000BF00
      0000BF000000BF000000BF000000BF000000F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F000BF000000BF000000BF000000BF000000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F0005A57F5005A57F5005B59F6005B59F6006663FA006663FA007471FF007471
      FF005A58F6005A58F6004341EE004341EE003E3CEC003E3CEC00504DF400504D
      F4006867FF006867FF00504EF500504EF5003634EB003634EB002A27E5002A27
      E500F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000FEFEFE00FEFE
      FE00D8C9BC00D8C9BC00BE855C00BE855C008D7660008D766000439EC400439E
      C4003DA7D5003DA7D5003BAADB003BAADB003EA9D6003EA9D6007F715D007F71
      5D00E0933600E0933600C77B3100C77B3100C2927300C2927300F7EFE900F7EF
      E900F0F0F000F0F0F000F0F0F000F0F0F0007A7A7A007A7A7A00D7D7D700D7D7
      D700D7D7D700D7D7D7009797970097979700D8D8D800D8D8D800BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00D7D7D700D7D7D7008E8E8E008E8E8E00D7D7D700D7D7
      D700D7D7D700D7D7D7003F3F3F003F3F3F00F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000BF000000BF00
      0000BF000000BF000000BF000000BF000000F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F000BF000000BF000000BF000000BF000000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F0005A57F5005A57F5005B59F6005B59F6006663FA006663FA007471FF007471
      FF005A58F6005A58F6004341EE004341EE003E3CEC003E3CEC00504DF400504D
      F4006867FF006867FF00504EF500504EF5003634EB003634EB002A27E5002A27
      E500F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000FEFEFE00FEFE
      FE00D8C9BC00D8C9BC00BE855C00BE855C008D7660008D766000439EC400439E
      C4003DA7D5003DA7D5003BAADB003BAADB003EA9D6003EA9D6007F715D007F71
      5D00E0933600E0933600C77B3100C77B3100C2927300C2927300F7EFE900F7EF
      E900F0F0F000F0F0F000F0F0F000F0F0F0007E7E7E007E7E7E00F9F9F900F9F9
      F900F9F9F900F9F9F900ABABAB00ABABAB00DFDFDF00DFDFDF00CBCBCB00CBCB
      CB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCB
      CB00CBCBCB00CBCBCB00DFDFDF00DFDFDF00A3A3A300A3A3A300F9F9F900F9F9
      F900F9F9F900F9F9F9006161610061616100F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F00080808000808080008080800080808000808080008080
      8000BF000000BF000000F0F0F000F0F0F000F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000BF000000BF000000F7DFDF00F7DF
      DF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F0005B58F6005B58F6005C5AF6005C5AF6006764FA006764
      FA007472FF007472FF007370FF007370FF00706EFF00706EFF006E6CFF006E6C
      FF005755F7005755F7003F3DEE003F3DEE003230E8003230E800F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000B4D9E600B4D9E60037A3D20037A3
      D200409EC700409EC7003EA4D0003EA4D0003CA8D7003CA8D7003EA7D3003EA7
      D300A1A6A400A1A6A400F3EFEA00F3EFEA00F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0007E7E7E007E7E7E00F9F9F900F9F9
      F900F9F9F900F9F9F900ABABAB00ABABAB00DFDFDF00DFDFDF00CBCBCB00CBCB
      CB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCB
      CB00CBCBCB00CBCBCB00DFDFDF00DFDFDF00A3A3A300A3A3A300F9F9F900F9F9
      F900F9F9F900F9F9F9006161610061616100F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F00080808000808080008080800080808000808080008080
      8000BF000000BF000000F0F0F000F0F0F000F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000BF000000BF000000F7DFDF00F7DF
      DF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F0005B58F6005B58F6005C5AF6005C5AF6006764FA006764
      FA007472FF007472FF007370FF007370FF00706EFF00706EFF006E6CFF006E6C
      FF005755F7005755F7003F3DEE003F3DEE003230E8003230E800F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000B4D9E600B4D9E60037A3D20037A3
      D200409EC700409EC7003EA4D0003EA4D0003CA8D7003CA8D7003EA7D3003EA7
      D300A1A6A400A1A6A400F3EFEA00F3EFEA00F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0008484840084848400FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00CBCBCB00CBCBCB00F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200C6C6C600C6C6C600FCFCFC00FCFC
      FC00FCFCFC00FCFCFC007171710071717100F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F3CFCF00F3CFCF00BF000000BF00
      0000F7DFDF00F7DFDF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0005C59F6005C59F6005D5BF7005D5B
      F7007976FF007976FF005956FF005956FF005754FF005754FF007270FF007270
      FF004846F0004846F0003C39EB003C39EB00F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F4F9FA00F4F9FA0048B9EA0048B9EA0033AFE50033AF
      E50032A8DB0032A8DB00419CC300419CC30040A0C90040A0C900B8DBE800B8DB
      E800F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0008484840084848400FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00CBCBCB00CBCBCB00F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200C6C6C600C6C6C600FCFCFC00FCFC
      FC00FCFCFC00FCFCFC007171710071717100F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F3CFCF00F3CFCF00BF000000BF00
      0000F7DFDF00F7DFDF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0005C59F6005C59F6005D5BF7005D5B
      F7007976FF007976FF005956FF005956FF005754FF005754FF007270FF007270
      FF004846F0004846F0003C39EB003C39EB00F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F4F9FA00F4F9FA0048B9EA0048B9EA0033AFE50033AF
      E50032A8DB0032A8DB00419CC300419CC30040A0C90040A0C900B8DBE800B8DB
      E800F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0009797970097979700D2D2D200D2D2
      D200E8E8E800E8E8E8007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D
      7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D
      7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D00E8E8E800E8E8
      E800C4C4C400C4C4C4006D6D6D006D6D6D00F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F00080808000808080008080800080808000808080008080
      800080808000808080008080800080808000F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F7DFDF00F7DF
      DF00BF000000BF000000F7DFDF00F7DFDF00F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000615EF800615EF8005D5AF6005D5A
      F6007D79FF007D79FF005E5BFF005E5BFF005B58FF005B58FF007674FF007674
      FF004643EF004643EF00413FED00413FED00F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F0009FD8F0009FD8F0003EB7EC003EB7EC003AB4E9003AB4
      E90035B0E60035B0E60036A8DA0036A8DA005DA3C1005DA3C100F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0009797970097979700D2D2D200D2D2
      D200E8E8E800E8E8E8007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D
      7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D
      7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D00E8E8E800E8E8
      E800C4C4C400C4C4C4006D6D6D006D6D6D00F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F00080808000808080008080800080808000808080008080
      800080808000808080008080800080808000F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F7DFDF00F7DF
      DF00BF000000BF000000F7DFDF00F7DFDF00F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000615EF800615EF8005D5AF6005D5A
      F6007D79FF007D79FF005E5BFF005E5BFF005B58FF005B58FF007674FF007674
      FF004643EF004643EF00413FED00413FED00F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F0009FD8F0009FD8F0003EB7EC003EB7EC003AB4E9003AB4
      E90035B0E60035B0E60036A8DA0036A8DA005DA3C1005DA3C100F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000DDDDDD00DDDDDD009A9A9A009A9A
      9A00CCCCCC00CCCCCC00C78B4E00C78B4E00F9F4ED00F9F4ED00FEE8D800FEE8
      D800FEE8D700FEE8D700FDE5D300FDE5D300FCE4D100FCE4D100FAE0C700FAE0
      C700F9DDC300F9DDC300FAF4ED00FAF4ED00C7854A00C7854A00C3C3C300C3C3
      C3007474740074747400CDCDCD00CDCDCD00F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F7DFDF00F7DFDF00BF000000BF000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F0006967FB006967FB006663F9006663F900706DFB00706D
      FB00807EFF00807EFF007E7BFF007E7BFF007C79FF007C79FF007977FF007977
      FF005E5CF7005E5CF7004744EF004744EF004240EE004240EE00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F9FCFE00F9FCFE0052C2F40052C2F40044BCF00044BCF00040B9ED0040B9
      ED003BB5EA003BB5EA0037B2E70037B2E7004885A0004885A000CBD5D800CBD5
      D800F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000DDDDDD00DDDDDD009A9A9A009A9A
      9A00CCCCCC00CCCCCC00C78B4E00C78B4E00F9F4ED00F9F4ED00FEE8D800FEE8
      D800FEE8D700FEE8D700FDE5D300FDE5D300FCE4D100FCE4D100FAE0C700FAE0
      C700F9DDC300F9DDC300FAF4ED00FAF4ED00C7854A00C7854A00C3C3C300C3C3
      C3007474740074747400CDCDCD00CDCDCD00F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F7DFDF00F7DFDF00BF000000BF000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F0006967FB006967FB006663F9006663F900706DFB00706D
      FB00807EFF00807EFF007E7BFF007E7BFF007C79FF007C79FF007977FF007977
      FF005E5CF7005E5CF7004744EF004744EF004240EE004240EE00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F9FCFE00F9FCFE0052C2F40052C2F40044BCF00044BCF00040B9ED0040B9
      ED003BB5EA003BB5EA0037B2E70037B2E7004885A0004885A000CBD5D800CBD5
      D800F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000CECECE00CECE
      CE008787870087878700C5894C00C5894C00F9F4EF00F9F4EF00FEE7D700FEE7
      D700FDE7D500FDE7D500FCE6D200FCE6D200FBE1CC00FBE1CC00F8DCC200F8DC
      C200F6DABD00F6DABD00FAF4EF00FAF4EF00C4834800C4834800616161006161
      6100BCBCBC00BCBCBC00F0F0F000F0F0F000F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F00080808000808080008080800080808000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000716EFD00716EFD006E6BFC006E6BFC007774FD007774FD008682FF008682
      FF007673FC007673FC006462F8006462F800605DF700605DF7006D6AFA006D6A
      FA007B79FF007B79FF00605DF700605DF7004845EF004845EF004341EE004341
      EE00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000E7F6FD00E7F6FD004DC2F6004DC2F6004ABFF3004ABFF30046BDF10046BD
      F10042BAEE0042BAEE003DB6EB003DB6EB0038B0E50038B0E5006A828C006A82
      8C00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000CECECE00CECE
      CE008787870087878700C5894C00C5894C00F9F4EF00F9F4EF00FEE7D700FEE7
      D700FDE7D500FDE7D500FCE6D200FCE6D200FBE1CC00FBE1CC00F8DCC200F8DC
      C200F6DABD00F6DABD00FAF4EF00FAF4EF00C4834800C4834800616161006161
      6100BCBCBC00BCBCBC00F0F0F000F0F0F000F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F00080808000808080008080800080808000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000716EFD00716EFD006E6BFC006E6BFC007774FD007774FD008682FF008682
      FF007673FC007673FC006462F8006462F800605DF700605DF7006D6AFA006D6A
      FA007B79FF007B79FF00605DF700605DF7004845EF004845EF004341EE004341
      EE00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000E7F6FD00E7F6FD004DC2F6004DC2F6004ABFF3004ABFF30046BDF10046BD
      F10042BAEE0042BAEE003DB6EB003DB6EB0038B0E50038B0E5006A828C006A82
      8C00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000FBFBFB00FBFBFB00C68C4F00C68C4F00F9F4F000F9F4F000FCE6D300FCE6
      D300FDE7D300FDE7D300FBE3CD00FBE3CD00FAE0C800FAE0C800F5D6BB00F5D6
      BB00F3D4B500F3D4B500F8F4F000F8F4F000C4854A00C4854A00F9F9F900F9F9
      F900F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0007673FF007673
      FF007471FE007471FE007D7AFE007D7AFE008A87FF008A87FF007C79FD007C79
      FD006C69FB006C69FB006361F9006361F9005F5CF7005F5CF700615EF800615E
      F8006E6CFA006E6CFA007D7AFF007D7AFF00615FF700615FF7004946F0004946
      F0004441EE004441EE00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000EBF7FC00EBF7FC0050C4F70050C4F7004EC3F6004EC3F6004BC0F4004BC0
      F40048BEF20048BEF20043BBEF0043BBEF003BA9DA003BA9DA003A758F003A75
      8F00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000FBFBFB00FBFBFB00C68C4F00C68C4F00F9F4F000F9F4F000FCE6D300FCE6
      D300FDE7D300FDE7D300FBE3CD00FBE3CD00FAE0C800FAE0C800F5D6BB00F5D6
      BB00F3D4B500F3D4B500F8F4F000F8F4F000C4854A00C4854A00F9F9F900F9F9
      F900F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000000000000000000000000000000000000000000000000000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0007673FF007673
      FF007471FE007471FE007D7AFE007D7AFE008A87FF008A87FF007C79FD007C79
      FD006C69FB006C69FB006361F9006361F9005F5CF7005F5CF700615EF800615E
      F8006E6CFA006E6CFA007D7AFF007D7AFF00615FF700615FF7004946F0004946
      F0004441EE004441EE00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000EBF7FC00EBF7FC0050C4F70050C4F7004EC3F6004EC3F6004BC0F4004BC0
      F40048BEF20048BEF20043BBEF0043BBEF003BA9DA003BA9DA003A758F003A75
      8F00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000C88D5100C88D5100F9F5F100F9F5F100FCE3CF00FCE3
      CF00FCE4CF00FCE4CF00FAE1CA00FAE1CA00F9DDC400F9DDC400F4E9DF00F4E9
      DF00F7F2EC00F7F2EC00F5EFE900F5EFE900C3804800C3804800F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F00080808000808080008080800080808000F0F0F000F0F0
      F0000000000000000000DFDFDF00DFDFDF000000000000000000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0007774FF007774
      FF007A77FF007A77FF00817EFF00817EFF00817EFE00817EFE007471FD007471
      FD006C69FB006C69FB00F0F0F000F0F0F000F0F0F000F0F0F000605DF700605D
      F700625FF800625FF8006F6DFB006F6DFB007E7CFF007E7CFF00625FF800625F
      F8004A47F0004A47F0004542EE004542EE00F0F0F000F0F0F000F0F0F000F0F0
      F000FAFCFE00FAFCFE0052C5F80052C5F80050C4F80050C4F8004FC4F7004FC4
      F7004CC1F5004CC1F5004ABDEF004ABDEF00050F1300050F1300122026001220
      2600F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000C88D5100C88D5100F9F5F100F9F5F100FCE3CF00FCE3
      CF00FCE4CF00FCE4CF00FAE1CA00FAE1CA00F9DDC400F9DDC400F4E9DF00F4E9
      DF00F7F2EC00F7F2EC00F5EFE900F5EFE900C3804800C3804800F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F00080808000808080008080800080808000F0F0F000F0F0
      F0000000000000000000DFDFDF00DFDFDF000000000000000000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0007774FF007774
      FF007A77FF007A77FF00817EFF00817EFF00817EFE00817EFE007471FD007471
      FD006C69FB006C69FB00F0F0F000F0F0F000F0F0F000F0F0F000605DF700605D
      F700625FF800625FF8006F6DFB006F6DFB007E7CFF007E7CFF00625FF800625F
      F8004A47F0004A47F0004542EE004542EE00F0F0F000F0F0F000F0F0F000F0F0
      F000FAFCFE00FAFCFE0052C5F80052C5F80050C4F80050C4F8004FC4F7004FC4
      F7004CC1F5004CC1F5004ABDEF004ABDEF00050F1300050F1300122026001220
      2600F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000C88D5200C88D5200F9F5F100F9F5F100FCE3CD00FCE3
      CD00FBE3CD00FBE3CD00F9E0C800F9E0C800F8DCC200F8DCC200FDFBF800FDFB
      F800FCE6CD00FCE6CD00E2B68400E2B68400D5A88400D5A88400F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F00000000000000000000000000000000000BFBFBF00BFBFBF00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F0007774FF007774FF007A77FF007A77FF007976FE007976FE00726FFD00726F
      FD00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000615EF800615EF8006461F8006461F8006A68F9006A68F9005451F3005451
      F3004F4DF2004F4DF200F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F0004F9ABA004F9ABA004497BB004497BB003D96BD003D96
      BD003788AC003788AC0024526800245268000000000000000000262626002626
      2600F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000C88D5200C88D5200F9F5F100F9F5F100FCE3CD00FCE3
      CD00FBE3CD00FBE3CD00F9E0C800F9E0C800F8DCC200F8DCC200FDFBF800FDFB
      F800FCE6CD00FCE6CD00E2B68400E2B68400D5A88400D5A88400F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000
      0000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F00000000000000000000000000000000000BFBFBF00BFBFBF00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F0007774FF007774FF007A77FF007A77FF007976FE007976FE00726FFD00726F
      FD00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000615EF800615EF8006461F8006461F8006A68F9006A68F9005451F3005451
      F3004F4DF2004F4DF200F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F0004F9ABA004F9ABA004497BB004497BB003D96BD003D96
      BD003788AC003788AC0024526800245268000000000000000000262626002626
      2600F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000C5884D00C5884D00F7F2EC00F7F2EC00F8F4EE00F8F4
      EE00F8F3ED00F8F3ED00F8F3ED00F8F3ED00F8F2EC00F8F2EC00F2E6D700F2E6
      D700E2B27D00E2B27D00DB956900DB956900FDFBFA00FDFBFA00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F0007774FF007774FF007774FF007774FF00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000625FF800625FF8005D5BF7005D5BF7005956F5005956
      F500F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F00061616100616161000303030003030300000000000000
      0000000000000000000000000000000000000606060006060600B0B4B600B0B4
      B600F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000C5884D00C5884D00F7F2EC00F7F2EC00F8F4EE00F8F4
      EE00F8F3ED00F8F3ED00F8F3ED00F8F3ED00F8F2EC00F8F2EC00F2E6D700F2E6
      D700E2B27D00E2B27D00DB956900DB956900FDFBFA00FDFBFA00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F0007774FF007774FF007774FF007774FF00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000625FF800625FF8005D5BF7005D5BF7005956F5005956
      F500F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F00061616100616161000303030003030300000000000000
      0000000000000000000000000000000000000606060006060600B0B4B600B0B4
      B600F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000E8CEB900E8CEB900D7AA7C00D7AA7C00C88C5000C88C
      5000C88C4F00C88C4F00CA915500CA915500CB905500CB905500C5894D00C589
      4D00DDAF8D00DDAF8D00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0006360F8006360F800F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000E3E6E800E3E6E8009BA6AC009BA6
      AC005D5D5D005D5D5D007B8285007B828500D8DCDE00D8DCDE00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000E8CEB900E8CEB900D7AA7C00D7AA7C00C88C5000C88C
      5000C88C4F00C88C4F00CA915500CA915500CB905500CB905500C5894D00C589
      4D00DDAF8D00DDAF8D00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0006360F8006360F800F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000E3E6E800E3E6E8009BA6AC009BA6
      AC005D5D5D005D5D5D007B8285007B828500D8DCDE00D8DCDE00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF098128FF098128FF02791CFF02791CFFDEEEE1FFDEEEE1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFFAFAFAFFE2E2E2FFE2E2
      E2FFCECECEFFCECECEFF587B91FF587B91FF407393FF407393FF4E819FFF4E81
      9FFF588CA9FF588CA9FF5189ABFF5189ABFF4886A9FF4886A9FF4180A2FF4180
      A2FF3A7599FF3A7599FF587B91FF587B91FFCDCDCDFFCDCDCDFFE1E1E1FFE1E1
      E1FFFAFAFAFFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF359DD9FF359D
      D9FF3099D8FF3099D8FF2B94D7FF2B94D7FF2790D6FF2790D6FF228CD5FF228C
      D5FF1D88D4FF1D88D4FF1984D3FF1984D3FF1480D2FF1480D2FF107BD1FF107B
      D1FF0D78D1FF0D78D1FF0975D0FF0975D0FF0672CFFF0672CFFF036FCFFF036F
      CFFF006DCEFF006DCEFFFFFFFFFFFFFFFFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFCFCFCFFFCFCFCFFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF098128FF098128FF02791CFF02791CFFDEEEE1FFDEEEE1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFFAFAFAFFE2E2E2FFE2E2
      E2FFCECECEFFCECECEFF587B91FF587B91FF407393FF407393FF4E819FFF4E81
      9FFF588CA9FF588CA9FF5189ABFF5189ABFF4886A9FF4886A9FF4180A2FF4180
      A2FF3A7599FF3A7599FF587B91FF587B91FFCDCDCDFFCDCDCDFFE1E1E1FFE1E1
      E1FFFAFAFAFFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF359DD9FF359D
      D9FF3099D8FF3099D8FF2B94D7FF2B94D7FF2790D6FF2790D6FF228CD5FF228C
      D5FF1D88D4FF1D88D4FF1984D3FF1984D3FF1480D2FF1480D2FF107BD1FF107B
      D1FF0D78D1FF0D78D1FF0975D0FF0975D0FF0672CFFF0672CFFF036FCFFF036F
      CFFF006DCEFF006DCEFFFFFFFFFFFFFFFFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFCFCFCFFFCFCFCFFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF0A8731FF0A8731FF41A05DFF41A05DFF198835FF198835FFD8EBDCFFD8EB
      DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFCFCFCFFF0F0F0FFF0F0
      F0FFE6E6E6FFE6E6E6FF4288ACFF4288ACFFA1E5FEFFA1E5FEFF9ADEF8FF9ADE
      F8FF93D8F3FF93D8F3FF6ABCDCFF6ABCDCFF5DBBE0FF5DBBE0FF5CC7EFFF5CC7
      EFFF5DD0FAFF5DD0FAFF4288ACFF4288ACFFE6E6E6FFE6E6E6FFF0F0F0FFF0F0
      F0FFFCFCFCFFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3CA3DAFF3CA3
      DAFFBCEBFAFFBCEBFAFFBCEBFCFFBCEBFCFFBFEEFEFFBFEEFEFFC6F4FFFFC6F4
      FFFFCEF8FFFFCEF8FFFFD3FAFFFFD3FAFFFFD0F8FFFFD0F8FFFFC7F2FFFFC7F2
      FFFFBAE9FCFFBAE9FCFFB3E4F9FFB3E4F9FFB0E2F8FFB0E2F8FFB0E2F8FFB0E2
      F8FF0470CFFF0470CFFFFFFFFFFFFFFFFFFFF0F0F0FFF0F0F0FF000000FF0000
      00FF000000FF000000FFCFCFB7FFCFCFB7FFFFFF80FFFFFF80FFFFFF80FFFFFF
      80FFFFFF80FFFFFF80FFFBFB7BFFFBFB7BFFFFFF00FFFFFF00FFC8C8A8FFC8C8
      A8FFFFFF00FFFFFF00FFC8C8A8FFC8C8A8FFFFFF00FFFFFF00FF000000FF0000
      00FF000000FF000000FFF0F0F0FFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF0A8731FF0A8731FF41A05DFF41A05DFF198835FF198835FFD8EBDCFFD8EB
      DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFCFCFCFFF0F0F0FFF0F0
      F0FFE6E6E6FFE6E6E6FF4288ACFF4288ACFFA1E5FEFFA1E5FEFF9ADEF8FF9ADE
      F8FF93D8F3FF93D8F3FF6ABCDCFF6ABCDCFF5DBBE0FF5DBBE0FF5CC7EFFF5CC7
      EFFF5DD0FAFF5DD0FAFF4288ACFF4288ACFFE6E6E6FFE6E6E6FFF0F0F0FFF0F0
      F0FFFCFCFCFFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3CA3DAFF3CA3
      DAFFBCEBFAFFBCEBFAFFBCEBFCFFBCEBFCFFBFEEFEFFBFEEFEFFC6F4FFFFC6F4
      FFFFCEF8FFFFCEF8FFFFD3FAFFFFD3FAFFFFD0F8FFFFD0F8FFFFC7F2FFFFC7F2
      FFFFBAE9FCFFBAE9FCFFB3E4F9FFB3E4F9FFB0E2F8FFB0E2F8FFB0E2F8FFB0E2
      F8FF0470CFFF0470CFFFFFFFFFFFFFFFFFFFF0F0F0FFF0F0F0FF000000FF0000
      00FF000000FF000000FFCFCFB7FFCFCFB7FFFFFF80FFFFFF80FFFFFF80FFFFFF
      80FFFFFF80FFFFFF80FFFBFB7BFFFBFB7BFFFFFF00FFFFFF00FFC8C8A8FFC8C8
      A8FFFFFF00FFFFFF00FFC8C8A8FFC8C8A8FFFFFF00FFFFFF00FF000000FF0000
      00FF000000FF000000FFF0F0F0FFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF209650FF209650FF1A9048FF1A9048FF148E42FF148E42FF0F8A3AFF0F8A
      3AFF389E5CFF389E5CFF7EC095FF7EC095FF44A260FF44A260FF168832FF1688
      32FFD5E9D9FFD5E9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8BC0DAFF8BC0DAFF69B0D3FF69B0D3FF69B0D3FF69B0
      D3FF3782A5FF3782A5FF4BAED4FF4BAED4FF327699FF327699FF69B0D3FF69B0
      D3FF69B0D3FF69B0D3FF8BC0DAFF8BC0DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42A8DBFF42A8
      DBFFBFECFBFFBFECFBFF58CFF5FF58CFF5FF40B0ECFF40B0ECFF4DBAEFFF4DBA
      EFFF59C2EFFF59C2EFFF5FC6EFFF5FC6EFFF5BC4EFFF5BC4EFFF4BB6EFFF4BB6
      EFFF36A5E6FF36A5E6FF299AE1FF299AE1FF37B8EEFF37B8EEFFB1E3F8FFB1E3
      F8FF0874D0FF0874D0FFFFFFFFFFFFFFFFFF000000FF000000FFFFFF00FFFFFF
      00FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF
      80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFEFEF6FFFEFEF6FFFE0E05FFFE0E0
      5FFFCACA49FFCACA49FFE0E05FFFE0E05FFF808080FF808080FFE3E32BFFE3E3
      2BFF808080FF808080FFF0F0F0FFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF209650FF209650FF1A9048FF1A9048FF148E42FF148E42FF0F8A3AFF0F8A
      3AFF389E5CFF389E5CFF7EC095FF7EC095FF44A260FF44A260FF168832FF1688
      32FFD5E9D9FFD5E9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8BC0DAFF8BC0DAFF69B0D3FF69B0D3FF69B0D3FF69B0
      D3FF3782A5FF3782A5FF4BAED4FF4BAED4FF327699FF327699FF69B0D3FF69B0
      D3FF69B0D3FF69B0D3FF8BC0DAFF8BC0DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF42A8DBFF42A8
      DBFFBFECFBFFBFECFBFF58CFF5FF58CFF5FF40B0ECFF40B0ECFF4DBAEFFF4DBA
      EFFF59C2EFFF59C2EFFF5FC6EFFF5FC6EFFF5BC4EFFF5BC4EFFF4BB6EFFF4BB6
      EFFF36A5E6FF36A5E6FF299AE1FF299AE1FF37B8EEFF37B8EEFFB1E3F8FFB1E3
      F8FF0874D0FF0874D0FFFFFFFFFFFFFFFFFF000000FF000000FFFFFF00FFFFFF
      00FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF
      80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFEFEF6FFFEFEF6FFFE0E05FFFE0E0
      5FFFCACA49FFCACA49FFE0E05FFFE0E05FFF808080FF808080FFE3E32BFFE3E3
      2BFF808080FF808080FFF0F0F0FFF0F0F0FFFFFFFFFFFFFFFFFFCDCDCDFFCDCD
      CDFF575757FF575757FF5E5E5EFF5E5E5EFFB2B2B2FFB2B2B2FF575757FF5757
      57FF279A59FF279A59FF8FCAA8FF8FCAA8FF8CC8A4FF8CC8A4FF89C5A0FF89C5
      A0FF87C49DFF87C49DFF68B584FF68B584FF81C196FF81C196FF46A464FF46A4
      64FF11842FFF11842FFFCFE6D4FFCFE6D4FFFFFFFFFFFFFFFFFFE5EEF2FFE5EE
      F2FFCCDDE6FFCCDDE6FFE5EFF4FFE5EFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF3E8EB1FF3E8EB1FF5DD0FAFF5DD0FAFF327699FF327699FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF48ADDCFF48AD
      DCFFC1EEFBFFC1EEFBFF5ED3F7FF5ED3F7FF6BDBFCFF6BDBFCFF7EE5FFFF7EE5
      FFFF8FEDFFFF8FEDFFFF97F2FFFF97F2FFFF93EDFFFF93EDFFFF7BDFFFFF7BDF
      FFFF5ACCF8FF5ACCF8FF45BEEFFF45BEEFFF3BBAEEFF3BBAEEFFB3E3F9FFB3E3
      F9FF0D78D1FF0D78D1FFFFFFFFFFFFFFFFFF000000FF000000FFEFEF6FFFEFEF
      6FFFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF
      80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFE0E05FFFE0E0
      5FFFE0E05FFFE0E05FFFE0E05FFFE0E05FFFC0C03FFFC0C03FFFC0C03FFFC0C0
      3FFFB0B03FFFB0B03FFFF0F0F0FFF0F0F0FFFFFFFFFFFFFFFFFFCDCDCDFFCDCD
      CDFF575757FF575757FF5E5E5EFF5E5E5EFFB2B2B2FFB2B2B2FF575757FF5757
      57FF279A59FF279A59FF8FCAA8FF8FCAA8FF8CC8A4FF8CC8A4FF89C5A0FF89C5
      A0FF87C49DFF87C49DFF68B584FF68B584FF81C196FF81C196FF46A464FF46A4
      64FF11842FFF11842FFFCFE6D4FFCFE6D4FFFFFFFFFFFFFFFFFFE5EEF2FFE5EE
      F2FFCCDDE6FFCCDDE6FFE5EFF4FFE5EFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF3E8EB1FF3E8EB1FF5DD0FAFF5DD0FAFF327699FF327699FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF48ADDCFF48AD
      DCFFC1EEFBFFC1EEFBFF5ED3F7FF5ED3F7FF6BDBFCFF6BDBFCFF7EE5FFFF7EE5
      FFFF8FEDFFFF8FEDFFFF97F2FFFF97F2FFFF93EDFFFF93EDFFFF7BDFFFFF7BDF
      FFFF5ACCF8FF5ACCF8FF45BEEFFF45BEEFFF3BBAEEFF3BBAEEFFB3E3F9FFB3E3
      F9FF0D78D1FF0D78D1FFFFFFFFFFFFFFFFFF000000FF000000FFEFEF6FFFEFEF
      6FFFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF
      80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFE0E05FFFE0E0
      5FFFE0E05FFFE0E05FFFE0E05FFFE0E05FFFC0C03FFFC0C03FFFC0C03FFFC0C0
      3FFFB0B03FFFB0B03FFFF0F0F0FFF0F0F0FFFFFFFFFFFFFFFFFF434343FF4343
      43FF626262FF626262FF6A6A6AFF6A6A6AFF2F2F2FFF2F2F2FFF6D6D6DFF6D6D
      6DFF2F9E61FF2F9E61FF93CDACFF93CDACFF6DB98DFF6DB98DFF69B788FF69B7
      88FF64B584FF64B584FF5FB27EFF5FB27EFF65B481FF65B481FF82C197FF82C1
      97FF3A9F5AFF3A9F5AFF028026FF028026FF6AA0BBFF6AA0BBFF387EA2FF387E
      A2FF387EA2FF387EA2FF387EA2FF387EA2FF6AA0BBFF6AA0BBFFFFFFFFFFFFFF
      FFFF3F8DB1FF3F8DB1FF5CCBF4FF5CCBF4FF32769AFF32769AFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4DB2DDFF4DB2
      DDFFC3EFFBFFC3EFFBFF64D6F8FF64D6F8FF4BB6ECFF4BB6ECFF59BDEFFF59BD
      EFFF95EBFFFF95EBFFFF2F97DDFF2F97DDFF4C82ABFF4C82ABFF84E1FFFF84E1
      FFFF40A9E9FF40A9E9FF319FE1FF319FE1FF41BEEFFF41BEEFFFB4E5F9FFB4E5
      F9FF127DD2FF127DD2FFFFFFFFFFFFFFFFFF000000FF000000FFFFFF80FFFFFF
      80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF
      80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFE0E05FFFE0E0
      5FFFE0E05FFFE0E05FFFE0E05FFFE0E05FFFC0C03FFFC0C03FFFC0C03FFFC0C0
      3FFFC0C03FFFC0C03FFFF0F0F0FFF0F0F0FFFFFFFFFFFFFFFFFF434343FF4343
      43FF626262FF626262FF6A6A6AFF6A6A6AFF2F2F2FFF2F2F2FFF6D6D6DFF6D6D
      6DFF2F9E61FF2F9E61FF93CDACFF93CDACFF6DB98DFF6DB98DFF69B788FF69B7
      88FF64B584FF64B584FF5FB27EFF5FB27EFF65B481FF65B481FF82C197FF82C1
      97FF3A9F5AFF3A9F5AFF028026FF028026FF6AA0BBFF6AA0BBFF387EA2FF387E
      A2FF387EA2FF387EA2FF387EA2FF387EA2FF6AA0BBFF6AA0BBFFFFFFFFFFFFFF
      FFFF3F8DB1FF3F8DB1FF5CCBF4FF5CCBF4FF32769AFF32769AFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4DB2DDFF4DB2
      DDFFC3EFFBFFC3EFFBFF64D6F8FF64D6F8FF4BB6ECFF4BB6ECFF59BDEFFF59BD
      EFFF95EBFFFF95EBFFFF2F97DDFF2F97DDFF4C82ABFF4C82ABFF84E1FFFF84E1
      FFFF40A9E9FF40A9E9FF319FE1FF319FE1FF41BEEFFF41BEEFFFB4E5F9FFB4E5
      F9FF127DD2FF127DD2FFFFFFFFFFFFFFFFFF000000FF000000FFFFFF80FFFFFF
      80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF
      80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFE0E05FFFE0E0
      5FFFE0E05FFFE0E05FFFE0E05FFFE0E05FFFC0C03FFFC0C03FFFC0C03FFFC0C0
      3FFFC0C03FFFC0C03FFFF0F0F0FFF0F0F0FF2E4254FF2E4254FF2C4153FF2C41
      53FF2A3F51FF2A3F51FF283E50FF283E50FF263C4FFF263C4FFF243B4EFF243B
      4EFF35A269FF35A269FF95CEAFFF95CEAFFF93CDACFF93CDACFF90CBA9FF90CB
      A9FF8FCBA7FF8FCBA7FF72BB8FFF72BB8FFF89C7A0FF89C7A0FF44A466FF44A4
      66FF078533FF078533FFF0F8F3FFF0F8F3FF4C94B7FF4C94B7FFA2E6FCFFA2E6
      FCFF79C8E6FF79C8E6FF5CC6EEFF5CC6EEFF4C94B7FF4C94B7FFFFFFFFFFFFFF
      FFFF408EB1FF408EB1FF5CC6EDFF5CC6EDFF34799DFF34799DFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52B7DEFF52B7
      DEFFC6F0FCFFC6F0FCFF69D9F8FF69D9F8FF7BE2FDFF7BE2FDFF90E8FFFF90E8
      FFFF99E9FFFF99E9FFFF319FDFFF319FDFFF538BB2FF538BB2FF8AE2FFFF8AE2
      FFFF69D0F9FF69D0F9FF4FC5F1FF4FC5F1FF45C1F0FF45C1F0FFB6E7F9FFB6E7
      F9FF1783D3FF1783D3FFFFFFFFFFFFFFFFFF000000FF000000FFFFFF80FFFFFF
      80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF
      80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFE0E05FFFE0E0
      5FFFE0E05FFFE0E05FFFE0E05FFFE0E05FFFC0C03FFFC0C03FFFC0C03FFFC0C0
      3FFFC0C03FFFC0C03FFFF0F0F0FFF0F0F0FF2E4254FF2E4254FF2C4153FF2C41
      53FF2A3F51FF2A3F51FF283E50FF283E50FF263C4FFF263C4FFF243B4EFF243B
      4EFF35A269FF35A269FF95CEAFFF95CEAFFF93CDACFF93CDACFF90CBA9FF90CB
      A9FF8FCBA7FF8FCBA7FF72BB8FFF72BB8FFF89C7A0FF89C7A0FF44A466FF44A4
      66FF078533FF078533FFF0F8F3FFF0F8F3FF4C94B7FF4C94B7FFA2E6FCFFA2E6
      FCFF79C8E6FF79C8E6FF5CC6EEFF5CC6EEFF4C94B7FF4C94B7FFFFFFFFFFFFFF
      FFFF408EB1FF408EB1FF5CC6EDFF5CC6EDFF34799DFF34799DFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52B7DEFF52B7
      DEFFC6F0FCFFC6F0FCFF69D9F8FF69D9F8FF7BE2FDFF7BE2FDFF90E8FFFF90E8
      FFFF99E9FFFF99E9FFFF319FDFFF319FDFFF538BB2FF538BB2FF8AE2FFFF8AE2
      FFFF69D0F9FF69D0F9FF4FC5F1FF4FC5F1FF45C1F0FF45C1F0FFB6E7F9FFB6E7
      F9FF1783D3FF1783D3FFFFFFFFFFFFFFFFFF000000FF000000FFFFFF80FFFFFF
      80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF
      80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFE0E05FFFE0E0
      5FFFE0E05FFFE0E05FFFE0E05FFFE0E05FFFC0C03FFFC0C03FFFC0C03FFFC0C0
      3FFFC0C03FFFC0C03FFFF0F0F0FFF0F0F0FF447EB7FF447EB7FF94BFDEFF94BF
      DEFF8FBCDCFF8FBCDCFF8BB9DAFF8BB9DAFF86B5D9FF86B5D9FF82B2D7FF82B2
      D7FF3BA46DFF3BA46DFF36A26CFF36A26CFF32A066FF32A066FF2E9C60FF2E9C
      60FF53AE7AFF53AE7AFF90CBA9FF90CBA9FF4DAA72FF4DAA72FF178F44FF178F
      44FF945623FF945623FFFFFFFFFFFFFFFFFF75ADC9FF75ADC9FF529ABEFF529A
      BEFF6DB3D6FF6DB3D6FF529ABEFF529ABEFF75ADC9FF75ADC9FFFFFFFFFFFFFF
      FFFF4490B3FF4490B3FF5DBFE5FF5DBFE5FF377CA1FF377CA1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE5EEF2FFE5EEF2FFCCDDE6FFCCDDE6FFE5EEF2FFE5EE
      F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF57BBDFFF57BB
      DFFFC7F1FCFFC7F1FCFF6EDCF9FF6EDCF9FF55BBEDFF55BBEDFF60BDEFFF60BD
      EFFF9BE7FFFF9BE7FFFF34A6E2FF34A6E2FF4AA4E1FF4AA4E1FF90E2FFFF90E2
      FFFF48ADE9FF48ADE9FF37A4E3FF37A4E3FF48C4F0FF48C4F0FFB8E8F9FFB8E8
      F9FF1D88D4FF1D88D4FFFFFFFFFFFFFFFFFF000000FF000000FFFFFF80FFFFFF
      80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF
      80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFE0E05FFFE0E0
      5FFFE0E05FFFE0E05FFFE0E05FFFE0E05FFFC0C03FFFC0C03FFFC0C03FFFC0C0
      3FFFC0C03FFFC0C03FFFF0F0F0FFF0F0F0FF447EB7FF447EB7FF94BFDEFF94BF
      DEFF8FBCDCFF8FBCDCFF8BB9DAFF8BB9DAFF86B5D9FF86B5D9FF82B2D7FF82B2
      D7FF3BA46DFF3BA46DFF36A26CFF36A26CFF32A066FF32A066FF2E9C60FF2E9C
      60FF53AE7AFF53AE7AFF90CBA9FF90CBA9FF4DAA72FF4DAA72FF178F44FF178F
      44FF945623FF945623FFFFFFFFFFFFFFFFFF75ADC9FF75ADC9FF529ABEFF529A
      BEFF6DB3D6FF6DB3D6FF529ABEFF529ABEFF75ADC9FF75ADC9FFFFFFFFFFFFFF
      FFFF4490B3FF4490B3FF5DBFE5FF5DBFE5FF377CA1FF377CA1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE5EEF2FFE5EEF2FFCCDDE6FFCCDDE6FFE5EEF2FFE5EE
      F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF57BBDFFF57BB
      DFFFC7F1FCFFC7F1FCFF6EDCF9FF6EDCF9FF55BBEDFF55BBEDFF60BDEFFF60BD
      EFFF9BE7FFFF9BE7FFFF34A6E2FF34A6E2FF4AA4E1FF4AA4E1FF90E2FFFF90E2
      FFFF48ADE9FF48ADE9FF37A4E3FF37A4E3FF48C4F0FF48C4F0FFB8E8F9FFB8E8
      F9FF1D88D4FF1D88D4FFFFFFFFFFFFFFFFFF000000FF000000FFFFFF80FFFFFF
      80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF
      80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFE0E05FFFE0E0
      5FFFE0E05FFFE0E05FFFE0E05FFFE0E05FFFC0C03FFFC0C03FFFC0C03FFFC0C0
      3FFFC0C03FFFC0C03FFFF0F0F0FFF0F0F0FF4C85BDFF4C85BDFF9AC3E1FF9AC3
      E1FF77AFD6FF77AFD6FF71ABD3FF71ABD3FF6CA7D1FF6CA7D1FF66A3CFFF66A3
      CFFF619FCDFF619FCDFF5B9BCBFF5B9BCBFF5698CAFF5698CAFF78ACD4FF78AC
      D4FF349C5FFF349C5FFF58B280FF58B280FF269755FF269755FFE4D2BAFFE4D2
      BAFF9F5926FF9F5926FFFFFFFFFFFFFFFFFF9DC0D2FF9DC0D2FF9EC4D7FF9EC4
      D7FFFFFFFFFFFFFFFFFF9EC4D7FF9EC4D7FF9DC0D2FF9DC0D2FFFFFFFFFFFFFF
      FFFF4693B5FF4693B5FF5FB9DDFF5FB9DDFF3B82A5FF3B82A5FFFFFFFFFFFFFF
      FFFF6AA0BBFF6AA0BBFF387EA2FF387EA2FF387EA2FF387EA2FF387EA2FF387E
      A2FF6AA0BBFF6AA0BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5BBFE0FF5BBF
      E0FFC8F3FCFFC8F3FCFF74DFF9FF74DFF9FF89E6FDFF89E6FDFF95E7FFFF95E7
      FFFF9AE5FFFF9AE5FFFFAAEEFFFFAAEEFFFFA8EDFFFFA8EDFFFF99E3FFFF99E3
      FFFF73D5F9FF73D5F9FF58CCF3FF58CCF3FF4EC8F1FF4EC8F1FFBBE9FAFFBBE9
      FAFF238DD5FF238DD5FFFFFFFFFFFFFFFFFF808080FF808080FFFFFF80FFFFFF
      80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF
      80FFFFFF80FFFFFF80FFFBFB7BFFFBFB7BFFFFFF00FFFFFF00FFC8C8A8FFC8C8
      A8FFFFFF00FFFFFF00FFC8C8A8FFC8C8A8FFEFEF0FFFEFEF0FFFC0C03FFFC0C0
      3FFFC0C03FFFC0C03FFFF0F0F0FFF0F0F0FF4C85BDFF4C85BDFF9AC3E1FF9AC3
      E1FF77AFD6FF77AFD6FF71ABD3FF71ABD3FF6CA7D1FF6CA7D1FF66A3CFFF66A3
      CFFF619FCDFF619FCDFF5B9BCBFF5B9BCBFF5698CAFF5698CAFF78ACD4FF78AC
      D4FF349C5FFF349C5FFF58B280FF58B280FF269755FF269755FFE4D2BAFFE4D2
      BAFF9F5926FF9F5926FFFFFFFFFFFFFFFFFF9DC0D2FF9DC0D2FF9EC4D7FF9EC4
      D7FFFFFFFFFFFFFFFFFF9EC4D7FF9EC4D7FF9DC0D2FF9DC0D2FFFFFFFFFFFFFF
      FFFF4693B5FF4693B5FF5FB9DDFF5FB9DDFF3B82A5FF3B82A5FFFFFFFFFFFFFF
      FFFF6AA0BBFF6AA0BBFF387EA2FF387EA2FF387EA2FF387EA2FF387EA2FF387E
      A2FF6AA0BBFF6AA0BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5BBFE0FF5BBF
      E0FFC8F3FCFFC8F3FCFF74DFF9FF74DFF9FF89E6FDFF89E6FDFF95E7FFFF95E7
      FFFF9AE5FFFF9AE5FFFFAAEEFFFFAAEEFFFFA8EDFFFFA8EDFFFF99E3FFFF99E3
      FFFF73D5F9FF73D5F9FF58CCF3FF58CCF3FF4EC8F1FF4EC8F1FFBBE9FAFFBBE9
      FAFF238DD5FF238DD5FFFFFFFFFFFFFFFFFF808080FF808080FFFFFF80FFFFFF
      80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF80FFFFFF
      80FFFFFF80FFFFFF80FFFBFB7BFFFBFB7BFFFFFF00FFFFFF00FFC8C8A8FFC8C8
      A8FFFFFF00FFFFFF00FFC8C8A8FFC8C8A8FFEFEF0FFFEFEF0FFFC0C03FFFC0C0
      3FFFC0C03FFFC0C03FFFF0F0F0FFF0F0F0FF538AC2FF538AC2FFA0C9E3FFA0C9
      E3FF81B5D9FF81B5D9FF7AB1D7FF7AB1D7FF75ADD5FF75ADD5FF6FA9D2FF6FA9
      D2FF69A5D0FF69A5D0FF63A1CEFF63A1CEFF5E9DCCFF5E9DCCFF7DB0D6FF7DB0
      D6FF3AA067FF3AA067FF2F9E63FF2F9E63FFE7D8C3FFE7D8C3FFFFF6EFFFFFF6
      EFFFA45F2BFFA45F2BFFFFFFFFFFFFFFFFFFE7F0F4FFE7F0F4FF5896B4FF5896
      B4FFFFFFFFFFFFFFFFFF5896B4FF5896B4FFE7F0F4FFE7F0F4FFFFFFFFFFFFFF
      FFFF4D97B9FF4D97B9FF64B8D9FF64B8D9FF4187AAFF4187AAFFFFFFFFFFFFFF
      FFFF4C94B7FF4C94B7FFA2E6FCFFA2E6FCFF79C8E6FF79C8E6FF5CC6EEFF5CC6
      EEFF4C94B7FF4C94B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FC2E1FF5FC2
      E1FFC9F3FCFFC9F3FCFFCBF3FDFFCBF3FDFFD4F6FEFFD4F6FEFFD7F6FFFFD7F6
      FFFFD8F4FFFFD8F4FFFFE0F8FFFFE0F8FFFFDFF8FFFFDFF8FFFFDAF5FFFFDAF5
      FFFFCDF1FCFFCDF1FCFFC2EDFAFFC2EDFAFFBDEBFAFFBDEBFAFFBDEBFAFFBDEB
      FAFF2A93D6FF2A93D6FFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFFFFFF00FFFFFF
      00FFEFFFDFFFEFFFDFFF808080FF808080FFF0F0F0FFF0F0F0FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFEFEF1FFFEFEF
      1FFF808080FF808080FFF0F0F0FFF0F0F0FF538AC2FF538AC2FFA0C9E3FFA0C9
      E3FF81B5D9FF81B5D9FF7AB1D7FF7AB1D7FF75ADD5FF75ADD5FF6FA9D2FF6FA9
      D2FF69A5D0FF69A5D0FF63A1CEFF63A1CEFF5E9DCCFF5E9DCCFF7DB0D6FF7DB0
      D6FF3AA067FF3AA067FF2F9E63FF2F9E63FFE7D8C3FFE7D8C3FFFFF6EFFFFFF6
      EFFFA45F2BFFA45F2BFFFFFFFFFFFFFFFFFFE7F0F4FFE7F0F4FF5896B4FF5896
      B4FFFFFFFFFFFFFFFFFF5896B4FF5896B4FFE7F0F4FFE7F0F4FFFFFFFFFFFFFF
      FFFF4D97B9FF4D97B9FF64B8D9FF64B8D9FF4187AAFF4187AAFFFFFFFFFFFFFF
      FFFF4C94B7FF4C94B7FFA2E6FCFFA2E6FCFF79C8E6FF79C8E6FF5CC6EEFF5CC6
      EEFF4C94B7FF4C94B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FC2E1FF5FC2
      E1FFC9F3FCFFC9F3FCFFCBF3FDFFCBF3FDFFD4F6FEFFD4F6FEFFD7F6FFFFD7F6
      FFFFD8F4FFFFD8F4FFFFE0F8FFFFE0F8FFFFDFF8FFFFDFF8FFFFDAF5FFFFDAF5
      FFFFCDF1FCFFCDF1FCFFC2EDFAFFC2EDFAFFBDEBFAFFBDEBFAFFBDEBFAFFBDEB
      FAFF2A93D6FF2A93D6FFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFFFFFF00FFFFFF
      00FFEFFFDFFFEFFFDFFF808080FF808080FFF0F0F0FFF0F0F0FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFEFEF1FFFEFEF
      1FFF808080FF808080FFF0F0F0FFF0F0F0FF5A8FC8FF5A8FC8FFDDB37AFFDDB3
      7AFFD09952FFD09952FFCE934FFFCE934FFFCB8D4BFFCB8D4BFFC88748FFC887
      48FFC48044FFC48044FFC27941FFC27941FFBF733DFFBF733DFFCB8E65FFCB8E
      65FFB8773EFFB8773EFFEED3BBFFEED3BBFFFFF2E7FFFFF2E7FFFFF6F0FFFFF6
      F0FFA96530FFA96530FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8AB7CDFF8AB7
      CDFF74A9C4FF74A9C4FF8AB7CDFF8AB7CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF559EBFFF559EBFFF78C5E2FF78C5E2FF458CAFFF458CAFFFFFFFFFFFFFFF
      FFFF7BB3CFFF7BB3CFFF59A1C5FF59A1C5FF6DB3D6FF6DB3D6FF59A1C5FF59A1
      C5FF7BB3CFFF7BB3CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF60C3E1FF60C3
      E1FF88A0A8FF88A0A8FF919191FF919191FF8E8E8EFF8E8E8EFF59B9DCFF59B9
      DCFF54B8DFFF54B8DFFF50B5DEFF50B5DEFF4CB1DDFF4CB1DDFF48ADDCFF48AD
      DCFF45A8D7FF45A8D7FF777777FF777777FF757575FF757575FF647D8DFF647D
      8DFF3099D8FF3099D8FFFFFFFFFFFFFFFFFF808080FF808080FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FF808080FF808080FF00FFFFFF00FFFFFFFFFF00FFFFFF
      00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF
      00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF5A8FC8FF5A8FC8FFDDB37AFFDDB3
      7AFFD09952FFD09952FFCE934FFFCE934FFFCB8D4BFFCB8D4BFFC88748FFC887
      48FFC48044FFC48044FFC27941FFC27941FFBF733DFFBF733DFFCB8E65FFCB8E
      65FFB8773EFFB8773EFFEED3BBFFEED3BBFFFFF2E7FFFFF2E7FFFFF6F0FFFFF6
      F0FFA96530FFA96530FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8AB7CDFF8AB7
      CDFF74A9C4FF74A9C4FF8AB7CDFF8AB7CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF559EBFFF559EBFFF78C5E2FF78C5E2FF458CAFFF458CAFFFFFFFFFFFFFFF
      FFFF7BB3CFFF7BB3CFFF59A1C5FF59A1C5FF6DB3D6FF6DB3D6FF59A1C5FF59A1
      C5FF7BB3CFFF7BB3CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF60C3E1FF60C3
      E1FF88A0A8FF88A0A8FF919191FF919191FF8E8E8EFF8E8E8EFF59B9DCFF59B9
      DCFF54B8DFFF54B8DFFF50B5DEFF50B5DEFF4CB1DDFF4CB1DDFF48ADDCFF48AD
      DCFF45A8D7FF45A8D7FF777777FF777777FF757575FF757575FF647D8DFF647D
      8DFF3099D8FF3099D8FFFFFFFFFFFFFFFFFF808080FF808080FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FF808080FF808080FF00FFFFFF00FFFFFFFFFF00FFFFFF
      00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF
      00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF6093CCFF6093CCFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBC7C42FFBC7C42FFEFD7C1FFEFD7C1FFEED5BEFFEED5BEFFE2BFA2FFE2BF
      A2FFB47542FFB47542FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8F1F6FFE8F1
      F6FF4A92B5FF4A92B5FFE8F1F6FFE8F1F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF5DA5C5FF5DA5C5FF92D7F2FF92D7F2FF4A92B5FF4A92B5FFFFFFFFFFFFFF
      FFFFA4C8DAFFA4C8DAFFA5CBDEFFA5CBDEFFFFFFFFFFFFFFFFFFA5CBDEFFA5CB
      DEFFA4C8DAFFA4C8DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF999999FF999999FFC6C6C6FFC6C6C6FF949494FF949494FF8F8F8FFF8F8F
      8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF7D7D7DFF7D7D7DFF7C7C7CFF7C7C7CFFABABABFFABABABFF757575FF7575
      75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF00FFFFFF00FF
      FFFFE7E7E7FFE7E7E7FF808080FF808080FFF0F0F0FFF0F0F0FFFFFF00FFFFFF
      00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF
      00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF
      00FFFFFF00FFFFFF00FFF0F0F0FFF0F0F0FF6093CCFF6093CCFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBC7C42FFBC7C42FFEFD7C1FFEFD7C1FFEED5BEFFEED5BEFFE2BFA2FFE2BF
      A2FFB47542FFB47542FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8F1F6FFE8F1
      F6FF4A92B5FF4A92B5FFE8F1F6FFE8F1F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF5DA5C5FF5DA5C5FF92D7F2FF92D7F2FF4A92B5FF4A92B5FFFFFFFFFFFFFF
      FFFFA4C8DAFFA4C8DAFFA5CBDEFFA5CBDEFFFFFFFFFFFFFFFFFFA5CBDEFFA5CB
      DEFFA4C8DAFFA4C8DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF999999FF999999FFC6C6C6FFC6C6C6FF949494FF949494FF8F8F8FFF8F8F
      8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF7D7D7DFF7D7D7DFF7C7C7CFF7C7C7CFFABABABFFABABABFF757575FF7575
      75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF00FFFFFF00FF
      FFFFE7E7E7FFE7E7E7FF808080FF808080FFF0F0F0FFF0F0F0FFFFFF00FFFFFF
      00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF
      00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF
      00FFFFFF00FFFFFF00FFF0F0F0FFF0F0F0FF6697D0FF6697D0FFB1D5E8FFB1D5
      E8FF97C5E1FF97C5E1FF93C2E0FF93C2E0FF8EBEDEFF8EBEDEFF89BBDCFF89BB
      DCFF84B7DAFF84B7DAFF7DB3D8FF7DB3D8FF77AFD6FF77AFD6FF91BDDDFF91BD
      DDFFC08245FFC08245FFBD7E43FFBD7E43FFBA7A40FFBA7A40FFB8783FFFB878
      3FFFE1C7B0FFE1C7B0FFFFFFFFFFFFFFFFFF7BB1CCFF7BB1CCFF4F97BBFF4F97
      BBFF4F97BBFF4F97BBFF89B9D1FF89B9D1FFBDD8E6FFBDD8E6FFEDF4F8FFEDF4
      F8FF62AAC9FF62AAC9FF99DDF7FF99DDF7FF4F97BBFF4F97BBFFFFFFFFFFFFFF
      FFFFE8F1F6FFE8F1F6FF65A4C3FF65A4C3FFFFFFFFFFFFFFFFFF65A4C3FF65A4
      C3FFE8F1F6FFE8F1F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9D9D9DFF9D9D9DFFC4C4C4FFC4C4C4FFA1A1A1FFA1A1A1FF939393FF9393
      93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF828282FF828282FF898989FF898989FFA9A9A9FFA9A9A9FF787878FF7878
      78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FF808080FF808080FF8080
      80FF808080FF808080FFC1D9D9FFC1D9D9FF00FFFFFF00FFFFFFF0F0F0FFF0F0
      F0FF00FFFFFF00FFFFFFE9E9E9FFE9E9E9FFFFFF00FFFFFF00FFFFFF00FFFFFF
      00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF6697D0FF6697D0FFB1D5E8FFB1D5
      E8FF97C5E1FF97C5E1FF93C2E0FF93C2E0FF8EBEDEFF8EBEDEFF89BBDCFF89BB
      DCFF84B7DAFF84B7DAFF7DB3D8FF7DB3D8FF77AFD6FF77AFD6FF91BDDDFF91BD
      DDFFC08245FFC08245FFBD7E43FFBD7E43FFBA7A40FFBA7A40FFB8783FFFB878
      3FFFE1C7B0FFE1C7B0FFFFFFFFFFFFFFFFFF7BB1CCFF7BB1CCFF4F97BBFF4F97
      BBFF4F97BBFF4F97BBFF89B9D1FF89B9D1FFBDD8E6FFBDD8E6FFEDF4F8FFEDF4
      F8FF62AAC9FF62AAC9FF99DDF7FF99DDF7FF4F97BBFF4F97BBFFFFFFFFFFFFFF
      FFFFE8F1F6FFE8F1F6FF65A4C3FF65A4C3FFFFFFFFFFFFFFFFFF65A4C3FF65A4
      C3FFE8F1F6FFE8F1F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9D9D9DFF9D9D9DFFC4C4C4FFC4C4C4FFA1A1A1FFA1A1A1FF939393FF9393
      93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF828282FF828282FF898989FF898989FFA9A9A9FFA9A9A9FF787878FF7878
      78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FF808080FF808080FF8080
      80FF808080FF808080FFC1D9D9FFC1D9D9FF00FFFFFF00FFFFFFF0F0F0FFF0F0
      F0FF00FFFFFF00FFFFFFE9E9E9FFE9E9E9FFFFFF00FFFFFF00FFFFFF00FFFFFF
      00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF6B9BD4FF6B9BD4FFB5D7EAFFB5D7
      EAFFB2D6E9FFB2D6E9FFB0D3E8FFB0D3E8FFACD1E7FFACD1E7FFA9CFE5FFA9CF
      E5FFA5CCE4FFA5CCE4FFA0C9E3FFA0C9E3FF9CC5E1FF9CC5E1FF98C2E0FF98C2
      E0FF3574ADFF3574ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE1EEF4FFE1EEF4FFA1C8DCFFA1C8DCFF6AAAC9FF6AAAC9FF569EC1FF569E
      C1FF5EA6C5FF5EA6C5FF9ADEF8FF9ADEF8FF569EC1FF569EC1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF96C2D8FF96C2D8FF82B7D1FF82B7D1FF96C2D8FF96C2
      D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA1A1A1FFA1A1A1FFBABABAFFBABABAFFBFBFBFFFBFBFBFFF989898FF9898
      98FF949494FF949494FF919191FF919191FF8E8E8EFF8E8E8EFF8A8A8AFF8A8A
      8AFF878787FF878787FFA8A8A8FFA8A8A8FF9E9E9EFF9E9E9EFF7C7C7CFF7C7C
      7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FF808080FF808080FF00FFFFFF00FFFFFFD7F7F7FFD7F7F7FFF0F0F0FFF0F0
      F0FF808080FF808080FFEFEFEFFFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF6B9BD4FF6B9BD4FFB5D7EAFFB5D7
      EAFFB2D6E9FFB2D6E9FFB0D3E8FFB0D3E8FFACD1E7FFACD1E7FFA9CFE5FFA9CF
      E5FFA5CCE4FFA5CCE4FFA0C9E3FFA0C9E3FF9CC5E1FF9CC5E1FF98C2E0FF98C2
      E0FF3574ADFF3574ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE1EEF4FFE1EEF4FFA1C8DCFFA1C8DCFF6AAAC9FF6AAAC9FF569EC1FF569E
      C1FF5EA6C5FF5EA6C5FF9ADEF8FF9ADEF8FF569EC1FF569EC1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF96C2D8FF96C2D8FF82B7D1FF82B7D1FF96C2D8FF96C2
      D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA1A1A1FFA1A1A1FFBABABAFFBABABAFFBFBFBFFFBFBFBFFF989898FF9898
      98FF949494FF949494FF919191FF919191FF8E8E8EFF8E8E8EFF8A8A8AFF8A8A
      8AFF878787FF878787FFA8A8A8FFA8A8A8FF9E9E9EFF9E9E9EFF7C7C7CFF7C7C
      7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FF808080FF808080FF00FFFFFF00FFFFFFD7F7F7FFD7F7F7FFF0F0F0FFF0F0
      F0FF808080FF808080FFEFEFEFFFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF7DA8DBFF7DA8DBFF6B9BD4FF6B9B
      D4FF6899D2FF6899D2FF6496CFFF6496CFFF5F93CCFF5F93CCFF5A8FC8FF5A8F
      C8FF548BC3FF548BC3FF4F87BFFF4F87BFFF4983BBFF4983BBFF437DB6FF437D
      B6FF729EC8FF729EC8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF66ADCCFF66ADCCFF9EE2FBFF9EE2FBFF4A92B5FF4A92B5FFA2CCE1FFA2CC
      E1FFC4DFEDFFC4DFEDFFE3F0F6FFE3F0F6FF61A9CCFF61A9CCFFEBF4F9FFEBF4
      F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA4A4A4FFA4A4A4FFA1A1A1FFA1A1A1FFC4C4C4FFC4C4C4FFBEBEBEFFBEBE
      BEFFA1A1A1FFA1A1A1FF969696FF969696FF939393FF939393FF979797FF9797
      97FFAEAEAEFFAEAEAEFFAEAEAEFFAEAEAEFF848484FF848484FF818181FF8181
      81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFEFFFDFEFEFFF808080FF8080
      80FFF0F0F0FFF0F0F0FF808080FF808080FF00FFFFFF00FFFFFFF0F0F0FFF0F0
      F0FFDFEFEFFFDFEFEFFF808080FF808080FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF7DA8DBFF7DA8DBFF6B9BD4FF6B9B
      D4FF6899D2FF6899D2FF6496CFFF6496CFFF5F93CCFF5F93CCFF5A8FC8FF5A8F
      C8FF548BC3FF548BC3FF4F87BFFF4F87BFFF4983BBFF4983BBFF437DB6FF437D
      B6FF729EC8FF729EC8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF66ADCCFF66ADCCFF9EE2FBFF9EE2FBFF4A92B5FF4A92B5FFA2CCE1FFA2CC
      E1FFC4DFEDFFC4DFEDFFE3F0F6FFE3F0F6FF61A9CCFF61A9CCFFEBF4F9FFEBF4
      F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA4A4A4FFA4A4A4FFA1A1A1FFA1A1A1FFC4C4C4FFC4C4C4FFBEBEBEFFBEBE
      BEFFA1A1A1FFA1A1A1FF969696FF969696FF939393FF939393FF979797FF9797
      97FFAEAEAEFFAEAEAEFFAEAEAEFFAEAEAEFF848484FF848484FF818181FF8181
      81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFEFFFDFEFEFFF808080FF8080
      80FFF0F0F0FFF0F0F0FF808080FF808080FF00FFFFFF00FFFFFFF0F0F0FFF0F0
      F0FFDFEFEFFFDFEFEFFF808080FF808080FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF75BEDEFF75BEDEFFA5E9FFFFA5E9FFFF6CB2D5FF6CB2D5FFADD4E7FFADD4
      E7FF7EBCDAFF7EBCDAFF6CB2D5FF6CB2D5FF6CB2D5FF6CB2D5FF6CB2D5FF6CB2
      D5FF92C6E0FF92C6E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFA4A4A4FFA4A4A4FFA2A2A2FFA2A2A2FFBCBCBCFFBCBC
      BCFFCACACAFFCACACAFFCCCCCCFFCCCCCCFFCACACAFFCACACAFFC2C2C2FFC2C2
      C2FFADADADFFADADADFF8C8C8CFF8C8C8CFF898989FF898989FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FF808080FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FF808080FF808080FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF75BEDEFF75BEDEFFA5E9FFFFA5E9FFFF6CB2D5FF6CB2D5FFADD4E7FFADD4
      E7FF7EBCDAFF7EBCDAFF6CB2D5FF6CB2D5FF6CB2D5FF6CB2D5FF6CB2D5FF6CB2
      D5FF92C6E0FF92C6E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFA4A4A4FFA4A4A4FFA2A2A2FFA2A2A2FFBCBCBCFFBCBC
      BCFFCACACAFFCACACAFFCCCCCCFFCCCCCCFFCACACAFFCACACAFFC2C2C2FFC2C2
      C2FFADADADFFADADADFF8C8C8CFF8C8C8CFF898989FF898989FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FF808080FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FF808080FF808080FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF97CBE4FF97CBE4FF74B9DCFF74B9DCFF97CBE4FF97CBE4FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5A5A5FFA5A5A5FFA3A3A3FFA3A3
      A3FFA0A0A0FFA0A0A0FF9D9D9DFF9D9D9DFF9A9A9AFF9A9A9AFF979797FF9797
      97FF949494FF949494FF909090FF909090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FF808080FF808080FF00FFFFFF00FFFFFFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF97CBE4FF97CBE4FF74B9DCFF74B9DCFF97CBE4FF97CBE4FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5A5A5FFA5A5A5FFA3A3A3FFA3A3
      A3FFA0A0A0FFA0A0A0FF9D9D9DFF9D9D9DFF9A9A9AFF9A9A9AFF979797FF9797
      97FF949494FF949494FF909090FF909090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FF808080FF808080FF00FFFFFF00FFFFFFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0004060200040602000406020004060
      2000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000349CD9FF349CD9FF2F98D8FF2F98
      D8FF2A93D7FF2A93D7FF268FD6FF268FD6FF218BD5FF218BD5FF1C87D4FF1C87
      D4FF1883D3FF1883D3FF137ED2FF137ED2FF107AD1FF107AD1FF0D77D1FF0D77
      D1FF007A2DFF007A2DFF02791CFF02791CFF036ECCFF036ECCFF006CCEFF006C
      CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0004060200040602000406020004060
      2000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000707070007070700070707000707070007070
      7000707070007070700070707000707070007070700070707000707070007070
      7000707070007070700070707000707070007070700070707000707070007070
      70007070700070707000F0F0F000F0F0F000349CD9FF349CD9FF2F98D8FF2F98
      D8FF2A93D7FF2A93D7FF268FD6FF268FD6FF218BD5FF218BD5FF1C87D4FF1C87
      D4FF1883D3FF1883D3FF137ED2FF137ED2FF107AD1FF107AD1FF0D77D1FF0D77
      D1FF007A2DFF007A2DFF02791CFF02791CFF036ECCFF036ECCFF006CCEFF006C
      CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000A4A0A000A4A0A000A4A0A000A4A0
      A000A4A0A000A4A0A00080808000808080004080400040804000406020004060
      2000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFF868686FF868686FF868686FF868686FFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000C5927C00C5927C00C5927C00C18E7A00BE8B7900BC89
      7700BC897700BA877600B7847500B4817400B4817400B17E7200AE7B7100AE7B
      7100AB786F00A7756D00A7756D00A5726C00A3706B00A16E6B009E6C6A009C69
      67009C69670070707000F0F0F000F0F0F0003BA2DAFF3BA2DAFFBBEBFAFFBBEB
      FAFFBBEBFCFFBBEBFCFFBEEEFEFFBEEEFEFFC5F4FFFFC5F4FFFFCEF8FFFFCEF8
      FFFFD3FAFFFFD3FAFFFFD0F8FFFFD0F8FFFFC7F2FFFFC7F2FFFFB9E9FCFFB9E9
      FCFF0E8A39FF0E8A39FF41A05DFF41A05DFF218F48FF218F48FF046FCBFF046F
      CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000A4A0A000A4A0A000A4A0A000A4A0
      A000A4A0A000A4A0A00080808000808080004080400040804000406020004060
      2000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFF868686FF868686FF868686FF868686FFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF0F0F000F0F0F000F0F0F000F0F0
      F0008181810090837D00C5927C00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCC
      CC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFD1
      B1009C69670070707000F0F0F000F0F0F0003BA2DAFF3BA2DAFFBBEBFAFFBBEB
      FAFFBBEBFCFFBBEBFCFFBEEEFEFFBEEEFEFFC5F4FFFFC5F4FFFFCEF8FFFFCEF8
      FFFFD3FAFFFFD3FAFFFFD0F8FFFFD0F8FFFFC7F2FFFFC7F2FFFFB9E9FCFFB9E9
      FCFF0E8A39FF0E8A39FF41A05DFF41A05DFF218F48FF218F48FF046FCBFF046F
      CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F000F0F0F000A4A0A000A4A0
      A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
      A000A4A0A000A4A0A000408060004080600040A0600040A0600040A0600040A0
      6000408020004080200040602000406020004060200040602000406020004060
      20000060200000602000F0F0F000F0F0F000FF00FFFFFF00FFFFFF00FFFFFF00
      FFFF868686FF868686FFFFFFFFFFFFFFFFFFE3E3E3FFE3E3E3FF868686FF8686
      86FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFF008080FF008080FFFF00FFFFFF00FFFFF0F0F000F0F0F000737373007373
      73006A709800A087A000C9998A00D9D2CE00FFE9D400FFE8D100FFE7D000FFE6
      CD00FFE4C800FFE2C500FFE1C400FFDFC100FFDFBF00FFDDBB00FFDCB900FFDA
      B500FFD9B400FFD7AE00FFD5AC00FFD3A800FFD3A800FFD2A500FFD2A200FFCF
      AB009C69670070707000F0F0F000F0F0F00041A7DBFF41A7DBFFBEECFBFFBEEC
      FBFF57CFF5FF57CFF5FF3FAFECFF3FAFECFF4CB9EFFF4CB9EFFF58C1EFFF58C1
      EFFF1F9650FF1F9650FF1A9048FF1A9048FF138E42FF138E42FF0E8A3AFF0E8A
      3AFF389E5CFF389E5CFF7EC095FF7EC095FF44A260FF44A260FF017A3DFF017A
      3DFFF8FBF9FFF8FBF9FFFFFFFFFFFFFFFFFFF0F0F000F0F0F000A4A0A000A4A0
      A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0
      A000A4A0A000A4A0A000408060004080600040A0600040A0600040A0600040A0
      6000408020004080200040602000406020004060200040602000406020004060
      20000060200000602000F0F0F000F0F0F000FF00FFFFFF00FFFFFF00FFFFFF00
      FFFF868686FF868686FFFFFFFFFFFFFFFFFFE3E3E3FFE3E3E3FF868686FF8686
      86FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFF008080FF008080FFFF00FFFFFF00FFFFF0F0F000F0F0F0004C6AB1004C6A
      B100506AB000857DA400A087A000D9D2CE00FFEAD600FFEAD400FFE8D100FFE7
      D000FFE6CD00FFE4C800FFE2C500FFE1C400FFDFC100FFDFBF00FFDDBB00FFDC
      B900FFDAB500FFD9B400FFD7AE00FFD5AC00FFD3A800FFD3A800FFD2A500FFD0
      AE009C69670070707000F0F0F000F0F0F00041A7DBFF41A7DBFFBEECFBFFBEEC
      FBFF57CFF5FF57CFF5FF3FAFECFF3FAFECFF4CB9EFFF4CB9EFFF58C1EFFF58C1
      EFFF1F9650FF1F9650FF1A9048FF1A9048FF138E42FF138E42FF0E8A3AFF0E8A
      3AFF389E5CFF389E5CFF7EC095FF7EC095FF44A260FF44A260FF017A3DFF017A
      3DFFF8FBF9FFF8FBF9FFFFFFFFFFFFFFFFFFA4A0A000A4A0A000A4A0A000A4A0
      A000C0C0C000C0C0C000F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FB
      FF0040A0600040A0600080A0600080A0600080C0A00080C0A00080C0A00080C0
      A00080C0A00080C0A00080C0800080C0800080C0800080C0800080A0600080A0
      600040602000406020000060200000602000FF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFF868686FF868686FFB2B2B2FFB2B2B2FF868686FF8686
      86FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF008080FF0080
      80FF0FDCECFF0FDCECFFFF00FFFFFF00FFFFF0F0F000F0F0F00042A6FE005EC4
      FF003B87E300506AB000857DA400A087A000FFDDCA00FFEAD600FFEAD400FFE8
      D100FFE7D000FFE5CC00FFE4C800FFE2C500FFE1C400FFDFC100FFDFBF00FFDD
      BB00FFDCB900FFDAB500FFD9B400FFD7AE00FFD5AC00FFD3A800FFD3A800FFD0
      AE009C69670070707000F0F0F000F0F0F00047ACDCFF47ACDCFFC0EEFBFFC0EE
      FBFF5DD3F7FF5DD3F7FF6ADBFCFF6ADBFCFF7DE5FFFF7DE5FFFF8EEDFFFF8EED
      FFFF279A59FF279A59FF8FCAA8FF8FCAA8FF8CC8A4FF8CC8A4FF89C5A0FF89C5
      A0FF87C49DFF87C49DFF68B584FF68B584FF81C196FF81C196FF46A464FF46A4
      64FF269042FF269042FFF6FAF7FFF6FAF7FFA4A0A000A4A0A000A4A0A000A4A0
      A000C0C0C000C0C0C000F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FB
      FF0040A0600040A0600080A0600080A0600080C0A00080C0A00080C0A00080C0
      A00080C0A00080C0A00080C0800080C0800080C0800080C0800080A0600080A0
      600040602000406020000060200000602000FF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFF868686FF868686FFB2B2B2FFB2B2B2FF868686FF8686
      86FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF008080FF0080
      80FF0FDCECFF0FDCECFFFF00FFFFFF00FFFFF0F0F000F0F0F000F0F0F0005EC4
      FF0042A6FE003B87E300506AB000857DA400A59DA300EFD9CD00FDE6D500FFEA
      D400FFE8D100FFE7D000FFE5CC00FFE4C800FFE2C500FFE1C400FFDFC100FFDF
      BF00FFDDBB00FFDCB900FFDAB500FFD9B400FFD7AE00FFD5AC00FFD3A800FFD1
      B1009C69670070707000F0F0F000F0F0F00047ACDCFF47ACDCFFC0EEFBFFC0EE
      FBFF5DD3F7FF5DD3F7FF6ADBFCFF6ADBFCFF7DE5FFFF7DE5FFFF8EEDFFFF8EED
      FFFF279A59FF279A59FF8FCAA8FF8FCAA8FF8CC8A4FF8CC8A4FF89C5A0FF89C5
      A0FF87C49DFF87C49DFF68B584FF68B584FF81C196FF81C196FF46A464FF46A4
      64FF269042FF269042FFF6FAF7FFF6FAF7FFA4A0A000A4A0A000C0DCC000C0DC
      C000E5F1F100E5F1F100C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DC
      C000C0DCC000C0DCC00080A0600080A0600080A0600080A0600040A0600040A0
      60004080400040804000408040004080400040A0600040A0600080C0800080C0
      800040A0600040A060004060200040602000FF00FFFFFF00FFFFFF00FFFFFF00
      FFFF868686FF868686FFFFFFFFFFFFFFFFFFE3E3E3FFE3E3E3FF868686FF8686
      86FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF008080FF008080FF2BB5E1FF2BB5
      E1FF008080FF008080FFFF00FFFFFF00FFFFF0F0F000F0F0F000F0F0F000F0F0
      F0005EC4FF0042A6FE003B87E300506AB000857DA400A59DA300F9E1CD00FFEC
      D700FFEAD400FFE8D100FFE7D000FFE5CC00FFE4C800FFE2C500FFE1C400FFDF
      C100FFDFBF00FFDDBB00FFDCB900FFD9B400FFD9B400FFD7AE00FFD5AC00FFD1
      B1009C69670070707000F0F0F000F0F0F0004CB1DDFF4CB1DDFFC2EFFBFFC2EF
      FBFF63D6F8FF63D6F8FF4AB5ECFF4AB5ECFF58BCEFFF58BCEFFF94EBFFFF94EB
      FFFF2F9E61FF2F9E61FF93CDACFF93CDACFF6DB98DFF6DB98DFF69B788FF69B7
      88FF64B584FF64B584FF5FB27EFF5FB27EFF65B481FF65B481FF82C197FF82C1
      97FF3A9F5AFF3A9F5AFF058128FF058128FFA4A0A000A4A0A000C0DCC000C0DC
      C000E5F1F100E5F1F100C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DC
      C000C0DCC000C0DCC00080A0600080A0600080A0600080A0600040A0600040A0
      60004080400040804000408040004080400040A0600040A0600080C0800080C0
      800040A0600040A060004060200040602000FF00FFFFFF00FFFFFF00FFFFFF00
      FFFF868686FF868686FFFFFFFFFFFFFFFFFFE3E3E3FFE3E3E3FF868686FF8686
      86FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF008080FF008080FF2BB5E1FF2BB5
      E1FF008080FF008080FFFF00FFFFFF00FFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F0005EC4FF0042A6FE003B87E300506AB000857DA400A087A000EFD9
      CD00FFEAD600FFEAD400FFE8D100FFE7D000F9E1CD00FFE3C800FFE2C500FFE1
      C400FFDFC100FFDFBF00FFDDBB00FFDBB800FFD9B400FFD9B400FFD7AE00FFD3
      B4009E6B680070707000F0F0F000F0F0F0004CB1DDFF4CB1DDFFC2EFFBFFC2EF
      FBFF63D6F8FF63D6F8FF4AB5ECFF4AB5ECFF58BCEFFF58BCEFFF94EBFFFF94EB
      FFFF2F9E61FF2F9E61FF93CDACFF93CDACFF6DB98DFF6DB98DFF69B788FF69B7
      88FF64B584FF64B584FF5FB27EFF5FB27EFF65B481FF65B481FF82C197FF82C1
      97FF3A9F5AFF3A9F5AFF058128FF058128FFA4A0A000A4A0A000E2F0ED00E2F0
      ED00C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DC
      C000C0DCC000C0DCC000C0C0C000C0C0C00040A0600040A0600040A0600040A0
      6000C0DCC000C0DCC000A4A0A000A4A0A0004080400040804000408040004080
      400040602000406020004060200040602000FF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFF868686FF868686FFC0C0C0FFC0C0C0FF767676FF7676
      76FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFF008080FF008080FF1BC2DEFF1BC2DEFF008080FF0080
      80FF00CCCCFF00CCCCFFFF00FFFFFF00FFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F00074BDE8005EC4FF003B87E300506AB000857DA400D9D2
      CE00FCE8D800FFECD700EFD9CD00E6C6B400F7D8C000F7D8C000FADCC200FFE2
      C500FFE1C400FFDFC100FFDFBF00FFDDBB00FFDBB800FFD9B400FFD9B400FFD5
      B7009E6B680070707000F0F0F000F0F0F00051B6DEFF51B6DEFFC5F0FCFFC5F0
      FCFF68D9F8FF68D9F8FF7AE2FDFF7AE2FDFF8FE8FFFF8FE8FFFF98E9FFFF98E9
      FFFF35A269FF35A269FF95CEAFFF95CEAFFF93CDACFF93CDACFF90CBA9FF90CB
      A9FF8FCBA7FF8FCBA7FF72BB8FFF72BB8FFF89C7A0FF89C7A0FF44A466FF44A4
      66FF0A8836FF0A8836FFFEFFFEFFFEFFFEFFA4A0A000A4A0A000E2F0ED00E2F0
      ED00C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DC
      C000C0DCC000C0DCC000C0C0C000C0C0C00040A0600040A0600040A0600040A0
      6000C0DCC000C0DCC000A4A0A000A4A0A0004080400040804000408040004080
      400040602000406020004060200040602000FF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFF868686FF868686FFC0C0C0FFC0C0C0FF767676FF7676
      76FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFF008080FF008080FF1BC2DEFF1BC2DEFF008080FF0080
      80FF00CCCCFF00CCCCFFFF00FFFFFF00FFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000CEA58D0079CBFC0042A6FE003B87E300857DA400BFBB
      B800E2C9C300C3959100C9998A00D5AC9800DCB29800D5AC9800D0B0A200D5AC
      9800F7D8C000FFE2C500FFDFC100FFDFBF00FFDCB900FFDBB800FFD9B400FFD6
      BA00A16E6B0070707000F0F0F000F0F0F00051B6DEFF51B6DEFFC5F0FCFFC5F0
      FCFF68D9F8FF68D9F8FF7AE2FDFF7AE2FDFF8FE8FFFF8FE8FFFF98E9FFFF98E9
      FFFF35A269FF35A269FF95CEAFFF95CEAFFF93CDACFF93CDACFF90CBA9FF90CB
      A9FF8FCBA7FF8FCBA7FF72BB8FFF72BB8FFF89C7A0FF89C7A0FF44A466FF44A4
      66FF0A8836FF0A8836FFFEFFFEFFFEFFFEFFA4A0A000A4A0A000F0FBFF00F0FB
      FF00F0FBFF00F0FBFF00C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DC
      C000C0DCC000C0DCC000C0C0C000C0C0C000C0C0C000C0C0C00080A0800080A0
      8000F0FBFF00F0FBFF00A4A0A000A4A0A000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FF00FFFFFF00FFFFFF00FFFFFF00
      FFFF868686FF868686FFFFFFFFFFFFFFFFFFDDDDDDFFDDDDDDFF868686FF8686
      86FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFF008080FF008080FF1BC2DEFF1BC2DEFF008080FF008080FF00CCCCFF00CC
      CCFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000DAA78600DFDFDF0079CBFC00B9BEC4008F909100AA8A
      8A00CEA58D00FFD5AB00FFEFC400FFFCCF00FFFFD900FFFFD500FFFFDA00F9E1
      CD00C6A09200E6C6B400FFE1C400FFDFC100FFDFBF00FFDCB900FFDBB800FFD6
      BA00A3706B0070707000F0F0F000F0F0F00056BADFFF56BADFFFC7F1FCFFC7F1
      FCFF6DDCF9FF6DDCF9FF54BAEDFF54BAEDFF5FBCEFFF5FBCEFFF9AE7FFFF9AE7
      FFFF3BA46DFF3BA46DFF35A26DFF35A26DFF32A167FF32A167FF2D9C61FF2D9C
      61FF53AE7AFF53AE7AFF90CBA9FF90CBA9FF4DAA72FF4DAA72FF158E45FF158E
      45FFFEFFFEFFFEFFFEFFFFFFFFFFFFFFFFFFA4A0A000A4A0A000F0FBFF00F0FB
      FF00F0FBFF00F0FBFF00C0DCC000C0DCC000C0DCC000C0DCC000C0DCC000C0DC
      C000C0DCC000C0DCC000C0C0C000C0C0C000C0C0C000C0C0C00080A0800080A0
      8000F0FBFF00F0FBFF00A4A0A000A4A0A000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FF00FFFFFF00FFFFFF00FFFFFF00
      FFFF868686FF868686FFFFFFFFFFFFFFFFFFDDDDDDFFDDDDDDFF868686FF8686
      86FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFF008080FF008080FF1BC2DEFF1BC2DEFF008080FF008080FF00CCCCFF00CC
      CCFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000DCA98800E5E4E200FFF6EE00FBEFE700C6A7A800D69F
      8C00FFE7BB00FFFAC900FFFCC900FFFFD500FFFFDA00FFFFE400FFFFE700FFFF
      FE00F8F1F000BF918A00F7D8C000FFE1C400FFDFC100FFDFBF00FFDCB900FFD8
      BE00A5726C0070707000F0F0F000F0F0F00056BADFFF56BADFFFC7F1FCFFC7F1
      FCFF6DDCF9FF6DDCF9FF54BAEDFF54BAEDFF5FBCEFFF5FBCEFFF9AE7FFFF9AE7
      FFFF3BA46DFF3BA46DFF35A26DFF35A26DFF32A167FF32A167FF2D9C61FF2D9C
      61FF53AE7AFF53AE7AFF90CBA9FF90CBA9FF4DAA72FF4DAA72FF158E45FF158E
      45FFFEFFFEFFFEFFFEFFFFFFFFFFFFFFFFFFC0C0C000C0C0C000F0FBFF00F0FB
      FF00F0FBFF00F0FBFF00C0DCC000C0DCC000C0DCC000C0DCC000F0FBFF00F0FB
      FF00C0DCC000C0DCC000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000F0FBFF00F0FBFF0040A0600040A060004080400040804000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFF868686FF868686FFC0C0C0FFC0C0C0FF868686FF8686
      86FFFF00FFFFFF00FFFF008080FF008080FF008080FF008080FF008080FF0080
      80FF0FDCECFF0FDCECFF008080FF008080FF00CCCCFF00CCCCFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000DCA98800E8E7E600FFF6EE00FBEFE700CDA69300FFD5
      AB00FFFAC900FFE9B600FFFFCC00FFFFD900FFFFE400FFFFEB00FFFFF900FFFF
      FF00FFFFFF00F1E4BE00C6A09200FFE2C500FFE1C400FFDFBF00FFDFBF00FFD8
      BE00AB786F0070707000F0F0F000F0F0F0005ABEE0FF5ABEE0FFC8F3FCFFC8F3
      FCFF73DFF9FF73DFF9FF88E6FDFF88E6FDFF94E7FFFF94E7FFFF99E5FFFF99E5
      FFFFA9EEFFFFA9EEFFFFA7EDFFFFA7EDFFFF98E3FFFF98E3FFFF72D5F9FF72D5
      F9FF32A26CFF32A26CFF58B280FF58B280FF269755FF269755FF228CD5FF228C
      D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C000C0C0C000F0FBFF00F0FB
      FF00F0FBFF00F0FBFF00C0DCC000C0DCC000C0DCC000C0DCC000F0FBFF00F0FB
      FF00C0DCC000C0DCC000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000F0FBFF00F0FBFF0040A0600040A060004080400040804000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFF868686FF868686FFC0C0C0FFC0C0C0FF868686FF8686
      86FFFF00FFFFFF00FFFF008080FF008080FF008080FF008080FF008080FF0080
      80FF0FDCECFF0FDCECFF008080FF008080FF00CCCCFF00CCCCFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000E1AE8A00E8E7E600FFF8F200EFD9CD00DCBBA600FFFA
      C900FFE2B000FFE5B300FFFFCC00FFFFD900FFFFE400FFFFF100FFFFFF00FFFF
      F900FFFFE700FFFFD500B78A7D00FFE9C800FFE2C500FFE1C300FFDFBF00FFDA
      C200AB786F0070707000F0F0F000F0F0F0005ABEE0FF5ABEE0FFC8F3FCFFC8F3
      FCFF73DFF9FF73DFF9FF88E6FDFF88E6FDFF94E7FFFF94E7FFFF99E5FFFF99E5
      FFFFA9EEFFFFA9EEFFFFA7EDFFFFA7EDFFFF98E3FFFF98E3FFFF72D5F9FF72D5
      F9FF32A26CFF32A26CFF58B280FF58B280FF269755FF269755FF228CD5FF228C
      D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C000C0C0C000F0FBFF00F0FB
      FF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00C0DCC000C0DCC00080C0800080C0
      800040C0600040C0600040C0600040C0600080C0800080C08000C0C0C000C0C0
      C000F0FBFF00F0FBFF0040A0600040A0600040A0400040A04000408040004080
      40004080400040804000F0F0F000F0F0F000FF00FFFFFF00FFFFFF00FFFFFF00
      FFFF868686FF868686FFE3E3E3FFE3E3E3FFC0C0C0FFC0C0C0FFFF00FFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF008080FF008080FF00CCCCFF00CCCCFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000E1AE8A00EBEAE900FFFAF600DCC1B000FFDFB600FFF9
      C700FFDAA800FFE5B300FFFFCC00FFFFD900FFFFE400FFFFF100FFFFF400FFFF
      F100FFFFE400FFFED100D0B0A200E6C6B400FFE4C800FFE2C500FFE1C300FFDA
      C200AE7B710070707000F0F0F000F0F0F0005EC1E1FF5EC1E1FFC9F3FCFFC9F3
      FCFFCBF3FDFFCBF3FDFFD4F6FEFFD4F6FEFFD7F6FFFFD7F6FFFFD8F4FFFFD8F4
      FFFFE0F8FFFFE0F8FFFFDFF8FFFFDFF8FFFFDAF5FFFFDAF5FFFFCDF1FCFFCDF1
      FCFF40A874FF40A874FF2F9E63FF2F9E63FFBCEBFAFFBCEBFAFF2992D6FF2992
      D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C000C0C0C000F0FBFF00F0FB
      FF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00C0DCC000C0DCC00080C0800080C0
      800040C0600040C0600040C0600040C0600080C0800080C08000C0C0C000C0C0
      C000F0FBFF00F0FBFF0040A0600040A0600040A0400040A04000408040004080
      40004080400040804000F0F0F000F0F0F000FF00FFFFFF00FFFFFF00FFFFFF00
      FFFF868686FF868686FFE3E3E3FFE3E3E3FFC0C0C0FFC0C0C0FFFF00FFFFFF00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF008080FF008080FF00CCCCFF00CCCCFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000E1AE8A00EEEEED00FFFCF900D2ADAC00FFECB900FFF9
      C700FFD7A400FFE2B000FFF5C400FFFFD500FFFFDE00FFFFE400FFFFE700FFFF
      E400FFFFDE00FFFFCE00DCBBA600E6C6B400FFE5CA00FFE4C800FFE1C400FFDC
      C700B17E720070707000F0F0F000F0F0F0005EC1E1FF5EC1E1FFC9F3FCFFC9F3
      FCFFCBF3FDFFCBF3FDFFD4F6FEFFD4F6FEFFD7F6FFFFD7F6FFFFD8F4FFFFD8F4
      FFFFE0F8FFFFE0F8FFFFDFF8FFFFDFF8FFFFDAF5FFFFDAF5FFFFCDF1FCFFCDF1
      FCFF40A874FF40A874FF2F9E63FF2F9E63FFBCEBFAFFBCEBFAFF2992D6FF2992
      D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C000C0C0C000F0FBFF00F0FB
      FF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF0080E0A00080E0
      A00080C0A00080C0A000C0DCC000C0DCC00080C0800080C0800040A0600040A0
      600040A0600040A0600080C0800080C0800080C0800080C0800040A0400040A0
      4000F0F0F000F0F0F000F0F0F000F0F0F000FF00FFFFFF00FFFF868686FF8686
      86FFE3E3E3FFE3E3E3FFC0C0C0FFC0C0C0FF008080FF008080FFFFFFFFFFFFFF
      FFFF00FFFFFF00FFFFFF00CCCCFF00CCCCFF00CCCCFF00CCCCFFC0C0C0FFC0C0
      C0FF00CCCCFF00CCCCFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000E9B68E00EEEEED00FFFDFB00D2ADAC00FFF1BE00FFF9
      C700FFDAA800FFEAB900FFF1BE00FFFFCC00FFFFD500FFFFD900FFFFDA00FFFF
      DA00FFFFD500FFFDCA00D5AC9800E6C6B400FFE6CD00FFE5CA00FFE3C800FFDC
      C700B481740070707000F0F0F000F0F0F0005FC2E1FF5FC2E1FF879FA7FF879F
      A7FF909090FF909090FF8D8D8DFF8D8D8DFF58B8DCFF58B8DCFF53B7DFFF53B7
      DFFF4FB4DEFF4FB4DEFF4BB0DDFF4BB0DDFF47ACDCFF47ACDCFF44A7D7FF44A7
      D7FF767676FF767676FF747474FF747474FF637C8CFF637C8CFF2F98D8FF2F98
      D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C000C0C0C000F0FBFF00F0FB
      FF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0FBFF0080E0A00080E0
      A00080C0A00080C0A000C0DCC000C0DCC00080C0800080C0800040A0600040A0
      600040A0600040A0600080C0800080C0800080C0800080C0800040A0400040A0
      4000F0F0F000F0F0F000F0F0F000F0F0F000FF00FFFFFF00FFFF868686FF8686
      86FFE3E3E3FFE3E3E3FFC0C0C0FFC0C0C0FF008080FF008080FFFFFFFFFFFFFF
      FFFF00FFFFFF00FFFFFF00CCCCFF00CCCCFF00CCCCFF00CCCCFFC0C0C0FFC0C0
      C0FF00CCCCFF00CCCCFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000E9B68E00F1F1F100FFFFFF00E2C9C300F4E2B600FFFC
      CF00FEF3CB00FFD6A600FFDAA800FFF5C400FFF9C700FFFFCC00FFFFCE00FFFF
      CC00FFFCC900FFF1BE00C9998A00E2C9C300FFE7D000FFE7D000FFE5CA00FFDD
      CA00B784750070707000F0F0F000F0F0F0005FC2E1FF5FC2E1FF879FA7FF879F
      A7FF909090FF909090FF8D8D8DFF8D8D8DFF58B8DCFF58B8DCFF53B7DFFF53B7
      DFFF4FB4DEFF4FB4DEFF4BB0DDFF4BB0DDFF47ACDCFF47ACDCFF44A7D7FF44A7
      D7FF767676FF767676FF747474FF747474FF637C8CFF637C8CFF2F98D8FF2F98
      D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C000C0C0C000F0FBFF00F0FB
      FF00F0FBFF00F0FBFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00080C0800080C0800080E0A00080E0A000C0DCC000C0DCC000C0DCC000C0DC
      C000C0DCC000C0DCC000C0DCC000C0DCC00080E0A00080E0A00080C0800080C0
      800040A0400040A04000F0F0F000F0F0F000868686FF868686FFFFFFFFFFFFFF
      FFFFC0C0C0FFC0C0C0FF767676FF767676FF008080FF008080FFFFFFFFFFFFFF
      FFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF00FFFFFF00FFFFFF00CCCCFF00CC
      CCFF008080FF008080FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000E9B68E00F1F1F100FFFFFF00EDE1DF00DCBBA600FFFD
      E000FFF6ED00FFF4EA00FFDDB000FFE2B000FFE7B500FFE7B500FFECB900FFE7
      B500FFF5C400FFDFAC00B78A7D00FFEAD600FFEAD400FFE7D000FFE6CE00FFDC
      C700BA87760070707000F0F0F000F0F0F000FFFFFFFFFFFFFFFFB0B0B0FFB0B0
      B0FFC5C5C5FFC5C5C5FF939393FF939393FFFBFBFBFFFBFBFBFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFFBFB
      FBFF7B7B7BFF7B7B7BFFAAAAAAFFAAAAAAFF959595FF959595FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C000C0C0C000F0FBFF00F0FB
      FF00F0FBFF00F0FBFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00080C0800080C0800080E0A00080E0A000C0DCC000C0DCC000C0DCC000C0DC
      C000C0DCC000C0DCC000C0DCC000C0DCC00080E0A00080E0A00080C0800080C0
      800040A0400040A04000F0F0F000F0F0F000868686FF868686FFFFFFFFFFFFFF
      FFFFC0C0C0FFC0C0C0FF767676FF767676FF008080FF008080FFFFFFFFFFFFFF
      FFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF00FFFFFF00FFFFFF00CCCCFF00CC
      CCFF008080FF008080FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000E9B68E00F1F1F100FFFFFF00FFFFFF00D2ADAC00FDF6
      D500FFFFFF00FFFFFF00FFE9C800FFEBBF00FFDAA800FFD9A600FFDCAA00FFF1
      BE00FFEDBA00DAA38F00DCC1B000FFEAD600FFEAD400FFE7D000FFE6CE00FFDC
      C700BE8B790070707000F0F0F000F0F0F000FFFFFFFFFFFFFFFFB0B0B0FFB0B0
      B0FFC5C5C5FFC5C5C5FF939393FF939393FFFBFBFBFFFBFBFBFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFFBFB
      FBFF7B7B7BFF7B7B7BFFAAAAAAFFAAAAAAFF959595FF959595FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C000C0C0C000F0FBFF00F0FB
      FF00C0DCC000C0DCC000C0DCC000C0DCC000F0FBFF00F0FBFF00F0F0F000F0F0
      F000C0DCC000C0DCC00080C0800080C0800080C0600080C0600080C0600080C0
      600040C0600040C0600080C0800080C0800080C0800080C0800040A0600040A0
      6000F0F0F000F0F0F000F0F0F000F0F0F000868686FF868686FFFFFFFFFFFFFF
      FFFFE3E3E3FFE3E3E3FF868686FF868686FF868686FF868686FFFF00FFFFFF00
      FFFF868686FF868686FFFF00FFFFFF00FFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FF008080FF008080FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0BD9200F6F6F600FFFFFF00FFFFFF00EEEEED00C79E
      9E00FFF6EE00FFFFFF00FFFBE300FFF8CE00FFECB900FFEDBA00FFFAC900FFE2
      B000E1AE8A00C79E9E00FFEFE000FFECD800FFEAD600FFEAD400FFE7D000FFDA
      C600C18E7A0070707000F0F0F000F0F0F000FFFFFFFFFFFFFFFFBBBBBBFFBBBB
      BBFFC3C3C3FFC3C3C3FFA0A0A0FFA0A0A0FFEEEEEEFFEEEEEEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBFFEBEB
      EBFF888888FF888888FFA8A8A8FFA8A8A8FFA3A3A3FFA3A3A3FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C000C0C0C000F0FBFF00F0FB
      FF00C0DCC000C0DCC000C0DCC000C0DCC000F0FBFF00F0FBFF00F0F0F000F0F0
      F000C0DCC000C0DCC00080C0800080C0800080C0600080C0600080C0600080C0
      600040C0600040C0600080C0800080C0800080C0800080C0800040A0600040A0
      6000F0F0F000F0F0F000F0F0F000F0F0F000868686FF868686FFFFFFFFFFFFFF
      FFFFE3E3E3FFE3E3E3FF868686FF868686FF868686FF868686FFFF00FFFFFF00
      FFFF868686FF868686FFFF00FFFFFF00FFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FF008080FF008080FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0BD9200F6F6F600FFFFFF00FFFFFF00FFFFFF00EBEA
      E900CA9E9100DCBBA600FFF8CE00FFF9C700FFF1BE00FFF1BE00F9DDAE00DCB2
      9800C6A7A800FFF2E500FFEFE000FFECD800FFEAD600FDE6D500FFE7D000FFDA
      C600C18E7A0070707000F0F0F000F0F0F000FFFFFFFFFFFFFFFFBBBBBBFFBBBB
      BBFFC3C3C3FFC3C3C3FFA0A0A0FFA0A0A0FFEEEEEEFFEEEEEEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBFFEBEB
      EBFF888888FF888888FFA8A8A8FFA8A8A8FFA3A3A3FFA3A3A3FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C000C0C0C000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0FBFF00F0FBFF0080C0800080C0800040C0600040C06000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000868686FF868686FFFFFFFFFFFFFF
      FFFFE3E3E3FFE3E3E3FFC0C0C0FFC0C0C0FFFF00FFFFFF00FFFF008080FF0080
      80FFFFFFFFFFFFFFFFFF008080FF008080FF00CCCCFF00CCCCFF00CCCCFF00CC
      CCFF008080FF008080FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0BD9200F6F6F600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F6F6F600E2C9C300C3959100B78C8400D4A9A200D4A9A200D3B6B600F0DD
      D200FFF4EA00FFF2E500FFF2E500FFEDDC00FFE1D100FFDAC600FFDAC600FFBC
      BC00C5927C0070707000F0F0F000F0F0F000FFFFFFFFFFFFFFFFD4D4D4FFD4D4
      D4FFB9B9B9FFB9B9B9FFBEBEBEFFBEBEBEFFA5A5A5FFA5A5A5FFF2F2F2FFF2F2
      F2FFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFF1F1F1FFF1F1F1FF929292FF9292
      92FFA7A7A7FFA7A7A7FF9D9D9DFF9D9D9DFFC2C2C2FFC2C2C2FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C000C0C0C000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0FBFF00F0FBFF0080C0800080C0800040C0600040C06000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000868686FF868686FFFFFFFFFFFFFF
      FFFFE3E3E3FFE3E3E3FFC0C0C0FFC0C0C0FFFF00FFFFFF00FFFF008080FF0080
      80FFFFFFFFFFFFFFFFFF008080FF008080FF00CCCCFF00CCCCFF00CCCCFF00CC
      CCFF008080FF008080FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F4C19400FAF8F800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFEFD00FFFCF900FFFBF800FFFAF500FFF8F200FFF6
      EE00FFF5EC00FFF4EA00FFF4EA00FFEFE000FFDDCA00FFBCBC00FFAEAE00FF9E
      9E00C5927C0073737300F0F0F000F0F0F000FFFFFFFFFFFFFFFFD4D4D4FFD4D4
      D4FFB9B9B9FFB9B9B9FFBEBEBEFFBEBEBEFFA5A5A5FFA5A5A5FFF2F2F2FFF2F2
      F2FFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFF1F1F1FFF1F1F1FF929292FF9292
      92FFA7A7A7FFA7A7A7FF9D9D9DFF9D9D9DFFC2C2C2FFC2C2C2FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C000C0C0C000F0FBFF00F0FB
      FF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000C0C0C000C0C0C00080C0800080C0800040C0600040C06000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FF00FFFFFF00FFFF868686FF8686
      86FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFFFFFFFFFFFF
      FFFF868686FF868686FF008080FF008080FF008080FF008080FF008080FF0080
      80FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F4C19400FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFD00FFFCF900FFFBF800FFFAF500FFF8
      F200FFF6EE00FFF5EC00FFF5EC009B6A69009B6A69009E6B68009C6967009B6A
      69009B6A690070707000F0F0F000F0F0F000FFFFFFFFFFFFFFFFFBFBFBFFFBFB
      FBFFADADADFFADADADFFC3C3C3FFC3C3C3FFBDBDBDFFBDBDBDFFA0A0A0FFA0A0
      A0FF959595FF959595FF929292FF929292FF969696FF969696FFADADADFFADAD
      ADFFADADADFFADADADFF949494FF949494FFFBFBFBFFFBFBFBFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C000C0C0C000F0FBFF00F0FB
      FF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000C0C0C000C0C0C00080C0800080C0800040C0600040C06000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FF00FFFFFF00FFFF868686FF8686
      86FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFFFFFFFFFFFF
      FFFF868686FF868686FF008080FF008080FF008080FF008080FF008080FF0080
      80FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F7C59600FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFD00FFFCF900FFFBF800FFFA
      F500FFF8F100FFF6EE00FFF6EE00AB786F00FFD2A200F6AF5700D5A28400CF9C
      8100BF918A00F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFFBFBFBFFFBFB
      FBFFADADADFFADADADFFC3C3C3FFC3C3C3FFBDBDBDFFBDBDBDFFA0A0A0FFA0A0
      A0FF959595FF959595FF929292FF929292FF969696FF969696FFADADADFFADAD
      ADFFADADADFFADADADFF949494FF949494FFFBFBFBFFFBFBFBFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C000C0C0C000C0C0C000C0C0
      C000C0DCC000C0DCC000F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0F0F000F0F0
      F000F0F0F000F0F0F000F0FBFF00F0FBFF00F0FBFF00F0FBFF00C0C0C000C0C0
      C000A4A0A000A4A0A000A4A0A000A4A0A000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FF00FFFFFF00FFFFFF00FFFFFF00
      FFFF868686FF868686FF868686FF868686FFFF00FFFFFF00FFFF868686FF8686
      86FF868686FF868686FF868686FF868686FFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F7C59600FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFD00FFFCF900FFFB
      F800FFFAF500FFF8F100FFF8F100A7756D00FFE5B300DAA78600CF9C8100BF91
      8A00F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFEEEEEEFFEEEEEEFFADADADFFADADADFFBBBBBBFFBBBBBBFFCACACAFFCACA
      CAFFCCCCCCFFCCCCCCFFCACACAFFCACACAFFC1C1C1FFC1C1C1FFACACACFFACAC
      ACFF9A9A9AFF9A9A9AFFE9E9E9FFE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C000C0C0C000C0C0C000C0C0
      C000C0DCC000C0DCC000F0FBFF00F0FBFF00F0FBFF00F0FBFF00F0F0F000F0F0
      F000F0F0F000F0F0F000F0FBFF00F0FBFF00F0FBFF00F0FBFF00C0C0C000C0C0
      C000A4A0A000A4A0A000A4A0A000A4A0A000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FF00FFFFFF00FFFFFF00FFFFFF00
      FFFF868686FF868686FF868686FF868686FFFF00FFFFFF00FFFF868686FF8686
      86FF868686FF868686FF868686FF868686FFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000FAC89800FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFD00FFFCF900FFFB
      F800FFFAF500FFF8F100FFF8F100A3706B00DEAD8F00D5A28400C3959100F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFEEEEEEFFEEEEEEFFADADADFFADADADFFBBBBBBFFBBBBBBFFCACACAFFCACA
      CAFFCCCCCCFFCCCCCCFFCACACAFFCACACAFFC1C1C1FFC1C1C1FFACACACFFACAC
      ACFF9A9A9AFF9A9A9AFFE9E9E9FFE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F000F0F0F000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000A4A0A000A4A0A000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000FECC9900FFFFFF00FFFFFF00FFFEFD00FFFEFD00FCFC
      FC00FCFCFC00FCFCFC00FAF8F800FAF8F800FAF8F800FAF8F800FAF8F800F6F6
      F600F8F1F000F8F1F000F8F1F0009E6C6A00DAA78600C6A09200F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFBFBFBFFFBFBFBFFD0D0D0FFD0D0D0FFB9B9B9FFB9B9
      B9FFB0B0B0FFB0B0B0FFADADADFFADADADFFB2B2B2FFB2B2B2FFC9C9C9FFC9C9
      C9FFFAFAFAFFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F000F0F0F000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000A4A0A000A4A0A000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
      FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F7C59600F7C59600F7C59600F3C39900F3C39900EEC2
      9400F0BD9200E4BA9800E4BA9800DCB29800DCB29800D5AC9800CDA69300CDA6
      9300CDA69300C6A09200C6A092009B6A6900C6A09200F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFBFBFBFFFBFBFBFFD0D0D0FFD0D0D0FFB9B9B9FFB9B9
      B9FFB0B0B0FFB0B0B0FFADADADFFADADADFFB2B2B2FFB2B2B2FFC9C9C9FFC9C9
      C9FFFAFAFAFFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC05F3FFFC05F
      3FFFC05F3FFFC05F3FFFC05F3FFFC05F3FFFC05F3FFFC05F3FFFC05F3FFFC05F
      3FFFC05F3FFFC05F3FFFC05F3FFFC05F3FFFC05F1FFFC05F1FFFC05F1FFFC05F
      1FFF805F80FF805F80FF003FA0FF003FA0FF003FC0FF003FC0FF003FA0FF003F
      A0FF3F3F80FF3F3F80FFFFFFFFFFFFFFFFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC2C2C2FFC2C2C2FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC1C1C1FFC1C1
      C1FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5
      C5FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFFFFFFFFFFFFFFFFFC05F3FFFC05F
      3FFFC05F3FFFC05F3FFFC05F3FFFC05F3FFFC05F3FFFC05F3FFFC05F3FFFC05F
      3FFFC05F3FFFC05F3FFFC05F3FFFC05F3FFFC05F1FFFC05F1FFFC05F1FFFC05F
      1FFF805F80FF805F80FF003FA0FF003FA0FF003FC0FF003FC0FF003FA0FF003F
      A0FF3F3F80FF3F3F80FFFFFFFFFFFFFFFFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC2C2C2FFC2C2C2FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC1C1C1FFC1C1
      C1FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC5C5C5FFC5C5C5FFC5C5C5FFC5C5
      C5FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFFFFFFFFFFFFFFFFFC05F3FFFC05F
      3FFFFFFFFFFFFFFFFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FB
      FFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFFFFFFFFFFFFFFFFF80A0E0FF80A0
      E0FF3F5FC0FF3F5FC0FF3F80E0FF3F80E0FF0080E0FF0080E0FF005FE0FF005F
      E0FF003FC0FF003FC0FF003FC0FF003FC0FFC0C0C0FFC0C0C0FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC5C5C5FFC5C5
      C5FFD0D0D0FFD0D0D0FFB5B5B5FFB5B5B5FFB0B0B0FFB0B0B0FFB1B1B1FFB1B1
      B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB0B0B0FFB0B0B0FFB8B8B8FFB8B8
      B8FFC3C3C3FFC3C3C3FFC5C5C5FFC5C5C5FF8D8D8DFF8D8D8DFF8A8A8AFF8A8A
      8AFFC5C5C5FFC5C5C5FFC0C0C0FFC0C0C0FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFFFFFFFFFFFFFFFFFC05F3FFFC05F
      3FFFFFFFFFFFFFFFFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FB
      FFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFFFFFFFFFFFFFFFFF80A0E0FF80A0
      E0FF3F5FC0FF3F5FC0FF3F80E0FF3F80E0FF0080E0FF0080E0FF005FE0FF005F
      E0FF003FC0FF003FC0FF003FC0FF003FC0FFC0C0C0FFC0C0C0FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC5C5C5FFC5C5
      C5FFD0D0D0FFD0D0D0FFB5B5B5FFB5B5B5FFB0B0B0FFB0B0B0FFB1B1B1FFB1B1
      B1FFB1B1B1FFB1B1B1FFB1B1B1FFB1B1B1FFB0B0B0FFB0B0B0FFB8B8B8FFB8B8
      B8FFC3C3C3FFC3C3C3FFC5C5C5FFC5C5C5FF8D8D8DFF8D8D8DFF8A8A8AFF8A8A
      8AFFC5C5C5FFC5C5C5FFC0C0C0FFC0C0C0FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFFFFFFFFFFFFFFFFFC0803FFFC080
      3FFFF0FBFFFFF0FBFFFFF0CAA6FFF0CAA6FFC0C05FFFC0C05FFFC0C05FFFC0C0
      5FFFC0C05FFFC0C05FFFC0C05FFFC0C05FFFC0C05FFFC0C05FFF005FC0FF005F
      C0FF80A0E0FF80A0E0FF0080E0FF0080E0FF0080E0FF0080E0FF0080E0FF0080
      E0FF005FE0FF005FE0FF003FC0FF003FC0FFC0C0C0FFC0C0C0FF000000FF0000
      00FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF808080FF8080
      80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FFC0C0C0FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC0C0C0FFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000FF000000FFC0C0C0FFC0C0C0FFC5C5C5FFC5C5C5FF929292FF9292
      92FF403131FF403131FF191414FF191414FF101010FF101010FF1A1010FF1A10
      10FF1A1010FF1A1010FF101010FF101010FF101010FF101010FF505050FF5050
      50FFBCBCBCFFBCBCBCFFD3D3D3FFD3D3D3FF535353FF535353FF606060FF6060
      60FFCCCCCCFFCCCCCCFFC0C0C0FFC0C0C0FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFFFFFFFFFFFFFFFFFC0803FFFC080
      3FFFF0FBFFFFF0FBFFFFF0CAA6FFF0CAA6FFC0C05FFFC0C05FFFC0C05FFFC0C0
      5FFFC0C05FFFC0C05FFFC0C05FFFC0C05FFFC0C05FFFC0C05FFF005FC0FF005F
      C0FF80A0E0FF80A0E0FF0080E0FF0080E0FF0080E0FF0080E0FF0080E0FF0080
      E0FF005FE0FF005FE0FF003FC0FF003FC0FFC0C0C0FFC0C0C0FF000000FF0000
      00FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF808080FF8080
      80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FFC0C0C0FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC0C0C0FFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000FF000000FFC0C0C0FFC0C0C0FFC5C5C5FFC5C5C5FF929292FF9292
      92FF403131FF403131FF191414FF191414FF101010FF101010FF1A1010FF1A10
      10FF1A1010FF1A1010FF101010FF101010FF101010FF101010FF505050FF5050
      50FFBCBCBCFFBCBCBCFFD3D3D3FFD3D3D3FF535353FF535353FF606060FF6060
      60FFCCCCCCFFCCCCCCFFC0C0C0FFC0C0C0FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFFFFFFFFFFFFFFFFFC0803FFFC080
      3FFFF0FBFFFFF0FBFFFFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
      A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FF003FC0FF003F
      C0FF80C0E0FF80C0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF0080E0FF0080E0FF003FC0FF003FC0FFC0C0C0FFC0C0C0FF000000FF0000
      00FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF808080FF8080
      80FF808080FF808080FFFFFFFFFFFFFFFFFFC0C0C0FFC0C0C0FF808080FF8080
      80FFFFFFFFFFFFFFFFFFC0C0C0FFC0C0C0FF808080FF808080FFFFFFFFFFFFFF
      FFFF000000FF000000FFC0C0C0FFC0C0C0FFC9C9C9FFC9C9C9FF726363FF7263
      63FF007171FF007171FFBEF6F6FFBEF6F6FFF9F2F2FFF9F2F2FF74F2F2FF74F2
      F2FF74F2F2FF74F2F2FFF9F7F7FFF9F7F7FFB5B5B5FFB5B5B5FF181818FF1818
      18FF9A9797FF9A9797FF959494FF959494FF888888FF888888FF8B8B8BFF8B8B
      8BFFB6B6B6FFB6B6B6FFC4C4C4FFC4C4C4FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFFFFFFFFFFFFFFFFFC0803FFFC080
      3FFFF0FBFFFFF0FBFFFFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
      A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FF003FC0FF003F
      C0FF80C0E0FF80C0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF0080E0FF0080E0FF003FC0FF003FC0FFC0C0C0FFC0C0C0FF000000FF0000
      00FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF808080FF8080
      80FF808080FF808080FFFFFFFFFFFFFFFFFFC0C0C0FFC0C0C0FF808080FF8080
      80FFFFFFFFFFFFFFFFFFC0C0C0FFC0C0C0FF808080FF808080FFFFFFFFFFFFFF
      FFFF000000FF000000FFC0C0C0FFC0C0C0FFC9C9C9FFC9C9C9FF726363FF7263
      63FF007171FF007171FFBEF6F6FFBEF6F6FFF9F2F2FFF9F2F2FF74F2F2FF74F2
      F2FF74F2F2FF74F2F2FFF9F7F7FFF9F7F7FFB5B5B5FFB5B5B5FF181818FF1818
      18FF9A9797FF9A9797FF959494FF959494FF888888FF888888FF8B8B8BFF8B8B
      8BFFB6B6B6FFB6B6B6FFC4C4C4FFC4C4C4FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFFFFFFFFFFFFFFFFFC0803FFFC080
      3FFFF0FBFFFFF0FBFFFFC0C05FFFC0C05FFFC0C05FFFC0C05FFFC0C05FFFC0C0
      5FFFC0C05FFFC0C05FFFC0C05FFFC0C05FFFC0C05FFFC0C05FFF3F5FA0FF3F5F
      A0FF80C0E0FF80C0E0FF3FA0E0FF3FA0E0FF0080E0FF0080E0FF3F80E0FF3F80
      E0FF3F80E0FF3F80E0FF003FC0FF003FC0FFC0C0C0FFC0C0C0FF000000FF0000
      00FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
      80FF808080FF808080FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF808080FF8080
      80FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF808080FF808080FFC0C0C0FFC0C0
      C0FF000000FF000000FFC0C0C0FFC0C0C0FFC9C9C9FFC9C9C9FF636363FF6363
      63FFAEA9A9FFAEA9A9FFB34040FFB34040FF5B0D0DFF5B0D0DFF9C1212FF9C12
      12FF9C1212FF9C1212FF570000FF570000FFF3FBFBFFF3FBFBFF000000FF0000
      00FF001E1EFF001E1EFF0B1A1AFF0B1A1AFF171B1BFF171B1BFF000000FF0000
      00FF393939FF393939FFBEBEBEFFBEBEBEFFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFFFFFFFFFFFFFFFFFC0803FFFC080
      3FFFF0FBFFFFF0FBFFFFC0C05FFFC0C05FFFC0C05FFFC0C05FFFC0C05FFFC0C0
      5FFFC0C05FFFC0C05FFFC0C05FFFC0C05FFFC0C05FFFC0C05FFF3F5FA0FF3F5F
      A0FF80C0E0FF80C0E0FF3FA0E0FF3FA0E0FF0080E0FF0080E0FF3F80E0FF3F80
      E0FF3F80E0FF3F80E0FF003FC0FF003FC0FFC0C0C0FFC0C0C0FF000000FF0000
      00FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
      80FF808080FF808080FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF808080FF8080
      80FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF808080FF808080FFC0C0C0FFC0C0
      C0FF000000FF000000FFC0C0C0FFC0C0C0FFC9C9C9FFC9C9C9FF636363FF6363
      63FFAEA9A9FFAEA9A9FFB34040FFB34040FF5B0D0DFF5B0D0DFF9C1212FF9C12
      12FF9C1212FF9C1212FF570000FF570000FFF3FBFBFFF3FBFBFF000000FF0000
      00FF001E1EFF001E1EFF0B1A1AFF0B1A1AFF171B1BFF171B1BFF000000FF0000
      00FF393939FF393939FFBEBEBEFFBEBEBEFFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFFFFFFFFFFFFFFFFFC0803FFFC080
      3FFFFFFFFFFFFFFFFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FB
      FFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFF80A0C0FF80A0
      C0FF3F80E0FF3F80E0FF80C0E0FF80C0E0FFC0A0E0FFC0A0E0FF80A0E0FF80A0
      E0FF3F5FC0FF3F5FC0FF003FC0FF003FC0FFC0C0C0FFC0C0C0FF000000FF0000
      00FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF808080FF8080
      80FF000000FF000000FF000000FF000000FFC0C0C0FFC0C0C0FF808080FF8080
      80FFFFFFFFFFFFFFFFFFC0C0C0FFC0C0C0FF808080FF808080FFFFFFFFFFFFFF
      FFFF000000FF000000FFC0C0C0FFC0C0C0FFC9C9C9FFC9C9C9FF636363FF6363
      63FFA19B9BFFA19B9BFFF7BCBCFFF7BCBCFF1DA3A3FF1DA3A3FFE9A5A5FFE9A5
      A5FFE9A5A5FFE9A5A5FF1F9F9FFF1F9F9FFFEAE4E4FFEAE4E4FF452323FF4523
      23FF6BB1B1FF6BB1B1FFBCA3A3FFBCA3A3FFFFC1C1FFFFC1C1FFAAAFAFFFAAAF
      AFFF353535FF353535FFBFBFBFFFBFBFBFFFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FF000000FF000000FF000000FF000000FF000000FF000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF000000FF0000
      00FF000000FFC3C3C3FFC3C3C3FFC3C3C3FFFFFFFFFFFFFFFFFFC0803FFFC080
      3FFFFFFFFFFFFFFFFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FB
      FFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFF80A0C0FF80A0
      C0FF3F80E0FF3F80E0FF80C0E0FF80C0E0FFC0A0E0FFC0A0E0FF80A0E0FF80A0
      E0FF3F5FC0FF3F5FC0FF003FC0FF003FC0FFC0C0C0FFC0C0C0FF000000FF0000
      00FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF808080FF8080
      80FF000000FF000000FF000000FF000000FFC0C0C0FFC0C0C0FF808080FF8080
      80FFFFFFFFFFFFFFFFFFC0C0C0FFC0C0C0FF808080FF808080FFFFFFFFFFFFFF
      FFFF000000FF000000FFC0C0C0FFC0C0C0FFC9C9C9FFC9C9C9FF636363FF6363
      63FFA19B9BFFA19B9BFFF7BCBCFFF7BCBCFF1DA3A3FF1DA3A3FFE9A5A5FFE9A5
      A5FFE9A5A5FFE9A5A5FF1F9F9FFF1F9F9FFFEAE4E4FFEAE4E4FF452323FF4523
      23FF6BB1B1FF6BB1B1FFBCA3A3FFBCA3A3FFFFC1C1FFFFC1C1FFAAAFAFFFAAAF
      AFFF353535FF353535FFBFBFBFFFBFBFBFFFC3C3C3FFC3C3C3FFC3C3C3FF0000
      00FF000000FF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
      00FF000000FF000000FFC3C3C3FFC3C3C3FFFFFFFFFFFFFFFFFFC0803FFFC080
      3FFFFFFFFFFFFFFFFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FB
      FFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FB
      FFFF80A0C0FF80A0C0FF3F5FC0FF3F5FC0FF003FC0FF003FC0FF005FC0FF005F
      C0FF805F80FF805F80FFFFFFFFFFFFFFFFFFC0C0C0FFC0C0C0FF000000FF0000
      00FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF808080FF8080
      80FF000000FF000000FFDFDF1FFFDFDF1FFF000000FF000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC0C0C0FFC0C0C0FF808080FF808080FFFFFFFFFFFFFF
      FFFF000000FF000000FFC0C0C0FFC0C0C0FFC9C9C9FFC9C9C9FF6F6363FF6F63
      63FF139B9BFF139B9BFFC3BCBCFFC3BCBCFFECA3A3FFECA3A3FF80A5A5FF80A5
      A5FF80A5A5FF80A5A5FFE99F9FFFE99F9FFFDBE4E4FFDBE4E4FF342323FF3423
      23FFEDB1B1FFEDB1B1FFE4A3A3FFE4A3A3FF30BCBCFF30BCBCFFAA9F9FFFAA9F
      9FFF353535FF353535FFBFBFBFFFBFBFBFFFC3C3C3FFC3C3C3FF000000FF0000
      00FF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF000000FF000000FF000000FFC3C3C3FFFFFFFFFFFFFFFFFFC0803FFFC080
      3FFFFFFFFFFFFFFFFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FB
      FFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FB
      FFFF80A0C0FF80A0C0FF3F5FC0FF3F5FC0FF003FC0FF003FC0FF005FC0FF005F
      C0FF805F80FF805F80FFFFFFFFFFFFFFFFFFC0C0C0FFC0C0C0FF000000FF0000
      00FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FF808080FF8080
      80FF000000FF000000FFDFDF1FFFDFDF1FFF000000FF000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC0C0C0FFC0C0C0FF808080FF808080FFFFFFFFFFFFFF
      FFFF000000FF000000FFC0C0C0FFC0C0C0FFC9C9C9FFC9C9C9FF6F6363FF6F63
      63FF139B9BFF139B9BFFC3BCBCFFC3BCBCFFECA3A3FFECA3A3FF80A5A5FF80A5
      A5FF80A5A5FF80A5A5FFE99F9FFFE99F9FFFDBE4E4FFDBE4E4FF342323FF3423
      23FFEDB1B1FFEDB1B1FFE4A3A3FFE4A3A3FF30BCBCFF30BCBCFFAA9F9FFFAA9F
      9FFF353535FF353535FFBFBFBFFFBFBFBFFFC3C3C3FFC3C3C3FF000000FF0000
      00FF000000FFFFFFFFFFFFFFFFFF000000FF000000FF000000FFFFFFFFFFFFFF
      FFFF000000FFFFFFFFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFFFFFF0000
      00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
      FFFF000000FF000000FF000000FFC3C3C3FFFFFFFFFFFFFFFFFFC0803FFFC080
      3FFFFFFFFFFFFFFFFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FB
      FFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FB
      FFFFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFFFFFFFFFFFFF
      FFFFC0803FFFC0803FFFFFFFFFFFFFFFFFFFC0C0C0FFC0C0C0FF000000FF0000
      00FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
      80FFC0C0C0FFC0C0C0FF000000FF000000FFB9B929FFB9B929FF000000FF0000
      00FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FF000000FF000000FFC0C0C0FFC0C0C0FFC9C9C9FFC9C9C9FF676363FF6763
      63FF79A5A5FF79A5A5FF9E3E3EFF9E3E3EFF9E0B0BFF9E0B0BFF730E0EFF730E
      0EFF771212FF771212FF9D0000FF9D0000FFE9FBFBFFE9FBFBFF180000FF1800
      00FFA41515FFA41515FF910A0AFF910A0AFF763C3CFF763C3CFFA5AAAAFFA5AA
      AAFF353535FF353535FFBFBFBFFFBFBFBFFFC3C3C3FF000000FF000000FF0000
      00FF000000FFFFFFFFFF000000FF000000FFFFFFFFFFFFFFFFFF000000FFFFFF
      FFFF000000FFFFFFFFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFFFFFF0000
      00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
      FFFF000000FF000000FF000000FF000000FFFFFFFFFFFFFFFFFFC0803FFFC080
      3FFFFFFFFFFFFFFFFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FB
      FFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FB
      FFFFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFFFFFFFFFFFFF
      FFFFC0803FFFC0803FFFFFFFFFFFFFFFFFFFC0C0C0FFC0C0C0FF000000FF0000
      00FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
      80FFC0C0C0FFC0C0C0FF000000FF000000FFB9B929FFB9B929FF000000FF0000
      00FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FF000000FF000000FFC0C0C0FFC0C0C0FFC9C9C9FFC9C9C9FF676363FF6763
      63FF79A5A5FF79A5A5FF9E3E3EFF9E3E3EFF9E0B0BFF9E0B0BFF730E0EFF730E
      0EFF771212FF771212FF9D0000FF9D0000FFE9FBFBFFE9FBFBFF180000FF1800
      00FFA41515FFA41515FF910A0AFF910A0AFF763C3CFF763C3CFFA5AAAAFFA5AA
      AAFF353535FF353535FFBFBFBFFFBFBFBFFFC3C3C3FF000000FF000000FF0000
      00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000FFFFFFFFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFFFFFF0000
      00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FF000000FFFFFFFFFFFFFFFFFFC0803FFFC080
      3FFFFFFFFFFFFFFFFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FB
      FFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0CAA6FFF0CA
      A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFFFFFFFFFFFFF
      FFFFC0803FFFC0803FFFFFFFFFFFFFFFFFFFC0C0C0FFC0C0C0FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FFC4C434FFC4C4
      34FF000000FF000000FFC0C0C0FFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000FF000000FFC0C0C0FFC0C0C0FFC9C9C9FFC9C9C9FF636363FF6363
      63FF9F9696FF9F9696FFFFF7F7FFFFF7F7FF04F2F2FF04F2F2FFFFFFFFFFFFFF
      FFFFF7EDEDFFF7EDEDFF00F0F0FF00F0F0FFC0ADADFFC0ADADFF564343FF5643
      43FF53F8F8FF53F8F8FFD1FFFFFFD1FFFFFFFFFFFFFFFFFFFFFF9D9D9DFF9D9D
      9DFF333333FF333333FFBFBFBFFFBFBFBFFFC3C3C3FF000000FF000000FF0000
      00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000FFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFF0000
      00FFFFFFFFFF000000FF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FF000000FFFFFFFFFFFFFFFFFFC0803FFFC080
      3FFFFFFFFFFFFFFFFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FB
      FFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0CAA6FFF0CA
      A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFFFFFFFFFFFFF
      FFFFC0803FFFC0803FFFFFFFFFFFFFFFFFFFC0C0C0FFC0C0C0FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FFC4C434FFC4C4
      34FF000000FF000000FFC0C0C0FFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000FF000000FFC0C0C0FFC0C0C0FFC9C9C9FFC9C9C9FF636363FF6363
      63FF9F9696FF9F9696FFFFF7F7FFFFF7F7FF04F2F2FF04F2F2FFFFFFFFFFFFFF
      FFFFF7EDEDFFF7EDEDFF00F0F0FF00F0F0FFC0ADADFFC0ADADFF564343FF5643
      43FF53F8F8FF53F8F8FFD1FFFFFFD1FFFFFFFFFFFFFFFFFFFFFF9D9D9DFF9D9D
      9DFF333333FF333333FFBFBFBFFFBFBFBFFFC3C3C3FF000000FF000000FF0000
      00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000FFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFF0000
      00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FF000000FFFFFFFFFFFFFFFFFFC0803FFFC080
      3FFFFFFFFFFFFFFFFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FB
      FFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
      A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFFFFFFFFFFFFF
      FFFFC0803FFFC0803FFFFFFFFFFFFFFFFFFF9C9C9CFF9C9C9CFF000000FF0000
      00FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FF000000FF000000FFFFFFFFFFFFFFFFFFC0C0C0FFC0C0C0FF000000FF0000
      00FFBFBF2FFFBFBF2FFF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000FF000000FFC0C0C0FFC0C0C0FFC9C9C9FFC9C9C9FF6B6363FF6B63
      63FF46A0A0FF46A0A0FFAD7676FFAD7676FFD87676FFD87676FF959C9CFF959C
      9CFF0E0E0EFF0E0E0EFF704C4CFF704C4CFF454848FF454848FF331010FF3310
      10FFD15656FFD15656FF524040FF524040FF514353FF514353FF767676FF7676
      76FF535353FF535353FFBDBDBDFFBDBDBDFFC3C3C3FF000000FF000000FF0000
      00FF000000FFFFFFFFFF000000FF000000FFFFFFFFFFFFFFFFFF000000FFFFFF
      FFFF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
      00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
      FFFF000000FF000000FF000000FF000000FFFFFFFFFFFFFFFFFFC0803FFFC080
      3FFFFFFFFFFFFFFFFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FB
      FFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
      A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFFFFFFFFFFFFF
      FFFFC0803FFFC0803FFFFFFFFFFFFFFFFFFF9C9C9CFF9C9C9CFF000000FF0000
      00FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FF000000FF000000FFFFFFFFFFFFFFFFFFC0C0C0FFC0C0C0FF000000FF0000
      00FFBFBF2FFFBFBF2FFF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000FF000000FFC0C0C0FFC0C0C0FFC9C9C9FFC9C9C9FF6B6363FF6B63
      63FF46A0A0FF46A0A0FFAD7676FFAD7676FFD87676FFD87676FF959C9CFF959C
      9CFF0E0E0EFF0E0E0EFF704C4CFF704C4CFF454848FF454848FF331010FF3310
      10FFD15656FFD15656FF524040FF524040FF514353FF514353FF767676FF7676
      76FF535353FF535353FFBDBDBDFFBDBDBDFFC3C3C3FFC3C3C3FF000000FF0000
      00FF000000FFFFFFFFFFFFFFFFFF000000FF000000FF000000FFFFFFFFFFFFFF
      FFFF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
      00FFFFFFFFFF000000FF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000FF000000FF000000FFC3C3C3FFFFFFFFFFFFFFFFFFC0803FFFC080
      3FFFFFFFFFFFFFFFFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FB
      FFFFF0FBFFFFF0FBFFFFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
      A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFFFFFFFFFFFFF
      FFFFC0803FFFC0803FFFFFFFFFFFFFFFFFFF000000FF000000FF9C9C9CFF9C9C
      9CFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FF000000FF000000FFC0C0C0FFC0C0C0FFFFFFFFFFFFFF
      FFFF000000FF000000FFC0B727FFC0B727FF000000FF000000FFFFFFFFFFFFFF
      FFFF000000FF000000FFC0C0C0FFC0C0C0FFC9C9C9FFC9C9C9FF6B6363FF6B63
      63FF46A0A0FF46A0A0FFAD7676FFAD7676FFD87676FFD87676FF939B9BFF939B
      9BFFA99A9AFFA99A9AFF97FFFFFF97FFFFFF3B2C2CFF3B2C2CFF474B4BFF474B
      4BFFF9FFFFFFF9FFFFFF0F0211FF0F0211FF008700FF008700FF2C1C2CFF2C1C
      2CFF939393FF939393FFBBBBBBFFBBBBBBFFC3C3C3FFC3C3C3FF000000FF0000
      00FF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF000000FF000000FF000000FFC3C3C3FFFFFFFFFFFFFFFFFFC0803FFFC080
      3FFFFFFFFFFFFFFFFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FB
      FFFFF0FBFFFFF0FBFFFFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
      A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFFFFFFFFFFFFF
      FFFFC0803FFFC0803FFFFFFFFFFFFFFFFFFF000000FF000000FF9C9C9CFF9C9C
      9CFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FF000000FF000000FFC0C0C0FFC0C0C0FFFFFFFFFFFFFF
      FFFF000000FF000000FFC0B727FFC0B727FF000000FF000000FFFFFFFFFFFFFF
      FFFF000000FF000000FFC0C0C0FFC0C0C0FFC9C9C9FFC9C9C9FF6B6363FF6B63
      63FF46A0A0FF46A0A0FFAD7676FFAD7676FFD87676FFD87676FF939B9BFF939B
      9BFFA99A9AFFA99A9AFF97FFFFFF97FFFFFF3B2C2CFF3B2C2CFF474B4BFF474B
      4BFFF9FFFFFFF9FFFFFF0F0211FF0F0211FF008700FF008700FF2C1C2CFF2C1C
      2CFF939393FF939393FFBBBBBBFFBBBBBBFFC3C3C3FFC3C3C3FFC3C3C3FF0000
      00FF000000FF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
      00FF000000FF000000FFC3C3C3FFC3C3C3FFFFFFFFFFFFFFFFFFC0803FFFC080
      3FFFFFFFFFFFFFFFFFFFF0CAA6FFF0CAA6FFF0FBFFFFF0FBFFFFF0CAA6FFF0CA
      A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
      A6FFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFFFFFFFFFFFFFFFFFF0FBFFFFF0FB
      FFFFC0803FFFC0803FFFFFFFFFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFF
      FFFFC0C0C0FFC0C0C0FFBF00BFFFBF00BFFFBF00BFFFBF00BFFFBF00BFFFBF00
      BFFFC0C0C0FFC0C0C0FF000000FF000000FFC0C0C0FFC0C0C0FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF000000FF000000FFAFAF1FFFAFAF1FFF000000FF0000
      00FF000000FF000000FFC0C0C0FFC0C0C0FFC9C9C9FFC9C9C9FF616161FF6161
      61FFA9A4A4FFA9A4A4FFFFFEFEFFFFFEFEFF1CFEFEFF1CFEFEFFB4A2A2FFB4A2
      A2FF959090FF959090FF001E1EFF001E1EFFF3F7F7FFF3F7F7FF716D6DFF716D
      6DFF060006FF060006FF000000FF000000FF00FF00FF00FF00FF040004FF0400
      04FF000000FF000000FFADADADFFADADADFFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FF000000FF000000FF000000FF000000FF000000FF000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF000000FF000000FF0000
      00FF000000FFC3C3C3FFC3C3C3FFC3C3C3FFFFFFFFFFFFFFFFFFC0803FFFC080
      3FFFFFFFFFFFFFFFFFFFF0CAA6FFF0CAA6FFF0FBFFFFF0FBFFFFF0CAA6FFF0CA
      A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
      A6FFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFFFFFFFFFFFFFFFFFF0FBFFFFF0FB
      FFFFC0803FFFC0803FFFFFFFFFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFF
      FFFFC0C0C0FFC0C0C0FFBF00BFFFBF00BFFFBF00BFFFBF00BFFFBF00BFFFBF00
      BFFFC0C0C0FFC0C0C0FF000000FF000000FFC0C0C0FFC0C0C0FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF000000FF000000FFAFAF1FFFAFAF1FFF000000FF0000
      00FF000000FF000000FFC0C0C0FFC0C0C0FFC9C9C9FFC9C9C9FF616161FF6161
      61FFA9A4A4FFA9A4A4FFFFFEFEFFFFFEFEFF1CFEFEFF1CFEFEFFB4A2A2FFB4A2
      A2FF959090FF959090FF001E1EFF001E1EFFF3F7F7FFF3F7F7FF716D6DFF716D
      6DFF060006FF060006FF000000FF000000FF00FF00FF00FF00FF040004FF0400
      04FF000000FF000000FFADADADFFADADADFFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFFFFFFFFFFFFFFFFFC0803FFFC080
      3FFFFFFFFFFFFFFFFFFFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
      A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
      A6FFFFFFFFFFFFFFFFFFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFC0C080FFC0C0
      80FFC0803FFFC0803FFFFFFFFFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFF
      FFFFC0C0C0FFC0C0C0FFBF00BFFFBF00BFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FF000000FF000000FFBF0000FFBF0000FFBF0000FFBF00
      00FFBF0000FFBF0000FFBF0000FFBF0000FF000000FF000000FFBDB121FFBDB1
      21FF000000FF000000FFC0C0C0FFC0C0C0FFC7C7C7FFC7C7C7FF808080FF8080
      80FF000000FF000000FF000000FF000000FF0E0000FF0E0000FF060606FF0606
      06FF000000FF000000FFCCDFDFFFCCDFDFFF931E1EFF931E1EFF395564FF3955
      64FF008800FF008800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF
      00FF003F00FF003F00FFAAA0AAFFAAA0AAFFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFFFFFFFFFFFFFFFFFC0803FFFC080
      3FFFFFFFFFFFFFFFFFFFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
      A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
      A6FFFFFFFFFFFFFFFFFFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFC0C080FFC0C0
      80FFC0803FFFC0803FFFFFFFFFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFF
      FFFFC0C0C0FFC0C0C0FFBF00BFFFBF00BFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FF000000FF000000FFBF0000FFBF0000FFBF0000FFBF00
      00FFBF0000FFBF0000FFBF0000FFBF0000FF000000FF000000FFBDB121FFBDB1
      21FF000000FF000000FFC0C0C0FFC0C0C0FFC7C7C7FFC7C7C7FF808080FF8080
      80FF000000FF000000FF000000FF000000FF0E0000FF0E0000FF060606FF0606
      06FF000000FF000000FFCCDFDFFFCCDFDFFF931E1EFF931E1EFF395564FF3955
      64FF008800FF008800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF
      00FF003F00FF003F00FFAAA0AAFFAAA0AAFFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFFFFFFFFFFFFFFFFFC0803FFFC080
      3FFFFFFFFFFFFFFFFFFFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
      A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
      A6FFFFFFFFFFFFFFFFFFF0CAA6FFF0CAA6FFC0C080FFC0C080FFC0A05FFFC0A0
      5FFFC05F3FFFC05F3FFFFFFFFFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFF
      FFFFC0C0C0FFC0C0C0FFBF00BFFFBF00BFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FF9C9C9CFF9C9C9CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFBFBF00FFBFBF00FF000000FF000000FFC0C0C0FFC0C0C0FFC7C7C7FFC7C7
      C7FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3D3FFE1E1E1FFE1E1
      E1FF373737FF373737FF7A7575FF7A7575FF85B0B0FF85B0B0FF007171FF0071
      71FF331827FF331827FF040004FF040004FF00FF00FF00FF00FF190019FF1900
      19FF413641FF413641FFB3B3B3FFB3B3B3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFFFFFFFFFFFFFFFFFC0803FFFC080
      3FFFFFFFFFFFFFFFFFFFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
      A6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CAA6FFF0CA
      A6FFFFFFFFFFFFFFFFFFF0CAA6FFF0CAA6FFC0C080FFC0C080FFC0A05FFFC0A0
      5FFFC05F3FFFC05F3FFFFFFFFFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFF
      FFFFC0C0C0FFC0C0C0FFBF00BFFFBF00BFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FF9C9C9CFF9C9C9CFF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FFBFBF00FFBFBF00FF000000FF000000FFC0C0C0FFC0C0C0FFC7C7C7FFC7C7
      C7FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3D3FFE1E1E1FFE1E1
      E1FF373737FF373737FF7A7575FF7A7575FF85B0B0FF85B0B0FF007171FF0071
      71FF331827FF331827FF040004FF040004FF00FF00FF00FF00FF190019FF1900
      19FF413641FF413641FFB3B3B3FFB3B3B3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFFFFFFFFFFFFFFFFFC0803FFFC080
      3FFFF0FBFFFFF0FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FBFFFFF0FB
      FFFFF0FBFFFFF0FBFFFFC0C080FFC0C080FFC0A05FFFC0A05FFFC05F3FFFC05F
      3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FFC0C0C0FF000000FF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8A8FFA8A8
      A8FF000000FF000000FF9C9C9CFF9C9C9CFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FF000000FF000000FF000000FF000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC5C5C5FFC5C5
      C5FF929292FF929292FF636363FF636363FF656161FF656161FF8D8282FF8D82
      82FFC6C6C6FFC6C6C6FF060006FF060006FF003E00FF003E00FF413741FF4137
      41FFDCDCDCFFDCDCDCFFC2C2C2FFC2C2C2FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFFFFFFFFFFFFFFFFFC0803FFFC080
      3FFFF0FBFFFFF0FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FBFFFFF0FB
      FFFFF0FBFFFFF0FBFFFFC0C080FFC0C080FFC0A05FFFC0A05FFFC05F3FFFC05F
      3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FFC0C0C0FF000000FF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8A8FFA8A8
      A8FF000000FF000000FF9C9C9CFF9C9C9CFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FF000000FF000000FF000000FF000000FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC5C5C5FFC5C5
      C5FF929292FF929292FF636363FF636363FF656161FF656161FF8D8282FF8D82
      82FFC6C6C6FFC6C6C6FF060006FF060006FF003E00FF003E00FF413741FF4137
      41FFDCDCDCFFDCDCDCFFC2C2C2FFC2C2C2FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFFFFFFFFFFFFFFFFFC0803FFFC080
      3FFFC0803FFFC0803FFFC0803FFFC0803FFFC0803FFFC0803FFFC0803FFFC080
      3FFFC0803FFFC0803FFFC0803FFFC0803FFFC0803FFFC0803FFFC0803FFFC080
      3FFFC0803FFFC0803FFFC0803FFFC0803FFFC05F3FFFC05F3FFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF9C9C9CFF9C9C9CFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC5C5C5FFC5C5C5FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC7C7C7FFC7C7
      C7FFC7C7C7FFC7C7C7FFAEAEAEFFAEAEAEFFA99FA9FFA99FA9FFB3B3B3FFB3B3
      B3FFC2C2C2FFC2C2C2FFC0C0C0FFC0C0C0FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFFFFFFFFFFFFFFFFFC0803FFFC080
      3FFFC0803FFFC0803FFFC0803FFFC0803FFFC0803FFFC0803FFFC0803FFFC080
      3FFFC0803FFFC0803FFFC0803FFFC0803FFFC0803FFFC0803FFFC0803FFFC080
      3FFFC0803FFFC0803FFFC0803FFFC0803FFFC05F3FFFC05F3FFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF9C9C9CFF9C9C9CFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC5C5C5FFC5C5C5FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC7C7C7FFC7C7
      C7FFC7C7C7FFC7C7C7FFAEAEAEFFAEAEAEFFA99FA9FFA99FA9FFB3B3B3FFB3B3
      B3FFC2C2C2FFC2C2C2FFC0C0C0FFC0C0C0FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
      C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFFFFFFFFFFFFFFFFFE2BFA9FFE2BF
      A9FFCC8C64FFCC8C64FFBF6F3EFFBF6F3EFFBB6934FFBB6934FFBB6934FFBB69
      34FFBB6934FFBB6934FFBB6834FFBB6834FFBB6834FFBB6834FFBA6833FFBA68
      33FFBA6833FFBA6833FFBA6733FFBA6733FFBC6C39FFBC6C39FFCA8A61FFCA8A
      61FFE3C1ADFFE3C1ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2BFA9FFE2BF
      A9FFCC8C64FFCC8C64FFBF6F3EFFBF6F3EFFBB6934FFBB6934FFBB6934FFBB69
      34FFBB6934FFBB6934FFBB6834FFBB6834FFBB6834FFBB6834FFBA6833FFBA68
      33FFBA6833FFBA6833FFBA6733FFBA6733FFBC6C39FFBC6C39FFCA8A61FFCA8A
      61FFE3C1ADFFE3C1ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2BFA9FFE2BF
      A9FFCC8C64FFCC8C64FFBF6F3EFFBF6F3EFFBB6934FFBB6934FFBB6934FFBB69
      34FFBB6934FFBB6934FFBB6834FFBB6834FFBB6834FFBB6834FFBA6833FFBA68
      33FFBA6833FFBA6833FFBA6733FFBA6733FFBC6C39FFBC6C39FFCA8A61FFCA8A
      61FFE3C1ADFFE3C1ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2BFA9FFE2BF
      A9FFCC8C64FFCC8C64FFBF6F3EFFBF6F3EFFBB6934FFBB6934FFBB6934FFBB69
      34FFBB6934FFBB6934FFBB6834FFBB6834FFBB6834FFBB6834FFBA6833FFBA68
      33FFBA6833FFBA6833FFBA6733FFBA6733FFBC6C39FFBC6C39FFCA8A61FFCA8A
      61FFE3C1ADFFE3C1ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC47A4BFFC47A
      4BFFF8F2EBFFF8F2EBFFF7ECDFFFF7ECDFFFF6EBDEFFF6EBDEFFF6EADEFFF6EA
      DEFFF6EADCFFF6EADCFFF6EADCFFF6EADCFFFAF3EBFFFAF3EBFFFAF3EBFFFAF3
      EBFFFAF2EAFFFAF2EAFFFCF7F3FFFCF7F3FFFCF8F4FFFCF8F4FFFEFEFDFFFEFE
      FDFFC2784BFFC2784BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFDFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFB392FFDFB3
      92FFD59C72FFD59C72FFD19566FFD19566FFCE9161FFCE9161FFCB8D5CFFCB8D
      5CFFC98959FFC98959FFC78654FFC78654FFC28350FFC28350FFC28350FFC283
      50FFC28350FFC28350FFC28350FFC28350FFC28350FFC28350FFC28350FFC283
      50FFD0A07BFFD0A07BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC47A4BFFC47A
      4BFFF8F2EBFFF8F2EBFFF7ECDFFFF7ECDFFFF6EBDEFFF6EBDEFFF6EADEFFF6EA
      DEFFF6EADCFFF6EADCFFF6EADCFFF6EADCFFFAF3EBFFFAF3EBFFFAF3EBFFFAF3
      EBFFFAF2EAFFFAF2EAFFFCF7F3FFFCF7F3FFFCF8F4FFFCF8F4FFFEFEFDFFFEFE
      FDFFC2784BFFC2784BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC47A4BFFC47A
      4BFFF8F2EBFFF8F2EBFFF7ECDFFFF7ECDFFFF6EBDEFFF6EBDEFFF6EADEFFF6EA
      DEFFF6EADCFFF6EADCFFF6EADCFFF6EADCFFFAF3EBFFFAF3EBFFFAF3EBFFFAF3
      EBFFFAF2EAFFFAF2EAFFFCF7F3FFFCF7F3FFFCF8F4FFFCF8F4FFFEFEFDFFFEFE
      FDFFC2784BFFC2784BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFAFAFAFFD4D4D4FFA8A8A8FFA3A3A3FFB9B9B9FFD0D0
      D0FFEDEDEDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFB392FFDFB3
      92FFD59C72FFD59C72FFD19566FFD19566FFCE9161FFCE9161FFCB8D5CFFCB8D
      5CFFC98959FFC98959FFC78654FFC78654FFC28350FFC28350FFC28350FFC283
      50FFC28350FFC28350FFC28350FFC28350FFC28350FFC28350FFC28350FFC283
      50FFD0A07BFFD0A07BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC47A4BFFC47A
      4BFFF8F2EBFFF8F2EBFFF7ECDFFFF7ECDFFFF6EBDEFFF6EBDEFFF6EADEFFF6EA
      DEFFF6EADCFFF6EADCFFF6EADCFFF6EADCFFFAF3EBFFFAF3EBFFFAF3EBFFFAF3
      EBFFFAF2EAFFFAF2EAFFFCF7F3FFFCF7F3FFFCF8F4FFFCF8F4FFFEFEFDFFFEFE
      FDFFC2784BFFC2784BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1753EFFC175
      3EFFF5EBDFFFF5EBDFFFFDBE66FFFDBE66FFFCBC65FFFCBC65FFFBBD63FFFBBD
      63FFFCBD62FFFCBD62FFFCBD62FFFCBD62FFFCBC60FFFCBC60FFFBBC61FFFBBC
      61FFFBBB5FFFFBBB5FFFFCBD5EFFFCBD5EFFFCBB60FFFCBB60FFFDFBF8FFFDFB
      F8FFBB6935FFBB6935FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF7F7F7FFCBCBCBFF999999FF777777FF151515FF252525FF4D4D4DFF7A7A
      7BFF444444FF615D5DFFA2A2A2FFCBCBCBFFDFDFDFFFF2F2F2FFFDFDFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7A073FFD7A0
      73FFF8F2EDFFF8F2EDFFF7F0EAFFF7F0EAFFF6EDE6FFF6EDE6FFF4EAE2FFF4EA
      E2FFF3E7DEFFF3E7DEFFF1E4DBFFF1E4DBFFF0E2D8FFF0E2D8FFF0E2D8FFF0E2
      D8FFF0E2D8FFF0E2D8FFF0E2D8FFF0E2D8FFF0E2D8FFF0E2D8FFF0E2D8FFF0E2
      D8FFC48A5CFFC48A5CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1753EFFC175
      3EFFF5EBDFFFF5EBDFFFFDBE66FFFDBE66FFFCBC65FFFCBC65FFFBBD63FFFBBD
      63FFFCBD62FFFCBD62FFFCBD62FFFCBD62FFFCBC60FFFCBC60FFFBBC61FFFBBC
      61FFFBBB5FFFFBBB5FFFFCBD5EFFFCBD5EFFFCBB60FFFCBB60FFFDFBF8FFFDFB
      F8FFBB6935FFBB6935FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1753EFFC175
      3EFFF5EBDFFFF5EBDFFFFDBE66FFFDBE66FFFCBC65FFFCBC65FFFBBD63FFFBBD
      63FFFCBD62FFFCBD62FFFCBD62FFFCBD62FFFCBC60FFFCBC60FFFBBC61FFFBBC
      61FFFBBB5FFFFBBB5FFFFCBD5EFFFCBD5EFFFCBB60FFFCBB60FFFDFBF8FFFDFB
      F8FFBB6935FFBB6935FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FFC4C4
      C4FF919191FF7B7B7BFF8A8A8AFF000000FF454546FF000000FF000000FF0000
      00FF000000FF4A6E7BFF131014FF19181AFF3B3B3DFF646464FF9B9B9BFFBDBD
      BDFFE2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7A073FFD7A0
      73FFF8F2EDFFF8F2EDFFF7F0EAFFF7F0EAFFF6EDE6FFF6EDE6FFF4EAE2FFF4EA
      E2FFF3E7DEFFF3E7DEFFF1E4DBFFF1E4DBFFF0E2D8FFF0E2D8FFF0E2D8FFF0E2
      D8FFF0E2D8FFF0E2D8FFF0E2D8FFF0E2D8FFF0E2D8FFF0E2D8FFF0E2D8FFF0E2
      D8FFC48A5CFFC48A5CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1753EFFC175
      3EFFF5EBDFFFF5EBDFFFFDBE66FFFDBE66FFFCBC65FFFCBC65FFFBBD63FFFBBD
      63FFFCBD62FFFCBD62FFFCBD62FFFCBD62FFFCBC60FFFCBC60FFFBBC61FFFBBC
      61FFFBBB5FFFFBBB5FFFFCBD5EFFFCBD5EFFFCBB60FFFCBB60FFFDFBF8FFFDFB
      F8FFBB6935FFBB6935FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC27A40FFC27A
      40FFF7EDE3FFF7EDE3FFFDC16CFFFDC16CFFFFD89FFFFFD89FFFFFD79DFFFFD7
      9DFFFFD69AFFFFD69AFFFFD797FFFFD797FFFFD695FFFFD695FFFFD694FFFFD6
      94FFFFD593FFFFD593FFFFD492FFFFD492FFFBBD63FFFBBD63FFFBF7F4FFFBF7
      F4FFBC6A35FFBC6A35FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF858585FFFFFFFFFFFFFFFFFFEFEFEFFFBDBDBDFF8C8C8CFF7A7A
      7AFF828282FF9A9A9AFF000000FF555555FF61605FFF131313FF090909FF0707
      08FF000000FFA5F0FFFF3C3B3CFF373434FF3B3839FF3B393AFF100F12FF2726
      28FF747575FFCAC4C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9A378FFD9A3
      78FFF9F3EEFFF9F3EEFFEBD2BDFFEBD2BDFFFFFFFFFFFFFFFFFFEBD3BEFFEBD3
      BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAC7ACFFEAC7
      ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E2D8FFF0E2
      D8FFC58B5DFFC58B5DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC27A40FFC27A
      40FFF7EDE3FFF7EDE3FFFDC16CFFFDC16CFF164055FF164055FF295F86FF295F
      86FF4A88BBFF4A88BBFF6E9EB2FF6E9EB2FFE3C999FFE3C999FFFFD694FFFFD6
      94FFFFD593FFFFD593FFFFD492FFFFD492FFFBBD63FFFBBD63FFFBF7F4FFFBF7
      F4FFBC6A35FFBC6A35FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC27A40FFC27A
      40FFF7EDE3FFF7EDE3FFFDC16CFFFDC16CFFFFD89FFFFFD89FFFFFD79DFFFFD7
      9DFFFFD69AFFFFD69AFFFFD797FFFFD797FFFFD695FFFFD695FFFFD694FFFFD6
      94FFFFD593FFFFD593FFFFD492FFFFD492FFFBBD63FFFBBD63FFFBF7F4FFFBF7
      F4FFBC6A35FFBC6A35FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFA8A8A8FF797979FFB5B5B5FF888888FF7C7C7CFF878787FF8686
      85FF4C4B4CFF070707FF000000FF363636FF3F3F3FFF1B1C1CFF242323FF0302
      04FF000000FFA1FFFFFF484444FF494647FF111112FF101011FF3D3D3DFF4141
      41FF332C2CFF1F5D76FFC5BFBDFFFFFFFFFFFFFFFFFFFFFFFFFFD9A378FFD9A3
      78FFF9F3EEFFF9F3EEFFEBD2BDFFEBD2BDFFFFFFFFFFFFFFFFFFEBD3BEFFEBD3
      BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAC7ACFFEAC7
      ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E2D8FFF0E2
      D8FFC58B5DFFC58B5DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC27A40FFC27A
      40FFF7EDE3FFF7EDE3FFFDC16CFFFDC16CFF164055FF164055FF295F86FF295F
      86FF4A88BBFF4A88BBFF6E9EB2FF6E9EB2FFE3C999FFE3C999FFFFD694FFFFD6
      94FFFFD593FFFFD593FFFFD492FFFFD492FFFBBD63FFFBBD63FFFBF7F4FFFBF7
      F4FFBC6A35FFBC6A35FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC57E44FFC57E
      44FFF7F0E6FFF7F0E6FFF8B353FFF8B353FFF7B354FFF7B354FFF7B452FFF7B4
      52FFF8B351FFF8B351FFF8B151FFF8B151FFF7B250FFF7B250FFF7B250FFF7B2
      50FFF7B14FFFF7B14FFFF7B14DFFF7B14DFFF7B14DFFF7B14DFFFCF9F5FFFCF9
      F5FFC0723AFFC0723AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF0F0F0FFBCBCBCFF8D8D8DFF808080FF8C8D8CFF6B6B6BFF2C2D2DFF0000
      00FF000000FF000000FF020202FF030303FF191919FF3B3B3AFF5C5A5AFF0000
      00FF221E20FF56737CFF1E1D20FF0C0C0DFF302E2EFF323131FF3C3A3AFF4240
      42FF221D1CFF6A9AAEFFCBC4C2FFFFFFFFFFFFFFFFFFFFFFFFFFDDA77CFFDDA7
      7CFFF9F3EFFFF9F3EFFFEBD0B9FFEBD0B9FFEBD0BAFFEBD0BAFFEBD0BAFFEBD0
      BAFFEBD0BAFFEBD0BAFFEBD0BAFFEBD0BAFFEBD1BCFFEBD1BCFFEACDB4FFEACD
      B4FFEACDB4FFEACDB4FFEACDB4FFEACDB4FFEACDB4FFEACDB4FFF0E2D8FFF0E2
      D8FFC5895AFFC5895AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC57E44FFC57E
      44FFF7F0E6FFF7F0E6FFF8B353FFF8B353FF2C6481FF2C6481FF93C7F9FF93C7
      F9FF90C9F9FF90C9F9FF3F84C9FF3F84C9FF2466A5FF2466A5FFD2A763FFD2A7
      63FFF7B14FFFF7B14FFFF7B14DFFF7B14DFFF7B14DFFF7B14DFFFCF9F5FFFCF9
      F5FFC0723AFFC0723AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC57E44FFC57E
      44FFF7F0E6FFF7F0E6FFF8B353FFF8B353FFF7B354FFF7B354FFF7B452FFF7B4
      52FFF8B351FFF8B351FFF8B151FFF8B151FFF7B250FFF7B250FFF7B250FFF7B2
      50FFF7B14FFFF7B14FFFF7B14DFFF7B14DFFF7B14DFFF7B14DFFFCF9F5FFFCF9
      F5FFC0723AFFC0723AFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFD9D9D9FFB1B1
      B1FF0E0E0EFF000000FF343434FF555555FF0E0E0FFF000000FF020204FF0F0E
      0FFF070708FF030303FF080809FF0E0E0EFF20201FFF6E6D6CFF000000FF1C1B
      1BFF131213FF312C2BFF3B3939FF313031FF343335FF333334FF212122FF1D1D
      1EFF332925FF84F4FFFFCDC2BDFFFFFFFFFFFFFFFFFFFFFFFFFFDDA77CFFDDA7
      7CFFF9F3EFFFF9F3EFFFEBD0B9FFEBD0B9FFEBD0BAFFEBD0BAFFEBD0BAFFEBD0
      BAFFEBD0BAFFEBD0BAFFEBD0BAFFEBD0BAFFEBD1BCFFEBD1BCFFEACDB4FFEACD
      B4FFEACDB4FFEACDB4FFEACDB4FFEACDB4FFEACDB4FFEACDB4FFF0E2D8FFF0E2
      D8FFC5895AFFC5895AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC57E44FFC57E
      44FFF7F0E6FFF7F0E6FFF8B353FFF8B353FF2C6481FF2C6481FF93C7F9FF93C7
      F9FF90C9F9FF90C9F9FF3F84C9FF3F84C9FF2466A5FF2466A5FFD2A763FFD2A7
      63FFF7B14FFFF7B14FFFF7B14DFFF7B14DFFF7B14DFFF7B14DFFFCF9F5FFFCF9
      F5FFC0723AFFC0723AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78346FFC783
      46FFF8F1E8FFF8F1E8FFFEE5D5FFFEE5D5FFFDE5D3FFFDE5D3FFFDE5D3FFFDE5
      D3FFFCE5D3FFFCE5D3FFFCE5D3FFFCE5D3FFFCE4D1FFFCE4D1FFFCE2CEFFFCE2
      CEFFFCE2CCFFFCE2CCFFFBE0C9FFFBE0C9FFFBE1C8FFFBE1C8FFFDFAF7FFFDFA
      F7FFC2783FFFC2783FFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFDADADAFF5151
      51FF767677FF282929FF000000FF030203FF070707FF101011FF080709FF1313
      14FF0C0B0DFF020304FF040404FF040405FF030305FF000000FF6D6C6CFF1717
      16FF0F0F0FFF1D1D20FF685F57FF847870FF5F5753FF3B3836FF383534FF2C2B
      2DFF282729FF181210FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFDFA981FFDFA9
      81FFF9F3EFFFF9F3EFFFEACEB6FFEACEB6FFFFFFFFFFFFFFFFFFEBD0BAFFEBD0
      BAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEACFB9FFEACF
      B9FFFBF6F2FFFBF6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E2D8FFF0E2
      D8FFC88C5DFFC88C5DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78346FFC783
      46FFF8F1E8FFF8F1E8FFFEE5D5FFFEE5D5FF4188A9FF4188A9FFE0F2FFFFE0F2
      FFFF5299D8FF5299D8FF1878BDFF1878BDFF4797C4FF4797C4FF468BC1FF468B
      C1FFDAD2CDFFDAD2CDFFFBE0C9FFFBE0C9FFFBE1C8FFFBE1C8FFFDFAF7FFFDFA
      F7FFC2783FFFC2783FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78346FFC783
      46FFF8F1E8FFF8F1E8FFFEE5D5FFFEE5D5FFFDE5D3FFFDE5D3FFFDE5D3FFFDE5
      D3FFFCE5D3FFFCE5D3FFFCE5D3FFFCE5D3FFFCE4D1FFFCE4D1FFFCE2CEFFFCE2
      CEFFFCE2CCFFFCE2CCFFFBE0C9FFFBE0C9FFFBE1C8FFFBE1C8FFFDFAF7FFFDFA
      F7FFC2783FFFC2783FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A1A1FF1A1A
      1AFF8C8C8BFF2C2B29FF050606FF090909FF090909FF111111FF08080AFF0505
      07FF0D0908FF33281DFF090706FF191919FF222223FF242424FF090909FF0B0B
      0AFF0F0F10FF202022FF443D39FF847971FF978D82FF90857AFF80766FFF736A
      62FF4B4643FF000000FFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFDFA981FFDFA9
      81FFF9F3EFFFF9F3EFFFEACEB6FFEACEB6FFFFFFFFFFFFFFFFFFEBD0BAFFEBD0
      BAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEACFB9FFEACF
      B9FFFBF6F2FFFBF6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E2D8FFF0E2
      D8FFC88C5DFFC88C5DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78346FFC783
      46FFF8F1E8FFF8F1E8FFFEE5D5FFFEE5D5FF4188A9FF4188A9FFE0F2FFFFE0F2
      FFFF5299D8FF5299D8FF1878BDFF1878BDFF4797C4FF4797C4FF468BC1FF468B
      C1FFDAD2CDFFDAD2CDFFFBE0C9FFFBE0C9FFFBE1C8FFFBE1C8FFFDFAF7FFFDFA
      F7FFC2783FFFC2783FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78549FFC785
      49FFF8F2EBFFF8F2EBFFFEE7D6FFFEE7D6FFFDE7D6FFFDE7D6FFFDE7D6FFFDE7
      D6FFFDE7D6FFFDE7D6FFFDE6D5FFFDE6D5FFFDE5D3FFFDE5D3FFFCE4D1FFFCE4
      D1FFFCE2CDFFFCE2CDFFFBE1CBFFFBE1CBFFFBE1C9FFFBE1C9FFFBF7F2FFFBF7
      F2FFC77E43FFC77E43FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF3D3D3DFF181818FF201F1FFF121213FF090A0BFF070504FF2C2117FF5A48
      37FF566982FF3775BCFF242933FF272525FF121112FF0F0F0FFF000000FF0001
      02FF0B0B0CFF313236FF1C1D23FF17181DFF19181CFF343131FF464240FF504A
      45FF514B45FF010102FFD7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFE1AD86FFE1AD
      86FFFAF4F0FFFAF4F0FFEACBB1FFEACBB1FFEACCB2FFEACCB2FFEACCB2FFEACC
      B2FFEACCB2FFEACCB2FFEACCB2FFEACCB2FFEACEB6FFEACEB6FFE8C7ABFFE8C7
      ABFFE8C7ABFFE8C7ABFFE8C8AFFFE8C8AFFFE8C8ADFFE8C8ADFFF0E2D8FFF0E2
      D8FFC38552FFC38552FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78549FFC785
      49FFF8F2EBFFF8F2EBFFFEE7D6FFFEE7D6FFA5B5BEFFA5B5BEFF78B5D5FF78B5
      D5FF8FB6D1FF8FB6D1FF53C9E4FF53C9E4FF59DFF5FF59DFF5FF76D0EDFF76D0
      EDFF4F9AD9FF4F9AD9FFE1D6CDFFE1D6CDFFFBE1C9FFFBE1C9FFFBF7F2FFFBF7
      F2FFC77E43FFC77E43FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78549FFC785
      49FFF8F2EBFFF8F2EBFFFEE7D6FFFEE7D6FFFDE7D6FFFDE7D6FFFDE7D6FFFDE7
      D6FFFDE7D6FFFDE7D6FFFDE6D5FFFDE6D5FFFDE5D3FFFDE5D3FFFCE4D1FFFCE4
      D1FFFCE2CDFFFCE2CDFFFBE1CBFFFBE1CBFFFBE1C9FFFBE1C9FFFBF7F2FFFBF7
      F2FFC77E43FFC77E43FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0807
      08FF030303FF5D5C5CFF2B2A2CFF211A14FF473623FF4F5662FF2B5E9AFF075E
      C5FF0253BBFF186FD3FF152136FF272423FF1A1A1CFF000000FF565351FF5750
      4AFF06060AFF70675EFF8D8278FF66625EFF4F4D4DFF4A494CFF4F4E52FF3C3B
      40FF202024FF050507FFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFE1AD86FFE1AD
      86FFFAF4F0FFFAF4F0FFEACBB1FFEACBB1FFEACCB2FFEACCB2FFEACCB2FFEACC
      B2FFEACCB2FFEACCB2FFEACCB2FFEACCB2FFEACEB6FFEACEB6FFE8C7ABFFE8C7
      ABFFE8C7ABFFE8C7ABFFE8C8AFFFE8C8AFFFE8C8ADFFE8C8ADFFF0E2D8FFF0E2
      D8FFC38552FFC38552FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78549FFC785
      49FFF8F2EBFFF8F2EBFFFEE7D6FFFEE7D6FFA5B5BEFFA5B5BEFF78B5D5FF78B5
      D5FF8FB6D1FF8FB6D1FF53C9E4FF53C9E4FF59DFF5FF59DFF5FF76D0EDFF76D0
      EDFF4F9AD9FF4F9AD9FFE1D6CDFFE1D6CDFFFBE1C9FFFBE1C9FFFBF7F2FFFBF7
      F2FFC77E43FFC77E43FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8874BFFC887
      4BFFF9F3ECFFF9F3ECFFFEE8D6FFFEE8D6FFFEE8D7FFFEE8D7FFFDE7D6FFFDE7
      D6FFFDE7D6FFFDE7D6FFFDE7D5FFFDE7D5FFFDE5D3FFFDE5D3FFFBE4D0FFFBE4
      D0FFFBE3CCFFFBE3CCFFFADFC7FFFADFC7FFFADFC5FFFADFC5FFFAF2EAFFFAF2
      EAFFC88346FFC88346FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0909
      09FF29241FFF4F4030FF49423DFF2E4D70FF0B57BCFF0453BCFF084FB2FF0B52
      AFFF0A53B0FF186CCFFF111D30FF191716FF272627FF545353FF1E1C1AFF514C
      46FF0C0D11FF83766EFF998B7DFF84786EFF4C4740FF504A44FF2B2824FF4542
      3FFF5C5B58FF39393AFFD9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFE3B08BFFE3B0
      8BFFFAF6F1FFFAF6F1FFEAC9ADFFEAC9ADFFFFFFFFFFFFFFFFFFEAC9AFFFEAC9
      AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8C7ABFFE8C7
      ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E5DBFFF1E5
      DBFFC58553FFC58553FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8874BFFC887
      4BFFF9F3ECFFF9F3ECFFFEE8D6FFFEE8D6FFFEE8D7FFFEE8D7FFB2C5CCFFB2C5
      CCFF74B8D6FF74B8D6FFC1F6FDFFC1F6FDFF61DFF7FF61DFF7FF5BE2F8FF5BE2
      F8FF77D3F0FF77D3F0FF4797DAFF4797DAFFE2D5C8FFE2D5C8FFFAF2EAFFFAF2
      EAFFC88346FFC88346FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8874BFFC887
      4BFFF9F3ECFFF9F3ECFFFEE8D6FFFEE8D6FFFEE8D7FFFEE8D7FFFDE7D6FFFDE7
      D6FFFDE7D6FFFDE7D6FFFDE7D5FFFDE7D5FFFDE5D3FFFDE5D3FFFBE4D0FFFBE4
      D0FFFBE3CCFFFBE3CCFFFADFC7FFFADFC7FFFADFC5FFFADFC5FFFAF2EAFFFAF2
      EAFFC88346FFC88346FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF332D25FF463D
      36FF3A5277FF0E50AEFF013262FF073875FF0A4FB2FF0C4EADFF0C51AEFF0C52
      B0FF0A52B0FF176BCFFF0B1A2FFF171413FF67615DFF96887BFF4E4E52FF4E4C
      49FF17171CFF877B6FFF8B7E74FF797168FF736B64FF706A65FF74716CFF716F
      6BFF83817DFF4F4E4EFFBBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFE3B08BFFE3B0
      8BFFFAF6F1FFFAF6F1FFEAC9ADFFEAC9ADFFFFFFFFFFFFFFFFFFEAC9AFFFEAC9
      AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8C7ABFFE8C7
      ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E5DBFFF1E5
      DBFFC58553FFC58553FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8874BFFC887
      4BFFF9F3ECFFF9F3ECFFFEE8D6FFFEE8D6FFFEE8D7FFFEE8D7FFB2C5CCFFB2C5
      CCFF74B8D6FF74B8D6FFC1F6FDFFC1F6FDFF61DFF7FF61DFF7FF5BE2F8FF5BE2
      F8FF77D3F0FF77D3F0FF4797DAFF4797DAFFE2D5C8FFE2D5C8FFFAF2EAFFFAF2
      EAFFC88346FFC88346FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88B4DFFC88B
      4DFFF9F4EDFFF9F4EDFFFEE8D8FFFEE8D8FFFEE8D8FFFEE8D8FFFEE8D7FFFEE8
      D7FFFEE7D6FFFEE7D6FFFDE5D3FFFDE5D3FFFCE4D1FFFCE4D1FFFBE1CCFFFBE1
      CCFFFAE0C7FFFAE0C7FFF9DDC2FFF9DDC2FFF8DCC1FFF8DCC1FFFAF4EDFFFAF4
      EDFFC88549FFC88549FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9E4F5FF0038
      A7FF0548AAFF084BB0FF092E52FF0B3972FF0A4EB0FF0C4FAEFF0C51ADFF0C51
      B0FF0B52AEFF176BCDFF0D1E34FF181515FF615B57FF6B645DFF666667FF3D3A
      39FF1C1D21FF998D82FF847A71FF7A746DFF7A7671FF827E7AFF8D8C88FFA19F
      9DFFBCBAB7FF39383AFF777778FFFFFFFFFFFFFFFFFFFFFFFFFFE5B38EFFE5B3
      8EFFFAF6F2FFFAF6F2FFE9C5A9FFE9C5A9FFE9C5ABFFE9C5ABFFEAC7ABFFEAC7
      ABFFE9C7ACFFE9C7ACFFE9C9ADFFE9C9ADFFE9C9AFFFE9C9AFFFE8C7ABFFE8C7
      ABFFE9C9AFFFE9C9AFFFE8C8AFFFE8C8AFFFE8CCB4FFE8CCB4FFF2E7DEFFF2E7
      DEFFC88957FFC88957FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88B4DFFC88B
      4DFFF9F4EDFFF9F4EDFFFEE8D8FFFEE8D8FFFEE8D8FFFEE8D8FFFEE8D7FFFEE8
      D7FFAFC5CCFFAFC5CCFF75CBE7FF75CBE7FFC7F7FDFFC7F7FDFF5CDCF5FF5CDC
      F5FF58E1F7FF58E1F7FF79D4F1FF79D4F1FF4998DBFF4998DBFFD2DFE9FFD2DF
      E9FFC88549FFC88549FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88B4DFFC88B
      4DFFF9F4EDFFF9F4EDFFFEE8D8FFFEE8D8FFFEE8D8FFFEE8D8FFFEE8D7FFFEE8
      D7FFFEE7D6FFFEE7D6FFFDE5D3FFFDE5D3FFFCE4D1FFFCE4D1FFFBE1CCFFFBE1
      CCFFFAE0C7FFFAE0C7FFF9DDC2FFF9DDC2FFF8DCC1FFF8DCC1FFFAF4EDFFFAF4
      EDFFC88549FFC88549FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1DCEDFF0033
      97FF0A46A2FF0A4CAFFF092F53FF0B3A72FF0B50B1FF0C4FAEFF0B4FADFF084D
      ADFF054BACFF0C62C9FF0C223AFF1A1615FF6A6766FF96938EFF605D59FF0000
      00FF2C2B2EFF817B76FF7C7874FF898682FF9B9895FFA3A19EFFA8A7A4FFB4B2
      B0FFACAAA7FF535354FF807E80FFFFFFFFFFFFFFFFFFFFFFFFFFE5B38EFFE5B3
      8EFFFAF6F2FFFAF6F2FFE9C5A9FFE9C5A9FFE9C5ABFFE9C5ABFFEAC7ABFFEAC7
      ABFFE9C7ACFFE9C7ACFFE9C9ADFFE9C9ADFFE9C9AFFFE9C9AFFFE8C7ABFFE8C7
      ABFFE9C9AFFFE9C9AFFFE8C8AFFFE8C8AFFFE8CCB4FFE8CCB4FFF2E7DEFFF2E7
      DEFFC88957FFC88957FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88B4DFFC88B
      4DFFF9F4EDFFF9F4EDFFFEE8D8FFFEE8D8FFFEE8D8FFFEE8D8FFFEE8D7FFFEE8
      D7FFAFC5CCFFAFC5CCFF75CBE7FF75CBE7FFC7F7FDFFC7F7FDFF5CDCF5FF5CDC
      F5FF58E1F7FF58E1F7FF79D4F1FF79D4F1FF4998DBFF4998DBFFD2DFE9FFD2DF
      E9FFC88549FFC88549FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88B4EFFC88B
      4EFFF9F4EFFFF9F4EFFFFEE7D7FFFEE7D7FFFDE7D6FFFDE7D6FFFDE7D5FFFDE7
      D5FFFDE6D4FFFDE6D4FFFCE6D2FFFCE6D2FFFBE1CCFFFBE1CCFFFADFC7FFFADF
      C7FFF8DCC1FFF8DCC1FFF6DABCFFF6DABCFFF6D8BAFFF6D8BAFFFAF4EFFFFAF4
      EFFFC8864AFFC8864AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1DCECFF0033
      97FF0A47A2FF0A4DAFFF0A2F53FF093771FF0346ACFF0143A7FF0246A8FF0247
      A9FF0146AAFF095FC8FF0E253FFF201C1BFF312F31FF1D1B1CFF000003FF2625
      26FF605E60FF39393CFF444447FF48484AFF49484AFF525152FF636363FF7A79
      78FF4A4949FFA9A9A9FFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFE7B693FFE7B6
      93FFFBF7F4FFFBF7F4FFE9C2A5FFE9C2A5FFFFFFFFFFFFFFFFFFE8C3A8FFE8C3
      A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8C7ABFFE8C7
      ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F1EBFFF7F1
      EBFFCB8E5DFFCB8E5DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88B4EFFC88B
      4EFFF9F4EFFFF9F4EFFFFEE7D7FFFEE7D7FFFDE7D6FFFDE7D6FFFDE7D5FFFDE7
      D5FFFDE6D4FFFDE6D4FFBCD6D5FFBCD6D5FF77D3EEFF77D3EEFFC7F7FDFFC7F7
      FDFF5DDCF5FF5DDCF5FF59E2F7FF59E2F7FF78D6F2FF78D6F2FF4FA0E0FF4FA0
      E0FFAE8762FFAE8762FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88B4EFFC88B
      4EFFF9F4EFFFF9F4EFFFFEE7D7FFFEE7D7FFFDE7D6FFFDE7D6FFFDE7D5FFFDE7
      D5FFFDE6D4FFFDE6D4FFFCE6D2FFFCE6D2FFFBE1CCFFFBE1CCFFFADFC7FFFADF
      C7FFF8DCC1FFF8DCC1FFF6DABCFFF6DABCFFF6D8BAFFF6D8BAFFFAF4EFFFFAF4
      EFFFC8864AFFC8864AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1DCECFF0034
      97FF0844A0FF0242A7FF092F54FF07356FFF0144AAFF0143A7FF0347A9FF0348
      A9FF0045A9FF095FC9FF12283FFF2B2827FF121215FF161618FF201F1FFF0000
      00FF292A29FF100F10FF1D1D1CFF302F2FFF434343FF535353FF686769FF6E6D
      6EFF696969FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7B693FFE7B6
      93FFFBF7F4FFFBF7F4FFE9C2A5FFE9C2A5FFFFFFFFFFFFFFFFFFE8C3A8FFE8C3
      A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8C7ABFFE8C7
      ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F1EBFFF7F1
      EBFFCB8E5DFFCB8E5DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88B4EFFC88B
      4EFFF9F4EFFFF9F4EFFFFEE7D7FFFEE7D7FFFDE7D6FFFDE7D6FFFDE7D5FFFDE7
      D5FFFDE6D4FFFDE6D4FFBCD6D5FFBCD6D5FF77D3EEFF77D3EEFFC7F7FDFFC7F7
      FDFF5DDCF5FF5DDCF5FF59E2F7FF59E2F7FF78D6F2FF78D6F2FF4FA0E0FF4FA0
      E0FFAE8762FFAE8762FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88C4FFFC88C
      4FFFF9F4F0FFF9F4F0FFFCE6D3FFFCE6D3FFFCE6D4FFFCE6D4FFFDE7D3FFFDE7
      D3FFFCE4D1FFFCE4D1FFFBE3CDFFFBE3CDFFFAE0C8FFFAE0C8FFF8DCC1FFF8DC
      C1FFF5D6BAFFF5D6BAFFF3D4B4FFF3D4B4FFF1D2B2FFF1D2B2FFF8F4F0FFF8F4
      F0FFC5854AFFC5854AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1DCEDFF002B
      91FF003A9BFF003EA5FF0A3054FF07346FFF0144AAFF0043A5FF0044A8FF0043
      A9FF104EABFF124EAAFF053371FF130C07FF080709FF030204FF000000FF2D2D
      2EFF69696BFF474749FF414143FF38383AFF2D2D2FFF222224FF121213FF1212
      13FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9B997FFE9B9
      97FFFBF7F4FFFBF7F4FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2
      A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2
      A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFFBF7F4FFFBF7
      F4FFCE9262FFCE9262FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88C4FFFC88C
      4FFFF9F4F0FFF9F4F0FFFCE6D3FFFCE6D3FFFCE6D4FFFCE6D4FFFDE7D3FFFDE7
      D3FFFCE4D1FFFCE4D1FFFBE3CDFFFBE3CDFFBDD4D0FFBDD4D0FF7BD4EEFF7BD4
      EEFFC3F6FDFFC3F6FDFF6ADDF6FF6ADDF6FF6BCAEDFF6BCAEDFF61A2D7FF61A2
      D7FF6398C8FF6398C8FFE5EFF7FFE5EFF7FFFFFFFFFFFFFFFFFFC88C4FFFC88C
      4FFFF9F4F0FFF9F4F0FFFCE6D3FFFCE6D3FFFCE6D4FFFCE6D4FFFDE7D3FFFDE7
      D3FFFCE4D1FFFCE4D1FFFBE3CDFFFBE3CDFFFAE0C8FFFAE0C8FFF8DCC1FFF8DC
      C1FFF5D6BAFFF5D6BAFFF3D4B4FFF3D4B4FFF1D2B2FFF1D2B2FFF8F4F0FFF8F4
      F0FFC5854AFFC5854AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDAECFF0026
      8FFF013C9AFF003EA5FF0A3154FF073671FF003EA7FF0A48A7FF0D429BFF4068
      ABFF3069B0FF387EC7FF0E8CE6FF2D1407FF32261EFF332921FF433B35FF4038
      32FF38312BFF3D3835FF413D3AFF46413FFF4A433EFF3B3A3AFF3C3C3EFFB0B0
      B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9B997FFE9B9
      97FFFBF7F4FFFBF7F4FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2
      A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2
      A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFFBF7F4FFFBF7
      F4FFCE9262FFCE9262FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88C4FFFC88C
      4FFFF9F4F0FFF9F4F0FFFCE6D3FFFCE6D3FFFCE6D4FFFCE6D4FFFDE7D3FFFDE7
      D3FFFCE4D1FFFCE4D1FFFBE3CDFFFBE3CDFFBDD4D0FFBDD4D0FF7BD4EEFF7BD4
      EEFFC3F6FDFFC3F6FDFF6ADDF6FF6ADDF6FF6BCAEDFF6BCAEDFF61A2D7FF61A2
      D7FF6398C8FF6398C8FFE5EFF7FFE5EFF7FFFFFFFFFFFFFFFFFFC88C4FFFC88C
      4FFFF9F5F1FFF9F5F1FFFCE3CFFFFCE3CFFFFBE4D0FFFBE4D0FFFCE4CFFFFCE4
      CFFFFCE3CDFFFCE3CDFFFAE1CAFFFAE1CAFFF9DDC3FFF9DDC3FFF6D9BBFFF6D9
      BBFFF4E9DFFFF4E9DFFFF7F2ECFFF7F2ECFFFBF7F3FFFBF7F3FFF5EFE9FFF5EF
      E9FFC27E46FFC27E46FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDAECFF0026
      8FFF003A9BFF003BA4FF072749FF032455FF3260ADFF2B66AFFF2F7AC5FF0763
      BFFF075FBAFF1369BCFF32ACF9FF2988D0FF0469C1FF0B64B0FF165C98FF1554
      8BFF134F83FF1E4568FF243E56FF233B50FF074C87FFBEC6CEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBBC9AFFEBBC
      9AFFFBF7F4FFFBF7F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7F4FFFBF7
      F4FFD19668FFD19668FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88C4FFFC88C
      4FFFF9F5F1FFF9F5F1FFFCE3CFFFFCE3CFFFFBE4D0FFFBE4D0FFFCE4CFFFFCE4
      CFFFFCE3CDFFFCE3CDFFFAE1CAFFFAE1CAFFF9DDC3FFF9DDC3FFAECDC9FFAECD
      C9FF80D5EEFF80D5EEFFB1E3F9FFB1E3F9FF8ABFE7FF8ABFE7FFADD3F6FFADD3
      F6FFC3E0FCFFC3E0FCFF69A1D4FF69A1D4FFFFFFFFFFFFFFFFFFC88C4FFFC88C
      4FFFF9F5F1FFF9F5F1FFFCE3CFFFFCE3CFFFFBE4D0FFFBE4D0FFFCE4CFFFFCE4
      CFFFFCE3CDFFFCE3CDFFFAE1CAFFFAE1CAFFF9DDC3FFF9DDC3FFF6D9BBFFF6D9
      BBFFF4E9DFFFF4E9DFFFF7F2ECFFF7F2ECFFFBF7F3FFFBF7F3FFF5EFE9FFF5EF
      E9FFC27E46FFC27E46FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDAECFF0023
      8DFF043793FF2054AAFF092645FF144577FF0B6AC8FF0860BBFF146BBFFF3898
      DAFF40B4F4FF43C3FFFF25AEFFFF3BBDFFFF44C3FFFF4BC7FFFF3DBCFFFF3ABA
      FFFF3EBAFFFF2EAFFFFF2DAFFFFF21A6FFFF008FF7FFDEF3FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBBC9AFFEBBC
      9AFFFBF7F4FFFBF7F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF7F4FFFBF7
      F4FFD19668FFD19668FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88C4FFFC88C
      4FFFF9F5F1FFF9F5F1FFFCE3CFFFFCE3CFFFFBE4D0FFFBE4D0FFFCE4CFFFFCE4
      CFFFFCE3CDFFFCE3CDFFFAE1CAFFFAE1CAFFF9DDC3FFF9DDC3FFAECDC9FFAECD
      C9FF80D5EEFF80D5EEFFB1E3F9FFB1E3F9FF8ABFE7FF8ABFE7FFADD3F6FFADD3
      F6FFC3E0FCFFC3E0FCFF69A1D4FF69A1D4FFFFFFFFFFFFFFFFFFC88C50FFC88C
      50FFF9F5F1FFF9F5F1FFFCE3CDFFFCE3CDFFFBE3CEFFFBE3CEFFFBE3CDFFFBE3
      CDFFFBE2CBFFFBE2CBFFF9E0C8FFF9E0C8FFF8DCC1FFF8DCC1FFF5D6B9FFF5D6
      B9FFFDFBF8FFFDFBF8FFFCE6CDFFFCE6CDFFFAE5C9FFFAE5C9FFE2B583FFE2B5
      83FFD5A783FFD5A783FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFD9EAFF074D
      A4FF2070C1FF0C6DCCFF052448FF124579FF35A1EBFF3FBCFFFF37C6FFFF1DB2
      FFFF1DAFFFFF1DADFFFF1FADFFFF1DABFFFF1CA9FFFF1BA7FEFF16A5FDFF0FA2
      FDFF069FFDFF0BA2FEFF51BDFEFF9CDAFFFFEBF9FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECBE9DFFECBE
      9DFFFBF7F4FFFBF7F4FF9BD5A4FF9BD5A4FF97D3A0FF97D3A0FF93D09CFF93D0
      9CFF8FCE97FF8FCE97FF8ACB92FF8ACB92FF86C98DFF86C98DFF81C588FF81C5
      88FF7CC283FF7CC283FF78C07EFF78C07EFF74BD7AFF74BD7AFFFBF7F4FFFBF7
      F4FFD49A6DFFD49A6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88C50FFC88C
      50FFF9F5F1FFF9F5F1FFFCE3CDFFFCE3CDFFFBE3CEFFFBE3CEFFFBE3CDFFFBE3
      CDFFFBE2CBFFFBE2CBFFF9E0C8FFF9E0C8FFF8DCC1FFF8DCC1FFF5D6B9FFF5D6
      B9FFAEE3F1FFAEE3F1FF75BDE7FF75BDE7FFB3D2F0FFB3D2F0FFE5F3FFFFE5F3
      FFFFABD2EFFFABD2EFFF5795CCFF5795CCFFFFFFFFFFFFFFFFFFC88C50FFC88C
      50FFF9F5F1FFF9F5F1FFFCE3CDFFFCE3CDFFFBE3CEFFFBE3CEFFFBE3CDFFFBE3
      CDFFFBE2CBFFFBE2CBFFF9E0C8FFF9E0C8FFF8DCC1FFF8DCC1FFF5D6B9FFF5D6
      B9FFFDFBF8FFFDFBF8FFFCE6CDFFFCE6CDFFFAE5C9FFFAE5C9FFE2B583FFE2B5
      83FFD5A783FFD5A783FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8AB5E0FF0056
      B7FF166DC0FF349BDFFF2980BEFF2070B0FF11518BFF114F8AFF124F8AFF155A
      97FF1665A6FF1871B5FF147AC4FF0F84D3FF098ADEFF0492ECFF48BAFFFF92D5
      FEFFDBF1FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6565
      65FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECBE9DFFECBE
      9DFFFBF7F4FFFBF7F4FF9BD5A4FF9BD5A4FF97D3A0FF97D3A0FF93D09CFF93D0
      9CFF8FCE97FF8FCE97FF8ACB92FF8ACB92FF86C98DFF86C98DFF81C588FF81C5
      88FF7CC283FF7CC283FF78C07EFF78C07EFF74BD7AFF74BD7AFFFBF7F4FFFBF7
      F4FFD49A6DFFD49A6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88C50FFC88C
      50FFF9F5F1FFF9F5F1FFFCE3CDFFFCE3CDFFFBE3CEFFFBE3CEFFFBE3CDFFFBE3
      CDFFFBE2CBFFFBE2CBFFF9E0C8FFF9E0C8FFF8DCC1FFF8DCC1FFF5D6B9FFF5D6
      B9FFAEE3F1FFAEE3F1FF75BDE7FF75BDE7FFB3D2F0FFB3D2F0FFE5F3FFFFE5F3
      FFFFABD2EFFFABD2EFFF5795CCFF5795CCFFFFFFFFFFFFFFFFFFCA9158FFCA91
      58FFFAF6F2FFFAF6F2FFFAE0C7FFFAE0C7FFFBE1C9FFFBE1C9FFFBE2C9FFFBE2
      C9FFFBE0C8FFFBE0C8FFF9DFC4FFF9DFC4FFF8DBC0FFF8DBC0FFF4D6B7FFF4D6
      B7FFFFFBF8FFFFFBF8FFF6D8B3FFF6D8B3FFE1AF7BFFE1AF7BFFDC9567FFDC95
      67FFFDFBFAFFFDFBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBADAF1FF30AB
      F1FF18B1FFFF01A0FFFF06A4FFFF08A6FFFF0BA9FFFF0CA9FFFF0EAAFFFF10A2
      FCFF0B96EEFF0188E0FF3894D4FF7CA2C3FFBCC9D8FFFFFFFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080
      80FF656565FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFC5A7FFEFC5
      A7FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
      F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
      F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
      F4FFD8A276FFD8A276FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCA9158FFCA91
      58FFFAF6F2FFFAF6F2FFFAE0C7FFFAE0C7FFFBE1C9FFFBE1C9FFFBE2C9FFFBE2
      C9FFFBE0C8FFFBE0C8FFF9DFC4FFF9DFC4FFF8DBC0FFF8DBC0FFF4D6B7FFF4D6
      B7FFFFFBF8FFFFFBF8FFB5CBC1FFB5CBC1FF56A4D8FF56A4D8FF84B0DBFF84B0
      DBFF449CD0FF449CD0FFB0D8EEFFB0D8EEFFFFFFFFFFFFFFFFFFCA9158FFCA91
      58FFFAF6F2FFFAF6F2FFFAE0C7FFFAE0C7FFFBE1C9FFFBE1C9FFFBE2C9FFFBE2
      C9FFFBE0C8FFFBE0C8FFF9DFC4FFF9DFC4FFF8DBC0FFF8DBC0FFF4D6B7FFF4D6
      B7FFFFFBF8FFFFFBF8FFF6D8B3FFF6D8B3FFE1AF7BFFE1AF7BFFDC9567FFDC95
      67FFFDFBFAFFFDFBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFEFFF1F9FEFFE0F3FEFFD1EDFEFFC3E8FEFF99D8
      FFFFBFE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFC5A7FFEFC5
      A7FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
      F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
      F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
      F4FFD8A276FFD8A276FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCA9158FFCA91
      58FFFAF6F2FFFAF6F2FFFAE0C7FFFAE0C7FFFBE1C9FFFBE1C9FFFBE2C9FFFBE2
      C9FFFBE0C8FFFBE0C8FFF9DFC4FFF9DFC4FFF8DBC0FFF8DBC0FFF4D6B7FFF4D6
      B7FFFFFBF8FFFFFBF8FFB5CBC1FFB5CBC1FF56A4D8FF56A4D8FF84B0DBFF84B0
      DBFF449CD0FF449CD0FFB0D8EEFFB0D8EEFFFFFFFFFFFFFFFFFFD2A172FFD2A1
      72FFF8F3EDFFF8F3EDFFF8F4EEFFF8F4EEFFF8F4EDFFF8F4EDFFF8F3EDFFF8F3
      EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF8F2ECFFF7F2ECFFF7F2
      ECFFF2E6D7FFF2E6D7FFE2B17BFFE2B17BFFDC9769FFDC9769FFFDFBFAFFFDFB
      FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E1D2FFF7E1
      D2FFF1C8ABFFF1C8ABFFEDBF9EFFEDBF9EFFEBBD9CFFEBBD9CFFEBBB99FFEBBB
      99FFE9B995FFE9B995FFE7B692FFE7B692FFE6B48FFFE6B48FFFE4B18BFFE4B1
      8BFFE2AE87FFE2AE87FFE0AB83FFE0AB83FFDDA87EFFDDA87EFFDCA47BFFDCA4
      7BFFE2B595FFE2B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2A172FFD2A1
      72FFF8F3EDFFF8F3EDFFF8F4EEFFF8F4EEFFF8F4EDFFF8F4EDFFF8F3EDFFF8F3
      EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF8F2ECFFF7F2ECFFF7F2
      ECFFF2E6D7FFF2E6D7FFE2B17BFFE2B17BFFDC9769FFDC9769FFFDFBFAFFFDFB
      FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2A172FFD2A1
      72FFF8F3EDFFF8F3EDFFF8F4EEFFF8F4EEFFF8F4EDFFF8F4EDFFF8F3EDFFF8F3
      EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF8F2ECFFF7F2ECFFF7F2
      ECFFF2E6D7FFF2E6D7FFE2B17BFFE2B17BFFDC9769FFDC9769FFFDFBFAFFFDFB
      FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E1D2FFF7E1
      D2FFF1C8ABFFF1C8ABFFEDBF9EFFEDBF9EFFEBBD9CFFEBBD9CFFEBBB99FFEBBB
      99FFE9B995FFE9B995FFE7B692FFE7B692FFE6B48FFFE6B48FFFE4B18BFFE4B1
      8BFFE2AE87FFE2AE87FFE0AB83FFE0AB83FFDDA87EFFDDA87EFFDCA47BFFDCA4
      7BFFE2B595FFE2B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2A172FFD2A1
      72FFF8F3EDFFF8F3EDFFF8F4EEFFF8F4EEFFF8F4EDFFF8F4EDFFF8F3EDFFF8F3
      EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF8F2ECFFF7F2ECFFF7F2
      ECFFF2E6D7FFF2E6D7FFE2B17BFFE2B17BFFDC9769FFDC9769FFFDFBFAFFFDFB
      FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8CEB8FFE8CE
      B8FFD7A97AFFD7A97AFFCC9359FFCC9359FFCA8F53FFCA8F53FFCA8F53FFCA8F
      53FFCA8F53FFCA8F53FFCA9053FFCA9053FFCB8F53FFCB8F53FFC98E53FFC98E
      53FFCF9C67FFCF9C67FFDDB08FFFDDB08FFFFDFBFAFFFDFBFAFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8CEB8FFE8CE
      B8FFD7A97AFFD7A97AFFCC9359FFCC9359FFCA8F53FFCA8F53FFCA8F53FFCA8F
      53FFCA8F53FFCA8F53FFCA9053FFCA9053FFCB8F53FFCB8F53FFC98E53FFC98E
      53FFCF9C67FFCF9C67FFDDB08FFFDDB08FFFFDFBFAFFFDFBFAFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8CEB8FFE8CE
      B8FFD7A97AFFD7A97AFFCC9359FFCC9359FFCA8F53FFCA8F53FFCA8F53FFCA8F
      53FFCA8F53FFCA8F53FFCA9053FFCA9053FFCB8F53FFCB8F53FFC98E53FFC98E
      53FFCF9C67FFCF9C67FFDDB08FFFDDB08FFFFDFBFAFFFDFBFAFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8CEB8FFE8CE
      B8FFD7A97AFFD7A97AFFCC9359FFCC9359FFCA8F53FFCA8F53FFCA8F53FFCA8F
      53FFCA8F53FFCA8F53FFCA9053FFCA9053FFCB8F53FFCB8F53FFC98E53FFC98E
      53FFCF9C67FFCF9C67FFDDB08FFFDDB08FFFFDFBFAFFFDFBFAFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFE2BFA9FFE2BF
      A9FFCC8C64FFCC8C64FFBF6F3EFFBF6F3EFFBB6934FFBB6934FFBB6934FFBB69
      34FFBB6934FFBB6934FFBB6834FFBB6834FFBB6834FFBB6834FFBA6833FFBA68
      33FF626834FF626834FF1F6935FF1F6935FF176935FF176935FF206B37FF206B
      37FF75936DFF75936DFFFFFFFFFFFFFFFFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFE2BFA9FFE2BF
      A9FFCC8C64FFCC8C64FFBF6F3EFFBF6F3EFFBB6934FFBB6934FFBB6934FFBB69
      34FFBB6934FFBB6934FFBB6834FFBB6834FFBB6834FFBB6834FFBA6833FFBA68
      33FF626834FF626834FF1F6935FF1F6935FF176935FF176935FF206B37FF206B
      37FF75936DFF75936DFFFFFFFFFFFFFFFFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFC47A4BFFC47A
      4BFFF8F2EBFFF8F2EBFFF7ECDFFFF7ECDFFFF6EBDEFFF6EBDEFFF6EADEFFF6EA
      DEFFF6EADCFFF6EADCFFF6EADCFFF6EADCFFFAF3EBFFFAF3EBFF85AC8DFF85AC
      8DFF268B51FF268B51FF62B98CFF62B98CFF94D2B1FF94D2B1FF62B98CFF62B9
      8CFF268B51FF268B51FF80AD90FF80AD90FFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F8FBF900F8FBF900A0C7A600A0C7
      A60035873D0035873D00197724001977240016751F0016751F00287E2F00287E
      2F0097BF990097BF9900F6FAF800F6FAF800F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFC47A4BFFC47A
      4BFFF8F2EBFFF8F2EBFFF7ECDFFFF7ECDFFFF6EBDEFFF6EBDEFFF6EADEFFF6EA
      DEFFF6EADCFFF6EADCFFF6EADCFFF6EADCFFFAF3EBFFFAF3EBFF85AC8DFF85AC
      8DFF268B51FF268B51FF62B98CFF62B98CFF94D2B1FF94D2B1FF62B98CFF62B9
      8CFF268B51FF268B51FF80AD90FF80AD90FFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F8FBF900F8FBF900A0C7A600A0C7
      A60035873D0035873D00197724001977240016751F0016751F00287E2F00287E
      2F0097BF990097BF9900F6FAF800F6FAF800F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000C6A18C00C6A18C00C38E6800C38E
      6800C08B6600C08B6600BE886400BE886400BB856100BB856100B9835F00B983
      5F00B47E5C00B47E5C00B27C5A00B27C5A00B17B5800B17B5800AE795700AE79
      5700AD765600AD765600AB755400AB755400A9735300A9735300A9715100A971
      5100C6A18C00C6A18C00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFC1753EFFC175
      3EFFF5EBDFFFF5EBDFFFFDBE66FFFDBE66FFFCBC65FFFCBC65FFFBBD63FFFBBD
      63FFFCBD62FFFCBD62FFFCBD62FFFCBD62FFFCBC60FFFCBC60FF206D38FF206D
      38FF60B98AFF60B98AFF5EB986FF5EB986FFFFFFFFFFFFFFFFFF5EB886FF5EB8
      86FF65BB8EFF65BB8EFF1E6E3BFF1E6E3BFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000D0E5D400D0E5D400388C4700388C47001E842E001E84
      2E0085C8990085C89900AADCB900AADCB900ABDBBB00ABDBBB0080C5930080C5
      930012761F0012761F001C7422001C742200C7DDC900C7DDC900F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000C6A18C00C6A18C00C38E6800C38E
      6800C08B6600C08B6600BE886400BE886400BB856100BB856100B9835F00B983
      5F00B47E5C00B47E5C00B27C5A00B27C5A00B17B5800B17B5800AE795700AE79
      5700AD765600AD765600AB755400AB755400A9735300A9735300A9715100A971
      5100C6A18C00C6A18C00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFC1753EFFC175
      3EFFF5EBDFFFF5EBDFFFFDBE66FFFDBE66FFFCBC65FFFCBC65FFFBBD63FFFBBD
      63FFFCBD62FFFCBD62FFFCBD62FFFCBD62FFFCBC60FFFCBC60FF206D38FF206D
      38FF60B98AFF60B98AFF5EB986FF5EB986FFFFFFFFFFFFFFFFFF5EB886FF5EB8
      86FF65BB8EFF65BB8EFF1E6E3BFF1E6E3BFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000D0E5D400D0E5D400388C4700388C47001E842E001E84
      2E0085C8990085C89900AADCB900AADCB900ABDBBB00ABDBBB0080C5930080C5
      930012761F0012761F001C7422001C742200C7DDC900C7DDC900F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000C8926C00C8926C00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000A9725100A9725100F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000DFB4
      9300DFB49300D59D7400D1966800D1966800CE926300CB8E5E00CB8E5E00C98A
      5B00C98A5B00C7875600C3845200C3845200C3845200C3845200C3845200C384
      5200C3845200C3845200C3845200C3845200D0A17D00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFC27A40FFC27A
      40FFF7EDE3FFF7EDE3FFFDC16CFFFDC16CFFFFD89FFFFFD89FFFFFD79DFFFFD7
      9DFFFFD69AFFFFD69AFFFFD797FFFFD797FFFFD695FFFFD695FF2F794AFF2F79
      4AFF9BD4B5FF9BD4B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF94D2B1FF94D2B1FF176935FF176935FFF0F0F000F0F0F000F0F0F000F0F0
      F000D1E6D700D1E6D700348A4400348A440056AF6E0056AF6E00CAEDD400CAED
      D4008DCF9D008DCF9D005DB876005DB876005AB574005AB574008DCF9F008DCF
      9F00C9EED600C9EED6004CA663004CA663000B6911000B691100C6DDC900C6DD
      C900F0F0F000F0F0F000F0F0F000F0F0F000C8926C00C8926C00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000A9725100A9725100F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000DFB4
      9300DFB49300D59D7400D1966800D1966800CE926300CB8E5E00CB8E5E00C98A
      5B00C98A5B00C7875600C3845200C3845200C3845200C3845200C3845200C384
      5200C3845200C3845200C3845200C3845200D0A17D00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFC27A40FFC27A
      40FFF7EDE3FFF7EDE3FFFDC16CFFFDC16CFFFFD89FFFFFD89FFFFFD79DFFFFD7
      9DFFFFD69AFFFFD69AFFFFD797FFFFD797FFFFD695FFFFD695FF2F794AFF2F79
      4AFF9BD4B5FF9BD4B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF94D2B1FF94D2B1FF176935FF176935FFF0F0F000F0F0F000F0F0F000F0F0
      F000D1E6D700D1E6D700348A4400348A440056AF6E0056AF6E00CAEDD400CAED
      D4008DCF9D008DCF9D005DB876005DB876005AB574005AB574008DCF9F008DCF
      9F00C9EED600C9EED6004CA663004CA663000B6911000B691100C6DDC900C6DD
      C900F0F0F000F0F0F000F0F0F000F0F0F000CA946E00CA946E00F0F0F000F0F0
      F000FFAC4800FFAC4800FDFDFD00FDFDFD00B2B2B200B2B2B200ADADAD00ADAD
      AD00A8A8A800A8A8A800A4A4A400A4A4A4009F9F9F009F9F9F009D9D9D009D9D
      9D009B9B9B009B9B9B0099999900999999009999990099999900F0F0F000F0F0
      F000AA735300AA735300F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000D7A1
      7500D7A17500F8F2ED00F7F0EA00F7F0EA00F6EDE600F4EAE200F4EAE200F3E7
      DE00F3E7DE00F1E4DB00F0E2D800F0E2D800F0E2D800F0E2D800F0E2D800F0E2
      D800F0E2D800F0E2D800F0E2D800F0E2D800C58B5E00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFC57E44FFC57E
      44FFF7F0E6FFF7F0E6FFF8B353FFF8B353FFF7B354FFF7B354FFF7B452FFF7B4
      52FFF8B351FFF8B351FFF8B151FFF8B151FFF7B250FFF7B250FF48875BFF4887
      5BFF8FD3B0FF8FD3B0FF91D6B0FF91D6B0FFFFFFFFFFFFFFFFFF63BB8BFF63BB
      8BFF65BB8EFF65BB8EFF1E6E3BFF1E6E3BFFF0F0F000F0F0F000FBFCFB00FBFC
      FB004D9B5D004D9B5D005DB573005DB57300C9EBCE00C9EBCE004EB469004EB4
      690056B76D0056B76D0042AE5C0042AE5C0043AA5B0043AA5B0051B1690051B1
      690049AF650049AF6500CAEDD400CAEDD4004EA664004EA664001D7723001D77
      2300F8FBF800F8FBF800F0F0F000F0F0F000CA946E00CA946E00F0F0F000F0F0
      F000FFAC4800FFAC4800FDFDFD00FDFDFD00B2B2B200B2B2B200ADADAD00ADAD
      AD00A8A8A800A8A8A800A4A4A400A4A4A4009F9F9F009F9F9F009D9D9D009D9D
      9D009B9B9B009B9B9B0099999900999999009999990099999900F0F0F000F0F0
      F000AA735300AA735300F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000D7A1
      7500D7A17500F8F2ED00F7F0EA00F7F0EA00F6EDE600F4EAE200F4EAE200F3E7
      DE00F3E7DE00F1E4DB00F0E2D800F0E2D800F0E2D800F0E2D800F0E2D800F0E2
      D800F0E2D800F0E2D800F0E2D800F0E2D800C58B5E00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFC57E44FFC57E
      44FFF7F0E6FFF7F0E6FFF8B353FFF8B353FFF7B354FFF7B354FFF7B452FFF7B4
      52FFF8B351FFF8B351FFF8B151FFF8B151FFF7B250FFF7B250FF48875BFF4887
      5BFF8FD3B0FF8FD3B0FF91D6B0FF91D6B0FFFFFFFFFFFFFFFFFF63BB8BFF63BB
      8BFF65BB8EFF65BB8EFF1E6E3BFF1E6E3BFFF0F0F000F0F0F000FBFCFB00FBFC
      FB004D9B5D004D9B5D005DB573005DB57300C9EBCE00C9EBCE004EB469004EB4
      690056B76D0056B76D0042AE5C0042AE5C0043AA5B0043AA5B0051B1690051B1
      690049AF650049AF6500CAEDD400CAEDD4004EA664004EA664001D7723001D77
      2300F8FBF800F8FBF800F0F0F000F0F0F000CC976F00CC976F00F0F0F000F0F0
      F000FEFEFE00FEFEFE00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00F0F0F000F0F0
      F000AC755400AC755400F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000D9A4
      7A00D9A47A00F9F3EE00EBD2BE00EBD2BE00F0F0F000EBD3BF00EBD3BF00F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000EAC7AD00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0E2D800F0E2D800C68C5F00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFC78346FFC783
      46FFF8F1E8FFF8F1E8FFFEE5D5FFFEE5D5FFFDE5D3FFFDE5D3FFFDE5D3FFFDE5
      D3FFFCE5D3FFFCE5D3FFFCE5D3FFFCE5D3FFFCE4D1FFFCE4D1FFA5B79AFFA5B7
      9AFF5FAA80FF5FAA80FF94D4B3FF94D4B3FFB9E6D0FFB9E6D0FF68BA8EFF68BA
      8EFF2B8E55FF2B8E55FF80AD90FF80AD90FFF0F0F000F0F0F000B0D4B800B0D4
      B800339B4C00339B4C00C9ECCF00C9ECCF0052BA6B0052BA6B005DBD6E005DBD
      6E004EB569004EB56900FFFFFF00FFFFFF00FFFFFF00FFFFFF0044AF5E0044AF
      5E0056B36C0056B36C004AAE65004AAE6500CAEFD600CAEFD60014791F001479
      1F0095BF990095BF9900F0F0F000F0F0F000CC976F00CC976F00F0F0F000F0F0
      F000FEFEFE00FEFEFE00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFC
      FC00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFBFB00F0F0F000F0F0
      F000AC755400AC755400F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000DDA8
      7E00DDA87E00F9F3EF00EBD0BA00EBD0BA00EBD0BB00EBD0BB00EBD0BB00EBD0
      BB00EBD0BB00EBD0BB00EBD1BD00EBD1BD00EACDB500EACDB500EACDB500EACD
      B500EACDB500EACDB500F0E2D800F0E2D800C68A5C00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFC78346FFC783
      46FFF8F1E8FFF8F1E8FFFEE5D5FFFEE5D5FFFDE5D3FFFDE5D3FFFDE5D3FFFDE5
      D3FFFCE5D3FFFCE5D3FFFCE5D3FFFCE5D3FFFCE4D1FFFCE4D1FFA5B79AFFA5B7
      9AFF5FAA80FF5FAA80FF94D4B3FF94D4B3FFB9E6D0FFB9E6D0FF68BA8EFF68BA
      8EFF2B8E55FF2B8E55FF80AD90FF80AD90FFF0F0F000F0F0F000B0D4B800B0D4
      B800339B4C00339B4C00C9ECCF00C9ECCF0052BA6B0052BA6B005DBD6E005DBD
      6E004EB569004EB56900FFFFFF00FFFFFF00FFFFFF00FFFFFF0044AF5E0044AF
      5E0056B36C0056B36C004AAE65004AAE6500CAEFD600CAEFD60014791F001479
      1F0095BF990095BF9900F0F0F000F0F0F000D19C7300D19C7300F0F0F000F0F0
      F000FFB25200FFB25200FEFEFE00FEFEFE00B9B9B900B9B9B900B5B5B500B5B5
      B500B1B1B100B1B1B100ADADAD00ADADAD00A9A9A900A9A9A900A6A6A600A6A6
      A600A4A4A400A4A4A400A2A2A200A2A2A200A1A1A100A1A1A100F0F0F000F0F0
      F000B07A5800B07A5800F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000DDA8
      7E00DDA87E00F9F3EF00EBD0BA00EBD0BA00EBD0BB00EBD0BB00EBD0BB00EBD0
      BB00EBD0BB00EBD0BB00EBD1BD00EBD1BD00EACDB500EACDB500EACDB500EACD
      B500EACDB500EACDB500F0E2D800F0E2D800C68A5C00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFC78549FFC785
      49FFF8F2EBFFF8F2EBFFFEE7D6FFFEE7D6FFFDE7D6FFFDE7D6FFFDE7D6FFFDE7
      D6FFFDE7D6FFFDE7D6FFFDE6D5FFFDE6D5FFFDE5D3FFFDE5D3FFFCE4D1FFFCE4
      D1FFACBB9EFFACBB9EFF5E9771FF5E9771FF4D8D64FF4D8D64FF48895FFF4889
      5FFF7A7A45FF7A7A45FFFFFFFFFFFFFFFFFFF0F0F000F0F0F0005EA972005EA9
      72008FCF9C008FCF9C008AD497008AD4970067C4770067C4770050BB5E0050BB
      5E0027913A0027913A00FFFFFF00FFFFFF00FFFFFF00FFFFFF002FA64C002FA6
      4C0044AF5E0044AF5E0056B76D0056B76D008BD09C008BD09C0083C4980083C4
      98002A7F32002A7F3200F0F0F000F0F0F000D19C7300D19C7300F0F0F000F0F0
      F000FFB25200FFB25200FEFEFE00FEFEFE00B9B9B900B9B9B900B5B5B500B5B5
      B500B1B1B100B1B1B100ADADAD00ADADAD00A9A9A900A9A9A900A6A6A600A6A6
      A600A4A4A400A4A4A400A2A2A200A2A2A200A1A1A100A1A1A100F0F0F000F0F0
      F000B07A5800B07A5800F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000DFAA
      8200DFAA8200F9F3EF00EACEB700EACEB700F0F0F000EBD0BB00EBD0BB00F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000EACFBA00FBF6F200FBF6F200F0F0
      F000F0F0F000F0F0F000F0E2D800F0E2D800C88D5F00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFC78549FFC785
      49FFF8F2EBFFF8F2EBFFFEE7D6FFFEE7D6FFFDE7D6FFFDE7D6FFFDE7D6FFFDE7
      D6FFFDE7D6FFFDE7D6FFFDE6D5FFFDE6D5FFFDE5D3FFFDE5D3FFFCE4D1FFFCE4
      D1FFACBB9EFFACBB9EFF5E9771FF5E9771FF4D8D64FF4D8D64FF48895FFF4889
      5FFF7A7A45FF7A7A45FFFFFFFFFFFFFFFFFFF0F0F000F0F0F0005EA972005EA9
      72008FCF9C008FCF9C008AD497008AD4970067C4770067C4770050BB5E0050BB
      5E0027913A0027913A00FFFFFF00FFFFFF00FFFFFF00FFFFFF002FA64C002FA6
      4C0044AF5E0044AF5E0056B76D0056B76D008BD09C008BD09C0083C4980083C4
      98002A7F32002A7F3200F0F0F000F0F0F000D49E7500D49E7500F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FCFCFC00FCFCFC00F0F0F000F0F0
      F000B27C5A00B27C5A00F0F0F000F0F0F000F0F0F000F0F0F000FDFDFD00D8AC
      8A00D8AC8A00E3DEDB00D2BBA900D2BBA900DBC2AD00E3C7B000E3C7B000EACC
      B300EACCB300EACCB300EACEB700EACEB700E8C7AC00E8C7AC00E8C7AC00E8C8
      B000E8C8AE00E8C8AE00F0E2D800F0E2D800C4865400F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFC8874BFFC887
      4BFFF9F3ECFFF9F3ECFFFEE8D6FFFEE8D6FFFEE8D7FFFEE8D7FFFDE7D6FFFDE7
      D6FFFDE7D6FFFDE7D6FFFDE7D5FFFDE7D5FFFDE5D3FFFDE5D3FFFBE4D0FFFBE4
      D0FFFBE3CCFFFBE3CCFFFADFC7FFFADFC7FFFADFC5FFFADFC5FFFAF2EAFFFAF2
      EAFFC88346FFC88346FFFFFFFFFFFFFFFFFFF0F0F000F0F0F0004DA166004DA1
      6600B8E5C000B8E5C00075CC820075CC820063C6700063C67000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0042AE5C0042AE5C005EB975005EB97500B2E2C100B2E2
      C10013731D0013731D00F0F0F000F0F0F000D49E7500D49E7500F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FCFCFC00FCFCFC00F0F0F000F0F0
      F000B27C5A00B27C5A00F0F0F000F0F0F000F0F0F000F0F0F000FDFDFD00D8AC
      8A00D8AC8A00E3DEDB00D2BBA900D2BBA900DBC2AD00E3C7B000E3C7B000EACC
      B300EACCB300EACCB300EACEB700EACEB700E8C7AC00E8C7AC00E8C7AC00E8C8
      B000E8C8AE00E8C8AE00F0E2D800F0E2D800C4865400F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFC8874BFFC887
      4BFFF9F3ECFFF9F3ECFFFEE8D6FFFEE8D6FFFEE8D7FFFEE8D7FFFDE7D6FFFDE7
      D6FFFDE7D6FFFDE7D6FFFDE7D5FFFDE7D5FFFDE5D3FFFDE5D3FFFBE4D0FFFBE4
      D0FFFBE3CCFFFBE3CCFFFADFC7FFFADFC7FFFADFC5FFFADFC5FFFAF2EAFFFAF2
      EAFFC88346FFC88346FFFFFFFFFFFFFFFFFFF0F0F000F0F0F0004DA166004DA1
      6600B8E5C000B8E5C00075CC820075CC820063C6700063C67000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0042AE5C0042AE5C005EB975005EB97500B2E2C100B2E2
      C10013731D0013731D00F0F0F000F0F0F000D5A07600D5A07600F0F0F000F0F0
      F000FFB95E00FFB95E00F0F0F000F0F0F000C1C1C100C1C1C100BEBEBE00BEBE
      BE00BABABA00BABABA00B7B7B700B7B7B700B5B5B500B5B5B500B2B2B200B2B2
      B200B0B0B000B0B0B000AEAEAE00AEAEAE00ADADAD00ADADAD00F0F0F000F0F0
      F000B57E5C00B57E5C00F0F0F000F0F0F000FDFDFD00FDFDFD00D9D9D900AFA4
      9C00AFA49C00ABABAA00A4A09C00A4A09C00A7A7A700B6A79C00B6A79C00F3F3
      F300F3F3F300F0F0F000F0F0F000F0F0F000E8C7AC00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F1E5DB00F1E5DB00C6865500F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFC88B4DFFC88B
      4DFFF9F4EDFFF9F4EDFFFEE8D8FFFEE8D8FFFEE8D8FFFEE8D8FFFEE8D7FFFEE8
      D7FFFEE7D6FFFEE7D6FFFDE5D3FFFDE5D3FFFCE4D1FFFCE4D1FFFBE1CCFFFBE1
      CCFFFAE0C7FFFAE0C7FFF9DDC2FFF9DDC2FFF8DCC1FFF8DCC1FFFAF4EDFFFAF4
      EDFFC88549FFC88549FFFFFFFFFFFFFFFFFFF0F0F000F0F0F00050A56A0050A5
      6A00C7EACC00C7EACC0086D4920086D4920067C0740067C07400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0041AD5C0041AD5C0060BE770060BE7700B3E0BE00B3E0
      BE001876230018762300F0F0F000F0F0F000D5A07600D5A07600F0F0F000F0F0
      F000FFB95E00FFB95E00F0F0F000F0F0F000C1C1C100C1C1C100BEBEBE00BEBE
      BE00BABABA00BABABA00B7B7B700B7B7B700B5B5B500B5B5B500B2B2B200B2B2
      B200B0B0B000B0B0B000AEAEAE00AEAEAE00ADADAD00ADADAD00F0F0F000F0F0
      F000B57E5C00B57E5C00F0F0F000F0F0F000FDFDFD00FDFDFD00D9D9D900AFA4
      9C00AFA49C00ABABAA00A4A09C00A4A09C00A7A7A700B6A79C00B6A79C00F3F3
      F300F3F3F300F0F0F000F0F0F000F0F0F000E8C7AC00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F1E5DB00F1E5DB00C6865500F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFC88B4DFFC88B
      4DFFF9F4EDFFF9F4EDFFFEE8D8FFFEE8D8FFFEE8D8FFFEE8D8FFFEE8D7FFFEE8
      D7FFFEE7D6FFFEE7D6FFFDE5D3FFFDE5D3FFFCE4D1FFFCE4D1FFFBE1CCFFFBE1
      CCFFFAE0C7FFFAE0C7FFF9DDC2FFF9DDC2FFF8DCC1FFF8DCC1FFFAF4EDFFFAF4
      EDFFC88549FFC88549FFFFFFFFFFFFFFFFFFF0F0F000F0F0F00050A56A0050A5
      6A00C7EACC00C7EACC0086D4920086D4920067C0740067C07400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0041AD5C0041AD5C0060BE770060BE7700B3E0BE00B3E0
      BE001876230018762300F0F0F000F0F0F000D8A27900D8A27900F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FDFDFD00FDFDFD00FDFDFD00FDFDFD00F0F0F000F0F0
      F000B7815E00B7815E00F0F0F000F0F0F000C6C6C600C6C6C600CBCBCB00EAEA
      EA00EAEAEA00F0F0F000F2F2F200F2F2F200ECECEC00CACACA00CACACA009A95
      91009A959100E9C9AE00E9C9B000E9C9B000E8C7AC00E9C9B000E9C9B000E8C8
      B000E8CCB500E8CCB500F2E7DE00F2E7DE00C88A5900F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFC88B4EFFC88B
      4EFFF9F4EFFFF9F4EFFFFEE7D7FFFEE7D7FFFDE7D6FFFDE7D6FFFDE7D5FFFDE7
      D5FFFDE6D4FFFDE6D4FFFCE6D2FFFCE6D2FFFBE1CCFFFBE1CCFFFADFC7FFFADF
      C7FFF8DCC1FFF8DCC1FFF6DABCFFF6DABCFFF6D8BAFFF6D8BAFFFAF4EFFFFAF4
      EFFFC8864AFFC8864AFFFFFFFFFFFFFFFFFFF0F0F000F0F0F00068B0800068B0
      8000B5E2BD00B5E2BD00A7E1B000A7E1B0007BC786007BC786006BC276006BC2
      760045A9530045A95300FFFFFF00FFFFFF00FFFFFF00FFFFFF002D913F002D91
      3F004BB567004BB5670053B56C0053B56C0092D59E0092D59E0087CB9B0087CB
      9B003889410038894100F0F0F000F0F0F000D8A27900D8A27900F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FDFDFD00FDFDFD00FDFDFD00FDFDFD00F0F0F000F0F0
      F000B7815E00B7815E00F0F0F000F0F0F000B1B1B100B1B1B100FAFAFA00D7D7
      D700D7D7D700E2E2E200CACACA00CACACA00CFCFCF00F0F0F000F0F0F0009393
      930093939300F0F0F000F0F0F000F0F0F000E8C7AC00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F7F1EB00F7F1EB00CB8F5F00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFC88B4EFFC88B
      4EFFF9F4EFFFF9F4EFFFFEE7D7FFFEE7D7FFFDE7D6FFFDE7D6FFFDE7D5FFFDE7
      D5FFFDE6D4FFFDE6D4FFFCE6D2FFFCE6D2FFFBE1CCFFFBE1CCFFFADFC7FFFADF
      C7FFF8DCC1FFF8DCC1FFF6DABCFFF6DABCFFF6D8BAFFF6D8BAFFFAF4EFFFFAF4
      EFFFC8864AFFC8864AFFFFFFFFFFFFFFFFFFF0F0F000F0F0F00068B0800068B0
      8000B5E2BD00B5E2BD00A7E1B000A7E1B0007BC786007BC786006BC276006BC2
      760045A9530045A95300FFFFFF00FFFFFF00FFFFFF00FFFFFF002D913F002D91
      3F004BB567004BB5670053B56C0053B56C0092D59E0092D59E0087CB9B0087CB
      9B003889410038894100F0F0F000F0F0F000D9A37900D9A37900F0F0F000F0F0
      F000FFBF6800FFBF6800F0F0F000F0F0F000C7C7C700C7C7C700C6C6C600C6C6
      C600C3C3C300C3C3C300C1C1C100C1C1C100BFBFBF00BFBFBF00BDBDBD00BDBD
      BD00BBBBBB00BBBBBB00B9B9B900B9B9B900B9B9B900B9B9B900F0F0F000F0F0
      F000BA856000BA856000F0F0F000F0F0F000B1B1B100B1B1B100FAFAFA00D7D7
      D700D7D7D700E2E2E200CACACA00CACACA00CFCFCF00F0F0F000F0F0F0009393
      930093939300F0F0F000F0F0F000F0F0F000E8C7AC00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F7F1EB00F7F1EB00CB8F5F00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFC88C4FFFC88C
      4FFFF9F4F0FFF9F4F0FFFCE6D3FFFCE6D3FFFCE6D4FFFCE6D4FFFDE7D3FFFDE7
      D3FFFCE4D1FFFCE4D1FFFBE3CDFFFBE3CDFFFAE0C8FFFAE0C8FFF8DCC1FFF8DC
      C1FFF5D6BAFFF5D6BAFFF3D4B4FFF3D4B4FFF1D2B2FFF1D2B2FFF8F4F0FFF8F4
      F0FFC5854AFFC5854AFFFFFFFFFFFFFFFFFFF0F0F000F0F0F000B5DAC200B5DA
      C20070BD860070BD8600EDF9EE00EDF9EE0088D5950088D595008AD494008AD4
      94006EC079006EC07900FFFFFF00FFFFFF00FFFFFF00FFFFFF006BCB78006BCB
      780067C0790067C0790062C3710062C37100CCF0D200CCF0D200228B3700228B
      3700A1C8A600A1C8A600F0F0F000F0F0F000D9A37900D9A37900F0F0F000F0F0
      F000FFBF6800FFBF6800F0F0F000F0F0F000C7C7C700C7C7C700C6C6C600C6C6
      C600C3C3C300C3C3C300C1C1C100C1C1C100BFBFBF00BFBFBF00BDBDBD00BDBD
      BD00BBBBBB00BBBBBB00B9B9B900B9B9B900B9B9B900B9B9B900F0F0F000F0F0
      F000BA856000BA856000F0F0F000F0F0F000B5B5B500B5B5B500F8F8F800D1D1
      D100D1D1D100ECECEC00C5C5C500C5C5C500C6C6C600F0F0F000F0F0F0009A9A
      9A009A9A9A00E9C3A600E9C3A600E9C3A600E9C3A600E9C3A600E9C3A600E9C3
      A600E9C3A600E9C3A600FBF7F400FBF7F400CE936400F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFC88C4FFFC88C
      4FFFF9F4F0FFF9F4F0FFFCE6D3FFFCE6D3FFFCE6D4FFFCE6D4FFFDE7D3FFFDE7
      D3FFFCE4D1FFFCE4D1FFFBE3CDFFFBE3CDFFFAE0C8FFFAE0C8FFF8DCC1FFF8DC
      C1FFF5D6BAFFF5D6BAFFF3D4B4FFF3D4B4FFF1D2B2FFF1D2B2FFF8F4F0FFF8F4
      F0FFC5854AFFC5854AFFFFFFFFFFFFFFFFFFF0F0F000F0F0F000B5DAC200B5DA
      C20070BD860070BD8600EDF9EE00EDF9EE0088D5950088D595008AD494008AD4
      94006EC079006EC07900FFFFFF00FFFFFF00FFFFFF00FFFFFF006BCB78006BCB
      780067C0790067C0790062C3710062C37100CCF0D200CCF0D200228B3700228B
      3700A1C8A600A1C8A600F0F0F000F0F0F000DBA47A00DBA47A00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000BD876300BD876300F0F0F000F0F0F000B8B8B800B8B8B800F8F8F800D5D5
      D500D5D5D500EFEFEF00CBCBCB00CBCBCB00CBCBCB00F0F0F000F0F0F0009E9E
      9E009E9E9E00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000FBF7F400FBF7F400D1976A00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFC88C4FFFC88C
      4FFFF9F5F1FFF9F5F1FFFCE3CFFFFCE3CFFFFBE4D0FFFBE4D0FFFCE4CFFFFCE4
      CFFFFCE3CDFFFCE3CDFFFAE1CAFFFAE1CAFFF9DDC3FFF9DDC3FFF6D9BBFFF6D9
      BBFFF4E9DFFFF4E9DFFFF7F2ECFFF7F2ECFFFBF7F3FFFBF7F3FFF5EFE9FFF5EF
      E9FFC27E46FFC27E46FFFFFFFFFFFFFFFFFFF0F0F000F0F0F000FBFDFB00FBFD
      FB0061AE790061AE7900ABDBB800ABDBB800F4FCF400F4FCF40082D38F0082D3
      8F0082C98E0082C98E0070C27B0070C27B007CCF88007CCF880089D3940089D3
      940078CF830078CF8300CBEDD000CBEDD0005EB574005EB574003D8F49003D8F
      4900F9FCFA00F9FCFA00F0F0F000F0F0F000DBA47A00DBA47A00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000BD876300BD876300F0F0F000F0F0F000B8B8B800B8B8B800F8F8F800D5D5
      D500D5D5D500EFEFEF00CBCBCB00CBCBCB00CBCBCB00F0F0F000F0F0F0009E9E
      9E009E9E9E00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000FBF7F400FBF7F400D1976A00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFC88C4FFFC88C
      4FFFF9F5F1FFF9F5F1FFFCE3CFFFFCE3CFFFFBE4D0FFFBE4D0FFFCE4CFFFFCE4
      CFFFFCE3CDFFFCE3CDFFFAE1CAFFFAE1CAFFF9DDC3FFF9DDC3FFF6D9BBFFF6D9
      BBFFF4E9DFFFF4E9DFFFF7F2ECFFF7F2ECFFFBF7F3FFFBF7F3FFF5EFE9FFF5EF
      E9FFC27E46FFC27E46FFFFFFFFFFFFFFFFFFF0F0F000F0F0F000FBFDFB00FBFD
      FB0061AE790061AE7900ABDBB800ABDBB800F4FCF400F4FCF40082D38F0082D3
      8F0082C98E0082C98E0070C27B0070C27B007CCF88007CCF880089D3940089D3
      940078CF830078CF8300CBEDD000CBEDD0005EB574005EB574003D8F49003D8F
      4900F9FCFA00F9FCFA00F0F0F000F0F0F000DCA77B00DCA77B00DCA77B00DCA7
      7B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA7
      7B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA7
      7B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA7
      7B00C08B6600C08B6600F0F0F000F0F0F000BBBBBB00BBBBBB00F8F8F800DBDB
      DB00DBDBDB00EFEFEF00D0D0D000D0D0D000D0D0D000F0F0F000F0F0F000A2A2
      A200A2A2A2008BCB930087C98E0087C98E0082C689007EC384007EC384007AC1
      800076BE7C0076BE7C00FBF7F400FBF7F400D49B6F00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFC88C50FFC88C
      50FFF9F5F1FFF9F5F1FFFCE3CDFFFCE3CDFFFBE3CEFFFBE3CEFFFBE3CDFFFBE3
      CDFFFBE2CBFFFBE2CBFFF9E0C8FFF9E0C8FFF8DCC1FFF8DCC1FFF5D6B9FFF5D6
      B9FFFDFBF8FFFDFBF8FFFCE6CDFFFCE6CDFFFAE5C9FFFAE5C9FFE2B583FFE2B5
      83FFD5A783FFD5A783FFFFFFFFFFFFFFFFFFF0F0F000F0F0F000F0F0F000F0F0
      F000DBEEE100DBEEE10051A76D0051A76D00B1DEBD00B1DEBD00F8FEF800F8FE
      F800B8E6BF00B8E6BF0094DA9F0094DA9F008ED699008ED69900A5E0B000A5E0
      B000DEF6DE00DEF6DE006FC083006FC08300368B4500368B4500D1E4D500D1E4
      D500F0F0F000F0F0F000F0F0F000F0F0F000DCA77B00DCA77B00DCA77B00DCA7
      7B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA7
      7B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA7
      7B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA77B00DCA7
      7B00C08B6600C08B6600F0F0F000F0F0F000BBBBBB00BBBBBB00F8F8F800DBDB
      DB00DBDBDB00EFEFEF00D0D0D000D0D0D000D0D0D000F0F0F000F0F0F000A2A2
      A200A2A2A2008BCB930087C98E0087C98E0082C689007EC384007EC384007AC1
      800076BE7C0076BE7C00FBF7F400FBF7F400D49B6F00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFC88C50FFC88C
      50FFF9F5F1FFF9F5F1FFFCE3CDFFFCE3CDFFFBE3CEFFFBE3CEFFFBE3CDFFFBE3
      CDFFFBE2CBFFFBE2CBFFF9E0C8FFF9E0C8FFF8DCC1FFF8DCC1FFF5D6B9FFF5D6
      B9FFFDFBF8FFFDFBF8FFFCE6CDFFFCE6CDFFFAE5C9FFFAE5C9FFE2B583FFE2B5
      83FFD5A783FFD5A783FFFFFFFFFFFFFFFFFFF0F0F000F0F0F000F0F0F000F0F0
      F000DBEEE100DBEEE10051A76D0051A76D00B1DEBD00B1DEBD00F8FEF800F8FE
      F800B8E6BF00B8E6BF0094DA9F0094DA9F008ED699008ED69900A5E0B000A5E0
      B000DEF6DE00DEF6DE006FC083006FC08300368B4500368B4500D1E4D500D1E4
      D500F0F0F000F0F0F000F0F0F000F0F0F000DDAD8600DDAD8600E8B99200E8B9
      9200E8B99200E8B99200E8B99200E8B99200E8B99200E8B99200E8B99200E8B9
      9200E8B99200E8B99200E8B99200E8B99200E8B99200E8B99200E8B99200E8B9
      9200E8B99200E8B99200E8B99200E8B99200E8B99200E8B99200E8B99200E8B9
      9200C1917000C1917000F0F0F000F0F0F000BCBCBC00BCBCBC00F2F2F200D9D9
      D900D9D9D900E4E4E400E2E2E200E2E2E200C8C8C800F1F1F100F1F1F100A5A5
      A500A5A5A500FBF7F400FBF7F400FBF7F400FBF7F400FBF7F400FBF7F400FBF7
      F400FBF7F400FBF7F400FBF7F400FBF7F400D8A37800F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFCA9158FFCA91
      58FFFAF6F2FFFAF6F2FFFAE0C7FFFAE0C7FFFBE1C9FFFBE1C9FFFBE2C9FFFBE2
      C9FFFBE0C8FFFBE0C8FFF9DFC4FFF9DFC4FFF8DBC0FFF8DBC0FFF4D6B7FFF4D6
      B7FFFFFBF8FFFFFBF8FFF6D8B3FFF6D8B3FFE1AF7BFFE1AF7BFFDC9567FFDC95
      67FFFDFBFAFFFDFBFAFFFFFFFFFFFFFFFFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000DBEEE100DBEEE1005EAD77005EAD770083C6950083C6
      9500D1EDD700D1EDD700E3F4E500E3F4E500DDF2DF00DDF2DF00BCE4C300BCE4
      C30052AC680052AC6800499B5B00499B5B00D2E6D800D2E6D800F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000DDAD8600DDAD8600E8B99200E8B9
      9200E8B99200E8B99200E8B99200E8B99200E8B99200E8B99200E8B99200E8B9
      9200E8B99200E8B99200E8B99200E8B99200E8B99200E8B99200E8B99200E8B9
      9200E8B99200E8B99200E8B99200E8B99200E8B99200E8B99200E8B99200E8B9
      9200C1917000C1917000F0F0F000F0F0F000BDBDBD00BDBDBD00F6F6F600F4F4
      F400F4F4F400F9F9F900FBFBFB00FBFBFB00F6F6F600F6F6F600F6F6F600A8A8
      A800A8A8A800E7B79300E6B59000E6B59000E4B28C00E2AF8800E2AF8800E0AC
      8400DDA98000DDA98000DCA57D00DCA57D00E2B69600F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFCA9158FFCA91
      58FFFAF6F2FFFAF6F2FFFAE0C7FFFAE0C7FFFBE1C9FFFBE1C9FFFBE2C9FFFBE2
      C9FFFBE0C8FFFBE0C8FFF9DFC4FFF9DFC4FFF8DBC0FFF8DBC0FFF4D6B7FFF4D6
      B7FFFFFBF8FFFFFBF8FFF6D8B3FFF6D8B3FFE1AF7BFFE1AF7BFFDC9567FFDC95
      67FFFDFBFAFFFDFBFAFFFFFFFFFFFFFFFFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000DBEEE100DBEEE1005EAD77005EAD770083C6950083C6
      9500D1EDD700D1EDD700E3F4E500E3F4E500DDF2DF00DDF2DF00BCE4C300BCE4
      C30052AC680052AC6800499B5B00499B5B00D2E6D800D2E6D800F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000DBC3B600DBC3B600DEB49200DEB4
      9200DCA77B00DCA77B00DCA67A00DCA67A00DAA47A00DAA47A00D8A27900D8A2
      7900D5A07600D5A07600D49E7500D49E7500D29D7300D29D7300CF9A7200CF9A
      7200CE997000CE997000CB966F00CB966F00C9946C00C9946C00C79E8000C79E
      8000DBC3B600DBC3B600F0F0F000F0F0F000BDBDBD00BDBDBD00F6F6F600F4F4
      F400F4F4F400F9F9F900FBFBFB00FBFBFB00F6F6F600F6F6F600F6F6F600A8A8
      A800A8A8A800E7B79300E6B59000E6B59000E4B28C00E2AF8800E2AF8800E0AC
      8400DDA98000DDA98000DCA57D00DCA57D00E2B69600F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFD2A172FFD2A1
      72FFF8F3EDFFF8F3EDFFF8F4EEFFF8F4EEFFF8F4EDFFF8F4EDFFF8F3EDFFF8F3
      EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF8F2ECFFF7F2ECFFF7F2
      ECFFF2E6D7FFF2E6D7FFE2B17BFFE2B17BFFDC9769FFDC9769FFFDFBFAFFFDFB
      FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FBFDFB00FBFDFB00B5DBC200B5DB
      C20065B07C0065B07C0051A66B0051A66B004EA467004EA467005BA870005BA8
      7000AFD4B800AFD4B800FAFCFA00FAFCFA00F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000DBC3B600DBC3B600DEB49200DEB4
      9200DCA77B00DCA77B00DCA67A00DCA67A00DAA47A00DAA47A00D8A27900D8A2
      7900D5A07600D5A07600D49E7500D49E7500D29D7300D29D7300CF9A7200CF9A
      7200CE997000CE997000CB966F00CB966F00C9946C00C9946C00C79E8000C79E
      8000DBC3B600DBC3B600F0F0F000F0F0F000D3D3D300D3D3D300D6D6D600EDED
      ED00EDEDED00F9F9F900FBFBFB00FBFBFB00F0F0F000D9D9D900D9D9D900B8B8
      B800B8B8B800F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFD2A172FFD2A1
      72FFF8F3EDFFF8F3EDFFF8F4EEFFF8F4EEFFF8F4EDFFF8F4EDFFF8F3EDFFF8F3
      EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF8F2ECFFF7F2ECFFF7F2
      ECFFF2E6D7FFF2E6D7FFE2B17BFFE2B17BFFDC9769FFDC9769FFFDFBFAFFFDFB
      FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FBFDFB00FBFDFB00B5DBC200B5DB
      C20065B07C0065B07C0051A66B0051A66B004EA467004EA467005BA870005BA8
      7000AFD4B800AFD4B800FAFCFA00FAFCFA00F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FBFBFB00FBFBFB00E2E2E200CACA
      CA00CACACA00BDBDBD00B8B8B800B8B8B800C0C0C000D4D4D400D4D4D400F3F3
      F300F3F3F300F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFE8CEB8FFE8CE
      B8FFD7A97AFFD7A97AFFCC9359FFCC9359FFCA8F53FFCA8F53FFCA8F53FFCA8F
      53FFCA8F53FFCA8F53FFCA9053FFCA9053FFCB8F53FFCB8F53FFC98E53FFC98E
      53FFCF9C67FFCF9C67FFDDB08FFFDDB08FFFFDFBFAFFFDFBFAFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FBFBFB00FBFBFB00E2E2E200CACA
      CA00CACACA00BDBDBD00B8B8B800B8B8B800C0C0C000D4D4D400D4D4D400F3F3
      F300F3F3F300F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000FFFFFFFFFFFFFFFFE8CEB8FFE8CE
      B8FFD7A97AFFD7A97AFFCC9359FFCC9359FFCA8F53FFCA8F53FFCA8F53FFCA8F
      53FFCA8F53FFCA8F53FFCA9053FFCA9053FFCB8F53FFCB8F53FFC98E53FFC98E
      53FFCF9C67FFCF9C67FFDDB08FFFDDB08FFFFDFBFAFFFDFBFAFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000424D3E000000000000003E000000
      2800000080000000E00000000100010000000000000E00000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFF03FF0030000000000000000
      FFFFFFFFF03FF0030000000000000000FF0FF80FC000C0000000000000000000
      FC07E003C000C0000000000000000000FC038001C00000C00000000000000000
      FC018000C00000C00000000000000000FC010000C00003F00000000000000000
      FC000000C00003F00000000000000000FC000000000000C00000000000000000
      FE000000000000C00000000000000000FE000000000000000000000000000000
      FF000000000000000000000000000000FF800000000000000000000000000000
      FF800000000000000000000000000000FFC00000000000030000000000000000
      F0000000000000030000000000000000C0000000C00000030000000000000000
      00000001C0000003000000000000000000000007FC00000F0000000000000000
      000003FFFC00000F0000000000000000000001FFFF0000030000000000000000
      000001FFFF0000030000000000000000000000FFFFC000030000000000000000
      000000FFFFC0000300000000000000000000007FFFF0000F0000000000000000
      0000007FFFF0000F00000000000000000000003FFFFC003F0000000000000000
      0000803FFFFC003F00000000000000000001803FFFFF00FF0000000000000000
      0001C03FFFFF00FF00000000000000008003E03FFFFFC3FF0000000000000000
      E00FF0FFFFFFC3FF0000000000000000FC00003FFFFFFFFFFFFFFFFFFC00000F
      FC00003FFFFFFFFFFFFFFFFFFC00000F00000000FFFFCFFFFC3FFC3FC0000003
      00000000FFFFCFFFFC3FFC3FC000000300000000FFFF03FFF00FF00FC0000003
      00000000FFFF03FFF00FF00FC000000300000000FFFC03FFC003C003C0000003
      00000000FFFC03FFC003C003C000000300000000C00030FFC0000003C0000003
      00000000C00030FFC0000003C000000300000000CFC0CC3FF000000FC000000F
      00000000CFC0CC3FF000000FC000000F00000000CC03CF0FFC00003FFF0000FF
      00000000CC03CF0FFC00003FFF0000FF00000000CFFFCF03FF0000FFFC000FFF
      00000000CFFFCF03FF0000FFFC000FFF00000000CC00CFC0FF0000FFFC003FFF
      00000000CC00CFC0FF0000FFFC003FFF00000000CFFFCFF0FC00003FF0000FFF
      00000000CFFFCFF0FC00003FF0000FFFC0000003CC3FCFFFF000000FF0000FFF
      C0000003CC3FCFFFF000000FF0000FFFF000000FCFF00FFFC0000003F0000FFF
      F000000FCFF00FFFC0000003F0000FFFFC00003FCC303FFFC003C000F0000FFF
      FC00003FCC303FFFC003C000F0000FFFFC00003FCFF03FFFF00FF003FC000FFF
      FC00003FCFF03FFFF00FF003FC000FFFFC00003FC003FFFFFC3FFC0FFC000FFF
      FC00003FC003FFFFFC3FFC0FFC000FFFFC0003FFFFFFFFFFFFFFFF3FFF003FFF
      FC0003FFFFFFFFFFFFFFFF3FFF003FFF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF0FFF00000000FFFFFFFF00000000
      FFFF0FFF00000000FE00000300000000FF000FFF00000000FC00000300000000
      FF000FFF00000000F000000300000000C000000300000000C000000300000000
      C000000300000000C0000003000000000000000000000000C000000300000000
      0000000000000000E0000003000000000000000000000000F000000300000000
      0000000000000000F8000003000000000000000000000000FC00000300000000
      0000000000000000FC00000300000000000000FF00000000FC00000300000000
      000000FF00000000FC000003000000000000003F00000000FC00000300000000
      0000003F00000000FC000003000000000000000300000000FC00000300000000
      0000000300000000FC000003000000000000000F00000000FC00000300000000
      0000000F00000000FC000003000000000000000300000000FC00000300000000
      0000000300000000FC000003000000000030000F00000000FC00000300000000
      0030000F00000000FC000003000000003FFFF03F00000000FC00000300000000
      3FFFF03F00000000FC000003000000000FFFF03F00000000FC00000300000000
      0FFFF03F00000000FC00000700000000003C00FF00000000FC00000F00000000
      003C00FF00000000FC00001F00000000C00003FF00000000FC00003F00000000
      C00003FF00000000FC00007F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF
      FFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000FF0000FF
      FFFFFFFFFFFFFFFF00000000FF0000FF00000003FFFFFFFF00000000FC00003F
      00000003FFFFFFFF00000000FC00003F3FFFFFF3E000007F00000000F000000F
      3FFFFFF3E000007F00000000F000000F30000033E000007F00000000C0000003
      30000033E000007F00000000C000000330000033E09F7C7F00000000C0000003
      30000033E000007F00000000C000000330000033E000007F00000000C0000003
      30000033E09F1C7F00000000C00000033FC00033C000007F00000000C0000003
      3FC00033C000007F00000000C00000033300003300077C7F00000000C0000003
      3300003300077C7F00000000C00000033FFF00330000007F00000000C0000003
      3FFF003300677C7F00000000C00000033300003300677C7F00000000C0000003
      330000330060007F00000000C00000033FFFFFF30067FC7F00000000C0000003
      3FFFFFF30067FC7F00000000C0000003000000030060007F00000000F000000F
      000000030060007F00000000F000000F000000030000007F00000000FC00003F
      000000030000007F00000000FC00003F000000030000007F00000000FF0000FF
      000000030007FFFF00000000FF0000FFFFFFFFFF0007FFFF00000000FFFFFFFF
      FFFFFFFF0007FFFF00000000FFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ActionManager1: TActionManager
    Images = ImL_32
    Left = 976
    Top = 88
    StyleName = 'Platform Default'
    object AddGods_A: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1090#1086#1074#1072#1088
      ImageIndex = 2
      OnExecute = AddGods_AExecute
    end
    object EditGoods_A: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1090#1086#1074#1072#1088
      ImageIndex = 7
      OnExecute = EditGoods_AExecute
    end
    object EndProc_A: TAction
      Caption = #1047#1072#1074#1077#1088#1096#1080#1090#1100' '#1087#1088#1086#1094#1077#1076#1091#1088#1091
      OnExecute = EndProc_AExecute
    end
    object EditGoodsOut_A: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1090#1086#1074#1072#1088' '#1089' '#1079#1072#1074#1077#1088#1096#1077#1085#1085#1086#1081' '#1087#1088#1086#1094#1077#1076#1091#1088#1086#1081
      OnExecute = EditGoodsOut_AExecute
    end
    object Tov232_A: TAction
      Caption = #1058#1086#1074#1072#1088#1099' '#1074' '#1086#1090#1085#1086#1096#1077#1085#1080#1080' '#1082#1086#1090'. '#1089#1086#1074#1077#1088#1096#1072#1083#1080#1089#1100' '#1086#1087#1077#1088#1072#1094#1080#1080
      OnExecute = Tov232_AExecute
    end
    object EditGoodsSold_A: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1088#1086#1076#1072#1085#1085#1099#1077' '#1090#1086#1074#1072#1088#1099
      OnExecute = EditGoodsSold_AExecute
    end
    object AddDecl_A: TAction
      Caption = #1055#1086#1089#1090#1091#1087#1083#1077#1085#1080#1077' '#1085#1072' '#1090#1072#1084#1086#1078#1077#1085#1085#1099#1081' '#1089#1082#1083#1072#1076
      Hint = #1053#1086#1074#1086#1077' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1077' '#1085#1072' '#1058#1057
      ImageIndex = 2
      OnExecute = AddDecl_AExecute
    end
    object A_CreateActIn: TAction
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1040#1082#1090' '#1087#1088#1080#1077#1084#1072' '#1090#1086#1074#1072#1088#1072
      OnExecute = A_CreateActInExecute
    end
  end
  object ImL_Buttons16: TImageList
    BlendColor = 15790320
    BkColor = 15790320
    Left = 920
    Top = 72
    Bitmap = {
      494C01010A00C802040010001000F0F0F000FF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000C896
      6200CA986500CA976500CA976500CA976500CA976400C9976400C9976400CA98
      6500C8956200F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F0003F3D
      ED413B38EB08F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000211F
      E3081E1CE241F0F0F000F0F0F000F0F0F000A1A1A1007A7A7A0058585800C795
      6100F9F7F600F9F1EC00F9F1EB00F8F0E900F7EDE600F4EAE100F2E8DE00FAF8
      F600C7946100242424004B4B4B00969696000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F0004A47F0414F4C
      F2FF403EEDFD3C39EB08F0F0F000F0F0F000F0F0F000F0F0F0002725E5082422
      E4FC312FEAFF1F1DE241F0F0F000F0F0F0006B6B6B00A7A7A700B5B5B5008181
      8100AFACAA00C5C0BD00C5C0BD00C5C0BD00C5C0BD00C5C0BD00C5C0BD00ADAA
      A8002C2C2C00B5B5B5009B9B9B00232323000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F0005451F3415856F5FF6361
      FAFF5855F6FF413FEDFC3D3AEC08F0F0F000F0F0F000302DE7082C2AE6FC413F
      F1FF4C4AF6FF312FEAFF1F1DE241F0F0F00070707000B5B5B500B5B5B5009595
      95008181810081818100797979006E6E6E006161610052525200434343004242
      42006E6E6E00B5B5B500B5B5B500252525000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F0005956F52B5B58F6FF6562
      FAFF7170FFFF5956F6FF4240EEFC3E3BEC083937EB083532E9FC4745F2FF6362
      FFFF4A48F4FF2F2DE9FF2220E32BF0F0F00075757500BBBBBB00BBBBBB008D8D
      8D00D4D4D400B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900D3D3
      D30083838300BBBBBB00BBBBBB002A2A2A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F0005A57F52B5B59
      F6FF6663FAFF7471FFFF5A58F6FF4341EEFC3E3CECFD504DF4FF6867FFFF504E
      F5FF3634EBFF2A27E52BF0F0F000F0F0F0007A7A7A00D7D7D700D7D7D7009797
      9700D8D8D800BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00D7D7
      D7008E8E8E00D7D7D700D7D7D7003F3F3F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F0005B58
      F62B5C5AF6FF6764FAFF7472FFFF7370FFFF706EFFFF6E6CFFFF5755F7FF3F3D
      EEFF3230E82BF0F0F000F0F0F000F0F0F0007E7E7E00F9F9F900F9F9F900ABAB
      AB00DFDFDF00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCBCB00DFDF
      DF00A3A3A300F9F9F900F9F9F900616161000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F0005C59F62B5D5BF7FF7976FFFF5956FFFF5754FFFF7270FFFF4846F0FF3C39
      EB2BF0F0F000F0F0F000F0F0F000F0F0F00084848400FCFCFC00FCFCFC00CBCB
      CB00F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200C6C6C600FCFCFC00FCFCFC00717171000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000615EF8085D5AF6FD7D79FFFF5E5BFFFF5B58FFFF7674FFFF4643EFFD413F
      ED08F0F0F000F0F0F000F0F0F000F0F0F00097979700D2D2D200E8E8E8007D7D
      7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D
      7D007D7D7D00E8E8E800C4C4C4006D6D6D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F0006967
      FB086663F9FC706DFBFF807EFFFF7E7BFFFF7C79FFFF7977FFFF5E5CF7FF4744
      EFFC4240EE08F0F0F000F0F0F000F0F0F000DDDDDD009A9A9A00CCCCCC00C78B
      4E00F9F4ED00FEE8D800FEE8D700FDE5D300FCE4D100FAE0C700F9DDC300FAF4
      ED00C7854A00C3C3C30074747400CDCDCD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000716EFD086E6B
      FCFC7774FDFF8682FFFF7673FCFF6462F8FF605DF7FF6D6AFAFF7B79FFFF605D
      F7FF4845EFFC4341EE08F0F0F000F0F0F000F0F0F000CECECE0087878700C589
      4C00F9F4EF00FEE7D700FDE7D500FCE6D200FBE1CC00F8DCC200F6DABD00FAF4
      EF00C483480061616100BCBCBC00F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F0007673FF087471FEFD7D7A
      FEFF8A87FFFF7C79FDFF6C69FBFF6361F92B5F5CF72B615EF8FF6E6CFAFF7D7A
      FFFF615FF7FF4946F0FC4441EE05F0F0F000F0F0F000F0F0F000FBFBFB00C68C
      4F00F9F4F000FCE6D300FDE7D300FBE3CD00FAE0C800F5D6BB00F3D4B500F8F4
      F000C4854A00F9F9F900F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F0007774FF1F7A77FFFF817E
      FFFF817EFEFF7471FDFF6C69FB2BF0F0F000F0F0F000605DF72B625FF8FF6F6D
      FBFF7E7CFFFF625FF8FF4A47F06F4542EE02F0F0F000F0F0F000F0F0F000C88D
      5100F9F5F100FCE3CF00FCE4CF00FAE1CA00F9DDC400F4E9DF00F7F2EC00F5EF
      E900C3804800F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F0007774FF1F7A77
      FFFF7976FEFF726FFD2BF0F0F000F0F0F000F0F0F000F0F0F000615EF82B6461
      F8FF6A68F9FF5451F3A84F4DF229F0F0F000F0F0F000F0F0F000F0F0F000C88D
      5200F9F5F100FCE3CD00FBE3CD00F9E0C800F8DCC200FDFBF800FCE6CD00E2B6
      8400D5A88400F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F0007774
      FF1F7774FF2BF0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000625F
      F82B5D5BF76F5956F53EF0F0F000F0F0F000F0F0F000F0F0F000F0F0F000C588
      4D00F7F2EC00F8F4EE00F8F3ED00F8F3ED00F8F2EC00F2E6D700E2B27D00DB95
      6900FDFBFA00F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F0006360F80AF0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000E8CE
      B900D7AA7C00C88C5000C88C4F00CA915500CB905500C5894D00DDAF8D00F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E2C156B884A23BCAD5E
      2DEDB3622EF7B3622EF7B3622EF7B3612EF7B3612DF7B2612CF75F6531FB206A
      36FF186A36FF1E6935FC2E4A25B600000000000000004E2C156B884A23BCAD5E
      2DEDB3622EF7B3622EF7B3622EF7B3612EF7B3612DF7B2612CF7B2612CF7B260
      2CF7AC5D2AEF874820BD4726116300000000000000004E2C156B884A23BCAD5E
      2DEDB3622EF7B3622EF7B3622EF7B3612EF7B3612DF7B2612CF76B5C73FB1848
      A6FE0541BAFF1245A7F8263561AE00000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000FDFEFD009FC2A200F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F00000000000A35B2CDEEBE5DEF2F5EA
      DDFDF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFF85AC8DFF278B52FF63B9
      8CFF94D2B1FF63B98CFF278B52FF0D3A1E8C00000000A35B2CDEEBE5DEF2F5EA
      DDFDF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFFFAF3EBFFFAF2EAFFFCF7
      F3FFFAF6F2FDEFEFEEF0984F22D50000000000000000A35B2CDEEBE5DEF2F5EA
      DDFDF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFF89A4D7FF2765CAFF2076
      E6FF0578EAFF0163DDFF064CBAFF0121587AF0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F0008BBC90005E9D6300F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F00000000000B76C35F5F4EADEFEFDBE
      67FFFCBC66FFFBBD64FFFCBD63FFFCBD63FFFCBC61FF216E39FF61B98AFF5FB9
      86FFFFFFFFFF5FB886FF66BB8EFF176734F700000000B76C35F5F4EADEFEFDBE
      67FFFCBC66FFFBBD64FFFCBD63FFFCBD63FFFCBC61FFFBBC62FFFBBB60FFFCBD
      5FFFFCBB61FFFBF9F6FDAF5E2AF30000000000000000B76C35F5F4EADEFEFDBE
      67FFFCBC66FFFBBD64FFFCBD63FFFCBD63FFFCBC61FF1D51AFFF629CF4FF177E
      FFFF0075F8FF0075EEFF0367E1FF033DA5E4F0F0F000F0F0F000F0F0F000F0F0
      F0009BCBA00066B06E0061AA68003D8B440037833E00327B37003D7F43006496
      68009EBCA000E6EDE600F0F0F000F0F0F00000000000BA7339F7F7EDE3FFFDC1
      6DFFFFD89FFFFFD79DFFFFD69AFFFFD797FFFFD695FF307A4BFF9BD4B5FFFFFF
      FFFFFFFFFFFFFFFFFFFF94D2B1FF186A36FF00000000BA7339F7F7EDE3FFFDC1
      6DFF174156FF2A6086FF4B88BBFF6F9EB2FFE3C999FFFFD694FFFFD593FFFFD4
      92FFFBBD64FFFBF7F4FFB4632EF70000000000000000BA7339F7F7EDE3FFFDC1
      6DFFFFD89FFFFFD79DFFFFD69AFFFFD797FFFFD695FF0542BBFFADCDFEFFFFFF
      FFFFFFFFFFFFFFFFFFFF177EEFFF0441BAFEF0F0F000F0F0F000F0F0F000AAD8
      AF0073BD7C0096D19F0094CF9C008FCD96008ACA910085C78B007ABE810065AD
      6C004B92510068976B00CDDCCE00F0F0F00000000000BD773DF7F7F0E6FFF8B3
      54FFF7B355FFF7B453FFF8B352FFF8B152FFF7B251FF49875CFF8FD3B0FF91D6
      B0FFFFFFFFFF64BB8BFF66BB8EFF176734F700000000BD773DF7F7F0E6FFF8B3
      54FF2D6581FF93C7F9FF90C9F9FF4084C9FF2567A5FFD2A764FFF7B150FFF7B1
      4EFFF7B14EFFFCF9F5FFB86B33F70000000000000000BD773DF7F7F0E6FFF8B3
      54FFF7B355FFF7B453FFF8B352FFF8B152FFF7B251FF2352AAFF8CB4F6FF4C91
      FFFF1176FFFF2085FFFF3F89EBFF033AA0DEF0F0F000F0F0F000F0F0F000A9DB
      AF0079C483009ED7A7009BD4A40097D29F0092CF9A008DCC950088CA90007AC2
      82007EC485005DA4630069996C00E6EDE60000000000BE7B3FF7F8F1E8FFFEE5
      D5FFFDE5D3FFFDE5D3FFFCE5D3FFFCE5D3FFFCE4D1FFA5B79AFF60AA80FF94D4
      B3FFB9E6D0FF69BA8EFF2C8E56FF0D3A1E8C00000000BE7B3FF7F8F1E8FFFEE5
      D5FF4288A9FFE0F2FFFF5399D8FF1979BDFF4897C4FF478BC1FFDAD2CDFFFBE0
      C9FFFBE1C8FFFDFAF7FFBA7138F70000000000000000BE7B3FF7F8F1E8FFFEE5
      D5FFFDE5D3FFFDE5D3FFFCE5D3FFFCE5D3FFFCE4D1FF93A0C9FF3C75D1FF8CB4
      F7FFB7D6FEFF71A7F5FF2E6AC9FF021C4F6DF0F0F000F0F0F000F0F0F000F0F0
      F000A4DAAB007BC7850077C2810054AB5E004EA35700499B510063AC6B0083C3
      8B0087C98F0082C6890050975600A0BFA20000000000BE7D42F7F8F2EBFFFEE7
      D6FFFDE7D6FFFDE7D6FFFDE7D6FFFDE6D5FFFDE5D3FFFCE4D1FFACBB9EFF5F97
      72FF4E8D65FF498960FF777742FB0000000000000000BE7D42F7F8F2EBFFFEE7
      D6FFA5B5BEFF79B5D5FF8FB6D1FF54C9E4FF5ADFF5FF77D0EDFF509AD9FFE1D6
      CDFFFBE1C9FFFBF7F2FFBE773CF70000000000000000BE7D42F7F8F2EBFFFEE7
      D6FFFDE7D6FFFDE7D6FFFDE7D6FFFDE6D5FFFDE5D3FFFCE4D1FF93A0C9FF295D
      C0FF0542BBFF1E58BEFF655F76FB00000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F0009ED8A5007BC78400F0F0F000F0F0F000F0F0F0009BC9A0005BA2
      620086C68E0088C98F006FB37600699D6D0000000000BF7F44F7F9F3ECFFFEE8
      D6FFFEE8D7FFFDE7D6FFFDE7D6FFFDE7D5FFFDE5D3FFFBE4D0FFFBE3CCFFFADF
      C7FFFADFC5FFFAF2EAFFBF7B3FF70000000000000000BF7F44F7F9F3ECFFFEE8
      D6FFFEE8D7FFB2C5CCFF75B8D6FFC1F6FDFF62DFF7FF5CE2F8FF78D3F0FF4897
      DAFFE2D5C8FFFAF2EAFFBF7B3FF70000000000000000BF7F44F7F9F3ECFFFEE8
      D6FFFEE8D7FFFDE7D6FFFDE7D6FFFDE7D5FFFDE5D3FFFBE4D0FFFBE3CCFFFADF
      C7FFFADFC5FFFAF2EAFFBF7B3FF700000000B8D7BB00B6D4B900B4D1B600B2CE
      B400AFCBB100FDFEFD00B4E2BA00F0F0F000F0F0F000F0F0F000F0F0F000A4CF
      A80054A05B0048954F00408B4700478B4E0000000000BF8346F7F9F4EDFFFEE8
      D8FFFEE8D8FFFEE8D7FFFEE7D6FFFDE5D3FFFCE4D1FFFBE1CCFFFAE0C7FFF9DD
      C2FFF8DCC1FFFAF4EDFFBF7D42F70000000000000000BF8346F7F9F4EDFFFEE8
      D8FFFEE8D8FFFEE8D7FFAFC5CCFF76CBE7FFC7F7FDFF5DDCF5FF59E1F7FF7AD4
      F1FF4A98DBFFD2DFE9FFBF7D42F70000000000000000BF8346F7F9F4EDFFFEE8
      D8FFFEE8D8FFFEE8D7FFFEE7D6FFFDE5D3FFFCE4D1FFFBE1CCFFFAE0C7FFF9DD
      C2FFF8DCC1FFFAF4EDFFBF7D42F7000000005DA964004C9C540048954F004990
      4F0097BE9B00F0F0F000F0F0F000F0F0F000F0F0F00092B29400FCFDFC00BEDF
      C200BCDCBF00BAD9BD00B7D6BB00B5D3B80000000000BF8347F7F9F4EFFFFEE7
      D7FFFDE7D6FFFDE7D5FFFDE6D4FFFCE6D2FFFBE1CCFFFADFC7FFF8DCC1FFF6DA
      BCFFF6D8BAFFFAF4EFFFBF7E43F70000000000000000BF8347F7F9F4EFFFFEE7
      D7FFFDE7D6FFFDE7D5FFFDE6D4FFBCD6D5FF78D3EEFFC7F7FDFF5EDCF5FF5AE2
      F7FF79D6F2FF50A0E0FFA8815DF90000000000000000BF8347F7F9F4EFFFFEE7
      D7FFFDE7D6FFFDE7D5FFFDE6D4FFFCE6D2FFFBE1CCFFFADFC7FFF8DCC1FFF6DA
      BCFFF6D8BAFFFAF4EFFFBF7E43F70000000084C38B0080C389008DCC950083C4
      8A0054995A0090BA9400F0F0F000F0F0F000F0F0F0004A814D00739C7600F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F00000000000BF8448F7F9F4F0FFFCE6
      D3FFFCE6D4FFFDE7D3FFFCE4D1FFFBE3CDFFFAE0C8FFF8DCC1FFF5D6BAFFF3D4
      B4FFF1D2B2FFF8F4F0FFBD7D43F70000000000000000BF8448F7F9F4F0FFFCE6
      D3FFFCE6D4FFFDE7D3FFFCE4D1FFFBE3CDFFBDD4D0FF7CD4EEFFC3F6FDFF6BDD
      F6FF6CCAEDFF62A2D7FF6397C7FE0C161E2600000000BF8448F7F9F4F0FFFCE6
      D3FFFCE6D4FFFDE7D3FFFCE4D1FFFBE3CDFFFAE0C8FFF8DCC1FFF5D6BAFFF3D4
      B4FFF1D2B2FFF8F4F0FFBD7D43F700000000B7DEBB0075BF7E0098D2A10094CF
      9C0086C78D005EA7650039864000347E3A002E76330049904F00458B4A007EA5
      8100F0F0F000F0F0F000F0F0F000F0F0F00000000000BF8448F7F9F5F1FFFCE3
      CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC3FFF6D9BBFFF4E9DFFFF7F2
      ECFFFBF7F3FFF5EFE9FFBE7B43FB0000000000000000BF8448F7F9F5F1FFFCE3
      CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC3FFAECDC9FF80D5EEFFB1E3
      F9FF8ABFE7FFADD3F6FFC3E0FCFF6299CCF700000000BF8448F7F9F5F1FFFCE3
      CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC3FFF6D9BBFFF4E9DFFFF7F2
      ECFFFBF7F3FFF5EFE9FFBE7B43FB00000000EDF7EE008ECD960085C98E009BD4
      A4008FCE980092CF9A008DCC950088CA900083C68B007EC4850079C17F00478D
      4C0087AC8900F0F0F000F0F0F000F0F0F00000000000BE8348F6F9F5F1FFFCE3
      CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC1FFF5D6B9FFFDFBF8FFFCE6
      CDFFFAE5C9FFE2B583FF7C4E2AA60000000000000000BE8348F6F9F5F1FFFCE3
      CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC1FFF5D6B9FFAEE3F1FF76BD
      E7FFB3D2F0FFE5F3FFFFABD2EFFF417EB5E800000000BE8348F6F9F5F1FFFCE3
      CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC1FFF5D6B9FFFDFBF8FFFCE6
      CDFFFAE5C9FFE2B583FF7C4E2AA600000000F0F0F000DCF0DE0090CF970079C3
      830089CA920094D09C0095D19E0090CF99008CCB940087C98F0080C487004E95
      54008FB39200F0F0F000F0F0F000F0F0F00000000000B47C44EAF7F3EFFCFAE0
      C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC4FFF8DBC0FFF4D6B7FFFFFBF8FFF6D8
      B3FFE1AF7CFFD38C60F6050302070000000000000000B47C44EAF7F3EFFCFAE0
      C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC4FFF8DBC0FFF4D6B7FFFFFBF8FFB5CB
      C1FF57A4D8FF84B0DBFF459CD0FF0F374D5E00000000B47C44EAF7F3EFFCFAE0
      C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC4FFF8DBC0FFF4D6B7FFFFFBF8FFF6D8
      B3FFE1AF7CFFD38C60F60503020700000000F0F0F000F0F0F000EDF8EF00B9E1
      BE0089C9900064B46C0050A65A004B9E530045964D0060A868005BA262008CB6
      9000F0F0F000F0F0F000F0F0F000F0F0F00000000000956537C3E5E0DAECF5F1
      EBFCF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2ECFFF2E6D7FFE2B1
      7CFFD28D60F505030207000000000000000000000000956537C3E5E0DAECF5F1
      EBFCF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2ECFFF2E6D7FFE2B1
      7CFFD28D60F505030207000000000000000000000000956537C3E5E0DAECF5F1
      EBFCF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2ECFFF2E6D7FFE2B1
      7CFFD28D60F5050302070000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00067AB6E008BBC9000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F00000000000482F1960936538BBBB82
      49EEC1864BF6C2874CF7C2874CF7C2884CF7C3874CF7C1864CF7A3713ED46F43
      21910402010600000000000000000000000000000000482F1960936538BBBB82
      49EEC1864BF6C2874CF7C2874CF7C2884CF7C3874CF7C1864CF7A3713ED46F43
      21910402010600000000000000000000000000000000482F1960936538BBBB82
      49EEC1864BF6C2874CF7C2874CF7C2884CF7C3874CF7C1864CF7A3713ED46F43
      219104020106000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000ACD4B000FDFEFD00F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0006060600040404000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000317A360A2D753207F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0003F3F3F004040400040404000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F0008080800080808000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F0008080800080808000F0F0F000F0F0F0000000000000000000FFFF
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000C0C0C000FFFF0000C0C0
      C000FFFF00000000000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F0003985400A37833DFF317B37FB2E763307F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000202020003F3F3F00F0F0F0004040400040404000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000808080000000000000000000F0F0F00000000000FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000C0C0C000FFFF
      000080808000FFFF00008080800000000000F0F0F000F0F0F000F0F0F0004292
      490A408E47FF54A35CFF4F9F57FF327C38FE2E773408F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000404040006060600040404000AFAFAF00F0F0F00040404000808080008080
      800040404000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000000000008080800000000000F0F0F000F0F0F000F0F0F000F0F0
      F000000000008080800000000000F0F0F00000000000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000C0C0C000FFFF0000C0C0
      C000FFFF000080808000FFFF000000000000F0F0F000F0F0F0004B9E530A499A
      51FF5BAC64FF77CA82FF74C87EFF51A059FF337D39FE2F783508F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0002020
      20006F6F6F00AFAFAF00F0F0F000F0F0F000F0F0F000AFAFAF006F6F6F004040
      40008080800060606000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F0000000000000000000000000000000000080808000808080000000
      0000000000000000000000000000F0F0F00000000000FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000C0C0C000FFFF
      000080808000FFFF00008080800000000000F0F0F00053A95C0A51A65AFF63B5
      6DFF7ECE89FF7BCC87FF76CA81FF76C981FF52A25AFF347E3AFE30793508F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0003F3F3F00EFEF
      EF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000EFEF
      EF005F5F5F008080800060606000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F00000000000F0F0F000000000000000000000000000000000008080
      8000000000000000000000000000F0F0F00000000000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000C0C0C000FFFF0000C0C0
      C000FFFF000080808000FFFF0000000000005AB4650959B063FF6BBD76FF84D2
      90FF7AC985FF60B26AFF63B46DFF78C983FF78CB82FF53A35CFF347F3AFD317A
      3608F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0005F5F5F00F0F0F000F0F0
      F000F0F0F000FFBFBF00FF7F7F00FF7F7F00FF7F7F00FF7F7F00F0F0F000F0F0
      F000F0F0F0005F5F5F008080800040404000F0F0F000F0F0F000F0F0F000F0F0
      F000FFFFFF0000000000FFFFFF0000000000000000000000000080808000F0F0
      F000000000000000000000000000F0F0F00000000000FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000C0C0C000FFFF
      000080808000FFFF000080808000000000005EB969465BB566E479C986FF80CE
      8DFF51A65AFC4DA1566F499C518B5CAD67FF7CCC86FF79CB85FF54A45DFF3580
      3BFC317B3708F0F0F000F0F0F000F0F0F00040404000EFEFEF00F0F0F000F0F0
      F000F0F0F000F0F0F000FF7F7F00FF000000FF000000F0F0F000F0F0F000F0F0
      F000F0F0F000EFEFEF004040400080808000F0F0F00080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0F0F00080808000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000C0C0C000FFFF0000C0C0
      C000FFFF000080808000FFFF000000000000F0F0F0005FBA6A3C5CB666E66DC0
      79FF55AC5F6FF0F0F000F0F0F0004A9D52915EAE68FF7DCD89FF7CCD87FF56A5
      5FFF36813CFC327C3808F0F0F000F0F0F000AFAFAF00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000FF7F7F00FF000000FF000000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F0006F6F6F0080808000F0F0F00000000000FFFFFF00F0F0
      F00000FFFF000080800000000000000000000000000000000000808080000000
      00000000000000000000F0F0F000F0F0F00000FFFF00FFFF0000FFFFFF008080
      8000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFF00008080800000000000F0F0F000F0F0F0005FBB6A435CB7
      6765F0F0F000F0F0F000F0F0F000F0F0F0004B9E53915FAF69FF7FCE8AFF7ECE
      89FF57A660FF37823DFC337D3908F0F0F000BFBFBF00F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000FF7F7F00FF000000FF000000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F0007F7F7F0080808000F0F0F00000000000F0F0F000F0F0
      F000F0F0F000F0F0F000FFFFFF00000000000000000000FFFF00000000008080
      80000000000080808000F0F0F000F0F0F00080808000FFFFFF00000000008080
      800000FFFF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0004B9F549160B06AFF81CF
      8DFF7FCF8BFF58A761FF398540FF347E3A08BFBFBF00F0F0F000F0F0F000F0F0
      F000F0F0F000FFBFBF00FF3F3F00FF000000FF000000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F0007F7F7F0060606000F0F0F00000000000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F0000000000000000000F0F0F000000000008080
      80000000000080808000F0F0F000F0F0F0000000000000FFFF00FFFFFF008080
      8000FFFFFF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF000000000000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0004CA0559162B2
      6CFF82D18FFF7AC885FF57A660FF38843F7B70707000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F0005050500020202000F0F0F00000000000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000008080000080800000FFFF0000000000F0F0
      F0008080800080808000F0F0F000F0F0F000808080008080800080808000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF00FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF00000000000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0004DA1
      569163B36DFF5FAF69FF41914979F0F0F00020202000CFCFCF00F0F0F000F0F0
      F000F0F0F000F0F0F000EF303000FF000000EF303000F0F0F000F0F0F000F0F0
      F000F0F0F000AFAFAF0000000000F0F0F000F0F0F00000000000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00000FFFF0000000000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00000FFFF008080800000FF
      FF00FFFFFF000000000080808000FFFFFF000000000000000000000000000000
      000000000000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F0004EA257914A9D527FF0F0F000F0F0F000F0F0F00020202000DFDFDF00F0F0
      F000F0F0F000F0F0F000EF303000FF000000EF303000F0F0F000F0F0F000F0F0
      F000BFBFBF0000000000F0F0F000F0F0F000F0F0F00000000000FFFFFF0000FF
      FF0080808000000000000000000000000000000000000000000080808000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00080808000FFFFFF008080
      800000FFFF00F0F0F000F0F0F00080808000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F00020202000AFAF
      AF00EFEFEF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000EFEFEF00AFAF
      AF0020202000F0F0F000F0F0F000F0F0F000F0F0F00080808000000000000000
      0000808080008080800080808000808080008080800080808000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F00080808000FFFFFF00F0F0F0008080
      8000FFFFFF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F0004040400070707000BFBFBF00BFBFBF00BFBFBF007070700040404000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F00000FFFF00F0F0F000F0F0F0008080
      800000FFFF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFFFE00700000000E7E7000000000000
      C3C300000000000081810000000000008001000000000000C003000000000000
      E007000000000000F00F000000000000F00F000000000000E007000000000000
      C0038001000000008001C003000000008180E00700000000C3C1E00700000000
      E7E3E00700000000FFF7E01F00000000000000000000F9FF000000000000F9FF
      000000000000F003000000000000E001000000000000E000000000000000F000
      000000000000F9C000000000000001E00000000000000780000000000000039F
      000000000000000F00000000000000070000000000008007000000000000C00F
      000000000000FF9F000000000000FF9FFFFFFF9FFFFFE007F9FFFF1FFCF98001
      F0FFFC9FF8F10000E07FF087F8F10000C03FE383F8010000801FCFE1FA010000
      000FB838F011000000073C788001000086037C7C90030000CF017C7CBC030000
      FF80787CBE430000FFC07FFCBE130001FFE13C79BF9F8007FFF39C73801F86FF
      FFFFC7C7803F27FFFFFFF01FFFFF67FF00000000000000000000000000000000
      000000000000}
  end
  object PropStorageEh1: TPropStorageEh
    StorageManager = RegPropStorageManEh1
    StoredProps.Strings = (
      'Panel_main.Panel_Bottom.Grid_Sold.<P>.Columns.ColumnsIndex'
      
        'Panel_main.Panel_Bottom.Grid_Sold.<P>.Columns.<ForAllItems>.Widt' +
        'h'
      'Panel_main.Panel_Center.Grid_GoodsOut.<P>.Columns.ColumnsIndex'
      
        'Panel_main.Panel_Center.Grid_GoodsOut.<P>.Columns.<ForAllItems>.' +
        'Width'
      'Panel_main.Panel_Top.Grid_Decl.<P>.Columns.ColumnsIndex'
      'Panel_main.Panel_Top.Grid_Decl.<P>.Columns.<ForAllItems>.Width'
      'Panel_main.Panel_Top.Grid_Goods.<P>.Columns.ColumnsIndex'
      'Panel_main.Panel_Top.Grid_Goods.<P>.Columns.<ForAllItems>.Width')
    Left = 768
    Top = 256
  end
  object RegPropStorageManEh1: TRegPropStorageManEh
    Left = 616
    Top = 256
  end
  object PopMn_Head: TPopupMenu
    Left = 80
    Top = 328
    object N4: TMenuItem
      Action = EndProc_A
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object N6: TMenuItem
      Action = Tov232_A
    end
  end
  object PopMn_Decl: TPopupMenu
    Left = 1040
    Top = 56
    object N10: TMenuItem
      Action = AddGods_A
    end
    object N12: TMenuItem
      Caption = '-'
    end
    object N13: TMenuItem
      Action = A_CreateActIn
    end
  end
  object PopMn_GoodsOut: TPopupMenu
    Left = 88
    Top = 536
    object Item_CreateActOut: TMenuItem
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1040#1082#1090' '#1074#1099#1076#1072#1095#1080' '#1090#1086#1074#1072#1088#1086#1074' '#1089#1086' '#1089#1082#1083#1072#1076#1072
      OnClick = Item_CreateActOutClick
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object N15: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = N15Click
    end
  end
  object SaveDialog1: TSaveDialog
    FileName = 'report_pril3.xml'
    Title = #1047#1072#1087#1080#1089#1100' '#1092#1072#1081#1083#1072
    Left = 904
    Top = 176
  end
  object ImL_Check: TImageList
    Left = 1024
    Top = 528
    Bitmap = {
      494C010101000801040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000317A36002D753200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003985400037833D00317B37002E7633000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004292
      4900408E470054A35C004F9F5700327C38002E77340000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004B9E5300499A
      51005BAC640077CA820074C87E0051A05900337D39002F783500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000053A95C0051A65A0063B5
      6D007ECE89007BCC870076CA810076C9810052A25A00347E3A00307935000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005AB4650059B063006BBD760084D2
      90007AC9850060B26A0063B46D0078C9830078CB820053A35C00347F3A00317A
      3600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005EB969005BB5660079C9860080CE
      8D0051A65A004DA15600499C51005CAD67007CCC860079CB850054A45D003580
      3B00317B37000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005FBA6A005CB666006DC0
      790055AC5F0000000000000000004A9D52005EAE68007DCD89007CCD870056A5
      5F0036813C00327C380000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005FBB6A005CB7
      6700000000000000000000000000000000004B9E53005FAF69007FCE8A007ECE
      890057A6600037823D00337D3900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004B9F540060B06A0081CF
      8D007FCF8B0058A7610039854000347E3A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004CA0550062B2
      6C0082D18F007AC8850057A6600038843F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004DA1
      560063B36D005FAF690041914900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004EA257004A9D520000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000F9FF000000000000
      F0FF000000000000E07F000000000000C03F000000000000801F000000000000
      000F00000000000000070000000000008603000000000000CF01000000000000
      FF80000000000000FFC0000000000000FFE1000000000000FFF3000000000000
      FFFF000000000000FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
end
