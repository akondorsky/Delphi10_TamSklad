unit ActInItemEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, AdvDropDown, AdvMultiColumnDropDown, DBCtrlsEh,
  ExtCtrls, Buttons,DB;

type
  TActInItemEdit_F = class(TForm)
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    E_Kol: TDBNumberEditEh;
    E_Weight: TDBNumberEditEh;
    E_Gtd: TMaskEdit;
    E_NameGoods: TMemo;
    Label3: TLabel;
    Label6: TLabel;
    Shape1: TShape;
    Label1: TLabel;
    Label2: TLabel;
    E_KolFact: TDBNumberEditEh;
    E_WeghtFact: TDBNumberEditEh;
    LblKolDoc: TLabel;
    LblWeighDoc: TLabel;
    LblKolFact: TLabel;
    LblWeightFact: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label7: TLabel;
    E_Notes: TMemo;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ActInItemEdit_F: TActInItemEdit_F;

implementation

{$R *.dfm}
uses data,main;

procedure TActInItemEdit_F.BitBtn1Click(Sender: TObject);
var
 id:Integer;
  pms:TMemoryStream;
begin
    id:=DM.Qry_ActIn_Items.FieldByName('ID').AsInteger;
    try
     try
        pms:=TMemoryStream.Create;
        if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add('update whact_in_items_ts set kol_fact=:p0,weight_fact=:p1, ');
        DM.Sql.SQL.Add(' notes=:p2 where id=:p3 ');
        DM.Sql.Params[0].Value:=E_KolFact.Value;
        DM.Sql.Params[1].Value:=E_WeghtFact.Value;
        E_Notes.Lines.SaveToStream(pms);
        DM.Sql.Params[2].LoadFromStream(pms);
        DM.Sql.Params[3].AsInteger:=id;
        DM.Sql.ExecQuery;
        DM.RefreshSettings;
        DM.Sql.Transaction.Commit;
        ModalResult:=mrOk;
        DM.Qry_ActIn_Items.Close;
        DM.Qry_ActIn_Items.Open;
        DM.Qry_ActIn_Items.Locate('ID',id,[]);
      except
        on E: EdatabaseError do
          begin
           DM.Sql.Transaction.Rollback;
           ShowMessage(E.Message);
          end;
      end;
    finally
      pms.Free;
      if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
    end;
end;

procedure TActInItemEdit_F.FormShow(Sender: TObject);
var
  ms:TStream;
begin
  E_Gtd.Text:=Dm.Qry_ActIn_Head.FieldByName('NOMER_DT').AsString;
  E_NameGoods.Text:=DM.Qry_ActIn_Items.FieldByName('GOODS_NAME').AsString;
  E_Kol.Text:=DM.Qry_ActIn_Items.FieldByName('KOL_DOC').AsString;
  E_Weight.Text:=DM.Qry_ActIn_Items.FieldByName('WEIGHT_DOC').AsString;
  E_KolFact.Text:=DM.Qry_ActIn_Items.FieldByName('KOL_FACT').AsString;
  E_WeghtFact.Text:=DM.Qry_ActIn_Items.FieldByName('WEIGHT_FACT').AsString;
  LblKolDoc.Caption:=DM.Qry_ActIn_Items.FieldByName('KOL_EDIZM').AsString;
  LblWeighDoc.Caption:=DM.Qry_ActIn_Items.FieldByName('WEIGHT_EDIZM').AsString;
  LblKolFact.Caption:=DM.Qry_ActIn_Items.FieldByName('KOL_EDIZM').AsString;
  LblWeightFact.Caption:=DM.Qry_ActIn_Items.FieldByName('WEIGHT_EDIZM').AsString;
  try
   ms:=DM.Qry_ActIn_Items.CreateBlobStream(DM.Qry_ActIn_Items.FieldByName('NOTES'),bmRead);
   E_Notes.Lines.LoadFromStream(ms);
  finally
    ms.Free;
  end;

end;

end.
