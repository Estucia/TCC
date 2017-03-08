unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmLogin = class(TForm)
    img1: TImage;
    edtSenha: TEdit;
    img2: TImage;
    img3: TImage;
    img4: TImage;
    edtUsuario: TEdit;
    FDQuery: TFDQuery;
    procedure img2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses
  uDataModule, uFormPrincipal;

{$R *.dfm}

procedure TfrmLogin.img2Click(Sender: TObject);
  var nTentativas : Integer;
begin
  nTentativas := 0;
  if nTentativas = 3 then
  begin
    //img2Click.Enabled := False;
    ShowMessage('Número máximo de tentativas');
  end
  else
    if(edtUsuario.Text = FDQuery.FieldByName('USUARIO').AsString) and
      (edtSenha.Text = FDQuery.FieldByName('SENHA').AsString) then
    begin
      frmLogin.Hide;
      frmPrincipal.Show;
    end
    else
    begin
      nTentativas := nTentativas + 1;
      MessageDlg('Informações incorretas!', mtError, [mbOK],0);
     end;
end;

end.
