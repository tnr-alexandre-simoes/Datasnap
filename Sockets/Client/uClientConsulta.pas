unit uClientConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  DBClient, DBCtrls, JvDBControls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  ExtCtrls, RLReport;

type
  TForm1 = class(TForm)
    pnl_Top: TPanel;
    pnl_Central: TPanel;
    pnl_Botton: TPanel;
    rg_OpcaoConsulta: TRadioGroup;
    edt_Busca: TEdit;
    lbl_1: TLabel;
    btn_Pesquisar: TButton;
    grdTbl_Grid1DBTableView1: TcxGridDBTableView;
    cxgrdl_ConsultaGrid1Level1: TcxGridLevel;
    grd_1: TcxGrid;
    col_Tbl_Grid1DBTableView1Column1: TcxGridDBColumn;
    col_Tbl_Grid1DBTableView1Column2: TcxGridDBColumn;
    col_Tbl_Grid1DBTableView1Column3: TcxGridDBColumn;
    col_Tbl_Grid1DBTableView1Column4: TcxGridDBColumn;
    col_Tbl_Grid1DBTableView1Column5: TcxGridDBColumn;
    Button1: TButton;
    lbl_Informe: TLabel;
    btn_Imprimir: TButton;
    RLReport1: TRLReport;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLBand1: TRLBand;
    RLLabel2: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel3: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel4: TRLLabel;
    procedure FormCreate(Sender: TObject);
    procedure btn_PesquisarClick(Sender: TObject);
    procedure edt_BuscaKeyPress(Sender: TObject; var Key: Char);
    procedure edt_BuscaEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdTbl_Grid1DBTableView1DblClick(Sender: TObject);
    procedure ChamaForm(TFrml: TFormClass; Frml: TForm );
    procedure grdTbl_Grid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure btn_ImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses uDM, uManutencao;

{$R *.dfm}

procedure TForm1.btn_ImprimirClick(Sender: TObject);
begin
  RLReport1.Preview();
end;

procedure TForm1.btn_PesquisarClick(Sender: TObject);
begin
  with DM.cds_Consulta do
    begin
      Close;
      case rg_OpcaoConsulta.ItemIndex of
          0:begin
              Params.ParamByName('prmBusca').Value:=Trim(edt_Busca.Text);
              CommandText:='SELECT * FROM CLIENTES WHERE ID = :prmBusca'
            end;
          1:begin
              Params.ParamByName('prmBusca').Value:=Trim(edt_Busca.Text)+'%';
              CommandText:='SELECT * FROM CLIENTES WHERE NOME LIKE :prmBusca';
            end;
      end;
      Open;

      if recordcount > 0 then
         begin
           lbl_Informe.Caption:='Existe(m) '+IntToStr(recordcount)+' registro(s)';
           grd_1.SetFocus;
         end
      else
         begin
           ShowMessage('N�o existe registro com estes parametros !!!');
           edt_Busca.SetFocus;
         end;
    end;
end;

procedure TForm1.edt_BuscaEnter(Sender: TObject);
begin
  edt_Busca.Clear;
end;

procedure TForm1.edt_BuscaKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    btn_Pesquisar.Click;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  DM.cds_Consulta.Params.CreateParam(ftString,'PrmBusca',ptInput);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  edt_Busca.SetFocus;
end;

procedure TForm1.grdTbl_Grid1DBTableView1DblClick(Sender: TObject);
begin
  ChamaForm(TfrmManutencao, frmManutencao);
end;

procedure TForm1.grdTbl_Grid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
   ChamaForm(TfrmManutencao, frmManutencao);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
   DM.cds_Consulta.Insert; 
   ChamaForm(TfrmManutencao, frmManutencao);
end;

procedure tform1.ChamaForm(TFrml: TFormClass; Frml: TForm );
  begin
    try
      if not Assigned( Frml ) then
        Frml := TFrml.Create(nil);
      Frml.ShowModal;
    finally
      Frml.Free;
      Frml := nil;
    end;
  end;
end.
