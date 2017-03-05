unit uFormCadastroAlergias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Datasnap.Provider, Datasnap.DBClient, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxContainer, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, dxGDIPlusClasses,
  Vcl.ExtCtrls;

type
  TfrmAlergias = class(TForm)
    lblCodigo: TLabel;
    lblNome: TLabel;
    DataSource: TDataSource;
    FDQuery: TFDQuery;
    ClientDataSet: TClientDataSet;
    DataSetProvider: TDataSetProvider;
    TIntegerFieldClientDataSetCODALERGIA: TIntegerField;
    TStringFieldClientDataSetNOME: TStringField;
    TStringFieldClientDataSetDESCRICAO: TStringField;
    tcxDBNome: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    tcxDBCodigo: TcxDBSpinEdit;
    lbl1: TLabel;
    pnl1: TPanel;
    pnl2: TPanel;
    img4: TImage;
    img5: TImage;
    img6: TImage;
    img7: TImage;
    img8: TImage;
    img1: TImage;
    procedure btnIncluirClick(Sender: TObject);
    procedure PreencherCampos;
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure img1Click(Sender: TObject);
    procedure img3Click(Sender: TObject);
    procedure img6Click(Sender: TObject);
    procedure img5Click(Sender: TObject);
    procedure img4Click(Sender: TObject);
    procedure img7Click(Sender: TObject);
    procedure img8Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAlergias: TfrmAlergias;

implementation

uses
  uFormPrincipal, uDataModule, uTelaSalvar;

{$R *.dfm}

procedure TfrmAlergias.btnCancelarClick(Sender: TObject);
begin
  ClientDataSet.CancelUpdates;
end;

procedure TfrmAlergias.btnEditarClick(Sender: TObject);
begin
  ClientDataSet.Edit;
end;

procedure TfrmAlergias.btnExcluirClick(Sender: TObject);
begin
  ClientDataSet.Edit;
  if DataSource.State in [dsBrowse, dsEdit] then
  begin
    ClientDataSet.Delete;
  end;

end;

procedure TfrmAlergias.btnIncluirClick(Sender: TObject);
begin
  tcxDBCodigo.Enabled := True;
  ClientDataSet.Open;
  ClientDataSet.Append;
end;

procedure TfrmAlergias.img1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmAlergias.img3Click(Sender: TObject);
begin
  ClientDataSet.Edit;
end;

procedure TfrmAlergias.img4Click(Sender: TObject);
begin
  if DataSource.State in [dsBrowse, dsEdit, dsInsert] then
  begin
    ClientDataSet.Post;
  end;
    //Form1.ShowModal;
end;

procedure TfrmAlergias.img5Click(Sender: TObject);
begin
  ClientDataSet.Edit;
  if DataSource.State in [dsBrowse, dsEdit] then
  begin
    ClientDataSet.Delete;
  end;
end;

procedure TfrmAlergias.img6Click(Sender: TObject);
begin
  tcxDBCodigo.Enabled := True;
  ClientDataSet.Open;
  ClientDataSet.Append;
end;

procedure TfrmAlergias.img7Click(Sender: TObject);
begin
  ClientDataSet.Edit;
end;

procedure TfrmAlergias.img8Click(Sender: TObject);
begin
  ClientDataSet.Cancel;
end;

procedure TfrmAlergias.PreencherCampos;
begin
  tcxDBCodigo.Text := TIntegerFieldClientDataSetCODALERGIA.AsString;
  tcxDBNome.Text := TStringFieldClientDataSetNOME.AsString;
end;

end.
