unit AddDecl_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrlsEh, Mask, StdCtrls, ExtCtrls, Buttons,Db;

type
  TAddDecl_F = class(TForm)
    Label1: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    E_Gtd: TMaskEdit;
    Label3: TLabel;
    E_NTs: TEdit;
    E_Dt: TEdit;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    E_Zayv: TButtonedEdit;
    Label5: TLabel;
    E_INN: TEdit;
    Label6: TLabel;
    E_Adress: TEdit;
    procedure E_NTsKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure E_ZayvRightButtonClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddDecl_F: TAddDecl_F;
  MY_DATESEPARATOR:Char;

implementation

uses RegtiDisp_U,data,main;

{$R *.dfm}

procedure TAddDecl_F.BitBtn1Click(Sender: TObject);
var
  id_owner:Integer;
begin
    try
     try
        if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add('insert into decls (nomer_dt,id_owner,zayv,inn,adress,n_ts,id_ticket,id_part) ');
        DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7) ');
        DM.Sql.Params[0].AsString:=E_Gtd.Text;
        DM.Sql.Params[1].AsInteger:=DM.Qry_RegtiDispID.Value;
        DM.Sql.Params[2].AsString:=E_Zayv.Text;
        DM.Sql.Params[3].AsString:=E_INN.Text;
        DM.Sql.Params[4].AsString:=E_Adress.Text;
        DM.Sql.Params[5].AsString:=E_NTs.Text;
        DM.Sql.Params[6].AsInteger:=Main_F.IdTicket;
        DM.Sql.Params[7].AsInteger:=Main_F.IdPart;
        DM.Sql.ExecQuery;
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add('update ticket_parts set ts_flag=:p0 where id=:p1');
        DM.Sql.Params[0].AsInteger:=1;
        DM.Sql.Params[1].AsInteger:=Main_F.IdPart;
        DM.Sql.ExecQuery;
        DM.Sql.Transaction.Commit;
        ModalResult:=mrOk;
        DM.Qry_Decl.Close;
        DM.Qry_Decl.Open;
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

procedure TAddDecl_F.E_NTsKeyPress(Sender: TObject; var Key: Char);
begin
 if  not(Key in ['0'..'9','A'..'Z','a'..'z',#8,'/']) then Key:=#0;
end;

procedure TAddDecl_F.E_ZayvRightButtonClick(Sender: TObject);
begin
 if RegtiDisp_F.ShowModal = mrOk then
  begin
    E_Zayv.Text:=DM.Qry_RegtiDisp.FieldByName('ZAYV').AsString;
    E_INN.Text:=DM.Qry_RegtiDisp.FieldByName('INN').AsString;
    E_Adress.Text:=DM.Qry_RegtiDisp.FieldByName('FULL_ADRESS').AsString;
  end;
end;

procedure TAddDecl_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  System.SysUtils.FormatSettings.DateSeparator:=MY_DATESEPARATOR;
end;

procedure TAddDecl_F.FormShow(Sender: TObject);
var
  s:String;
begin
  MY_DATESEPARATOR:=System.SysUtils.FormatSettings.DateSeparator;
  System.SysUtils.FormatSettings.DateSeparator:='/';
  E_Gtd.EditMask:='00000000/000000/0000000;1;_';
  s:=DateTimeToStr(Now);
  E_Dt.Text:= s;
  E_Gtd.Clear;
  E_Zayv.Text:=DM.Qry_FindParts.FieldByName('ZAYV').AsString;
  E_INN.Text:=DM.Qry_FindParts.FieldByName('INN').AsString;
  E_Adress.Text:=DM.Qry_FindParts.FieldByName('FULL_ADRESS').AsString;
  E_NTs.Text:=DM.Qry_Ts.FieldByName('N_TS').AsString+'/'+DM.Qry_Ts.FieldByName('N_TRAILER_HUMAN').AsString;
  E_Gtd.SetFocus;
end;

end.
