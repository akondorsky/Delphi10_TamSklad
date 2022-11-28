object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 711
  Width = 1051
  object Sql: TIBSQL
    Database = DB
    SQL.Strings = (
      
        'insert into goods_head (dt,n_goods,n_decl,name_goods,tnved_code,' +
        'valuta,date_finished,kol,kol_edizm,weight_kol,weight_edizm,stoim' +
        ') '
      ' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11)')
    Transaction = IBTW
    Left = 149
    Top = 16
  end
  object IBTW: TIBTransaction
    DefaultDatabase = DB
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 75
    Top = 16
  end
  object IBTR: TIBTransaction
    DefaultDatabase = DB
    Params.Strings = (
      'read'
      'read_committed'
      'rec_version')
    Left = 115
    Top = 16
  end
  object DB: TIBDatabase
    DatabaseName = 'c:\fb_db\sirius_25.fdb'
    Params.Strings = (
      'user_name=sysdba'
      'password=mkey'
      'lc_ctype=UTF8')
    LoginPrompt = False
    DefaultTransaction = IBTR
    ServerType = 'IBServer'
    TraceFlags = [tfQExecute, tfError, tfStmt, tfTransact, tfService, tfMisc]
    AllowStreamedConnected = False
    Left = 35
    Top = 16
  end
  object Qry_Goods: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Ds_Decl
    ParamCheck = True
    SQL.Strings = (
      'select * from GOODS_HEADER '
      'where id_decl = :id'
      'order by id desc')
    Left = 37
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object Ds_Goods: TDataSource
    DataSet = Qry_Goods
    Left = 101
    Top = 72
  end
  object Qry_Settings: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *  from SETTINGS')
    Left = 149
    Top = 72
  end
  object Qry_Valname: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *  from VALNAME order by  KR_NAME')
    Left = 37
    Top = 128
  end
  object Ds_Valname: TDataSource
    DataSet = Qry_Valname
    Left = 85
    Top = 128
  end
  object Qry_Edizm: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *   from EDIZM ')
    Left = 149
    Top = 128
  end
  object Qry_GoodsOut: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Ds_Goods
    ParamCheck = True
    SQL.Strings = (
      'select * from  GOODS_OUT where id_head=:id order by id')
    Left = 37
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object Ds_GoodsOut: TDataSource
    DataSet = Qry_GoodsOut
    Left = 101
    Top = 192
  end
  object Qry_CustProc: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select *   from CUST_PROC_TS order by CODE_PROC')
    Left = 157
    Top = 192
  end
  object Qry_GoodsSold: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Ds_Goods
    ParamCheck = True
    SQL.Strings = (
      'select * from  GOODS_SOLD where id_head=:id order by id')
    Left = 37
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object Ds_GoodsSold: TDataSource
    DataSet = Qry_GoodsSold
    Left = 117
    Top = 256
  end
  object DS_RegtiDisp: TDataSource
    AutoEdit = False
    DataSet = Qry_RegtiDisp
    Left = 368
    Top = 63
  end
  object Qry_RegtiDisp: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select  ID, INN, ZAYV, VALID,DISCOUNT,'
      '(POSTCODE||'#39' '#39'||CITY||'#39' '#39'||STREET||'#39' '#39'||HOUSE) AS FULL_ADRESS'
      ' from REG_TI order by ZAYV')
    Left = 304
    Top = 64
    object Qry_RegtiDispID: TIntegerField
      FieldName = 'ID'
      Origin = '"REG_TI"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_RegtiDispINN: TIBStringField
      FieldName = 'INN'
      Origin = '"REG_TI"."INN"'
      Required = True
      Size = 48
    end
    object Qry_RegtiDispZAYV: TIBStringField
      FieldName = 'ZAYV'
      Origin = '"REG_TI"."ZAYV"'
      Required = True
      Size = 400
    end
    object Qry_RegtiDispVALID: TIBStringField
      FieldName = 'VALID'
      Origin = '"REG_TI"."VALID"'
      Size = 4
    end
    object Qry_RegtiDispDISCOUNT: TIntegerField
      FieldName = 'DISCOUNT'
      Origin = '"REG_TI"."DISCOUNT"'
    end
    object Qry_RegtiDispFULL_ADRESS: TIBStringField
      FieldName = 'FULL_ADRESS'
      ProviderFlags = []
      Size = 476
    end
  end
  object Qry_Decl: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.*, b.n_ticket||'#39'/'#39'||c.npp as n_part  from DECLS a'
      'left join ticket b on a.id_ticket = b.id'
      'left join ticket_parts c on a.id_part=c.id'
      'order by a.ID DESC')
    Left = 37
    Top = 320
  end
  object Ds_Decl: TDataSource
    DataSet = Qry_Decl
    Left = 93
    Top = 320
  end
  object Qry_ActIn_Head: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Ds_Decl
    ParamCheck = True
    SQL.Strings = (
      
        'select a.*, b.nomer_dt ,(a.sdal_dolj||'#39' '#39'||a.sdal_fio) as sdal_f' +
        'ull,'
      '(a.keeper_dolj||'#39' '#39'||a.keeper_fio) as keeper_full'
      'from whact_in_head_ts a'
      'left join decls b on a.id_decl=b.id'
      'order by a.id desc')
    Left = 37
    Top = 376
  end
  object DS_ActIn_Head: TDataSource
    DataSet = Qry_ActIn_Head
    Left = 133
    Top = 368
  end
  object Qry_ActIn_Items: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DS_ActIn_Head
    ParamCheck = True
    SQL.Strings = (
      'select * '
      'from  WHACT_IN_ITEMS_TS where id_head = :id')
    Left = 29
    Top = 448
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object DS_ActIn_Items: TDataSource
    DataSet = Qry_ActIn_Items
    Left = 157
    Top = 448
  end
  object Qry_ActOut: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DS_ActIn_Head
    ParamCheck = True
    SQL.Strings = (
      
        'select a.*, (a.keeper_dolj||'#39' '#39'||a.keeper_fio) as sdal,(a.priem_' +
        'dolj||'#39' '#39'||a.priem_fio) as priem'
      'from WHACT_OUT_TS a'
      'where a.id_act_in = :id')
    Left = 29
    Top = 512
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object Ds_QryActOut: TDataSource
    DataSet = Qry_ActOut
    Left = 149
    Top = 512
  end
  object Ds_FindParts: TDataSource
    AutoEdit = False
    DataSet = Qry_FindParts
    Left = 368
    Top = 127
  end
  object Qry_FindParts: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select a.zayv,a.inn,'
      ' (iif (a.POSTCODE is not null, a.postcode, '#39#39'))||'#39' '#39'||'
      ' (iif (a.REGION is not null, a.REGION, '#39#39'))||'#39' '#39'||'
      ' (iif (a.CITY is not null, a.CITY, '#39#39'))||'#39' '#39'||'
      ' (iif (a.STREET is not null, a.STREET, '#39#39'))||'#39' '#39'||'
      ' (iif (a.HOUSE is not null, a.HOUSE, '#39#39')) AS FULL_ADRESS ,'
      'c.id as id_ticket,  c.n_ticket||'#39'/'#39'||b.npp as N_Part,'
      'c.dt_is,b.id as id_part'
      '         from reg_ti a'
      '         left join ticket_parts b on a.id = b.id_owner'
      '         left join ticket c on b.id_ticket = c.id'
      '         order by c.id desc')
    Left = 304
    Top = 128
  end
  object Ds_Ts: TDataSource
    AutoEdit = False
    DataSet = Qry_Ts
    Left = 368
    Top = 199
  end
  object Qry_Ts: TIBQuery
    Database = DB
    Transaction = IBTR
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Ds_FindParts
    ParamCheck = True
    SQL.Strings = (
      'select first 1 n_ts,n_trailer_human'
      ' from first_ts where id_ticket = :id_ticket')
    Left = 304
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_ticket'
        ParamType = ptUnknown
      end>
  end
  object Ds_Settings: TDataSource
    DataSet = Qry_Settings
    Left = 192
    Top = 72
  end
  object DS_CustProc: TDataSource
    DataSet = Qry_CustProc
    Left = 200
    Top = 192
  end
  object DS_Edizm: TDataSource
    AutoEdit = False
    DataSet = Qry_Edizm
    Left = 192
    Top = 127
  end
end
