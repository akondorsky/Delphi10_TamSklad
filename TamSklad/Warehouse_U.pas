unit Warehouse_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh, PropFilerEh, PropStorageEh, Menus, StdCtrls, ExtCtrls,
  ComCtrls, ToolWin;

type
  TWarehouse_F = class(TForm)
    PropStorageEh1: TPropStorageEh;
    PopMn_ActIn: TPopupMenu;
    N1: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Grid_ActInHead: TDBGridEh;
    Grid_ActInItems: TDBGridEh;
    Grid_ActOut: TDBGridEh;
    PopMn_ActOut: TPopupMenu;
    N2: TMenuItem;
    ToolBar1: TToolBar;
    Btn_RefreshWh: TToolButton;
    procedure Grid_ActInHeadDblClick(Sender: TObject);
    procedure Grid_ActInItemsDblClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Grid_ActOutDblClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Btn_RefreshWhClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Warehouse_F: TWarehouse_F;

implementation

{$R *.dfm}
uses main,data, ActInHeadEdit_U, ActInItemEdit_U, Reports_U, ActOutEdit_U;
procedure TWarehouse_F.Btn_RefreshWhClick(Sender: TObject);
begin
  Dm.RefreshActInHead;
  Dm.RefreshActInItems;
  Dm.RefreshActOut;
end;

procedure TWarehouse_F.Grid_ActInHeadDblClick(Sender: TObject);
begin
 ActinHeadEdit_F.ShowModal;
end;

procedure TWarehouse_F.Grid_ActInItemsDblClick(Sender: TObject);
begin
  ActInItemEdit_F.ShowModal;
end;

procedure TWarehouse_F.Grid_ActOutDblClick(Sender: TObject);
begin
  ActOutEdit_F.ShowModal;
end;

procedure TWarehouse_F.N1Click(Sender: TObject);
begin
 Reports_F.Qry_RepActIn.Close;
 Reports_F.Qry_RepActIn.Params[0].AsInteger:=DM.Qry_ActIn_Head.FieldByName('ID_DECL').AsInteger;
 Reports_F.Qry_RepActIn.Open;
 Reports_F.Rep1.LoadFromFile('act_in.fr3');
 Reports_F.Rep1.ShowReport();
 Reports_F.Qry_RepActIn.Close;
end;

procedure TWarehouse_F.N2Click(Sender: TObject);
begin
 Reports_F.Qry_ActOut.Close;
 Reports_F.Qry_ActOut.Params[0].AsInteger:=DM.Qry_ActOut.FieldByName('ID').AsInteger;
 Reports_F.Qry_ActOut.Open;
 Reports_F.Rep1.LoadFromFile('act_out.fr3');
 Reports_F.Rep1.ShowReport();
 Reports_F.Qry_ActOut.Close;
end;

end.
