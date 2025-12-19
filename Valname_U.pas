unit Valname_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh, EhLibVCL;

type
  TValname_F = class(TForm)
    Grid_Ticket: TDBGridEh;
    procedure Grid_TicketDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Valname_F: TValname_F;

implementation

{$R *.dfm}
uses data;

procedure TValname_F.Grid_TicketDblClick(Sender: TObject);
begin
  ModalResult:=mrOk;
end;

end.
