unit UServer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, MidasLib, SwSystem, DB, DBClient, DateUtils,
  WideStrings, SqlExpr, Menus, Grids, DBGrids;

type
  TFrmServer = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    LbData: TLabel;
    LbHora: TLabel;
    LbConexoes: TLabel;
    Timer1: TTimer;
    BtDerrubarServer: TButton;
    TrayIcon1: TTrayIcon;
    PopupMenu1: TPopupMenu;
    Derrubar1: TMenuItem;
    Maximizar1: TMenuItem;
    Minimizar1: TMenuItem;
    conTeste: TSQLConnection;
    procedure Timer1Timer(Sender: TObject);
    procedure BtDerrubarServerClick(Sender: TObject);
  private
    nConexoes      : Integer;
  public
    procedure CriaConexao; stdcall;
    procedure RemoveConexao; stdcall;
    function GetModoProducao : Boolean; stdcall;
  end;

var
  FrmServer: TFrmServer;

implementation

uses UDMRemote;


{$R *.dfm}

procedure TFrmServer.BtDerrubarServerClick(Sender: TObject);
begin
  Halt;
end;

procedure TFrmServer.CriaConexao;
begin
  nConexoes := nConexoes + 1;
end;

function TFrmServer.GetModoProducao: Boolean;
begin

end;

procedure TFrmServer.RemoveConexao;
begin
  nConexoes := nConexoes - 1;
end;

procedure TFrmServer.Timer1Timer(Sender: TObject);
begin
  LbData.Caption     := FormatDateTime('dd/mm/yyyy', Date);
  LbHora.Caption     := FormatDateTime('hh:mm:ss', Time);
  LbConexoes.Caption := IntToStr(nConexoes);
end;

end.
