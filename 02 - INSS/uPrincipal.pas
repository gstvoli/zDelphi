unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    pnlPrincipal: TPanel;
    btnCalcular: TButton;
    Label1: TLabel;
    EdtSalario: TEdit;
    procedure btnCalcularClick(Sender: TObject);
    procedure EdtSalarioKeyPress(Sender: TObject; var Key: Char);
  private
    const
      ALIQUOTA_INSS = 0.11;

    procedure ValidarCampos();
    function CalcularSalarioLiquido(pSalarioBruto: Real) : Real;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnCalcularClick(Sender: TObject);
var
  lSalarioLiquido: Real;
begin
  ValidarCampos();
  lSalarioLiquido := CalcularSalarioLiquido(StrToFloat(edtSalario.Text));
  ShowMessage('O sal�rio l�quido � ' + FloatToStr(lSalarioLiquido));
end;

function TForm2.CalcularSalarioLiquido(pSalarioBruto: Real): Real;
begin
  Result := pSalarioBruto - (pSalarioBruto * ALIQUOTA_INSS);
end;

procedure TForm2.EdtSalarioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then

end;

procedure TForm2.ValidarCampos;
begin
 if edtSalario.Text = '' then
 begin
   ShowMessage('Informe o sal�rio!');
   edtSalario.SetFocus;
   Abort;
 end;
end;

end.
