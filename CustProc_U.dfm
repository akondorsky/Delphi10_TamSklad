object CustProc_F: TCustProc_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1050#1083#1072#1089#1089#1080#1092#1080#1082#1072#1090#1086#1088' '#1090#1072#1084#1086#1078#1077#1085#1085#1099#1093' '#1087#1088#1086#1094#1077#1076#1091#1088
  ClientHeight = 379
  ClientWidth = 562
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Grid1: TDBGridEh
    Left = 0
    Top = 0
    Width = 562
    Height = 379
    Align = alClient
    DataSource = DM.DS_CustProc
    DynProps = <>
    Flat = True
    FooterParams.Color = clWindow
    OddRowColor = clWindow
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleParams.RowLines = 2
    OnDblClick = Grid1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CODE_PROC'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1076
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 455
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end
