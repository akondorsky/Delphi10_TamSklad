object Edizm_F: TEdizm_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1045#1076#1080#1085#1080#1094#1099' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
  ClientHeight = 445
  ClientWidth = 515
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 515
    Height = 445
    Align = alClient
    DataSource = DM.DS_Edizm
    DynProps = <>
    Flat = True
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    RowLines = 2
    TabOrder = 0
    TitleParams.RowLines = 2
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'KOD'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1076
      end
      item
        Alignment = taLeftJustify
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'KR_NAME'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1088#1072#1090#1082'. '#1085#1072#1080#1084'.'
        Width = 116
      end
      item
        Alignment = taLeftJustify
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'FNAME'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1055#1086#1083#1085'. '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 311
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end
