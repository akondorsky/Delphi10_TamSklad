object Warehouse_F: TWarehouse_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #1050#1083#1072#1076#1086#1074#1097#1080#1082' '#1090#1072#1084#1086#1078#1077#1085#1085#1086#1075#1086' '#1089#1082#1083#1072#1076#1072
  ClientHeight = 807
  ClientWidth = 1087
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 40
    Width = 1087
    Height = 767
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1085
      Height = 376
      Align = alTop
      Caption = 'Panel2'
      TabOrder = 0
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 1083
        Height = 25
        Align = alTop
        Alignment = taLeftJustify
        Caption = #1055#1088#1080#1077#1084' '#1090#1086#1074#1072#1088#1072' '#1085#1072' '#1089#1082#1083#1072#1076
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object Grid_ActInHead: TDBGridEh
        Left = 1
        Top = 26
        Width = 1083
        Height = 139
        Align = alTop
        DataSource = DM.DS_ActIn_Head
        DynProps = <>
        Flat = True
        FooterParams.Color = clWindow
        OddRowColor = clWindow
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = PopMn_ActIn
        TabOrder = 1
        TitleParams.RowLines = 2
        OnDblClick = Grid_ActInHeadDblClick
        Columns = <
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1048#1076'. '#1072#1082#1090#1072
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NOMER_DT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #8470' '#1044#1058
            Width = 88
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'OWNER'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1042#1083#1072#1076#1077#1083#1077#1094' '#1075#1088#1091#1079#1072
            Width = 154
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SDAL_FULL'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1058#1086#1074#1072#1088' '#1089#1076#1072#1083
            Width = 178
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'KEEPER_FULL'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1058#1086#1074#1072#1088' '#1087#1088#1080#1085#1103#1083
            Width = 160
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Grid_ActInItems: TDBGridEh
        Left = 1
        Top = 165
        Width = 1083
        Height = 210
        Align = alClient
        DataSource = DM.DS_ActIn_Items
        DynProps = <>
        Flat = True
        FooterParams.Color = clWindow
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
        OddRowColor = clWindow
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
        TabOrder = 2
        TitleParams.RowLines = 2
        OnDblClick = Grid_ActInItemsDblClick
        Columns = <
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'GOODS_NUMBER'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #8470' '#1090#1086#1074#1072#1088#1072' '#1074' '#1044#1058
            Width = 63
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DT'
            Footers = <>
            Title.Caption = #1044#1072#1090#1072', '#1074#1088#1077#1084#1103
            Width = 101
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'GOODS_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
            Width = 181
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'KOL_DOC'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1086#1083'. '#1087#1086' '#1076#1086#1082'.'
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'KOL_FACT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1086#1083'. '#1092#1072#1082#1090'.'
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'KOL_EDIZM'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1045#1076'. '#1080#1079#1084'.'
            Width = 59
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'WEIGHT_DOC'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1042#1077#1089' '#1080#1083#1080' '#1086#1073#1098#1077#1084' '#1076#1086#1082'.'
            Width = 76
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'WEIGHT_FACT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1042#1077#1089' '#1080#1083#1080' '#1086#1073#1098#1077#1084' '#1092#1072#1082#1090'.'
            Width = 81
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'WEIGHT_EDIZM'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1045#1076'. '#1074#1077#1089#1072' ('#1086#1073#1098#1077#1084#1072')'
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 377
      Width = 1085
      Height = 389
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 1
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 1083
        Height = 25
        Align = alTop
        Alignment = taLeftJustify
        Caption = #1042#1099#1076#1072#1095#1072' '#1090#1086#1074#1072#1088#1072' '#1089#1086' '#1089#1082#1083#1072#1076#1072
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object Grid_ActOut: TDBGridEh
        Left = 1
        Top = 26
        Width = 1083
        Height = 362
        Align = alClient
        DataSource = DM.Ds_QryActOut
        DynProps = <>
        PopupMenu = PopMn_ActOut
        TabOrder = 1
        TitleParams.RowLines = 2
        OnDblClick = Grid_ActOutDblClick
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ID'
            Footers = <>
            Title.Caption = #8470' '#1040#1082#1090#1072
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DT'
            Footers = <>
            Title.Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
            Width = 116
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAME_GOODS'
            Footers = <>
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
            Width = 180
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NOMER_DOCOUT'
            Footers = <>
            Title.Caption = #8470' '#1088#1072#1079#1088#1077#1096#1072#1102#1097#1077#1075#1086' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
            Width = 206
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'KOL'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1086#1083'.'
            Width = 74
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
            FieldName = 'WEIGHT'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1042#1077#1089
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SDAL'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1042#1099#1076#1072#1083
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRIEM'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1055#1088#1080#1085#1103#1083
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'WEIGHT_EDIZM'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1045#1076'.'#1074#1077#1089#1072' ('#1086#1073#1098#1077#1084#1072')'
            Width = 91
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1087
    Height = 40
    ButtonHeight = 38
    ButtonWidth = 39
    Caption = 'ToolBar1'
    Images = Main_F.ImL_32
    TabOrder = 1
    object Btn_RefreshWh: TToolButton
      Left = 0
      Top = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Caption = 'Btn_RefreshWh'
      ImageIndex = 12
      ParentShowHint = False
      ShowHint = True
      OnClick = Btn_RefreshWhClick
    end
  end
  object PropStorageEh1: TPropStorageEh
    StorageManager = Main_F.RegPropStorageManEh1
    StoredProps.Strings = (
      'Panel1.Panel2.Grid_ActInHead.<P>.Columns.ColumnsIndex'
      'Panel1.Panel2.Grid_ActInHead.<P>.Columns.<ForAllItems>'
      'Panel1.Panel2.Grid_ActInHead.<P>.Width'
      'Panel1.Panel2.Grid_ActInItems.<P>.Columns.ColumnsIndex'
      'Panel1.Panel2.Grid_ActInItems.<P>.Columns.<ForAllItems>'
      'Panel1.Panel2.Grid_ActInItems.<P>.Width'
      'Panel1.Panel3.Grid_ActOut.<P>.Columns.ColumnsIndex'
      'Panel1.Panel3.Grid_ActOut.<P>.Columns.<ForAllItems>.Width')
    Left = 296
    Top = 496
  end
  object PopMn_ActIn: TPopupMenu
    Left = 192
    Top = 224
    object N1: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100' '#1040#1090#1072' '#1087#1088#1080#1077#1084#1082#1080
      OnClick = N1Click
    end
  end
  object PopMn_ActOut: TPopupMenu
    Left = 192
    Top = 480
    object N2: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100' '#1040#1082#1090#1072' '#1074#1099#1076#1072#1095#1080
      OnClick = N2Click
    end
  end
end
