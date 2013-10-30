program Client;

uses
  Forms,
  uClientConsulta in 'uClientConsulta.pas' {Form1},
  uDM in 'uDM.pas' {DM: TDataModule},
  uManutencao in 'uManutencao.pas' {frmManutencao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
