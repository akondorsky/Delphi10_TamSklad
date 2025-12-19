unit data;

interface

uses
  SysUtils, Classes, DB, IBX.IBDatabase, IBX.IBSQL,IBX.IbQuery, IBX.IBCustomDataSet,IBX.IB,Dialogs,Forms;

type
  TDM = class(TDataModule)
    Sql: TIBSQL;
    IBTW: TIBTransaction;
    IBTR: TIBTransaction;
    DB: TIBDatabase;
    Qry_Goods: TIBQuery;
    Ds_Goods: TDataSource;
    Qry_Settings: TIBQuery;
    Qry_Valname: TIBQuery;
    Ds_Valname: TDataSource;
    Qry_Edizm: TIBQuery;
    Qry_GoodsOut: TIBQuery;
    Ds_GoodsOut: TDataSource;
    Qry_CustProc: TIBQuery;
    Qry_GoodsSold: TIBQuery;
    Ds_GoodsSold: TDataSource;
    DS_RegtiDisp: TDataSource;
    Qry_RegtiDisp: TIBQuery;
    Qry_Decl: TIBQuery;
    Ds_Decl: TDataSource;
    Qry_RegtiDispID: TIntegerField;
    Qry_RegtiDispINN: TIBStringField;
    Qry_RegtiDispZAYV: TIBStringField;
    Qry_RegtiDispVALID: TIBStringField;
    Qry_RegtiDispDISCOUNT: TIntegerField;
    Qry_RegtiDispFULL_ADRESS: TIBStringField;
    Qry_ActIn_Head: TIBQuery;
    DS_ActIn_Head: TDataSource;
    Qry_ActIn_Items: TIBQuery;
    DS_ActIn_Items: TDataSource;
    Qry_ActOut: TIBQuery;
    Ds_QryActOut: TDataSource;
    Ds_FindParts: TDataSource;
    Qry_FindParts: TIBQuery;
    Ds_Ts: TDataSource;
    Qry_Ts: TIBQuery;
    Ds_Settings: TDataSource;
    DS_CustProc: TDataSource;
    DS_Edizm: TDataSource;
    Qry_NotInReport: TIBQuery;
    DS_NotInReport: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    function ConnectToDatabase: Boolean;
  public
    { Public declarations }
    procedure OpenData;
    procedure RefreshGoods;
    procedure RefreshSettings;
    procedure RefreshDecls;
    procedure RefreshGoodsOut;
    procedure RefreshGoodsSold;
    procedure RefreshActInHead;
    procedure RefreshActInItems;
    procedure RefreshActOut;
  end;

var
  DM: TDM;

implementation

{$R *.dfm}


{ TDM }

{

function TDM.ConnectToDatabase: Boolean;
var
  F:TextFile;
  DB_Name,FileName:String;
  R:Boolean;
begin
  Result:=False;
  FileName:='connectstring.ini';
  AssignFile(F,FileName);
  Reset(F);
  ReadLn(F,DB_Name);
//  ReadLn(F,RemoteFlag);
  CloseFile(F);
 if DB.Connected then DB.Close;
// ShowMessage('Is connected');
 DB.DatabaseName:='';
 DB.DatabaseName:=Trim(Db_Name);
// ShowMessage('Set db_name');
 try
  DB.Open;
 except
//   on E:Exception do ShowMessage(E.Message);
  on E: EIBInterBaseError  do ShowMessage('EIBInterBaseError'+ E.Message+IntToStr(E.IBErrorCode));
  on E: EIBInterBaseRoleError  do ShowMessage('EIBInterBaseRoleError'+E.Message+IntToStr(E.IBErrorCode));
  on E: EIBClientError  do ShowMessage('EIBClientError'+ E.Message+IntToStr(E.IBErrorCode));
 end;
 R:=DB.Connected;
 Result:=R;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
 if not ConnectToDatabase then
    begin
//     Application.MessageBox('Ошибка соединения с БД! Программа будет закрыта','Внимание!',MB );
     Application.Terminate;
    end;
end;

}

function TDM.ConnectToDatabase: Boolean;
var
  F:TextFile;
  DB_Name,FileName:String;
  R:Boolean;
begin
  Result:=False;
  //FileName:='f:\Kondor\Rad Studio XE\TamSklad\Debug\Win32\connectstring.ini';
  FileName:='connectstring.ini';
  AssignFile(F,FileName);
  Reset(F);
  ReadLn(F,DB_Name);
//  ReadLn(F,RemoteFlag);
  CloseFile(F);
 if DB.Connected then DB.Close;
// ShowMessage('Is connected');
 DB.DatabaseName:='';
 DB.DatabaseName:=Trim(Db_Name);
// ShowMessage('Set db_name');
 try
  DB.Open;
 except
//   on E:Exception do ShowMessage(E.Message);
  on E: EIBInterBaseError  do ShowMessage('EIBInterBaseError'+ E.Message+IntToStr(E.IBErrorCode));
  on E: EIBInterBaseRoleError  do ShowMessage('EIBInterBaseRoleError'+E.Message+IntToStr(E.IBErrorCode));
  on E: EIBClientError  do ShowMessage('EIBClientError'+ E.Message+IntToStr(E.IBErrorCode));
 end;
 R:=DB.Connected;
 Result:=R;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
 if not ConnectToDatabase then
    begin
//     Application.MessageBox('Ошибка соединения с БД! Программа будет закрыта','Внимание!',MB );
     Application.Terminate;
    end;
end;

procedure TDM.OpenData;
begin
  Qry_Settings.Open;
  Qry_Valname.Open;
  Qry_Edizm.Open;
  Qry_Decl.Open;
  Qry_Goods.Open;
  Qry_GoodsOut.Open;
  Qry_CustProc.Open;
  Qry_GoodsSold.Open;
  Qry_RegtiDisp.Open;
  Qry_ActIn_Head.Open;
  Qry_ActIn_Items.Open;
  Qry_ActOut.Open;
end;

procedure TDM.RefreshActInHead;
var
  id:Integer;
begin
  id:=Qry_ActIn_Head.FieldByName('ID').AsInteger;
  Qry_ActIn_Head.Close;
  Qry_ActIn_Head.Open;
  Qry_ActIn_Head.Locate('ID',id,[]);

end;

procedure TDM.RefreshActInItems;
var
  id:Integer;
begin
  id:=Qry_ActIn_Items.FieldByName('ID').AsInteger;
  Qry_ActIn_Items.Close;
  Qry_ActIn_Items.Open;
  Qry_ActIn_Items.Locate('ID',id,[]);
end;

procedure TDM.RefreshActOut;
var
  id:Integer;
begin
  id:=Qry_ActOut.FieldByName('ID').AsInteger;
  Qry_ActOut.Close;
  Qry_ActOut.Open;
  Qry_ActOut.Locate('ID',id,[]);

end;

procedure TDM.RefreshDecls;
var
  id:Integer;
begin
  id:=Qry_Decl.FieldByName('ID').AsInteger;
  Qry_Decl.Close;
  Qry_Decl.Open;
  Qry_Decl.Locate('ID',id,[]);

end;

procedure TDM.RefreshGoods;
var
  id:Integer;
begin
  id:=Qry_Goods.FieldByName('ID').AsInteger;
  Qry_Goods.Close;
  Qry_Goods.Open;
  Qry_Goods.Locate('ID',id,[]);
end;

procedure TDM.RefreshGoodsOut;
var
  id:Integer;
begin
  id:=Qry_GoodsOut.FieldByName('ID').AsInteger;
  Qry_GoodsOut.Close;
  Qry_GoodsOut.Open;
  Qry_GoodsOut.Locate('ID',id,[]);

end;

procedure TDM.RefreshGoodsSold;
var
  id:Integer;
begin
  id:=Qry_GoodsSold.FieldByName('ID').AsInteger;
  Qry_GoodsSold.Close;
  Qry_GoodsSold.Open;
  Qry_GoodsSold.Locate('ID',id,[]);

end;

procedure TDM.RefreshSettings;
begin
  Qry_Settings.Close;
  Qry_Settings.Open;
end;

end.
