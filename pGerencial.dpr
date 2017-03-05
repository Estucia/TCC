program pGerencial;

uses
  Vcl.Forms,
  uFormPrincipal in 'uFormPrincipal.pas' {frmPrincipal},
  uFormCadastroAlergias in 'uFormCadastroAlergias.pas' {frmAlergias},
  uDataModule in 'uDataModule.pas' {uDM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmAlergias, frmAlergias);
  Application.CreateForm(TuDM, uDM);
  Application.Run;
end.
