unit uDM;

interface

uses
  SysUtils, Classes, MConnect, DB, DBClient, SConnect;

type
  TDM = class(TDataModule)
    conTeste: TSocketConnection;
    cds_Consulta: TClientDataSet;
    ds_Consulta: TDataSource;
    cds_Consultaid: TIntegerField;
    cds_Consultanome: TStringField;
    cds_Consultacpf: TStringField;
    cds_Consultaendereco: TStringField;
    cds_Consultatelefone: TStringField;
    cds_Eventos: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
