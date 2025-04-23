object FindRegTi_F: TFindRegTi_F
  Left = 0
  Top = 0
  Caption = #1055#1086#1080#1089#1082' '#1087#1086#1083#1091#1095#1072#1090#1077#1083#1077#1081' '#1075#1088#1091#1079#1086#1074
  ClientHeight = 442
  ClientWidth = 891
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 13
    Top = 11
    Width = 120
    Height = 16
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1087#1086#1083#1091#1095#1072#1090#1077#1083#1103
  end
  object E_Find: TButtonedEdit
    Left = 12
    Top = 30
    Width = 249
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Images = Main_F.ImL_Buttons16
    MaxLength = 255
    ParentFont = False
    RightButton.ImageIndex = 2
    RightButton.Visible = True
    TabOrder = 0
    OnKeyPress = E_FindKeyPress
    OnRightButtonClick = E_FindRightButtonClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 72
    Width = 891
    Height = 370
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 889
      Height = 239
      Align = alClient
      DataSource = DM.Ds_FindParts
      DynProps = <>
      Flat = True
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = PopupMenu1
      ReadOnly = True
      TabOrder = 0
      TitleParams.RowLines = 2
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DT_IS'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1044#1072#1090#1072', '#1074#1088#1077#1084#1103' '#1074#1098#1077#1079#1076#1072
          Width = 139
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'N_PART'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #8470' '#1058#1072#1083#1086#1085#1072
          Width = 102
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ZAYV'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100' '#1075#1088#1091#1079#1072
          Width = 530
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object DBGridEh2: TDBGridEh
      Left = 1
      Top = 240
      Width = 889
      Height = 129
      Align = alBottom
      DataSource = DM.Ds_Ts
      DynProps = <>
      Flat = True
      TabOrder = 1
      TitleParams.RowLines = 2
      Columns = <
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'N_TS'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #8470' '#1058#1057
          Width = 99
        end
        item
          Alignment = taCenter
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'N_TRAILER_HUMAN'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #8470' '#1087#1088#1080#1094#1077#1087#1072
          Width = 108
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 891
    Height = 29
    Caption = 'ToolBar1'
    Images = Main_F.ImL_Buttons16
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Hint = #1054#1090#1086#1073#1088#1072#1079#1080#1090#1100' '#1074#1089#1077
      Caption = 'ToolButton1'
      ImageIndex = 3
      OnClick = ToolButton1Click
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 576
    Top = 32
    object N1: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100
      OnClick = N1Click
    end
  end
end
