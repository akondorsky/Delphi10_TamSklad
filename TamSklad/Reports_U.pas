unit Reports_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, IBCustomDataSet, IBQuery, frxExportXLS,
  frxExportPDF, frxExportBaseDialog, Vcl.Grids, Vcl.DBGrids;

type
  TReports_F = class(TForm)
    Qry_ReportPril3: TIBQuery;
    Rep1: TfrxReport;
    frxDBRepPril3: TfrxDBDataset;
    frxDBD_QryRepActIn: TfrxDBDataset;
    Qry_RepActIn: TIBQuery;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxDB_RepActOut: TfrxDBDataset;
    Qry_ActOut: TIBQuery;
    frxDB_QryNotInReport: TfrxDBDataset;
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  Reports_F: TReports_F;

implementation

{$R *.dfm}
 uses data,main,myutils;
{ TReports_F }


end.

{

}
