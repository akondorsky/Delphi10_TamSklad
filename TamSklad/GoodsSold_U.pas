unit GoodsSold_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrlsEh;

type
  TGoodsSold_F = class(TForm)
    Label4: TLabel;
    Edit1: TEdit;
    E_DateFinished: TDBDateTimeEditEh;
    Label8: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GoodsSold_F: TGoodsSold_F;

implementation

{$R *.dfm}

end.
