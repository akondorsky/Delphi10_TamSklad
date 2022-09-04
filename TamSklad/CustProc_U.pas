unit CustProc_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh;

type
  TCustProc_F = class(TForm)
    Grid1: TDBGridEh;
    procedure Grid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustProc_F: TCustProc_F;

implementation

{$R *.dfm}
uses main,data;

procedure TCustProc_F.Grid1DblClick(Sender: TObject);
begin
  ModalResult:=mrOk;
end;

end.
