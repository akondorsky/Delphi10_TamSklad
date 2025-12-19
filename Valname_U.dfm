object Valname_F: TValname_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1042#1072#1083#1102#1090#1099
  ClientHeight = 300
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 16
  object Grid_Ticket: TDBGridEh
    Left = 0
    Top = 0
    Width = 635
    Height = 300
    Align = alClient
    DataSource = DM.Ds_Valname
    DynProps = <>
    Flat = True
    FooterParams.Color = clWindow
    OddRowColor = clWindow
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleParams.RowLines = 2
    OnDblClick = Grid_TicketDblClick
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end
