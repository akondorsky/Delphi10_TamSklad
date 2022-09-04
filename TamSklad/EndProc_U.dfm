object EndProc_F: TEndProc_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1047#1072#1074#1077#1088#1096#1077#1085#1080#1077' '#1087#1088#1086#1094#1077#1076#1091#1088#1099
  ClientHeight = 443
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label13: TLabel
    Left = 72
    Top = 277
    Width = 62
    Height = 32
    Alignment = taRightJustify
    Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1090#1086#1074#1072#1088#1072
    WordWrap = True
  end
  object Label12: TLabel
    Left = 390
    Top = 250
    Width = 25
    Height = 32
    Caption = #1045#1076'. '#1080#1079#1084'.'
    WordWrap = True
  end
  object Label11: TLabel
    Left = 35
    Top = 243
    Width = 99
    Height = 32
    Alignment = taRightJustify
    Caption = #1042#1077#1089' '#1073#1088#1091#1090#1090#1086' '#1083#1080#1073#1086' '#1086#1073#1098#1077#1084' '#1090#1086#1074#1072#1088#1072
    WordWrap = True
  end
  object Label10: TLabel
    Left = 389
    Top = 205
    Width = 48
    Height = 36
    Caption = #1045#1076'. '#1080#1079#1084' / '#1050#1086#1076
    WordWrap = True
  end
  object Label9: TLabel
    Left = 27
    Top = 205
    Width = 107
    Height = 32
    Alignment = taRightJustify
    Caption = #1050#1086#1083'. '#1090#1086#1074#1072#1088#1072' '#1074' '#1077#1076'. '#1080#1079#1084#1077#1088#1077#1085#1080#1103
    WordWrap = True
  end
  object Label7: TLabel
    Left = 56
    Top = 128
    Width = 79
    Height = 32
    Alignment = taRightJustify
    Caption = #1058#1072#1084#1086#1078#1077#1085#1085#1072#1103' '#1087#1088#1086#1094#1077#1076#1091#1088#1072
    WordWrap = True
  end
  object Label6: TLabel
    Left = 95
    Top = 94
    Width = 40
    Height = 32
    Alignment = taRightJustify
    Caption = #1050#1086#1076' '#1058#1053#1042#1069#1044
    WordWrap = True
  end
  object Label5: TLabel
    Left = 48
    Top = 56
    Width = 86
    Height = 32
    Alignment = taRightJustify
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
    WordWrap = True
  end
  object Label3: TLabel
    Left = 42
    Top = 22
    Width = 92
    Height = 16
    Alignment = taRightJustify
    Caption = #8470' '#1090#1086#1074#1072#1088#1072' '#1074' '#1044#1058
    WordWrap = True
  end
  object Label1: TLabel
    Left = 34
    Top = 312
    Width = 105
    Height = 32
    Alignment = taRightJustify
    Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '#1074#1099#1076#1072#1095#1080' '#1089#1086' '#1089#1082#1083#1072#1076#1072
    WordWrap = True
  end
  object Label4: TLabel
    Left = 20
    Top = 164
    Width = 113
    Height = 32
    Alignment = taRightJustify
    Caption = #8470' '#1076#1077#1082#1083#1072#1088#1072#1094#1080#1080', '#1079#1072#1074#1077#1088#1096'. '#1087#1088#1086#1094#1077#1076#1091#1088#1091
    WordWrap = True
  end
  object Shape1: TShape
    Left = 281
    Top = 208
    Width = 1
    Height = 98
  end
  object E_Tnved: TEdit
    Left = 162
    Top = 99
    Width = 111
    Height = 24
    Alignment = taCenter
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 10
    NumbersOnly = True
    ParentFont = False
    TabOrder = 2
  end
  object E_Cost: TDBNumberEditEh
    Left = 161
    Top = 282
    Width = 113
    Height = 24
    DynProps = <>
    EditButtons = <>
    TabOrder = 12
    Visible = True
    OnChange = E_CostChange
    OnExit = E_CostExit
  end
  object E_Edizm1: TComboBox
    Left = 443
    Top = 247
    Width = 113
    Height = 24
    AutoDropDown = True
    TabOrder = 9
    Items.Strings = (
      #1050#1043
      #1052'3')
  end
  object E_Weight: TDBNumberEditEh
    Left = 160
    Top = 247
    Width = 113
    Height = 24
    DecimalPlaces = 3
    DynProps = <>
    EditButtons = <>
    TabOrder = 10
    Visible = True
    OnChange = E_WeightChange
    OnExit = E_WeightExit
  end
  object E_Kol: TDBNumberEditEh
    Left = 160
    Top = 209
    Width = 113
    Height = 24
    DecimalPlaces = 3
    DynProps = <>
    EditButtons = <>
    TabOrder = 5
    Visible = True
    OnChange = E_KolChange
    OnExit = E_KolExit
  end
  object E_NGoods: TEdit
    Left = 161
    Top = 27
    Width = 48
    Height = 24
    Alignment = taCenter
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 3
    NumbersOnly = True
    ParentFont = False
    TabOrder = 0
  end
  object E_Name: TEdit
    Left = 162
    Top = 64
    Width = 448
    Height = 24
    Alignment = taCenter
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 255
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object E_Dt: TDBDateTimeEditEh
    Left = 161
    Top = 318
    Width = 112
    Height = 22
    DynProps = <>
    EditButtons = <>
    Flat = True
    Kind = dtkDateEh
    TabOrder = 14
    Visible = True
  end
  object E_Gtd: TMaskEdit
    Left = 161
    Top = 170
    Width = 208
    Height = 24
    EditMask = '00000000\/000000\/0000000;1;_'
    MaxLength = 23
    TabOrder = 4
    Text = '        .      .       '
  end
  object BitBtn1: TBitBtn
    Left = 222
    Top = 396
    Width = 89
    Height = 25
    Caption = #1047#1072#1087#1080#1089#1072#1090#1100
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    TabOrder = 15
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 318
    Top = 396
    Width = 89
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    ModalResult = 2
    NumGlyphs = 2
    TabOrder = 16
  end
  object Cost_rest: TDBNumberEditEh
    Left = 290
    Top = 282
    Width = 79
    Height = 24
    Color = clWhite
    DynProps = <>
    Enabled = False
    EditButtons = <>
    TabOrder = 13
    Visible = True
  end
  object Weight_rest: TDBNumberEditEh
    Left = 290
    Top = 247
    Width = 79
    Height = 24
    Color = clWhite
    DecimalPlaces = 3
    DynProps = <>
    Enabled = False
    EditButtons = <>
    TabOrder = 11
    Visible = True
  end
  object Kol_rest: TDBNumberEditEh
    Left = 290
    Top = 209
    Width = 79
    Height = 24
    Color = clWhite
    DecimalPlaces = 3
    DynProps = <>
    Enabled = False
    EditButtons = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Visible = True
  end
  object E_Proc: TButtonedEdit
    Left = 160
    Top = 136
    Width = 450
    Height = 24
    Images = Main_F.ImL_Buttons16
    ReadOnly = True
    RightButton.ImageIndex = 1
    RightButton.Visible = True
    TabOrder = 3
    OnRightButtonClick = E_ProcRightButtonClick
  end
  object E_KOL_CODE: TEdit
    Left = 524
    Top = 209
    Width = 31
    Height = 24
    MaxLength = 3
    NumbersOnly = True
    TabOrder = 7
    OnChange = E_KOL_CODEChange
  end
  object E_Edizm: TButtonedEdit
    Left = 443
    Top = 209
    Width = 76
    Height = 24
    Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1089#1077' '#1079#1072#1087#1080#1089#1080' -'#13#10#1087#1091#1089#1090#1072#1103' '#1089#1090#1088#1086#1082#1072' + Enter'
    Images = Main_F.ImL_Buttons16
    ParentShowHint = False
    ReadOnly = True
    RightButton.ImageIndex = 1
    RightButton.Visible = True
    ShowHint = True
    TabOrder = 6
    OnRightButtonClick = E_EdizmRightButtonClick
  end
end
