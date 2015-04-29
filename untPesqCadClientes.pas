unit untPesqCadClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untPesqCadPadrao, ImgList, ActnList, DB, ComCtrls, Buttons,
  ExtCtrls, Grids, DBGrids, StdCtrls, Mask, DBCtrls, QRCtrls, QuickRpt;

type
  TfrmCadPesqClientes = class(TfrmPesqCadPadrao)
    Label1: TLabel;
    edtId: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    btnPesquisar: TSpeedButton;
    qrFicha: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    procedure btnPesquisarClick(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadPesqClientes: TfrmCadPesqClientes;

implementation

uses untDM, ADODB;

{$R *.dfm}

procedure TfrmCadPesqClientes.btnPesquisarClick(Sender: TObject);
begin
  inherited;

  With dm.qClientes do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT *  FROM clientes');
      if (cbBusca.ItemIndex = 0) then
        begin
          SQL.Add('where nome LIKE :pNome ');
          Parameters.ParamByName('pNome').Value := edtBusca.Text + '%';
        end
      else if (cbBusca.ItemIndex = 1) then
        begin
          SQL.Add('where cpf = :pNome ');
          Parameters.ParamByName('pNome').Value := StrToInt(edtBusca.Text);
        end
      else
        begin
          ShowMessage('Nenhuma condição para busca selecionada, listado dos os registros!');
          close;
        end;
      Open;
    end;

end;

procedure TfrmCadPesqClientes.actImprimirExecute(Sender: TObject);
var
  id : Integer;

begin
  inherited;
  if edtId.Text = '' then
    MessageDlg('Nenhum Cadastro Selecionado!', mtInformation, [mbOK],0)
  else
    begin
      id := StrToInt(edtId.Text);

      WITH dm.qClientes DO
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT *  FROM clientes');
          SQL.Add('WHERE id = :pId');
          Parameters.ParamByName('pId').Value := id;
          Open;
        end;
      qrFicha.Preview;
    end;



end;

procedure TfrmCadPesqClientes.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  pgPadrao.TabIndex := 1;
end;

end.
