program servidorTeste;

uses
  Forms,
  UServer in 'UServer.pas' {FrmServer},
  servidorTeste_TLB in 'servidorTeste_TLB.pas',
  UDMRemote in 'UDMRemote.pas' {Consulta: TRemoteDataModule} {Consulta: CoClass};

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmServer, FrmServer);
  Application.Run;
end.
