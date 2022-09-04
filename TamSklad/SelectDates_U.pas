unit SelectDates_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons;

type
  TSelectDates_F = class(TForm)
    GroupBox1: TGroupBox;
    RxLabel1: TLabel;
    RxLabel2: TLabel;
    D1: TDateTimePicker;
    D2: TDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SelectDates_F: TSelectDates_F;

implementation

{$R *.dfm}

procedure TSelectDates_F.FormCreate(Sender: TObject);
begin
  D1.Date:=Date;
  D2.Date:=Date;
end;

end.
