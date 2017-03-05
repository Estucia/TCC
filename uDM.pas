unit uDM;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, Data.SqlExpr, Data.DBXFirebird;

type
  TdmConn = class(TDataModule)
    sqlCon: TSQLConnection;
    qrConn: TSQLQuery;
    dspConn: TDataSetProvider;
    dsConn: TClientDataSet;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmConn: TdmConn;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmConn.DataModuleDestroy(Sender: TObject);
begin
  if sqlCon.Connected then
    sqlCon.Close;
end;

end.
