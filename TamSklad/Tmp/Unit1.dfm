object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object IBQuery1: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.*,'
      ' iif(a.date_goodssold is null,'#39#1085#1077' '#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#39','
      
        ' substring(100+extract(day from a.date_goodssold) from 2 for 2)|' +
        '|'#39'.'#39'||'
      
        ' substring(100+extract(month from a.date_goodssold) from 2 for 2' +
        ')||'#39'.'#39'||'
      ' extract(year from a.date_goodssold)) as datesold_human,'
      'b.dt_out,'
      'b.custproc,'
      'b.kol as kol_out,'
      'b.kol_edizm as edizm_out,'
      'b.weight_vol as weight_out,'
      'b.weight_edizm as edizm1_out,'
      'b.stoim as stoim_out,'
      'b.n_decl as gtd_out,'
      'b.N_GOODS as n_tov_out,'
      'b.CUSTPROC_CODE, '
      'b.TNVED_OUT,'
      'b.NAME_GOODS_OUT,'
      'c.n_doc as doc_sold,'
      'c.date_doc as date_sold,'
      'c.owner,c.kol as kol_sold,'
      'c.kol_edizm as edizm_sold,'
      'c.weight_vol as weight_sold,'
      'c.weight_edizm as edizm1_sold,'
      'c.stoim as stoim_sold,'
      'd.nomer_dt as n_decl,'
      'cast(d.dt as date) as date_in'
      'from goods_header a'
      'left join goods_out b on a.id = b.id_head'
      'left join goods_sold c on a.id = c.id_head'
      'left join decls d on a.id_decl = d.id'
      'where  (a.rest_stoim > 0)'
      '   or (cast(a.dt as date) between :p1 and :p2)'
      '   or (cast (b.dt_out as date) between :p1 and :p2)'
      '   or (c.date_doc between :p1 and :p2 )'
      'order by a.id_decl, a.n_goods')
    Left = 312
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'p2'
        ParamType = ptUnknown
      end>
  end
end
