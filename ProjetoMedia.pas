unit ProjetoMedia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TTfmPrincipal = class(TForm)
    pnlgeral: TPanel;
    lblNota1: TLabel;
    lblNota2: TLabel;
    lblNota3: TLabel;
    lblSituacao: TLabel;
    edtNota1: TEdit;
    edtNota2: TEdit;
    edtNota3: TEdit;
    btnCalcular: TButton;
    lblMediafinal: TLabel;
    procedure btnCalcularClick(Sender: TObject);
    procedure edtNotaKeyPress(Sender: TObject; var Key: Char);
  private
    function CalcularMedia(N1, N2, N3: Double): Double;
    function VerificarSituacao(Nota: Double): string;
    function ValidarNotas(out N1, N2, N3: Double): Boolean;
  public
  end;

var
  TfmPrincipal: TTfmPrincipal;

implementation

{$R *.dfm}

procedure TTfmPrincipal.btnCalcularClick(Sender: TObject);
var
  Nota1, Nota2, Nota3, Media: Double;
begin
  if not ValidarNotas(Nota1, Nota2, Nota3) then
  Exit;

  Media := CalcularMedia(Nota1, Nota2, Nota3);

  lblMediafinal.Caption := 'Média: ' + FormatFloat('0.00', Media);
  lblSituacao.Caption := 'Situação: ' + VerificarSituacao(Media);
end;


function TTfmPrincipal.CalcularMedia(N1, N2, N3: Double): Double;
begin
  Result := (N1 + N2 + N3) / 3;
end;

procedure TTfmPrincipal.edtNotaKeyPress(Sender: TObject; var Key: Char);
begin
begin
  if Key = #13 then
  begin
    Key := #0;
    SelectNext(TWinControl(Sender), True, True);
  end;
  if not CharInSet(Key, ['0'..'9', ',', '.', #8]) then
    Key := #0;
end;
end;

function TTfmPrincipal.VerificarSituacao(Nota: Double): string;
begin
  if Nota >= 7 then
    Result := 'Aprovado'
  else if Nota < 5 then
    Result := 'Reprovado'
  else
    Result := 'Recuperação';
end;


function TTfmPrincipal.ValidarNotas(out N1, N2, N3: Double): Boolean;
begin
  Result := False;

  if (Trim(edtNota1.Text) = '') or (Trim(edtNota2.Text) = '') or (Trim(edtNota3.Text) = '') then
  begin
    ShowMessage('Preencha os três números.');
    Exit;
  end;

  if not TryStrToFloat(edtNota1.Text, N1) then
  begin
    ShowMessage('O valor da primeira nota não é válido.');
    Exit;
  end;

  if not TryStrToFloat(edtNota2.Text, N2) then
  begin
    ShowMessage('O valor da segunda nota não é válido.');
    Exit;
  end;

  if not TryStrToFloat(edtNota3.Text, N3) then
  begin
    ShowMessage('O valor da terceira nota não é válido.');
    Exit;
  end;


  if (N1 < 0) or (N1 > 10) then
  begin
    ShowMessage('A primeira nota precisa ser um número entre 0 e 10.');
    Exit;
  end;

  if (N2 < 0) or (N2 > 10) then
  begin
    ShowMessage('A segunda nota precisa ser um número entre 0 e 10.');
    Exit;
  end;

  if (N3 < 0) or (N3 > 10) then
  begin
    ShowMessage('A terceira nota precisa ser um número entre 0 e 10.');
    Exit;
  end;

  Result := True;
end;


end.

