unit EndProc_TS_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrlsEh, AdvDropDown, AdvMultiColumnDropDown,
  Mask, Buttons,Db;

type
  TEndProc_TS_F = class(TForm)
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
    E_Proc: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure SetControls;
  public
    { Public declarations }
  end;

var
  EndProc_TS_F: TEndProc_TS_F;

implementation

{$R *.dfm}
uses data,main;


procedure TEndProc_TS_F.BitBtn1Click(Sender: TObject);
var
  i:Integer;
begin
    try
     try
        i:=Dm.Qry_Goods.FieldByName('ID').AsInteger;
        if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add('insert into goods_out (dt_out,id_head,custproc,kol,kol_edizm,weight_vol,weight_edizm,stoim,n_decl) ');
        DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8) ');
        DM.Sql.Params[0].Value:=E_Dt.Value;
        DM.Sql.Params[1].AsInteger:=i;
        DM.Sql.Params[2].AsString:=E_Proc.Text;
        DM.Sql.Params[3].Value:=E_Kol.Value;
        DM.Sql.Params[4].AsString:=E_Edizm.Text;
        DM.Sql.Params[5].Value:=E_Weight.Value;
        DM.Sql.Params[6].AsString:=E_Edizm1.Text;
        DM.Sql.Params[7].Value:=E_Cost.Value;
        DM.Sql.Params[8].AsString:=E_Gtd.Text;
        DM.Sql.ExecQuery;
        DM.Sql.Transaction.Commit;
        ModalResult:=mrOk;
        DM.Qry_GoodsOut.Close;
        DM.Qry_GoodsOut.Open;
        DM.Qry_GoodsOut.Last;
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

procedure TEndProc_TS_F.FormShow(Sender: TObject);
begin
  SetControls;
  E_Proc.SetFocus;
end;

procedure TEndProc_TS_F.SetControls;
var
 i:Integer;
begin
  E_NGoods.Text:=DM.Qry_Goods.FieldByName('N_GOODS').AsString;
  E_Name.Text:=DM.Qry_Goods.FieldByName('NAME_GOODS').AsString;
  E_Tnved.Text:=DM.Qry_Goods.FieldByName('TNVED_CODE').AsString;
  E_Proc.Clear;
  with DM.Qry_CustProc do
   begin
      First;
      while not Eof  do
        begin
          E_Proc.Items.Add(FieldByName('NAME').asstring);
          Next;
        end;
   end;
  E_Gtd.Clear;
  E_Kol.Clear;
  E_Edizm.Text:='';
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
  E_Weight.Clear;
  E_Edizm1.Text:='';
  E_Cost.Clear;
  E_Dt.Clear;


end;

end.
