object AddDecl_F: TAddDecl_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1053#1086#1074#1086#1077' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1077' '#1085#1072' '#1058#1057
  ClientHeight = 418
  ClientWidth = 518
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
  object Label1: TLabel
    Left = 48
    Top = 81
    Width = 84
    Height = 16
    Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103' '
  end
  object Label4: TLabel
    Left = 27
    Top = 108
    Width = 92
    Height = 32
    Alignment = taRightJustify
    Caption = #8470' '#1076#1077#1082#1083#1072#1088#1072#1094#1080#1080' '#1085#1072' '#1090#1086#1074#1072#1088#1099
    WordWrap = True
  end
  object Label3: TLabel
    Left = 57
    Top = 147
    Width = 57
    Height = 16
    Caption = #1053#1086#1084#1077#1088' '#1058#1057
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 518
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 94
      Top = 21
      Width = 306
      Height = 19
      Caption = #1055#1086#1089#1090#1091#1087#1083#1077#1085#1080#1077'  '#1085#1072' '#1090#1072#1084#1086#1078#1077#1085#1085#1099#1081' '#1089#1082#1083#1072#1076
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object BitBtn1: TBitBtn
    Left = 161
    Top = 373
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
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 257
    Top = 373
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
    TabOrder = 6
  end
  object E_Gtd: TMaskEdit
    Left = 145
    Top = 111
    Width = 208
    Height = 24
    EditMask = '00000000\/000000\/0000000;1;_'
    MaxLength = 23
    TabOrder = 2
    Text = '        .      .       '
  end
  object E_NTs: TEdit
    Left = 146
    Top = 144
    Width = 158
    Height = 24
    CharCase = ecUpperCase
    Enabled = False
    MaxLength = 50
    TabOrder = 3
    OnKeyPress = E_NTsKeyPress
  end
  object E_Dt: TEdit
    Left = 146
    Top = 78
    Width = 158
    Height = 24
    ReadOnly = True
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 35
    Top = 176
    Width = 470
    Height = 145
    Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
    TabOrder = 4
    object Label7: TLabel
      Left = 25
      Top = 28
      Width = 60
      Height = 32
      Alignment = taRightJustify
      Caption = #1053#1072#1080#1084#1077#1085#1086'- '#1074#1072#1085#1080#1077
      WordWrap = True
    end
    object Label5: TLabel
      Left = 59
      Top = 68
      Width = 24
      Height = 16
      Caption = #1048#1053#1053
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 59
      Top = 98
      Width = 35
      Height = 16
      Caption = #1040#1076#1088#1077#1089
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object E_Zayv: TButtonedEdit
      Left = 111
      Top = 33
      Width = 335
      Height = 24
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1074#1089#1077' '#1079#1072#1087#1080#1089#1080' -'#13#10#1087#1091#1089#1090#1072#1103' '#1089#1090#1088#1086#1082#1072' + Enter'
      Enabled = False
      ParentShowHint = False
      ReadOnly = True
      RightButton.ImageIndex = 1
      RightButton.Visible = True
      ShowHint = True
      TabOrder = 0
      OnRightButtonClick = E_ZayvRightButtonClick
    end
    object E_INN: TEdit
      Left = 111
      Top = 65
      Width = 158
      Height = 24
      CharCase = ecUpperCase
      Enabled = False
      MaxLength = 12
      NumbersOnly = True
      ReadOnly = True
      TabOrder = 1
      OnKeyPress = E_NTsKeyPress
    end
    object E_Adress: TEdit
      Left = 111
      Top = 95
      Width = 330
      Height = 24
      CharCase = ecUpperCase
      Enabled = False
      MaxLength = 12
      NumbersOnly = True
      ReadOnly = True
      TabOrder = 2
      OnKeyPress = E_NTsKeyPress
    end
  end
end
