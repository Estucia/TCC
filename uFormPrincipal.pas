unit uFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  dxGDIPlusClasses;

type
  TfrmPrincipal = class(TForm)
    btnAlergias: TButton;
    img1: TImage;
    img2: TImage;
    img3: TImage;
    img4: TImage;
    img5: TImage;
    img6: TImage;
    lbl1: TLabel;
    pnl1: TPanel;
    img7: TImage;
    procedure btnAlergiasClick(Sender: TObject);
    procedure img7Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  uFormCadastroAlergias, uDataModule;

{$R *.dfm}

procedure TfrmPrincipal.btnAlergiasClick(Sender: TObject);
begin
frmAlergias := TfrmAlergias.Create(nil);
  try
    frmAlergias.ShowModal;
  finally
    FreeAndNil(frmAlergias);
  end;
end;
procedure TfrmPrincipal.img7Click(Sender: TObject);
begin
  Close;
end;

end.
