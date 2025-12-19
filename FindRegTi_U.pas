unit FindRegTi_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, IBX.IBCustomDataSet, IBX.IBQuery,
  ImgList, Menus, ComCtrls, ToolWin, EhLibVCL;

type
  TFindRegTi_F = class(TForm)
    Label1: TLabel;
    E_Find: TButtonedEdit;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    procedure E_FindRightButtonClick(Sender: TObject);
    procedure E_FindKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
  private
    { Private declarations }
    sel_body:String;
    procedure FindZayv(AName:String);
    procedure AllRec;
  public
    { Public declarations }
  end;

const
   sel_trailer:String =
        'order by a.zayv, c.id desc  ';
var
  FindRegTi_F: TFindRegTi_F;

implementation

{$R *.dfm}
uses main, data;


procedure TFindRegTi_F.AllRec;
var
  s:String;
begin
  s:=sel_body + ' order by c.id desc ' ;
  Dm.Qry_FindParts.Close;
  DM.Qry_FindParts.SQL.Clear;
  DM.Qry_FindParts.SQL.Add(s);
  DM.Qry_FindParts.Open;
  if not Dm.Qry_Ts.Active then Dm.Qry_Ts.Open;

end;

procedure TFindRegTi_F.E_FindKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then   FindZayv(Trim(E_Find.Text));

end;

procedure TFindRegTi_F.E_FindRightButtonClick(Sender: TObject);
begin
  FindZayv(Trim(E_Find.Text));
end;

procedure TFindRegTi_F.FindZayv(AName: String);
var
 sel_cond:String;
begin
  if Length(AName)=0 then Exit;
  if DM.Qry_FindParts.Active then DM.Qry_FindParts.Close;
  sel_cond:=format( ' where b.id_owner is not null and a.zayv containing %s%s%s ',[#39,AName,#39]);
  DM.Qry_FindParts.SQL.Clear;
  DM.Qry_FindParts.SQL.Add(sel_body+sel_cond+sel_trailer);
  DM.Qry_FindParts.Open;
end;

procedure TFindRegTi_F.FormCreate(Sender: TObject);
begin
     sel_body:=' select a.zayv,a.inn, a.id, ';
     sel_body:=sel_body+format(' (iif (a.POSTCODE is not null, a.postcode, %s%s))||%s %s|| ',[#39,#39,#39,#39]);
     sel_body:=sel_body+format(' (iif (a.REGION is not null, a.REGION, %s%s))||%s %s|| ',[#39,#39,#39,#39]);
     sel_body:=sel_body+format(' (iif (a.CITY is not null, a.CITY, %s%s))||%s %s|| ',[#39,#39,#39,#39]);
     sel_body:=sel_body+format(' (iif (a.STREET is not null, a.STREET, %s%s))||%s %s|| ',[#39,#39,#39,#39]);
     sel_body:=sel_body+format(' (iif (a.HOUSE is not null, a.HOUSE, %s%s)) AS FULL_ADRESS, ',[#39,#39]);
     sel_body:=sel_body+format(' c.id as id_ticket,  c.n_ticket||%s/%s||b.npp as N_Part, c.dt_is,b.id as id_part ',[#39,#39]);
     sel_body:=sel_body+ ' from reg_ti a ' ;
     sel_body:=sel_body+ ' left join ticket_parts b on a.id = b.id_owner ' ;
     sel_body:=sel_body+ ' left join ticket c on b.id_ticket = c.id ' ;
end;

procedure TFindRegTi_F.FormShow(Sender: TObject);
begin
  AllRec;
end;

procedure TFindRegTi_F.N1Click(Sender: TObject);
begin
  ModalResult:=mrOk;
end;

procedure TFindRegTi_F.ToolButton1Click(Sender: TObject);
begin
  AllRec;
end;

end.


