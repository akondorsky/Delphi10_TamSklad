unit AddGoods_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Mask, DBCtrlsEh, Buttons, AdvDropDown,
  AdvMultiColumnDropDown,IBX.IBQuery,Db,DateUtils, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TAddGoods_F = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label6: TLabel;
    E_Tnved: TEdit;
    Label7: TLabel;
    E_Val: TButtonedEdit;
    Label8: TLabel;
    E_DateFinished: TDBDateTimeEditEh;
    E_Kol: TDBNumberEditEh;
    Label9: TLabel;
    Label10: TLabel;
    E_Weight: TDBNumberEditEh;
    Label11: TLabel;
    Label12: TLabel;
    E_Edizm1: TComboBox;
    Label13: TLabel;
    E_Cost: TDBNumberEditEh;
    E_NameGoods: TMemo;
    Label14: TLabel;
    E_Places: TEdit;
    Label1: TLabel;
    Label4: TLabel;
    E_Dt: TDBDateTimeEditEh;
    E_Gtd: TMaskEdit;
    Label15: TLabel;
    E_DateGoodsSold: TDBDateTimeEditEh;
    Label3: TLabel;
    E_NGoods: TEdit;
    E_KOL_CODE: TEdit;
    E_Edizm: TButtonedEdit;
    procedure FormShow(Sender: TObject);
    procedure E_ValRightButtonClick(Sender: TObject);
    procedure E_EdizmKeyPress(Sender: TObject; var Key: Char);
    procedure E_Edizm1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure E_EdizmRightButtonClick(Sender: TObject);
    procedure E_KOL_CODEChange(Sender: TObject);
  private
    { Private declarations }
    procedure SetControls;
    procedure ClearControls;
  public
    { Public declarations }
  end;

var
  AddGoods_F: TAddGoods_F;

implementation

{$R *.dfm}
uses main,data,valname_u,edizm_u;


procedure TAddGoods_F.BitBtn1Click(Sender: TObject);
var
  s:String;
  i:Integer;
  id_decl:Integer;
begin
    try
     for i := 0 to E_NameGoods.Lines.Count-1 do
         s:=s + E_NameGoods.Lines[i];
     try
        id_decl:= DM.Qry_Decl.FieldByName('ID').AsInteger;
        if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add('insert into goods_head (dt,n_goods,id_decl,name_goods,tnved_code,date_finished,kol,kol_edizm,weight_vol,weight_edizm,places,date_goodssold,kol_edizm_code) ');
        DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12) ');
        DM.Sql.Params[0].Value:=E_Dt.Value;
        DM.Sql.Params[1].AsInteger:=StrToInt(E_NGoods.Text);
        DM.Sql.Params[2].AsInteger:=id_decl;
        DM.Sql.Params[3].AsString:=s;
        DM.Sql.Params[4].AsString:=E_Tnved.Text;
        DM.Sql.Params[5].Value:=E_DateFinished.Value;
        DM.Sql.Params[6].Value:=E_Kol.Value;
        DM.Sql.Params[7].AsString:=E_Edizm.Text;
        DM.Sql.Params[8].Value:=E_Weight.Value;
        DM.Sql.Params[9].AsString:=E_Edizm1.Text;
        DM.Sql.Params[10].AsString:=E_Places.Text;
        DM.Sql.Params[11].Value:=E_DateGoodsSold.Value;
        DM.Sql.Params[12].AsString:=E_KOL_CODE.Text;
        DM.Sql.ExecQuery;
//        DM.RefreshSettings;
//        i:=DM.Qry_Settings.FieldByName('NEXT_GOODS').AsInteger + 1;
//        DM.Sql.Close;
//        DM.Sql.SQL.Clear;
//        DM.Sql.SQL.Add('update settings set next_goods=:p0 ');
//        DM.Sql.Params[0].AsInteger:=i;
//        DM.Sql.ExecQuery;
        DM.Sql.Transaction.Commit;
        ModalResult:=mrOk;
        DM.Qry_Goods.Close;
        DM.Qry_Goods.Open;
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

procedure TAddGoods_F.ClearControls;
begin
  E_NGoods.Clear;
  E_Gtd.Clear;
  E_NameGoods.Clear;
  E_Tnved.Clear;
  E_Places.Clear;
  E_Val.Text:='';
  E_DateFinished.Clear;
  E_Kol.Clear;
  E_Edizm.Text:='';
  E_KOL_CODE.Text:='';
  E_Weight.Clear;
  E_Edizm1.Text:='';
  E_DateGoodsSold.Clear;

end;

procedure TAddGoods_F.E_Edizm1KeyPress(Sender: TObject; var Key: Char);
begin
 Key:=Char(0);
end;

procedure TAddGoods_F.E_EdizmKeyPress(Sender: TObject; var Key: Char);
begin
 Key:=Char(0);
end;

procedure TAddGoods_F.E_EdizmRightButtonClick(Sender: TObject);
begin
   if Edizm_F.ShowModal = mrOk then
    begin
       E_Edizm.Text:=DM.Qry_Edizm.FieldByName('KR_NAME').AsString;
       E_KOL_CODE.Text:=DM.Qry_Edizm.FieldByName('KOD').AsString;
    end;

end;

procedure TAddGoods_F.E_KOL_CODEChange(Sender: TObject);
begin
  if Length((Sender as TEdit).Text) < 3 then Exit
    else
     begin
       if DM.Qry_Edizm.Locate('KOD',(sender as Tedit).text,[]) then E_Edizm.Text:=DM.Qry_Edizm.FieldByName('KR_NAME').AsString;
     end;

end;

procedure TAddGoods_F.E_ValRightButtonClick(Sender: TObject);
begin
  if Valname_F.ShowModal = mrOk then E_Val.Text:=DM.Qry_Valname.FieldByName('BUK').AsString;
end;

procedure TAddGoods_F.FormShow(Sender: TObject);
begin
 ClearControls;
 SetControls;
 E_NGoods.SetFocus;
end;

procedure TAddGoods_F.SetControls;
var
 i,n:Integer;
 s:String;
 varDate:Variant;
begin
  //dM.RefreshSettings;
  //n:=Dm.Qry_Settings.FieldByName('NEXT_GOODS').AsInteger;
  //E_NGoods.Text:= IntToStr(n);
  s:=DateTimeToStr(Now);
  varDate:=s;
  E_Dt.Value:=varDate;
  E_Gtd.Text:=DM.Qry_Decl.FieldByName('NOMER_DT').AsString;
  E_DateFinished.Text:=DateToStr(IncYear(Date,3));
  E_Places.Text:='1';
end;

end.


dt
n_goods
id_decl
,name_goods
,tnved_code,
date_finished,
kol,
kol_edizm,
weight_vol,
weight_edizm,
places,
date_goodssold,
kol_edizm_code
