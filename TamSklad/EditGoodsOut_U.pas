unit EditGoodsOut_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrlsEh, AdvDropDown,
  AdvMultiColumnDropDown,Db, ExtCtrls;

type
  TEditGoodsOut_F = class(TForm)
    E_Tnved: TEdit;
    E_Cost: TDBNumberEditEh;
    E_Edizm1: TComboBox;
    E_Weight: TDBNumberEditEh;
    E_Kol: TDBNumberEditEh;
    E_NGoods: TEdit;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
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
    E_ProcName: TEdit;
    Label10: TLabel;
    E_KOL_CODE: TEdit;
    E_Edizm: TButtonedEdit;
    procedure FormShow(Sender: TObject);
    procedure E_ProcKeyPress(Sender: TObject; var Key: Char);
    procedure E_Edizm1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
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
  EditGoodsOut_F: TEditGoodsOut_F;
  MY_DATESEPARATOR:Char;

implementation

{$R *.dfm}
uses data,main, CustProc_U,edizm_u;

{ TEditGoodsOut_F }

procedure TEditGoodsOut_F.BitBtn1Click(Sender: TObject);
var
  i:Integer;
begin
    try
     try
        i:=Dm.Qry_GoodsOut.FieldByName('ID').AsInteger;
        if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add('update goods_out set dt_out=:p0,custproc=:p1,kol=:p2,kol_edizm=:p3,weight_vol=:p4, ');
        DM.Sql.SQL.Add('weight_edizm=:p5,stoim=:p6,n_decl=:p7,n_goods=:p8,custproc_code=:p9,name_goods_out=:p10,tnved_out=:p11,kol_edizm_code=:p12 where id=:p13 ');
        DM.Sql.Params[0].Value:=E_Dt.Value;
        DM.Sql.Params[1].AsString:=E_ProcName.Text;
        DM.Sql.Params[2].Value:=E_Kol.Value;
        DM.Sql.Params[3].AsString:=E_Edizm.Text;
        DM.Sql.Params[4].Value:=E_Weight.Value;
        DM.Sql.Params[5].AsString:=E_Edizm1.Text;
        DM.Sql.Params[6].Value:=E_Cost.Value;
        DM.Sql.Params[7].AsString:=E_Gtd.Text;
        DM.Sql.Params[8].AsString:=E_NGoods.Text;
        DM.Sql.Params[9].AsString:=E_Proc.Text;
        DM.Sql.Params[10].AsString:=E_Name.Text;
        DM.Sql.Params[11].AsString:=E_Tnved.Text;
        DM.Sql.Params[12].AsString:=E_KOL_CODE.Text;
        DM.Sql.Params[13].AsInteger:=i;

        DM.Sql.ExecQuery;
        DM.Sql.Transaction.Commit;
        ModalResult:=mrOk;
        DM.Qry_GoodsOut.Close;
        DM.Qry_GoodsOut.Open;
        DM.Qry_GoodsOut.Locate('ID',i,[]);
        DM.RefreshGoods;
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

procedure TEditGoodsOut_F.E_Edizm1KeyPress(Sender: TObject; var Key: Char);
begin
  Key:=Char(0);
end;

procedure TEditGoodsOut_F.E_EdizmRightButtonClick(Sender: TObject);
begin
   if Edizm_F.ShowModal = mrOk then
    begin
       E_Edizm.Text:=DM.Qry_Edizm.FieldByName('KR_NAME').AsString;
       E_KOL_CODE.Text:=DM.Qry_Edizm.FieldByName('KOD').AsString;
    end;
end;

procedure TEditGoodsOut_F.E_KOL_CODEChange(Sender: TObject);
begin
  if Length((Sender as TEdit).Text) < 3 then Exit
    else
     begin
       if DM.Qry_Edizm.Locate('KOD',(sender as Tedit).text,[]) then E_Edizm.Text:=DM.Qry_Edizm.FieldByName('KR_NAME').AsString;
     end;
end;

procedure TEditGoodsOut_F.E_ProcKeyPress(Sender: TObject; var Key: Char);
begin
  Key:=Char(0);
end;

procedure TEditGoodsOut_F.E_ProcRightButtonClick(Sender: TObject);
begin
  if CustProc_F.ShowModal = mrOk then
    begin
       E_Proc.Text:= CustProc_F.Grid1.DataSource.DataSet.FieldByName('CODE_PROC').AsString;
       E_ProcName.Text:= CustProc_F.Grid1.DataSource.DataSet.FieldByName('NAME').AsString;
    end;

end;

procedure TEditGoodsOut_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  System.SysUtils.FormatSettings.DateSeparator:=MY_DATESEPARATOR;
end;

procedure TEditGoodsOut_F.FormShow(Sender: TObject);
begin
//00000000\/000000\/0000000;1;_
  MY_DATESEPARATOR:=System.SysUtils.FormatSettings.DateSeparator;
  System.SysUtils.FormatSettings.DateSeparator:='/';
  E_Gtd.EditMask:='00000000/000000/0000000;1;_';
  SetControls;
end;

procedure TEditGoodsOut_F.SetControls;
var
 i:Integer;
begin
  E_NGoods.Text:=DM.Qry_GoodsOUT.FieldByName('N_GOODS').AsString;
  E_Name.Text:=DM.Qry_Goods.FieldByName('NAME_GOODS').AsString;
  E_Tnved.Text:=DM.Qry_Goods.FieldByName('TNVED_CODE').AsString;
  E_Proc.Text:=DM.Qry_GoodsOut.FieldByName('CUSTPROC_CODE').AsString;
  E_ProcName.Text:=DM.Qry_GoodsOut.FieldByName('CUSTPROC').AsString;
  E_Gtd.Text:=DM.Qry_GoodsOut.FieldByName('N_DECL').AsString;
  E_Kol.Value:=DM.Qry_GoodsOut.FieldByName('KOL').Value;
  E_Edizm.Text:=DM.Qry_GoodsOut.FieldByName('KOL_EDIZM').AsString;
  E_KOL_CODE.Text:=DM.Qry_GoodsOut.FieldByName('kol_edizm_code').AsString;
  E_Weight.Value:= DM.Qry_GoodsOut.FieldByName('WEIGHT_VOL').Value;
  E_Edizm1.Text:=DM.Qry_GoodsOut.FieldByName('WEIGHT_EDIZM').AsString;
  E_Cost.Value:=DM.Qry_GoodsOut.FieldByName('STOIM').Value;
  E_Dt.Value:=DM.Qry_GoodsOut.FieldByName('DT_OUT').Value;


end;

end.
