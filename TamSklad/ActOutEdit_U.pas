unit ActOutEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,DB, ComCtrls, Mask, DBCtrlsEh;

type
  TActOutEdit_F = class(TForm)
    Label1: TLabel;
    Label4: TLabel;
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
    E_Id: TEdit;
    E_Dt: TEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    E_DateTime: TDBDateTimeEditEh;
    Label6: TLabel;
    E_Goods: TMemo;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ActOutEdit_F: TActOutEdit_F;

implementation

{$R *.dfm}
uses data,main;

procedure TActOutEdit_F.BitBtn1Click(Sender: TObject);
var
  id:Integer;
begin
    id:=DM.Qry_ActOut.FieldByName('ID').AsInteger;
    try
     try
        if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add('update whact_out_ts set priem_fio=:p0,priem_dolj=:p1,keeper_fio=:p2, ');
        DM.Sql.SQL.Add('keeper_dolj=:p3, dt=:p4 where id=:p5 ');
        DM.Sql.Params[0].AsString:=E_Fio.Text;
        DM.Sql.Params[1].AsString:=E_Dolj.Text;
        DM.Sql.Params[2].AsString:=E_KeeperFio.Text;
        DM.Sql.Params[3].AsString:=E_KeeperDolj.Text;
        DM.Sql.Params[4].Value:=E_DateTime.Value;
        DM.Sql.Params[5].AsInteger:=id;
        DM.Sql.ExecQuery;
        DM.Sql.Transaction.Commit;
        ModalResult:=mrOk;
        Dm.Qry_ActOut.Close;
        Dm.Qry_ActOut.Open;
        Dm.Qry_ActOut.Locate('ID',id,[]);
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

procedure TActOutEdit_F.FormShow(Sender: TObject);
begin
  E_Id.Text:=Dm.Qry_ActOut.FieldByName('ID').AsString;
  E_Dt.Text:=Dm.Qry_ActOut.FieldByName('NOMER_DOCOUT').AsString;
  E_Goods.Clear;
  E_Goods.Lines.Add(Dm.Qry_ActOut.FieldByName('NAME_GOODS').AsString);
  E_DateTime.Text:=Dm.Qry_ActOut.FieldByName('DT').AsString;
    if Length( Trim(Dm.Qry_ActOut.FieldByName('KEEPER_FIO').AsString)) = 0 then
     E_KeeperFio.Text:=User
    else
     E_KeeperFio.Text:=Dm.Qry_ActOut.FieldByName('KEEPER_FIO').AsString;
  if Length(Trim(Dm.Qry_ActOut.FieldByName('KEEPER_DOLJ').AsString)) = 0 then
    E_KeeperDolj.Text:=Dolj
   else
    E_KeeperDolj.Text:=Dm.Qry_ActOut.FieldByName('KEEPER_DOLJ').AsString;
  E_Fio.Text:=Dm.Qry_ActOut.FieldByName('PRIEM_FIO').AsString;
  E_Dolj.Text:=Dm.Qry_ActOut.FieldByName('PRIEM_DOLJ').AsString;
end;

end.
