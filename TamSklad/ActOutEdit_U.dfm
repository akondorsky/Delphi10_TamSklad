object ActOutEdit_F: TActOutEdit_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1040#1082#1090' '#1074#1099#1076#1072#1095#1080' '#1075#1088#1091#1079#1072'. '#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'.'
  ClientHeight = 488
  ClientWidth = 390
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 63
    Top = 26
    Width = 65
    Height = 14
    Caption = #1048#1076'. '#8470' '#1072#1082#1090#1072
  end
  object Label4: TLabel
    Left = 53
    Top = 59
    Width = 78
    Height = 14
    Caption = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
  end
  object Label5: TLabel
    Left = 30
    Top = 210
    Width = 110
    Height = 14
    Caption = #1044#1072#1090#1072','#1074#1088#1077#1084#1103' '#1074#1099#1076#1072#1095#1080
  end
  object Label6: TLabel
    Left = 37
    Top = 87
    Width = 95
    Height = 14
    Caption = #1058#1086#1074#1072#1088' '#1085#1072' '#1074#1099#1076#1072#1095#1091
  end
  object GroupBox3: TGroupBox
    Left = 24
    Top = 336
    Width = 347
    Height = 82
    Caption = #1058#1086#1074#1072#1088' '#1087#1088#1080#1085#1103#1083
    TabOrder = 4
    object Label10: TLabel
      Left = 38
      Top = 21
      Width = 81
      Height = 14
      Caption = #1060#1072#1084#1080#1083#1080#1103' '#1048'.'#1054'.'
    end
    object Label11: TLabel
      Left = 54
      Top = 50
      Width = 64
      Height = 14
      Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
    end
    object E_Fio: TEdit
      Left = 126
      Top = 17
      Width = 177
      Height = 22
      MaxLength = 50
      TabOrder = 0
    end
    object E_Dolj: TComboBox
      Left = 126
      Top = 47
      Width = 177
      Height = 22
      TabOrder = 1
      Items.Strings = (
        #1042#1086#1076#1080#1090#1077#1083#1100
        #1044#1077#1082#1083#1072#1088#1072#1085#1090
        #1059#1087#1086#1083#1085#1086#1084#1086#1095#1077#1085#1085#1086#1077' '#1083#1080#1094#1086
        #1069#1082#1089#1087#1077#1076#1080#1090#1086#1088)
    end
  end
  object GroupBox2: TGroupBox
    Left = 24
    Top = 244
    Width = 347
    Height = 86
    Caption = #1058#1086#1074#1072#1088' '#1089#1076#1072#1083
    TabOrder = 3
    object Label2: TLabel
      Left = 38
      Top = 21
      Width = 81
      Height = 14
      Caption = #1060#1072#1084#1080#1083#1080#1103' '#1048'.'#1054'.'
    end
    object Label3: TLabel
      Left = 54
      Top = 50
      Width = 64
      Height = 14
      Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
    end
    object E_KeeperFio: TEdit
      Left = 126
      Top = 18
      Width = 177
      Height = 22
      MaxLength = 40
      TabOrder = 0
    end
    object E_KeeperDolj: TComboBox
      Left = 126
      Top = 50
      Width = 177
      Height = 22
      TabOrder = 1
      Items.Strings = (
        #1050#1083#1072#1076#1086#1074#1097#1080#1082)
    end
  end
  object E_Id: TEdit
    Left = 150
    Top = 21
    Width = 66
    Height = 24
    Alignment = taCenter
    Color = clYellow
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object E_Dt: TEdit
    Left = 150
    Top = 56
    Width = 221
    Height = 22
    Color = clYellow
    Enabled = False
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 198
    Top = 453
    Width = 89
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    DoubleBuffered = True
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
    ParentDoubleBuffered = False
    TabOrder = 6
  end
  object BitBtn1: TBitBtn
    Left = 102
    Top = 453
    Width = 89
    Height = 25
    Caption = #1047#1072#1087#1080#1089#1072#1090#1100
    DoubleBuffered = True
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
    ParentDoubleBuffered = False
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object E_DateTime: TDBDateTimeEditEh
    Left = 150
    Top = 207
    Width = 175
    Height = 22
    DynProps = <>
    EditButtons = <>
    Kind = dtkDateTimeEh
    TabOrder = 2
    Visible = True
  end
  object E_Goods: TMemo
    Left = 31
    Top = 106
    Width = 340
    Height = 89
    Color = clYellow
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentFont = False
    TabOrder = 7
  end
end
