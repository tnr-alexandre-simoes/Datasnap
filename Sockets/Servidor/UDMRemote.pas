// teste do git
unit UDMRemote;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, servidorTeste_TLB, StdVcl, FMTBcd, Provider, DB, SqlExpr;

type
  TConsulta = class(TRemoteDataModule, IConsulta)
    sds_Consulta: TSQLDataSet;
    dsp_Consulta: TDataSetProvider;
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
  public
    { Public declarations }
  end;

implementation

uses UServer;

{$R *.DFM}

class procedure TConsulta.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
begin
  if Register then
  begin
    inherited UpdateRegistry(Register, ClassID, ProgID);
    EnableSocketTransport(ClassID);
    EnableWebTransport(ClassID);
  end else
  begin
    DisableSocketTransport(ClassID);
    DisableWebTransport(ClassID);
    inherited UpdateRegistry(Register, ClassID, ProgID);
  end;
end;

initialization
  TComponentFactory.Create(ComServer, TConsulta,
    Class_Consulta, ciMultiInstance, tmSingle);
end.
