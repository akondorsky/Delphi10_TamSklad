unit AddGodds_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Mask, DBCtrlsEh, Buttons;

type
  TAddGodds_F = class(TForm)
    Label1: TLabel;
    E_Dt: TDBDateTimeEditEh;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    E_NGoods: TEdit;
    Label4: TLabel;
    E_NomerDT: TEdit;
    Label5: TLabel;
    E_NameGoods: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label6: TLabel;
    E_Tnved: TEdit;
    Label7: TLabel;
    E_Val: TButtonedEdit;
    procedure FormShow(Sender: TObject);
    procedure E_ValRightButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddGodds_F: TAddGodds_F;

implementation

{$R *.dfm}
uses main,data,valname_u;


procedure TAddGodds_F.E_ValRightButtonClick(Sender: TObject);
begin
  if Valname_F.ShowModal = mrOk then E_Val.Text:=DM.Qry_Valname.FieldByName('BUK').AsString;
end;

procedure TAddGodds_F.FormShow(Sender: TObject);
begin
  dM.RefreshSettings;
  E_NGoods.Text:= Dm.Qry_Settings.FieldByName('NEXT_GOODS').AsString;
end;

end.
{
try
 pms:=TMemoryStream.Create;
 qry:=TIbQuery.Create(Self);
 qry.Database:=Dmod.DB;
 qry.SQL.Add(' select gen_id(genid_actworks,1) from rdb$database');
 qry.Open;
 try
    id_act:=qry.Fields[0].AsInteger;
    if not DMod.Sql.Transaction.InTransaction then DMod.Sql.Transaction.StartTransaction;
    DMod.Sql.Close;
    DMod.Sql.SQL.Clear;
    DMod.Sql.SQL.Add('insert into act_works (id,n_act,client,item,serial,komplekt,defekt,phone,note,pre_pay) ');
    DMod.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9) ');
    DMod.Sql.Params[0].AsInteger:=id_act;
    DMod.Sql.Params[1].AsString:=E_Nomer.Text;
    DMod.Sql.Params[2].AsString:=E_Fam.Text+' '+E_Name.Text+' '+E_Otch.Text  ;
    DMod.Sql.Params[3].AsString:=E_item.Text;
    DMod.Sql.Params[4].AsString:=E_Serial.Text;
    DMod.Sql.Params[5].AsString:=E_Compl.Text;
    DMod.Sql.Params[6].AsString:=E_Trouble.Text;
    DMod.Sql.Params[7].AsString:=E_Phone.Text;
    M_Notes.Lines.SaveToStream(pms);
    DMod.Sql.Params[8].LoadFromStream(pms);
    DMod.Sql.Params[9].AsFloat:=StrToFloat(E_PrePay.Text);
    DMod.Sql.ExecQuery;
    DMod.Refresh_Settings;
    i:=Dmod.Qry_Settings.FieldByName('NEXT_ACT').AsInteger + 1;
    DMod.Sql.Close;
    DMod.Sql.SQL.Clear;
    DMod.Sql.SQL.Add('update settings set next_act=:p0 ');
    DMod.Sql.Params[0].AsInteger:=i;
    DMod.Sql.ExecQuery;
    DMod.Sql.Transaction.Commit;
    DMod.NewClient(Trim(E_Name.text),Trim(E_Otch.Text),Trim(E_Fam.Text),E_Phone.Text,Trim(E_Mail.Text));
    ModalResult:=mrOk;
    DMod.Qry_ActWorks.Close;
    DMod.Qry_ActWorks.Open;
    DMod.Qry_ActWorks.LocateNext('ID',id_act,[]);
    CURRENT_ACT:=id_act;
  except
    on E: EdatabaseError do
      begin
       DMod.Sql.Transaction.Rollback;
       ShowMessage(E.Message);
      end;
  end;
finally
  pms.Free;
  qry.free;
  if DMod.Sql.Transaction.InTransaction then DMod.Sql.Transaction.Rollback;
end;
}
