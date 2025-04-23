unit Main;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ToolWin, ComCtrls, Menus, ExtCtrls, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh,
  ActnList, PlatformDefaultStyleActnCtrls, ActnMan, PropFilerEh, PropStorageEh,
  IbQuery,DB, System.Actions, System.ImageList, EhLibVCL, Vcl.StdCtrls;
type
  TMain_F = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    MainToolBar: TToolBar;
    ImL_32: TImageList;
    Panel_main: TPanel;
    Panel_Center: TPanel;
    Panel_Top: TPanel;
    Panel_Left: TPanel;
    Grid_Goods: TDBGridEh;
    Grid_GoodsOut: TDBGridEh;
    ToolButton1: TToolButton;
    ActionManager1: TActionManager;
    AddGods_A: TAction;
    ImL_Buttons16: TImageList;
    PropStorageEh1: TPropStorageEh;
    RegPropStorageManEh1: TRegPropStorageManEh;
    EditGoods_A: TAction;
    ToolButton2: TToolButton;
    PopMn_Head: TPopupMenu;
    N4: TMenuItem;
    EndProc_A: TAction;
    EditGoodsOut_A: TAction;
    Panel_Bottom: TPanel;
    Grid_Sold: TDBGridEh;
    Tov232_A: TAction;
    N5: TMenuItem;
    N6: TMenuItem;
    EditGoodsSold_A: TAction;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    AddDecl_A: TAction;
    PopMn_Decl: TPopupMenu;
    N10: TMenuItem;
    N11: TMenuItem;
    A_CreateActIn: TAction;
    N12: TMenuItem;
    N13: TMenuItem;
    Grid_Decl: TDBGridEh;
    StatusBar1: TStatusBar;
    PopMn_GoodsOut: TPopupMenu;
    Item_CreateActOut: TMenuItem;
    Btn_Refresh: TToolButton;
    Panel5: TPanel;
    Panel4: TPanel;
    Panel1: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    SaveDialog1: TSaveDialog;
    N221: TMenuItem;
    RG_Find: TRadioGroup;
    E_Find: TEdit;
    Btn_Find: TButton;
    Label1: TLabel;
    ToolButton3: TToolButton;
    Btn_AllRec: TToolButton;
    N14: TMenuItem;
    N15: TMenuItem;
    ImL_Check: TImageList;
    Iml_Minus: TImageList;
    N16: TMenuItem;
    PopMn_NotInReport: TMenuItem;
    PopMn_InReport: TMenuItem;
    PopMn_AllRecNotInReport: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure AddGods_AExecute(Sender: TObject);
    procedure EditGoods_AExecute(Sender: TObject);
    procedure Grid_GoodsDblClick(Sender: TObject);
    procedure EndProc_AExecute(Sender: TObject);
    procedure EditGoodsOut_AExecute(Sender: TObject);
    procedure Grid_GoodsOutDblClick(Sender: TObject);
    procedure Tov232_AExecute(Sender: TObject);
    procedure EditGoodsSold_AExecute(Sender: TObject);
    procedure Grid_SoldDblClick(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure AddDecl_AExecute(Sender: TObject);
    procedure A_CreateActInExecute(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure Item_CreateActOutClick(Sender: TObject);
    procedure Btn_RefreshClick(Sender: TObject);
    procedure tmp1Click(Sender: TObject);
    procedure N221Click(Sender: TObject);
    procedure Btn_FindClick(Sender: TObject);
    procedure Btn_AllRecClick(Sender: TObject);
    procedure E_FindKeyPress(Sender: TObject; var Key: Char);
    procedure N15Click(Sender: TObject);
    procedure PopMn_NotInReportClick(Sender: TObject);
    procedure PopMn_InReportClick(Sender: TObject);
    procedure Grid_GoodsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Grid_GoodsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure PopMn_AllRecNotInReportClick(Sender: TObject);
  private
    { Private declarations }
    procedure SavePril3ToXML;
    function Check_DogTS(Id:Integer):Boolean;
  public
    { Public declarations }
    IdTicket:Integer;
    IdPart:Integer;
  end;

const
  MYGTDMASK:String='00000000\/000000\/0000000;1;_';
  sql_decl_start:String = 'select a.*, b.n_ticket||''/''||c.npp as n_part  from DECLS a ' +
                          ' left join ticket b on a.id_ticket = b.id left join ticket_parts c on a.id_part=c.id ';
  sql_decl_end:String = ' order by a.ID DESC ';

var
  Main_F: TMain_F;
  User:String;//имя пользователя
  Role:String; // роль пользователя
  Dolj:String;//должность пользователя
  Rights:String;//доп. права
implementation
{$R *.dfm}
 uses data, AddGoods_U, EditGoods_U, EndProc_U, EditGoodsOut_U, Sold_U,
  EditSold_U, Reports_U, RegtiDisp_U, AddDecl_U, Warehouse_U, FindRegTi_U,
  SelectDates_U, Unit1,myutils, Login_U;

procedure SetNotInReportFlag(Id:Integer);
begin
  try
     try
        if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add('update goods_head set not_report=:p0 where id=:p1 ');
        DM.Sql.Params[0].asInteger:=1;
        DM.Sql.Params[1].asInteger:=id;
        DM.Sql.ExecQuery;
        DM.Sql.Transaction.Commit;
        Dm.Qry_Goods.Close;
        Dm.Qry_Goods.Open;
        Dm.Qry_Goods.Locate('id',id,[]);
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

procedure SetInReportFlag(Id:Integer);
begin
  try
     try
        if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add('update goods_head set not_report=:p0 where id=:p1 ');
        DM.Sql.Params[0].asInteger:=0;
        DM.Sql.Params[1].asInteger:=id;
        DM.Sql.ExecQuery;
        DM.Sql.Transaction.Commit;
        Dm.Qry_Goods.Close;
        Dm.Qry_Goods.Open;
        Dm.Qry_Goods.Locate('id',id,[]);
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


procedure TMain_F.SavePril3ToXML;
var
  //i:Integer;
  Xml: TStringList;
  qry:TIBQuery;
  fname,weight,mydate:String;
  npp:Integer;
begin
  try
     if not SaveDialog1.Execute then Exit;
     SaveDialog1.Filter := 'XML файл (*.xml)|*.XML';
     fname:=SaveDialog1.FileName;
     npp:=1;
     qry:=TIBQuery.Create(self);
     qry.Database:=DM.DB;
     Reports_F.Qry_ReportPril3.First;
     Xml := TStringList.Create;
     Xml. Add ('<?xml version="1.0" encoding="windows-1251"?>' );
     Xml. Add ('<ReportingOwnerCustomsWarehouse xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="urn:customs.ru:ReportingCollection:ReportingOwnerCustomsWarehouse:5.17.0">');
     Xml. Add ('<DocumentID xmlns="urn:customs.ru:CommonAggregateTypes:5.10.0">27abe8b2-2807-4187-a814-ad27ce539fd0</DocumentID>');
     Xml. Add (format('<ReportDate>%s</ReportDate> ',[DateToIso(Date)]));
     Xml. Add ('<ReportNumber>100</ReportNumber>' );
     Xml. Add ('<ReportYear>2019-01-01</ReportYear>' );
     Xml. Add ('<ReportQuarter>1</ReportQuarter>' );
     Xml. Add ('<Organization>' );
         Xml. Add ('<OrganizationName>Общество с ограниченной ответственностью "СИРИУС"</OrganizationName>');
         Xml. Add ('<INN>3915447015</INN>' );
         Xml. Add ('<KPP>391501001</KPP>' );
     Xml. Add ('</Organization>' );
     Xml. Add ('<CertOfInclusion>' );
         Xml. Add ('<CertOfInclusionDate>2018-09-18</CertOfInclusionDate>');
         Xml. Add ('<CertOfInclusionNumber>10012/002</CertOfInclusionNumber>');
     Xml. Add ('</CertOfInclusion>' );
     Xml. Add ('<PersonPost>' );
         Xml. Add ('<PersonSurname xmlns="urn:customs.ru:CommonAggregateTypes:5.10.0">ГИРЗЕКОРН</PersonSurname>');
         Xml. Add ('<PersonName xmlns="urn:customs.ru:CommonAggregateTypes:5.10.0">МАКСИМ</PersonName>');
         Xml. Add ('<PersonMiddleName xmlns="urn:customs.ru:CommonAggregateTypes:5.10.0">АЛЕКСАНДРОВИЧ</PersonMiddleName>');
         Xml. Add (format('<IssueDate xmlns="urn:customs.ru:CommonAggregateTypes:5.10.0">%s</IssueDate>',[DateToIso(Date)]));
     Xml. Add ('</PersonPost>' );
     while not Reports_F.Qry_ReportPril3.Eof do
      begin
        Xml. Add ('<GoodsInfo>');
           Xml. Add (format('<GoodsPosition>%s</GoodsPosition> ',[IntToStr(npp)]));
           Xml. Add ('<Section1>');
                 weight:=ReplaceComma(Reports_F.Qry_ReportPril3.FieldByName('WEIGHT_VOL').AsExtended);
                 Xml. Add (format('<GrossWeightQuantity>%s</GrossWeightQuantity>',[weight]));
                 Xml. Add ('<SupplementaryQuantity>');
                     Xml. Add (format('<GoodsQuantity>%s</GoodsQuantity>',[Reports_F.Qry_ReportPril3.FieldByName('KOL').AsString]));
                     Xml. Add (format('<MeasureUnitQualifierName>%s</MeasureUnitQualifierName>',[Reports_F.Qry_ReportPril3.FieldByName('KOL_EDIZM').AsString]));
                     Xml. Add (format('<MeasureUnitQualifierCode>%s</MeasureUnitQualifierCode>',[Reports_F.Qry_ReportPril3.FieldByName('KOL_EDIZM_CODE').AsString]));
                 Xml. Add ('</SupplementaryQuantity>');
                 Xml. Add ('<GTDNumber>');
                        Xml. Add (format('<CustomsCode xmlns="urn:customs.ru:CommonAggregateTypes:5.10.0">%s</CustomsCode>',[Copy(Reports_F.Qry_ReportPril3.FieldByName('N_DECL').AsString,1,8)]));
                        if Reports_F.Qry_ReportPril3.FieldByName('N_DECL').IsNull then
                            mydate:=''
                           else
                            mydate:=DateToIso(StrToDate(GtdDateToDate(Copy(Reports_F.Qry_ReportPril3.FieldByName('N_DECL').AsString,10,6))));
                        Xml. Add (format('<RegistrationDate xmlns="urn:customs.ru:CommonAggregateTypes:5.10.0">%s</RegistrationDate>',[mydate]));
                        Xml. Add (format('<GTDNumber xmlns="urn:customs.ru:CommonAggregateTypes:5.10.0">%s</GTDNumber>',[Copy(Reports_F.Qry_ReportPril3.FieldByName('N_DECL').AsString,17,7)]));
                 Xml. Add ('</GTDNumber>');
                 Xml. Add (format('<GoodsNumeric>%s</GoodsNumeric>',[Reports_F.Qry_ReportPril3.FieldByName('N_GOODS').AsString]));
                 Xml. Add (format('<GoodsTNVEDCode>%s</GoodsTNVEDCode>',[Reports_F.Qry_ReportPril3.FieldByName('TNVED_CODE').AsString]));
                 Xml. Add (format('<GoodsDescription>%s</GoodsDescription>',[Reports_F.Qry_ReportPril3.FieldByName('NAME_GOODS').AsString]));
                 Xml. Add (format('<PlacementDate>%s</PlacementDate>',[iif_var(Reports_F.Qry_ReportPril3.FieldByName('DT').IsNull,'',DateToIso(Reports_F.Qry_ReportPril3.FieldByName('DT').AsDateTime))]));
                 Xml. Add (format('<StoragePlaceNum>%s</StoragePlaceNum>',[Reports_F.Qry_ReportPril3.FieldByName('PLACES').AsString]));
                 Xml. Add (format('<ExpirationDate>%s</ExpirationDate>',[iif_var(Reports_F.Qry_ReportPril3.FieldByName('DATE_FINISHED').IsNull,'',DateToIso(Reports_F.Qry_ReportPril3.FieldByName('DATE_FINISHED').AsDateTime))]));
                 Xml. Add ('<ShelfLife>');
                        Xml. Add ('<DateIndicator>false</DateIndicator>');
                 Xml. Add ('</ShelfLife>');
           Xml. Add ('</Section1>');
           Xml. Add ('<Section2>');
                 weight:=ReplaceComma(Reports_F.Qry_ReportPril3.FieldByName('WEIGHT_OUT').AsExtended);
                 Xml. Add (format('<GrossWeightQuantity>%s</GrossWeightQuantity>',[weight]));
                 Xml. Add ('<SupplementaryQuantity>');
                     Xml. Add (format('<GoodsQuantity>%s</GoodsQuantity>',[Reports_F.Qry_ReportPril3.FieldByName('KOL_OUT').AsString]));
                     Xml. Add (format('<MeasureUnitQualifierName>%s</MeasureUnitQualifierName>',[Reports_F.Qry_ReportPril3.FieldByName('EDIZM_OUT').AsString]));
                     Xml. Add (format('<MeasureUnitQualifierCode>%s</MeasureUnitQualifierCode>',[Reports_F.Qry_ReportPril3.FieldByName('EDIZM_CODE_OUT').AsString]));
                 Xml. Add ('</SupplementaryQuantity>');
                 Xml. Add ('<GTDNumber>');
                        Xml. Add (format('<CustomsCode xmlns="urn:customs.ru:CommonAggregateTypes:5.10.0">%s</CustomsCode>',[Copy(Reports_F.Qry_ReportPril3.FieldByName('GTD_OUT').AsString,1,8)]));
                        if Reports_F.Qry_ReportPril3.FieldByName('GTD_OUT').IsNull then
                            begin
                               mydate:='';
                            end
                            else
                            begin
                               mydate:=DateToIso(StrToDate(GtdDateToDate(Copy(Reports_F.Qry_ReportPril3.FieldByName('GTD_OUT').AsString,10,6))))
                            end;
                        Xml. Add (format('<RegistrationDate xmlns="urn:customs.ru:CommonAggregateTypes:5.10.0">%s</RegistrationDate>',[mydate]));
                        Xml. Add (format('<GTDNumber xmlns="urn:customs.ru:CommonAggregateTypes:5.10.0">%s</GTDNumber>',[Copy(Reports_F.Qry_ReportPril3.FieldByName('GTD_OUT').AsString,17,7)]));
                 Xml. Add ('</GTDNumber>');
                 Xml. Add (format('<GoodsNumeric>%s</GoodsNumeric>',[Reports_F.Qry_ReportPril3.FieldByName('N_TOV_OUT').AsString]));
                 Xml. Add (format('<GoodsTNVEDCode>%s</GoodsTNVEDCode>',[Reports_F.Qry_ReportPril3.FieldByName('TNVED_OUT').AsString]));
                 Xml. Add (format('<GoodsDescription>%s</GoodsDescription>',[Reports_F.Qry_ReportPril3.FieldByName('NAME_GOODS_OUT').AsString]));
                 Xml. Add (format('<ProcedureCode>%s</ProcedureCode>',[Reports_F.Qry_ReportPril3.FieldByName('CUSTPROC_CODE').AsString]));
                 if Reports_F.Qry_ReportPril3.FieldByName('DT_OUT').IsNull then
                      mydate:=''
                     else
                      mydate:=DateToIso(Reports_F.Qry_ReportPril3.FieldByName('DT_OUT').AsDateTime);
                 Xml. Add (format('<IssuanceDate>%s</IssuanceDate>',[mydate]));
           Xml. Add ('</Section2>');
            Xml. Add ('<Section3>');
                 weight:=ReplaceComma(Reports_F.Qry_ReportPril3.FieldByName('REST_WEIGHT').AsExtended);
                 Xml. Add (format('<GrossWeightQuantity>%s</GrossWeightQuantity>',[weight]));
                 Xml. Add ('<SupplementaryQuantity>');
                     Xml. Add (format('<GoodsQuantity>%s</GoodsQuantity>',[Reports_F.Qry_ReportPril3.FieldByName('REST_KOL').AsString]));
                     Xml. Add (format('<MeasureUnitQualifierName>%s</MeasureUnitQualifierName>',[Reports_F.Qry_ReportPril3.FieldByName('KOL_EDIZM').AsString]));
                     Xml. Add (format('<MeasureUnitQualifierCode>%s</MeasureUnitQualifierCode>',[Reports_F.Qry_ReportPril3.FieldByName('KOL_EDIZM_CODE').AsString]));
                 Xml. Add ('</SupplementaryQuantity>');
           Xml. Add ('</Section3>');
        Xml. Add ('</GoodsInfo>');
        npp:=npp+1;
        Reports_F.Qry_ReportPril3.Next;
      end;
      Xml. Add ('</ReportingOwnerCustomsWarehouse>' );
      try
        XML.SaveToFile(fname);
        Application.MessageBox('Файл успешно записан','Внимание',MB_OK+MB_ICONINFORMATION);
      except
        Application.MessageBox('Ошибка записи файла','Внимание',MB_OK+MB_ICONSTOP);
      end;
  finally
     Xml.Free;
     qry.Free;
  end;
end;

procedure TMain_F.AddDecl_AExecute(Sender: TObject);
begin
  if FindRegTi_F.ShowModal = mrOk then
     begin
      IdTicket:=Dm.Qry_FindParts.FieldByName('ID_TICKET').AsInteger;
      IdPart:=Dm.Qry_FindParts.FieldByName('ID_PART').AsInteger;
      if not Check_DogTS(Dm.Qry_FindParts.FieldByName('ID').AsInteger) then
      begin
        Application.MessageBox('У выбранного получателя не заключен договор таможенного склада.','Внимание',MB_ICONSTOP+MB_Ok);
        Exit;
      end;
      AddDecl_F.ShowModal;
     end;
  if Dm.Qry_FindParts.Active then Dm.Qry_FindParts.Close;
  if Dm.Qry_Ts.Active then Dm.Qry_Ts.Close;
end;
procedure TMain_F.AddGods_AExecute(Sender: TObject);
begin
  if DM.Qry_Decl.FieldByName('ID').IsNull then Exit;
  AddGoods_F.ShowModal;
end;
procedure TMain_F.A_CreateActInExecute(Sender: TObject);
var
 id_decl,id_act:Integer;
 qry:TIbQuery;
begin
  if DM.Qry_Decl.FieldByName('ID').IsNull then Exit;
  qry := TIBQuery.Create(Self);
  qry.Database:=DM.DB;
  try
    id_decl:=Dm.Qry_Decl.FieldByName('ID').AsInteger;
    qry.SQL.Add('select count(*) from whact_in_head_ts where id_decl=:p0');
    qry.Params[0].AsInteger:=id_decl;
    qry.Open;
    if qry.Fields[0].AsInteger > 0 then
       begin
         Application.MessageBox('На данную декларацию уже создан акт приемки.','Внимание',MB_ICONSTOP+mb_ok);
         Exit;
       end;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add('select count (*) from goods_head where id_decl=:p0');
    qry.Params[0].AsInteger:=id_decl;
    qry.Open;
    if qry.Fields[0].AsInteger = 0 then
       begin
         Application.MessageBox('На данную декларацию отсутствуют товары.','Внимание',MB_ICONSTOP+mb_ok);
         Exit;
       end;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add('select gen_id(GEN_ID_WHACT_IN_HEAD_TS,1) from rdb$database');
    qry.Open;
    id_act:= qry.Fields[0].AsInteger;
     try
        if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add('insert into whact_in_head_ts (id_decl,owner,id) ');
        DM.Sql.SQL.Add(' values (:p0,:p1,:p2) ');
        DM.Sql.Params[0].AsInteger:=id_decl;
        DM.Sql.Params[1].AsString:=Dm.Qry_Decl.FieldByName('ZAYV').AsString;
        DM.Sql.Params[2].AsInteger:=id_act;
        DM.Sql.ExecQuery;
        qry.Close;
        qry.SQL.Clear;
        qry.SQL.Add(' select a.id,  a.id_decl,a.n_goods, a.name_goods,a.date_finished,a.kol,a.kol_edizm, ');
        qry.SQL.Add(' a.weight_vol,a.weight_edizm  from goods_head a where a.id_decl = :p0 ');
        qry.Params[0].AsInteger:=id_decl;
        qry.Open;
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add('insert into whact_in_items_ts (id_head,goods_number,goods_name,kol_edizm,kol_doc,weight_edizm,weight_doc,date_finished,id_goods_head) ');
        DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8) ');
        while not qry.Eof do
          begin
              DM.Sql.Params[0].AsInteger:=id_act;
              DM.Sql.Params[1].AsInteger:=qry.FieldByName('n_goods').AsInteger;
              DM.Sql.Params[2].AsString:=qry.FieldByName('name_goods').AsString;
              DM.Sql.Params[3].AsString:=qry.FieldByName('kol_edizm').AsString;
              DM.Sql.Params[4].AsDouble:=qry.FieldByName('kol').AsFloat;
              DM.Sql.Params[5].AsString:=qry.FieldByName('weight_edizm').AsString;
              DM.Sql.Params[6].AsDouble:=qry.FieldByName('weight_vol').AsFloat;
              DM.Sql.Params[7].AsDate:=qry.FieldByName('date_finished').AsDateTime;
              DM.Sql.Params[8].AsInteger:=qry.FieldByName('id').AsInteger;
              DM.Sql.ExecQuery;
              qry.Next;
          end;
        DM.Sql.Transaction.Commit;
        ModalResult:=mrOk;
        DM.Qry_ActIn_Head.Close;
        DM.Qry_ActIn_Head.Open;
        DM.Qry_ActIn_Head.Locate('ID',id_act,[]);
        DM.Qry_ActIn_Items.Close;
        DM.Qry_ActIn_Items.Open;
        Application.MessageBox('Акт приемки создан.','Внимание',MB_ICONINFORMATION+mb_ok);
        Warehouse_f.ShowModal;
      except
        on E: EdatabaseError do
          begin
           DM.Sql.Transaction.Rollback;
           ShowMessage(E.Message);
          end;
      end;
  finally
    if  DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
    qry.Free;
  end;
end;
procedure TMain_F.Btn_AllRecClick(Sender: TObject);
begin
  DM.Qry_Decl.Close;
  DM.Qry_Decl.Sql.Clear;
  DM.Qry_Decl.Sql.Add(sql_decl_start);
  DM.Qry_Decl.Sql.Add(sql_decl_end);
  DM.Qry_Decl.Open;
end;

procedure TMain_F.Btn_FindClick(Sender: TObject);
var
 sql_text: String;
begin
  if Length(Trim(E_Find.Text)) = 0 then Exit;
  DM.Qry_Decl.Close;
  DM.Qry_Decl.SQL.Clear;
  case RG_Find.ItemIndex of
    0:  begin
          sql_text:=' where a.nomer_dt containing :p0 ';
        end;
    1:  begin
          sql_text:=' where b.n_ticket||''/''||c.npp containing :p0 ';
        end;
  end;
  DM.Qry_Decl.Sql.Add(sql_decl_start);
  DM.Qry_Decl.Sql.Add(sql_text);
  DM.Qry_Decl.Params[0].Value:=trim(E_Find.Text);
  DM.Qry_Decl.Open;
end;

procedure TMain_F.Btn_RefreshClick(Sender: TObject);
begin
  Dm.RefreshDecls;
  Dm.RefreshGoods;
  DM.RefreshGoodsOut;
  Dm.RefreshGoodsSold;
end;

function TMain_F.Check_DogTS(Id: Integer): Boolean;
var
  qry:TIBQuery;
begin
  Result:=False;
  try
    qry:=TIBQuery.Create(Nil);
    qry.Database:=DM.DB;
    qry.Sql.Add('select count (*) from dogovors a where a.id_zayv =:p0 and a.num_dog containing :p1');
    qry.Params[0].AsInteger:=Id;
    qry.Params[1].AsString:='tc';
    qry.Open;
    if qry.Fields[0].AsInteger > 0 then Result:=True;
  finally
    qry.Free;
  end;
end;

procedure TMain_F.EditGoodsOut_AExecute(Sender: TObject);
begin
  EditGoodsOut_F.ShowModal;
end;
procedure TMain_F.EditGoodsSold_AExecute(Sender: TObject);
begin
 EditSold_F.ShowModal;
end;
procedure TMain_F.EditGoods_AExecute(Sender: TObject);
begin
 if EditGoods_F.ShowModal = mrOK then DM.RefreshGoods;
end;
procedure TMain_F.EndProc_AExecute(Sender: TObject);
begin
  if Main_F.Grid_Goods.DataSource.DataSet.FieldByName('REST_KOL').AsFloat <= 0 then
     begin
       Application.MessageBox('Остаток нулевой.Товар не может быть обработан.','Внимание',MB_OK+MB_ICONSTOP);
       Exit;
     end;
  EndProc_F.ShowModal;
end;
procedure TMain_F.E_FindKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then Btn_FindClick(Self);
  
end;

procedure TMain_F.FormShow(Sender: TObject);
var
 i,j:integer;
 flag:Boolean;
 ChildMenu:Tmenu;
begin
 if Login_F.ShowModal <> mrOK then
   begin
      Application.MessageBox('Выбрано завершение работы.Приложение будет закрыто.',
                              'Внимание',MB_ICONSTOP+MB_OK);
      Application.Terminate;
   end;
  DM.OpenData;
if Role = 'CUSTOMS' then
  begin
      for i:= 0 to Main_F.ComponentCount - 1 do
        begin
           if (Main_F.Components[i] is TMenu)   then
              begin
                 ChildMenu:= TMenu(Main_F.Components[i]);
                 for j := 0 to ChildMenu.Items.Count-1 do
                   ChildMenu.Items[j].Enabled:=False;
              end;
        end;
       MainToolBar.Enabled:=False;
       MainMenu1.Items[2].Enabled:=True;
  end;
if (Pos('NOT_IN_REPORT',Rights) > 0 ) then
  begin
    PopMn_NotInReport.Enabled:=True;
    PopMn_InReport.Enabled:=True;
    PopMn_AllRecNotInReport.Enabled:=True;
  end;

  StatusBar1.Panels[0].Text:=DM.DB.DatabaseName;
  StatusBar1.Panels[1].Text:='Пользователь: '+ User +' Роль: '+Role;
  Grid_Decl.SetFocus;
end;
procedure TMain_F.Grid_GoodsDblClick(Sender: TObject);
begin
  if Role='CUSTOMS' then Exit;
  EditGoods_A.Execute;
end;
procedure TMain_F.Grid_GoodsDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
if  (Sender as TDBGridEh).SelectedRows.CurrentRowSelected then
 begin
  (Sender as TDBGridEh).Canvas.Font.Color := clYellow; // Font color
  (Sender as TDBGridEh).Canvas.Brush.Color := clBlue; // Background color
  (Sender as TDBGridEh).Canvas.FillRect(Rect);
 end;
  (Sender as TDBGridEh).DefaultDrawColumnCell(Rect, Datacol,Column, State);
end;

procedure TMain_F.Grid_GoodsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
Case Key of
 VK_UP, VK_PRIOR, VK_LEFT : dm.Qry_Goods.Prior;
 VK_DOWN, VK_NEXT, VK_RIGHT : dm.Qry_Goods.Next;
 VK_HOME : dm.Qry_Goods.First;
 VK_END : dm.Qry_Goods.Last;
 VK_INSERT,VK_SPACE: //пробел
   begin
       if ssShift in Shift then
         begin
            dm.Qry_Goods.DisableControls;
            dm.Qry_Goods.First;
            while not dm.Qry_Goods.Eof do
              begin
                  Grid_Goods.SelectedRows.CurrentRowSelected:=False;
                  dm.Qry_Goods.Next;
              end;
            dm.Qry_Goods.EnableControls;
         end
       else
         if ssCtrl in Shift then
            begin
                dm.Qry_Goods.DisableControls;
                dm.Qry_Goods.First;
                while not dm.Qry_Goods.Eof do
                   begin
                       Grid_Goods.SelectedRows.CurrentRowSelected:=True;
                       dm.Qry_Goods.Next;
                   end;
               dm.Qry_Goods.EnableControls;
           end
          else if Shift=[] then
             begin
                 if Grid_Goods.SelectedRows.CurrentRowSelected then
                     begin
                       Grid_Goods.SelectedRows.CurrentRowSelected:=false;
                       dm.Qry_Goods.Next;
                     end
                   else if not Grid_Goods.SelectedRows.CurrentRowSelected then
                           begin
                             Grid_Goods.SelectedRows.CurrentRowSelected:=true;
                             dm.Qry_Goods.Next;
                           end;

                 end;
          end;
end;
IF Key<>VK_TAB then Key:=0;
end;

procedure TMain_F.Grid_GoodsOutDblClick(Sender: TObject);
begin
  if Role='CUSTOMS' then Exit;
  EditGoodsOut_A.Execute;
end;
procedure TMain_F.Grid_SoldDblClick(Sender: TObject);
begin
  if Role='CUSTOMS' then Exit;
 EditGoodsSold_A.Execute;
end;
procedure TMain_F.Item_CreateActOutClick(Sender: TObject);
var
 id_goods,id_head:Integer;
 qry:TIBQuery;
 sql:String;
begin
  if Grid_GoodsOut.DataSource.DataSet.FieldByName('ID').IsNull then Exit;
  id_goods:=Grid_GoodsOut.DataSource.DataSet.FieldByName('ID').AsInteger;
  id_head:=Grid_GoodsOut.DataSource.DataSet.FieldByName('ID_HEAD').AsInteger;
  qry := TIBQuery.Create(Self);
  try
    qry.Database:=DM.DB;
    sql:='select a.*,b.name_goods,c.id as act_in from goods_out a ' +
       'left join goods_head b on a.id_head = b.id ' +
       'left join whact_in_head_ts c on b.id_decl = c.id_decl '+
       'left join whact_in_items_ts d on d.id_head = c.id  where a.id = :p0 and a.id_head = :p1 ';
    qry.SQL.Add(sql);
    qry.Params[0].AsInteger:=id_goods;
    qry.Params[1].AsInteger:=id_head;
    qry.Open;
////////////////////////
     try
        if not DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.StartTransaction;
        DM.Sql.Close;
        DM.Sql.SQL.Clear;
        DM.Sql.SQL.Add('insert into whact_out_ts(id_goods_head,id_act_in,name_goods,kol,kol_edizm,weight,weight_edizm,name_docout,nomer_docout) ');
        DM.Sql.SQL.Add(' values (:p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8) ');
        DM.Sql.Params[0].asInteger:=qry.FieldByName('id_head').AsInteger;
        DM.Sql.Params[1].AsInteger:=qry.FieldByName('act_in').AsInteger;
        DM.Sql.Params[2].AsString:=qry.FieldByName('name_goods').AsString;
        DM.Sql.Params[3].AsFloat:=qry.FieldByName('kol').AsFloat;
        DM.Sql.Params[4].AsString:=qry.FieldByName('kol_edizm').AsString;
        DM.Sql.Params[5].AsFloat:=qry.FieldByName('weight_vol').AsFloat;
        DM.Sql.Params[6].AsString:=qry.FieldByName('weight_edizm').AsString;
        DM.Sql.Params[7].AsString:='Декларация на товары';
        DM.Sql.Params[8].AsString:=qry.FieldByName('n_decl').AsString;
        DM.Sql.ExecQuery;
        DM.Sql.Transaction.Commit;
        Dm.Qry_ActOut.Close;
        Dm.Qry_ActOut.Open;
      except
        on E: EdatabaseError do
          begin
           DM.Sql.Transaction.Rollback;
           ShowMessage(E.Message);
          end;
      end;
  finally
    qry.Free;
    if DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
  end;
end;
procedure TMain_F.N11Click(Sender: TObject);
begin
 Warehouse_F.ShowModal;
end;
procedure TMain_F.N15Click(Sender: TObject);
var
 Id_Rec:Integer;
 s1:String;
begin
 if Application.MessageBox('Данные будут безвозвратно удалены.Продолжить?','Внимание',mb_IconWarning+mb_YesNo)= id_NO then Exit;
 Id_Rec:=Grid_GoodsOut.DataSource.DataSet.FieldByName('ID').asInteger;
 s1:='delete from goods_out where id = :p0 ';
 Dm.sql.Close;
 DM.sql.SQL.Clear;
 DM.sql.SQL.Add(s1);
try
 try
 if not DM.sql.Transaction.InTransaction then DM.sql.Transaction.StartTransaction; //start tran
  DM.sql.Params[0].AsInteger:=Id_rec;
  DM.sql.ExecQuery;
  DM.sql.Transaction.Commit;
  DM.Qry_GoodsOut.Close;
  DM.Qry_GoodsOut.Open;
 except
      on E: EdatabaseError do
        begin
         DM.Sql.Transaction.Rollback;
         ShowMessage(E.Message);
        end;
 end;
finally
 IF DM.Sql.Transaction.InTransaction then DM.Sql.Transaction.Rollback;
end;

end;

procedure TMain_F.PopMn_NotInReportClick(Sender: TObject);
var
  id_rec:Integer;
  Tempbookmark:TBookMark;
  x:word;
begin
  if Grid_Goods.SelectedRows.Count = 0 then
    begin
      Application.MessageBox('Не выбрано ни одной записи! Операция не выполнена','Внимание!',MB_OK+MB_ICONSTOP );
      Exit;
    end;
  try
    Grid_Goods.DataSource.DataSet.DisableControls;
    TempBookmark := Grid_Goods.DataSource.DataSet.GetBookmark;
       try
        for x := 0 to Grid_Goods.SelectedRows.Count - 1 do
          begin
            if Grid_Goods.SelectedRows.IndexOf(Grid_Goods.SelectedRows.Items[x]) > -1 then
                begin
                  Grid_Goods.DataSource.Dataset.Bookmark := Grid_Goods.SelectedRows.Items[x];
                  id_rec:=Grid_Goods.DataSource.DataSet.FieldByName('ID').asInteger;
                  if Grid_Goods.DataSource.DataSet.FieldByName('not_report').AsInteger <> 1 then SetNotInReportFlag(id_rec);
                end; //if
          end;
          ShowMessage('Выполнено');
       except
            Application.MessageBox('Ошибка записи данных','Внимание!',mb_OK+mb_iconstop);
            exit;
       end; // try . .except
  finally
    Grid_Goods.DataSource.DataSet.GotoBookmark(TempBookmark);
    Grid_Goods.DataSource.DataSet.FreeBookmark(TempBookmark);
    Grid_Goods.SelectedRows.Clear;
    Grid_Goods.DataSource.DataSet.EnableControls;
  end;
end;

procedure TMain_F.PopMn_InReportClick(Sender: TObject);
var
  id_rec:Integer;
  Tempbookmark:TBookMark;
  x:word;
begin
  if Grid_Goods.SelectedRows.Count = 0 then
    begin
      Application.MessageBox('Не выбрано ни одной записи! Операция не выполнена','Внимание!',MB_OK+MB_ICONSTOP );
      Exit;
    end;
  try
    TempBookmark := Grid_Goods.DataSource.DataSet.GetBookmark;
    Grid_Goods.DataSource.DataSet.DisableControls;
       try
        for x := 0 to Grid_Goods.SelectedRows.Count - 1 do
          begin
            if Grid_Goods.SelectedRows.IndexOf(Grid_Goods.SelectedRows.Items[x]) > -1 then
                begin
                  Grid_Goods.DataSource.Dataset.Bookmark := Grid_Goods.SelectedRows.Items[x];
                  id_rec:=Grid_Goods.DataSource.DataSet.FieldByName('ID').asInteger;
                  if Grid_Goods.DataSource.DataSet.FieldByName('not_report').AsInteger = 1 then SetInReportFlag(id_rec);
                end; //if
          end;
          ShowMessage('Выполнено');
       except
            Application.MessageBox('Ошибка записи данных','Внимание!',mb_OK+mb_iconstop);
            exit;
       end; // try . .except
  finally
    Grid_Goods.DataSource.DataSet.GotoBookmark(TempBookmark);
    Grid_Goods.DataSource.DataSet.FreeBookmark(TempBookmark);
    Grid_Goods.SelectedRows.Clear;
    Grid_Goods.DataSource.DataSet.EnableControls;
  end;

 end;

procedure TMain_F.PopMn_AllRecNotInReportClick(Sender: TObject);
begin
  if DM.Qry_NotInReport.Active then DM.Qry_NotInReport.Close;
  DM.Qry_NotInReport.Open;
  Reports_F.Rep1.LoadFromFile('not_inreport.fr3');
  Reports_F.Rep1.ShowProgress:=True;
  Reports_F.Rep1.ShowReport();
  DM.Qry_NotInReport.Close;
end;

procedure TMain_F.N221Click(Sender: TObject);
begin
  if SelectDates_F.ShowModal <> mrOk  then Exit;
  Reports_F.Qry_ReportPril3.Close;
  Reports_F.Qry_ReportPril3.Params[0].AsDate:=SelectDates_F.D1.Date;
  Reports_F.Qry_ReportPril3.Params[1].AsDate:=SelectDates_F.D1.Date;
  Reports_F.Qry_ReportPril3.Params[2].AsDate:=SelectDates_F.D2.Date;
  Reports_F.Qry_ReportPril3.Params[3].AsDate:=SelectDates_F.D1.Date;
  Reports_F.Qry_ReportPril3.Params[4].AsDate:=SelectDates_F.D2.Date;
  Reports_F.Qry_ReportPril3.Params[5].AsDate:=SelectDates_F.D1.Date;
  Reports_F.Qry_ReportPril3.Params[6].AsDate:=SelectDates_F.D2.Date;
  Reports_F.Qry_ReportPril3.Open;
//  Reports_F.ShowModal;
  Reports_F.Rep1.LoadFromFile('RepPrikaz33.fr3');
  Reports_F.Rep1.ShowProgress:=True;
  Reports_F.Rep1.ShowReport();
  SavePril3ToXML;
end;
procedure TMain_F.N8Click(Sender: TObject);
begin
  if SelectDates_F.ShowModal <> mrOk  then Exit;
  Reports_F.Qry_ReportPril3.Close;
  Reports_F.Qry_ReportPril3.Params[0].AsDate:=SelectDates_F.D1.Date;
  Reports_F.Qry_ReportPril3.Params[1].AsDate:=SelectDates_F.D2.Date;
  Reports_F.Qry_ReportPril3.Open;
  Reports_F.Rep1.LoadFromFile('RepPril3.fr3');
  Reports_F.Rep1.ShowProgress:=True;
  Reports_F.Rep1.ShowReport();
  SavePril3ToXML;
end;
procedure TMain_F.N9Click(Sender: TObject);
begin
  RegtiDisp_f.ShowMOdal;
end;
procedure TMain_F.tmp1Click(Sender: TObject);
begin
Form1.ShowModal;
end;
procedure TMain_F.Tov232_AExecute(Sender: TObject);
begin
  Sold_F.showmodal;
end;
end.

