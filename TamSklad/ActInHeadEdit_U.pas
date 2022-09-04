unit ActInHeadEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,Db  ;

type
  TActInHeadEdit_F = class(TForm)
    GroupBox3: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    E_Fio: TEdit;
    E_Dolj: TComboBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    E_KeeperFio: TEdit;
    E_KeeperDolj: TComboBox;
    Label1: TLabel;
    E_Id: TEdit;
    Label4: TLabel;
    E_Dt: TEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ActInHeadEdit_F: TActInHeadEdit_F;

implementation

{$R *.dfm}
uses data,main;

procedure TActInHeadEdit_F.BitBtn1Click(Sender: TObject);
var
  id:Integer;
begin
    id:=DM.Qry_ActIn_Head.FieldByName('ID').AsInteger;
    try
     try
        if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add('update whact_in_head_ts set sdal_fio=:p0,sdal_dolj=:p1,keeper_fio=:p2, ');
        DM.Sql.SQL.Add('keeper_dolj=:p3 where id=:p4 ');
        DM.Sql.Params[0].AsString:=E_Fio.Text;
        DM.Sql.Params[1].AsString:=E_Dolj.Text;
        DM.Sql.Params[2].AsString:=E_KeeperFio.Text;
        DM.Sql.Params[3].AsString:=E_KeeperDolj.Text;
        DM.Sql.Params[4].AsInteger:=id;
        DM.Sql.ExecQuery;
        DM.Sql.Transaction.Commit;
        ModalResult:=mrOk;
        Dm.Qry_ActIn_Head.Close;
        Dm.Qry_ActIn_Head.Open;
        Dm.Qry_ActIn_Head.Locate('ID',id,[]);
      except
        on E: EdatabaseError do
          begin
           DM.Sql.Transaction.Rollback;
           ShowMessage(E.Message);
          end;
      end;
    finally
      if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
    end;
end;

procedure TActInHeadEdit_F.FormShow(Sender: TObject);
begin
  E_Id.Text:=Dm.Qry_ActIn_Head.FieldByName('ID').AsString;
  E_Dt.Text:=Dm.Qry_ActIn_Head.FieldByName('NOMER_DT').AsString;
  E_Fio.Text:=Dm.Qry_ActIn_Head.FieldByName('SDAL_FIO').AsString;
  E_Dolj.Text:=Dm.Qry_ActIn_Head.FieldByName('SDAL_DOLJ').AsString;
  if Length( Trim(Dm.Qry_ActIn_Head.FieldByName('KEEPER_FIO').AsString)) = 0 then
     E_KeeperFio.Text:=User
    else
     E_KeeperFio.Text:=Dm.Qry_ActIn_Head.FieldByName('KEEPER_FIO').AsString;
  if Length(Trim(Dm.Qry_ActIn_Head.FieldByName('KEEPER_DOLJ').AsString)) = 0 then
    E_KeeperDolj.Text:=Dolj
   else
    E_KeeperDolj.Text:=Dm.Qry_ActIn_Head.FieldByName('KEEPER_DOLJ').AsString;
end;

end.
