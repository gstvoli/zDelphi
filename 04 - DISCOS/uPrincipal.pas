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
    ListBox1: TListBox;
    btnListBanda: TButton;
    btnVerDisco: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDisco: TfrmDisco;

implementation

{$R *.dfm}


end.