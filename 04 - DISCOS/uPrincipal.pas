unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmDisco = class(TForm)
    cboBanda: TComboBox;
    lblTitle: TLabel;
    btnAdcBanda: TButton;
    btnRemvBanda: TButton;
    altBanda: TButton;
    lbxResultado: TListBox;
    btnListBanda: TButton;
    btnVerDisco: TButton;
    btnInfo: TButton;
    btnSair: TButton;
    procedure btnAdcBandaClick(Sender: TObject);
    procedure btnInfoClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);

  private
    type
      TTipoMensagem = (Informacao, Alerta, Erro);

      const
        cNOME_SISTEMA = 'Controle de Discos';
        cVALOR_ZERO = 0;
        cVALOR_VAZIO = -1;

      var
        FQuantidadeRegistrosInseridos,
        FQuantidadeRegistrosExcluidos: integer;

        procedure ValidarInsercao;
        procedure ValidarExclusao;
        procedure ValidarLancamentoDuplicado;
        procedure AdicionarBanda;
        procedure RemoverBanda;

        procedure ExibirMensagem(pMensagem: string; pTipoMensagem: TTipoMensagem);
  public
    { Public declarations }

  end;

var
  frmDisco: TfrmDisco;


implementation

{$R *.dfm}

uses
  uCadastroBanda;

procedure TfrmDisco.AdicionarBanda;
begin
  lbxResultado.Items.Add(cboBanda.Text);
  cboBanda.ItemIndex := -1;
end;

procedure TfrmDisco.btnAdcBandaClick(Sender: TObject);
  begin
    ValidarInsercao;
    ValidarLancamentoDuplicado;
    AdicionarBanda;
    Inc(FQuantidadeRegistrosInseridos);
end;

procedure TfrmDisco.btnInfoClick(Sender: TObject);
begin
  ExibirMensagem('Informa��es: ' + #13 + #13 +
  'Total de Registros: ' + IntToStr(lbxResultado.Items.Count) + #13 +
  'Total de Lan�amentos: ' + IntToStr(FQuantidadeRegistrosInseridos) + #13 +
  'Total de Exclus�es: ' + IntToStr(FQuantidadeRegistrosExcluidos), Informacao);
end;

procedure TfrmDisco.btnRemoverClick(Sender: TObject);
begin
  ValidarExclusao;
  RemoverBanda;
  Inc(FQuantidadeRegistrosExcluidos);
end;

procedure TfrmDisco.btnSairClick(Sender: TObject);
begin
  Halt;
end;

//   try
//      Application.CreateForm(TfrmCadBanda, frmDisco);
//      frmCadBanda.ShowModal;
//    finally
//      FreeAndNill(frmCadBanda);
//    end;
//
//  end;

procedure TfrmDisco.ExibirMensagem(pMensagem: string;
  pTipoMensagem: TTipoMensagem);
begin
  case pTipoMensagem of
  Informacao: Application.MessageBox(PChar(pMensagem), PWideChar(cNOME_SISTEMA), MB_ICONINFORMATION);
  Alerta: Application.MessageBox(PChar(pMensagem), PWideChar(cNOME_SISTEMA), MB_ICONWARNING);
  Erro : Application.MessageBox(PChar(pMensagem), PWideChar(cNOME_SISTEMA), MB_ICONERROR);
  end;
end;

procedure TfrmDisco.RemoverBanda;
begin
  lbxResultado.Items.Delete(lbxResultado.ItemIndex);
end;

procedure TfrmDisco.ValidarExclusao;
begin
  if lbxResultado.Items.Count = cVALOR_ZERO then
  begin
    ExibirMensagem('N�o h� registros a serem exclu�dos.', Alerta);
    Abort;
  end;

  if lbxResultado.Items.Count = cVALOR_VAZIO then
  begin
    ExibirMensagem('Selecione a banda a ser removida.', Alerta);
  end;
end;

procedure TfrmDisco.ValidarInsercao;
begin
    if cboBanda.ItemIndex = cVALOR_VAZIO then
begin
  ExibirMensagem('Selecione a banda a ser adicionada.', Alerta);
  cboBanda.SetFocus;
  Abort;
end;
end;
procedure TfrmDisco.ValidarLancamentoDuplicado;
var
  i: integer;
begin
  for i:= cVALOR_ZERO to Pred(lbxResultado.Items.Count) do
  if lbxResultado.Items[i] = cboBanda.Text then
  begin
    ExibirMensagem('A banda "' + cboBanda.Text + '" j� foi adicionada.' + #13 +
      'A opera��o ser� cancelada.', Alerta);
      Abort;
  end;
end;
end.
