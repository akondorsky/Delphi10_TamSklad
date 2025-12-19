unit Edizm_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TEdizm_F = class(TForm)
    DBGridEh1: TDBGridEh;
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Edizm_F: TEdizm_F;

implementation
uses main,data;

{$R *.dfm}

procedure TEdizm_F.DBGridEh1DblClick(Sender: TObject);
begin
  ModalResult:=mrOk;
end;

end.
