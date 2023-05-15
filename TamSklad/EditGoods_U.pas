unit EditGoods_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, AdvDropDown, AdvMultiColumnDropDown, DBCtrlsEh,
  ExtCtrls, Buttons,Db, AdvDateTimePicker, Vcl.ComCtrls;

type
  TEditGoods_F = class(TForm)
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    E_Dt: TDBDateTimeEditEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    E_Tnved: TEdit;
    E_Val: TButtonedEdit;
    E_DateFinished: TDBDateTimeEditEh;
    E_Kol: TDBNumberEditEh;
    E_Weight: TDBNumberEditEh;
    E_Edizm1: TComboBox;
    E_Cost: TDBNumberEditEh;
    E_Gtd: TMaskEdit;
    E_NameGoods: TMemo;
    E_Places: TEdit;
    Label1: TLabel;
    Label4: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    E_DateGoodsSold: TDBDateTimeEditEh;
    Label3: TLabel;
    E_NGoods: TEdit;
    Label10: TLabel;
    E_KOL_CODE: TEdit;
    E_Edizm: TButtonedEdit;
    procedure FormShow(Sender: TObject);
    procedure E_ValRightButtonClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure E_EdizmRightButtonClick(Sender: TObject);
    procedure E_KOL_CODEChange(Sender: TObject);
  private
    { Private declarations }
    procedure SetControls;
  public
    { Public declarations }
  end;

var
  EditGoods_F: TEditGoods_F;

implementation

{$R *.dfm}
uses data,main, Valname_U,edizm_u;

{ TEditGoods_F }

procedure TEditGoods_F.BitBtn1Click(Sender: TObject);
var
  s:String;
  i,id:Integer;
begin
    id:=DM.Qry_Goods.FieldByName('ID').AsInteger;
    try
     for i := 0 to E_NameGoods.Lines.Count-1 do
         s:=s + E_NameGoods.Lines[i];
     try
        if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add('update goods_head set name_goods=:p0,tnved_code=:p1,date_finished=:p2,kol=:p3,kol_edizm=:p4, ');
        DM.Sql.SQL.Add('weight_vol=:p5,weight_edizm=:p6,places=:p7, date_goodssold=:p8,n_goods=:p9,kol_edizm_code=:p10 where id=:p11 ');
        DM.Sql.Params[0].AsString:=s;
        DM.Sql.Params[1].AsString:=E_Tnved.Text;
        DM.Sql.Params[2].Value:=E_DateFinished.Value;
        DM.Sql.Params[3].Value:=E_Kol.Value;
        DM.Sql.Params[4].AsString:=E_Edizm.Text;
        DM.Sql.Params[5].Value:=E_Weight.Value;
        DM.Sql.Params[6].AsString:=E_Edizm1.Text;
        DM.Sql.Params[7].AsString:=E_Places.Text;
        DM.Sql.Params[8].Value:=E_DateGoodsSold.Value;
        DM.Sql.Params[9].AsString:=E_NGoods.Text;
        DM.Sql.Params[10].AsString:=E_KOL_CODE.Text;
        DM.Sql.Params[11].AsInteger:=id;
        DM.Sql.ExecQuery;
        //DM.RefreshSettings;
        DM.Sql.Transaction.Commit;
        ModalResult:=mrOk;
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

procedure TEditGoods_F.E_EdizmRightButtonClick(Sender: TObject);
begin
   if Edizm_F.ShowModal = mrOk then
    begin
       E_Edizm.Text:=DM.Qry_Edizm.FieldByName('KR_NAME').AsString;
       E_KOL_CODE.Text:=DM.Qry_Edizm.FieldByName('KOD').AsString;
    end;
end;

procedure TEditGoods_F.E_KOL_CODEChange(Sender: TObject);
begin
  if Length((Sender as TEdit).Text) < 3 then Exit
    else
     begin
       if DM.Qry_Edizm.Locate('KOD',(sender as Tedit).text,[]) then E_Edizm.Text:=DM.Qry_Edizm.FieldByName('KR_NAME').AsString;
     end;
end;

procedure TEditGoods_F.E_ValRightButtonClick(Sender: TObject);
begin
  if Valname_F.ShowModal = mrOk then E_Val.Text:=DM.Qry_Valname.FieldByName('BUK').AsString;
end;

procedure TEditGoods_F.FormShow(Sender: TObject);
begin
  SetControls;
  BitBtn2.SetFocus;
end;

procedure TEditGoods_F.SetControls;
var
 i:Integer;
 s:string;
begin
  E_NGoods.Text:= Dm.Qry_Goods.FieldByName('N_GOODS').AsString;
  E_Dt.Value:=DM.Qry_Goods.FieldByName('DT').Value;
  E_Gtd.Text:=Main_F.Grid_Decl.DataSource.DataSet.FieldByName('NOMER_DT').AsString;
  E_Tnved.Text:=DM.Qry_Goods.FieldByName('TNVED_CODE').AsString;
  E_DateFinished.Value:= DM.Qry_Goods.FieldByName('DATE_FINISHED').Value;
  E_DateGoodsSold.Value:= DM.Qry_Goods.FieldByName('DATE_GOODSSOLD').Value;
  E_Kol.Value:=DM.Qry_Goods.FieldByName('KOL').Value;
  E_Edizm.Text:=DM.Qry_Goods.FieldByName('KOL_EDIZM').AsString;
  E_KOL_CODE.Text:=DM.Qry_Goods.FieldByName('KOL_EDIZM_CODE').AsString;
  E_Weight.Value:=DM.Qry_Goods.FieldByName('WEIGHT_VOL').Value;
  E_Edizm1.Text:=DM.Qry_Goods.FieldByName('WEIGHT_EDIZM').AsString;
  E_NameGoods.Text:=DM.Qry_Goods.FieldByName('NAME_GOODS').AsString;
  E_Places.Text:=DM.Qry_Goods.FieldByName('PLACES').AsString;

end;

end.
