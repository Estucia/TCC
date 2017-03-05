unit uTelaSalvar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, dxGDIPlusClasses,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    mmo1: TMemo;
    btn1: TButton;
    procedure FormShow(Sender: TObject);
    procedure img1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
  pnl1.Left := (Self.Width - pnl1.Width)div 2;
  pnl1.Top := (Self.Height - pnl1.Height)div 2;
end;

procedure TForm1.img1Click(Sender: TObject);
begin
  Close;
end;

end.
