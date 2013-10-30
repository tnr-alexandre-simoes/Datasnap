unit uManutencao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, DBActns, ActnList;

type
  TfrmManutencao = class(TForm)
    pnl_Botton: TPanel;
    pnl_1: TPanel;
    db_ClieId: TDBEdit;
    dbe_ClienNome: TDBEdit;
    db_ClienEndereco: TDBEdit;
    dbe_ClienCpf: TDBEdit;
    dbe_ClienTelefone: TDBEdit;
    lbl_1: TLabel;
    lbl_2: TLabel;
    lbl_3: TLabel;
    lbl_4: TLabel;
    lbl_5: TLabel;
    btn_grava: TBitBtn;
    btn_Cancela: TBitBtn;
    ActionList1: TActionList;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmManutencao: TfrmManutencao;

implementation

uses uDM;

{$R *.dfm}

procedure TfrmManutencao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
    begin
      DM.cds_Consulta.Cancel;
      Close;
    end;
end;

end.
