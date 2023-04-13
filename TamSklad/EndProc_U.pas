unit EndProc_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrlsEh, AdvDropDown, AdvMultiColumnDropDown,
  Mask, Buttons,Db;

type
  TEndProc_F = class(TForm)
    E_Tnved: TEdit;
    E_Cost: TDBNumberEditEh;
    E_Edizm1: TComboBox;
    E_Weight: TDBNumberEditEh;
    E_Kol: TDBNumberEditEh;
    E_NGoods: TEdit;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    E_Name: TEdit;
    Label1: TLabel;
    Label4: TLabel;
    E_Dt: TDBDateTimeEditEh;
    E_Gtd: TMaskEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Shape1: TShape;
    Cost_rest: TDBNumberEditEh;
    Weight_rest: TDBNumberEditEh;
    Kol_rest: TDBNumberEditEh;
    E_Proc: TButtonedEdit;
    E_KOL_CODE: TEdit;
    E_Edizm: TButtonedEdit;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure E_KolChange(Sender: TObject);
    procedure E_WeightChange(Sender: TObject);
    procedure E_CostChange(Sender: TObject);
    procedure E_KolExit(Sender: TObject);
    procedure E_WeightExit(Sender: TObject);
    procedure E_CostExit(Sender: TObject);
    procedure E_ProcRightButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure E_EdizmRightButtonClick(Sender: TObject);
    procedure E_KOL_CODEChange(Sender: TObject);
  private
    { Private declarations }
    procedure SetControls;
  public
    { Public declarations }
  end;

var
  EndProc_F: TEndProc_F;
  KolRest,WeightRest,CostRest:Double;
  MY_DATESEPARATOR:Char;

implementation

{$R *.dfm}
uses data,main, CustProc_U,edizm_u;


procedure TEndProc_F.BitBtn1Click(Sender: TObject);
var
  i:Integer;
begin
    try
     try
        i:=Dm.Qry_Goods.FieldByName('ID').AsInteger;
        if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add('insert into goods_out (dt_out,id_head,custproc,kol,kol_edizm,weight_vol, ');
        DM.Sql.SQL.Add(' weight_edizm,stoim,n_decl,n_goods,custproc_code,kol_edizm_code,name_goods_out,tnved_out )' );
        DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12,:p13) ');
        DM.Sql.Params[0].Value:=E_Dt.Value;
        DM.Sql.Params[1].AsInteger:=i;
        DM.Sql.Params[2].AsString:=E_Proc.Text;
        DM.Sql.Params[3].Value:=E_Kol.Value;
        DM.Sql.Params[4].AsString:=E_Edizm.Text;
        DM.Sql.Params[5].Value:=E_Weight.Value;
        DM.Sql.Params[6].AsString:=E_Edizm1.Text;
        DM.Sql.Params[7].Value:=E_Cost.Value;
        DM.Sql.Params[8].AsString:=E_Gtd.Text;
        DM.Sql.Params[9].AsString:=E_NGoods.Text;
        if Length(E_Proc.Text) > 0 then
            DM.Sql.Params[10].Value:=CustProc_F.Grid1.DataSource.DataSet.FieldByName('CODE_PROC').Value
           else
            DM.Sql.Params[10].Value:=null;
        DM.Sql.Params[11].AsString:=E_KOL_CODE.Text;
        DM.Sql.Params[12].AsString:=E_Name.Text;
        DM.Sql.Params[13].AsString:=E_Tnved.Text;
        DM.Sql.ExecQuery;
        DM.Sql.Transaction.Commit;
        ModalResult:=mrOk;
        DM.Qry_GoodsOut.Close;
        DM.Qry_GoodsOut.Open;
        DM.Qry_GoodsOut.Last;
        Dm.RefreshGoods;
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

procedure TEndProc_F.E_CostChange(Sender: TObject);
begin
  Cost_rest.Value:=CostRest - E_Cost.Value;
end;

procedure TEndProc_F.E_CostExit(Sender: TObject);
begin
  if Cost_rest.Value < 0 then
  begin
    ShowMessage('Остаток не может быть < 0');
    E_Cost.SetFocus;
  end;
end;

procedure TEndProc_F.E_EdizmRightButtonClick(Sender: TObject);
begin
   if Edizm_F.ShowModal = mrOk then
    begin
       E_Edizm.Text:=DM.Qry_Edizm.FieldByName('KR_NAME').AsString;
       E_KOL_CODE.Text:=DM.Qry_Edizm.FieldByName('KOD').AsString;
    end;
end;

procedure TEndProc_F.E_KolChange(Sender: TObject);
begin
  Kol_rest.Value:=KolRest - E_Kol.Value;

end;

procedure TEndProc_F.E_KolExit(Sender: TObject);
begin
  if Kol_rest.Value < 0 then
  begin
    ShowMessage('Остаток не может быть < 0');
    E_Kol.SetFocus;
  end;
end;

procedure TEndProc_F.E_KOL_CODEChange(Sender: TObject);
begin
  if Length((Sender as TEdit).Text) < 3 then Exit
    else
     begin
       if DM.Qry_Edizm.Locate('KOD',(sender as Tedit).text,[]) then E_Edizm.Text:=DM.Qry_Edizm.FieldByName('KR_NAME').AsString;
     end;
end;

procedure TEndProc_F.E_ProcRightButtonClick(Sender: TObject);
begin
  if CustProc_F.ShowModal = mrOk then
    E_Proc.Text:= CustProc_F.Grid1.DataSource.DataSet.FieldByName('NAME').AsString;

end;

procedure TEndProc_F.E_WeightChange(Sender: TObject);
begin
  Weight_rest.Value:=WeightRest - E_Weight.Value;
end;

procedure TEndProc_F.E_WeightExit(Sender: TObject);
begin
  if Weight_rest.Value < 0 then
  begin
    ShowMessage('Остаток не может быть < 0');
    E_Weight.SetFocus;
  end;
end;

procedure TEndProc_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  System.SysUtils.FormatSettings.DateSeparator:=MY_DATESEPARATOR;
end;

procedure TEndProc_F.FormShow(Sender: TObject);
begin
  MY_DATESEPARATOR:=System.SysUtils.FormatSettings.DateSeparator;
  System.SysUtils.FormatSettings.DateSeparator:='/';
  E_Gtd.EditMask:='00000000/000000/0000000;1;_';
  KolRest:=Main_F.Grid_Goods.DataSource.DataSet.FieldByName('REST_KOL').AsFloat;
  WeightRest:=Main_F.Grid_Goods.DataSource.DataSet.FieldByName('REST_WEIGHT').AsFloat;
  CostRest:=Main_F.Grid_Goods.DataSource.DataSet.FieldByName('REST_STOIM').AsFloat;
  SetControls;
  E_NGoods.SetFocus;
end;

procedure TEndProc_F.SetControls;
var
 i:Integer;
begin
  E_NGoods.Text:=DM.Qry_Goods.FieldByName('N_GOODS').AsString;
  //E_NGoods.Text:='';
  E_Name.Text:=DM.Qry_Goods.FieldByName('NAME_GOODS').AsString;
  E_Tnved.Text:=DM.Qry_Goods.FieldByName('TNVED_CODE').AsString;
 // E_Proc.Clear;
 // E_Gtd.Clear;
  E_Kol.Clear;
  E_Edizm.Text:=DM.Qry_Goods.FieldByName('KOL_EDIZM').AsString;;
  E_KOL_CODE.Text:=DM.Qry_Goods.FieldByName('KOL_EDIZM_CODE').AsString;;
  E_Weight.Clear;
  E_Edizm1.Text:=DM.Qry_Goods.FieldByName('WEIGHT_EDIZM').AsString;;
  E_Cost.Clear;
  E_Dt.Clear;
  Kol_rest.Value:=KolRest;
  Weight_rest.Value:=WeightRest;
  Cost_rest.Value:=CostRest;

end;

end.
