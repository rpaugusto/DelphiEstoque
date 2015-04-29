unit untPesqCadPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ActnList, ImgList, Buttons, ExtCtrls, DB, Grids,
  DBGrids, StdCtrls;

type
  TfrmPesqCadPadrao = class(TForm)
    pgPadrao: TPageControl;
    StatusBar1: TStatusBar;
    pgPesquisa: TTabSheet;
    pgCadastro: TTabSheet;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    dsP: TDataSource;
    Panel1: TPanel;
    btnNovo: TSpeedButton;
    btnEditar: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnBuscar: TSpeedButton;
    btnImprimir: TSpeedButton;
    btnFechar: TSpeedButton;
    ActionList1: TActionList;
    ImageList1: TImageList;
    actNovo: TAction;
    actEditar: TAction;
    actSalvar: TAction;
    actCancelar: TAction;
    actExcluir: TAction;
    actBuscar: TAction;
    actImprimir: TAction;
    actSair: TAction;
    cbBusca: TComboBox;
    edtBusca: TEdit;
    btnPesquisa: TBitBtn;
    procedure AtivarControles(Ativar:Boolean);
    procedure actSairExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actBuscarExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqCadPadrao: TfrmPesqCadPadrao;

implementation

{$R *.dfm}

procedure TfrmPesqCadPadrao.AtivarControles(Ativar: Boolean);
begin

  btnNovo.Enabled     := (not Ativar);
  btnEditar.Enabled   := (not Ativar);
  btnExcluir.Enabled  := (not Ativar);
  btnSalvar.Enabled   := Ativar;
  btnCancelar.Enabled := Ativar;

end;

procedure TfrmPesqCadPadrao.actSairExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmPesqCadPadrao.actNovoExecute(Sender: TObject);
begin

  dsP.DataSet.Open;

  //chama a procedure ativar controles
  AtivarControles(true);

  //coloca o dataset no modo de inserção
  dsP.DataSet.Append;
  
end;

procedure TfrmPesqCadPadrao.actEditarExecute(Sender: TObject);
begin
  //verifica se existe informação a ser editada
  if dsP.DataSet.IsEmpty then
    begin
      btnNovo.Click; {chama a função click do botão}
      exit;
    end
  else
    begin
      AtivarControles(True);
      dsP.DataSet.Edit;
    end;

end;

procedure TfrmPesqCadPadrao.actSalvarExecute(Sender: TObject);
begin

  //verifica se esta no ato de inserção ou edição
  if dsP.DataSet.State in [dsInsert, dsEdit] then
    dsP.DataSet.Post;
  AtivarControles(False);

end;

procedure TfrmPesqCadPadrao.actCancelarExecute(Sender: TObject);
begin

  dsP.DataSet.Cancel;
  AtivarControles(false);

end;

procedure TfrmPesqCadPadrao.actExcluirExecute(Sender: TObject);
begin

  if Application.MessageBox('DESEJA DELETAR ESTE REGISTRO?','CONFIRME',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = IDNO then
    exit;
  try
    dsP.DataSet.Delete;
  except
    ShowMessage('OCORREU UM ERRO AO DELETAR O REGISTRO');
  end;

end;

procedure TfrmPesqCadPadrao.actBuscarExecute(Sender: TObject);
begin

  pgPadrao.TabIndex := 0;

end;

procedure TfrmPesqCadPadrao.actImprimirExecute(Sender: TObject);
begin
  //comando para imprimir a ficha
end;

end.
