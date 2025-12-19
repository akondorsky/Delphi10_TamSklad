object EditSold_F: TEditSold_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1058#1086#1074#1072#1088#1099', '#1089' '#1082#1086#1090#1086#1088#1099#1080#1084' '#1089#1086#1074#1077#1088#1096#1072#1083#1080#1089#1100' '#1086#1087#1077#1088#1072#1094#1080#1080' '#1087'.4 '#1089#1090'. 232 '#1058#1050' '#1045#1040#1069#1057
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label13: TLabel
    Left = 83
    Top = 202
    Width = 62
    Height = 32
    Alignment = taRightJustify
    Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1090#1086#1074#1072#1088#1072
    WordWrap = True
  end
  object Label12: TLabel
    Left = 315
    Top = 175
    Width = 25
    Height = 32
    Caption = #1045#1076'. '#1080#1079#1084'.'
    WordWrap = True
  end
  object Label11: TLabel
    Left = 46
    Top = 168
    Width = 99
    Height = 32
    Alignment = taRightJustify
    Caption = #1042#1077#1089' '#1073#1088#1091#1090#1090#1086' '#1083#1080#1073#1086' '#1086#1073#1098#1077#1084' '#1090#1086#1074#1072#1088#1072
    WordWrap = True
  end
  object Label10: TLabel
    Left = 314
    Top = 130
    Width = 25
    Height = 32
    Caption = #1045#1076'. '#1080#1079#1084'.'
    WordWrap = True
  end
  object Label9: TLabel
    Left = 38
    Top = 130
    Width = 107
    Height = 32
    Alignment = taRightJustify
    Caption = #1050#1086#1083'. '#1090#1086#1074#1072#1088#1072' '#1074' '#1077#1076'. '#1080#1079#1084#1077#1088#1077#1085#1080#1103
    WordWrap = True
  end
  object Label6: TLabel
    Left = 105
    Top = 94
    Width = 40
    Height = 32
    Alignment = taRightJustify
    Caption = #1050#1086#1076' '#1058#1053#1042#1069#1044
    WordWrap = True
  end
  object Label5: TLabel
    Left = 58
    Top = 56
    Width = 86
    Height = 32
    Alignment = taRightJustify
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
    WordWrap = True
  end
  object Label3: TLabel
    Left = 39
    Top = 22
    Width = 105
    Height = 32
    Alignment = taRightJustify
    Caption = #1057#1082#1083#1072#1076#1089#1082#1086#1081' '#1085#1086#1084#1077#1088' '#1090#1086#1074#1072#1088#1072
    WordWrap = True
  end
  object Label1: TLabel
    Left = 45
    Top = 309
    Width = 98
    Height = 32
    Alignment = taRightJustify
    Caption = #1044#1072#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072' '#1082#1086#1085#1090#1088#1086#1083#1103
    WordWrap = True
  end
  object Label2: TLabel
    Left = 24
    Top = 240
    Width = 121
    Height = 32
    Alignment = taRightJustify
    Caption = #1051#1080#1094#1086', '#1087#1088#1080#1086#1073#1088#1077#1090#1096#1077#1077' '#1087#1088#1072#1074#1072' '#1085#1072' '#1090#1086#1074#1072#1088
    WordWrap = True
  end
  object Label4: TLabel
    Left = 62
    Top = 276
    Width = 84
    Height = 32
    Alignment = taRightJustify
    Caption = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072' '#1082#1086#1085#1090#1088#1086#1083#1103
    WordWrap = True
  end
  object E_Tnved: TEdit
    Left = 162
    Top = 99
    Width = 111
    Height = 24
    Alignment = taCenter
    Color = clYellow
    Enabled = False
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
    Left = 162
    Top = 207
    Width = 113
    Height = 24
    DynProps = <>
    Enabled = False
    EditButtons = <>
    TabOrder = 7
    Visible = True
  end
  object E_Edizm1: TComboBox
    Left = 368
    Top = 172
    Width = 113
    Height = 24
    AutoDropDown = True
    TabOrder = 6
    Items.Strings = (
      #1050#1043
      #1052'3')
  end
  object E_Weight: TDBNumberEditEh
    Left = 161
    Top = 172
    Width = 113
    Height = 24
    DecimalPlaces = 3
    DynProps = <>
    EditButtons = <>
    TabOrder = 5
    Visible = True
  end
  object E_Edizm: TAdvMultiColumnDropDown
    Left = 367
    Top = 134
    Width = 113
    Height = 24
    DropDownAutoWidth = False
    LineColor = 15855083
    FixedLineColor = 13745060
    Columns = <
      item
        Width = 50
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Header = #1050#1088'. '#1085#1072#1079#1074'.'
      end
      item
        Width = 100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Header = #1055#1086#1083#1085#1086#1077' '#1085#1072#1079#1074#1072#1085#1080#1077
      end>
    HeaderColor = clWhite
    HeaderColorTo = clGray
    HeaderHeight = 25
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = 7485192
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    Items = <>
    ItemIndex = -1
    DropDownBorderColor = clNone
    DropDownWidth = 400
    DropDownHeight = 300
    LabelMargin = 0
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    Version = '1.4.7.0'
    SelectionColor = 14155773
    SelectionColorTo = 5821692
    ButtonAppearance.BorderColorHot = 10079963
    ButtonAppearance.BorderColorDown = 4370174
    ButtonAppearance.Color = 16773091
    ButtonAppearance.ColorTo = 16768452
    ButtonAppearance.ColorDisabledTo = 11974326
    ButtonAppearance.ColorDown = 11196927
    ButtonAppearance.ColorDownTo = 7257087
    ButtonAppearance.ColorHot = 15465983
    ButtonAppearance.ColorHotTo = 11332863
    ButtonAppearance.Font.Charset = DEFAULT_CHARSET
    ButtonAppearance.Font.Color = clWindowText
    ButtonAppearance.Font.Height = -11
    ButtonAppearance.Font.Name = 'Tahoma'
    ButtonAppearance.Font.Style = []
    DropDownHeader.Color = 16773091
    DropDownHeader.ColorTo = 16765615
    DropDownHeader.Font.Charset = DEFAULT_CHARSET
    DropDownHeader.Font.Color = 7485192
    DropDownHeader.Font.Height = -11
    DropDownHeader.Font.Name = 'Tahoma'
    DropDownHeader.Font.Style = []
    DropDownHeader.Visible = True
    DropDownHeader.BorderColor = 16765615
    DropDownHeader.Buttons = <>
    DropDownFooter.Color = 16773091
    DropDownFooter.ColorTo = 16765615
    DropDownFooter.Font.Charset = DEFAULT_CHARSET
    DropDownFooter.Font.Color = 7485192
    DropDownFooter.Font.Height = -11
    DropDownFooter.Font.Name = 'Tahoma'
    DropDownFooter.Font.Style = []
    DropDownFooter.Visible = True
    DropDownFooter.BorderColor = 16765615
    DropDownFooter.Buttons = <>
    TabOrder = 4
    SelectionColorStyle = 1
    TMSStyle = 4
  end
  object E_Kol: TDBNumberEditEh
    Left = 161
    Top = 134
    Width = 113
    Height = 24
    DecimalPlaces = 3
    DynProps = <>
    EditButtons = <>
    TabOrder = 3
    Visible = True
  end
  object E_NGoods: TEdit
    Left = 161
    Top = 27
    Width = 112
    Height = 24
    Alignment = taCenter
    Color = clYellow
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
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
    Left = 162
    Top = 318
    Width = 112
    Height = 22
    DynProps = <>
    EditButtons = <>
    Flat = True
    Kind = dtkDateEh
    TabOrder = 8
    Visible = True
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
    TabOrder = 9
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
    TabOrder = 10
  end
  object E_Owner: TEdit
    Left = 161
    Top = 245
    Width = 450
    Height = 24
    MaxLength = 255
    TabOrder = 11
  end
  object E_Ndoc: TEdit
    Left = 162
    Top = 281
    Width = 450
    Height = 24
    MaxLength = 100
    TabOrder = 12
  end
end
