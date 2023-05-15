unit EditSold_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrlsEh, AdvDropDown, AdvMultiColumnDropDown,
  Mask, Buttons,Db;

type
  TEditSold_F = class(TForm)
    E_Tnved: TEdit;
    E_Cost: TDBNumberEditEh;
    E_Edizm1: TComboBox;
    E_Weight: TDBNumberEditEh;
    E_Edizm: TAdvMultiColumnDropDown;
    E_Kol: TDBNumberEditEh;
    E_NGoods: TEdit;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    E_Name: TEdit;
    Label1: TLabel;
    E_Dt: TDBDateTimeEditEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    E_Owner: TEdit;
    Label4: TLabel;
    E_Ndoc: TEdit;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure SetControls;
  public
    { Public declarations }
  end;

var
  EditSold_F: TEditSold_F;
  KolRest,WeightRest:Double;

implementation

{$R *.dfm}
uses data,main;


procedure TEditSold_F.BitBtn1Click(Sender: TObject);
var
  i:Integer;
begin
    try
     try
        i:=Dm.Qry_GoodsSold.FieldByName('ID').AsInteger;
        if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add('update goods_sold set n_doc=:p0,date_doc=:p1,kol=:p2,kol_edizm=:p3,weight_vol=:p4, ');
        DM.Sql.SQL.Add('weight_edizm=:p5,owner=:p6 where id=:p7 ');
        DM.Sql.Params[0].AsString:=E_Ndoc.Text;
        DM.Sql.Params[1].Value:=E_Dt.Value;
        DM.Sql.Params[2].Value:=E_Kol.Value;
        DM.Sql.Params[3].AsString:=E_Edizm.Text;
        DM.Sql.Params[4].Value:=E_Weight.Value;
        DM.Sql.Params[5].AsString:=E_Edizm1.Text;
        DM.Sql.Params[6].AsString:=E_Owner.Text;
        DM.Sql.Params[7].AsInteger:=i;
        DM.Sql.ExecQuery;
        DM.Sql.Transaction.Commit;
        ModalResult:=mrOk;
        DM.Qry_GoodsSold.Close;
        DM.Qry_GoodsSold.Open;
        DM.Qry_GoodsSold.Last;
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

procedure TEditSold_F.FormShow(Sender: TObject);
begin
  SetControls;
  E_Kol.SetFocus;
end;

procedure TEditSold_F.SetControls;
var
 i:Integer;
begin
  E_NGoods.Text:=DM.Qry_Goods.FieldByName('N_GOODS').AsString;
  E_Name.Text:=DM.Qry_Goods.FieldByName('NAME_GOODS').AsString;
  E_Tnved.Text:=DM.Qry_Goods.FieldByName('TNVED_CODE').AsString;
  E_Kol.Value:=DM.Qry_GoodsSold.FieldByName('KOL').Value;
  E_Edizm.Text:=DM.Qry_GoodsSold.FieldByName('KOL_EDIZM').AsString;
  E_Edizm.Items.Clear;
  with DM.Qry_Edizm do
   begin
      First;
      i:=0;
      while not Eof  do
        begin
          E_Edizm.Items.Add;
          E_Edizm.Items[i].Text.Add(FieldByName('KR_NAME').asstring);
          E_Edizm.Items[i].Text.Add(FieldByName('FNAME').asstring);
          i:=i+1;
          Next;
        end;
   end;
  E_Weight.Value:=DM.Qry_GoodsSold.FieldByName('WEIGHT_VOL').Value;
  E_Edizm1.Text:=DM.Qry_GoodsSold.FieldByName('WEIGHT_EDIZM').AsString;
  E_Owner.Text:=DM.Qry_GoodsSold.FieldByName('OWNER').AsString;
  E_Ndoc.Text:=DM.Qry_GoodsSold.FieldByName('N_DOC').AsString;
  E_Dt.Value:=DM.Qry_GoodsSold.FieldByName('DATE_DOC').Value
end;

end.
