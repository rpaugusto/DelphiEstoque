unit untPesqCadFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untPesqCadPadrao, StdCtrls, Buttons, ImgList, ActnList, DB,
  ComCtrls, ExtCtrls, Grids, DBGrids, Mask, DBCtrls;

type
  TfrmPesqCadFuncionario = class(TfrmPesqCadPadrao)
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
    GroupBox3: TGroupBox;
    DBGrid2: TDBGrid;
    dsA: TDataSource;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqCadFuncionario: TfrmPesqCadFuncionario;

implementation

uses untDM, ADODB;

{$R *.dfm}

procedure TfrmPesqCadFuncionario.DBGrid1CellClick(Column: TColumn);
var
  id : integer;
begin
  inherited;

  pgPadrao.TabIndex := 1;

  id :=  StrToInt(edtId.Text);

  with dm.qPedidos do
    begin
      Close;
      SQL.Add('WHERE p.funcionario_id = :pFunId');
      Parameters.ParamByName('pFunId').Value := id;
      Open;
    end;
end;
procedure TfrmPesqCadFuncionario.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  with dm.qFuncionarios do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT *  FROM funcionarios');
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

end.
