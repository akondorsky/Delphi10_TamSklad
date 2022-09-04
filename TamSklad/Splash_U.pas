unit Splash_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,  Graphics,
   Controls,  Forms,  Dialogs,  ExtCtrls,  StdCtrls,
   jpeg;

type
  TSplashForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SplashForm: TSplashForm;

implementation

{$R *.dfm}

end.
