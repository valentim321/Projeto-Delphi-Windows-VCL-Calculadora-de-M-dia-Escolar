program Media;

uses
  Vcl.Forms,
  ProjetoMedia in 'ProjetoMedia.pas' {TfmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTfmPrincipal, TfmPrincipal);
  Application.Run;
end.
