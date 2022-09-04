program TamSklad;

uses
  Windows,
  SysUtils,
  Forms,
  Main in 'Main.pas' {Main_F},
  data in 'data.pas' {DM: TDataModule},
  AddGoods_U in 'AddGoods_U.pas' {AddGoods_F},
  Valname_U in 'Valname_U.pas' {Valname_F},
  EditGoods_U in 'EditGoods_U.pas' {EditGoods_F},
  EndProc_U in 'EndProc_U.pas' {EndProc_F},
  EditGoodsOut_U in 'EditGoodsOut_U.pas' {EditGoodsOut_F},
  Sold_U in 'Sold_U.pas' {Sold_F},
  EditSold_U in 'EditSold_U.pas' {EditSold_F},
  Splash_U in 'Splash_U.pas' {SplashForm},
  RegtiDisp_U in 'RegtiDisp_U.pas' {RegtiDisp_F},
  AddDecl_U in 'AddDecl_U.pas' {AddDecl_F},
  Warehouse_U in 'Warehouse_U.pas' {Warehouse_F},
  ActInHeadEdit_U in 'ActInHeadEdit_U.pas' {ActInHeadEdit_F},
  ActInItemEdit_U in 'ActInItemEdit_U.pas' {ActInItemEdit_F},
  ActOutEdit_U in 'ActOutEdit_U.pas' {ActOutEdit_F},
  FindRegTi_U in 'FindRegTi_U.pas' {FindRegTi_F},
  SelectDates_U in 'SelectDates_U.pas' {SelectDates_F},
  myutils in 'myutils.pas',
  Login_U in 'Login_U.pas' {Login_F},
  CustProc_U in 'CustProc_U.pas' {CustProc_F},
  Reports_U in 'Reports_U.pas' {Reports_F},
  Edizm_U in 'Edizm_U.pas' {Edizm_F};

{$R *.res}
 var
   Start:LongInt;

begin
  Application.Initialize;
  Start:=GetTickCount;
  SplashForm := TSplashForm.Create( Application );
  SplashForm.Show;
  SplashForm.Update;
  SplashForm.Label3.Caption:='Подключение к базе данных...';
  SplashForm.Update;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMain_F, Main_F);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TAddGoods_F, AddGoods_F);
  Application.CreateForm(TValname_F, Valname_F);
  Application.CreateForm(TEditGoods_F, EditGoods_F);
  Application.CreateForm(TEndProc_F, EndProc_F);
  Application.CreateForm(TEditGoodsOut_F, EditGoodsOut_F);
  Application.CreateForm(TSold_F, Sold_F);
  Application.CreateForm(TEditSold_F, EditSold_F);
  Application.CreateForm(TRegtiDisp_F, RegtiDisp_F);
  Application.CreateForm(TAddDecl_F, AddDecl_F);
  Application.CreateForm(TWarehouse_F, Warehouse_F);
  Application.CreateForm(TActInHeadEdit_F, ActInHeadEdit_F);
  Application.CreateForm(TActInItemEdit_F, ActInItemEdit_F);
  Application.CreateForm(TActOutEdit_F, ActOutEdit_F);
  Application.CreateForm(TFindRegTi_F, FindRegTi_F);
  Application.CreateForm(TSelectDates_F, SelectDates_F);
  Application.CreateForm(TLogin_F, Login_F);
  Application.CreateForm(TCustProc_F, CustProc_F);
  Application.CreateForm(TReports_F, Reports_F);
  Application.CreateForm(TEdizm_F, Edizm_F);
  SplashForm.Label3.Caption:='Запуск приложения...';
  SplashForm.Update;
  while (GetTickCount - Start) < 2500 do
    begin
     SplashForm.Update;
    end;
  SplashForm.Hide;
  SplashForm.Free;
  Application.Run;
end.
