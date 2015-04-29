unit untPadraoCad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ActnList, DB, ExtCtrls, ComCtrls, Buttons, XPMAN;

type
  TfrmPadraoCad = class(TForm)
    stb: TStatusBar;
    plMenu: TPanel;
    dsP: TDataSource;
    actList: TActionList;
    imgList: TImageList;
    btnNovo: TSpeedButton;
    btnEditar: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnDeletar: TSpeedButton;
    btnBuscar: TSpeedButton;
    btnImprimir: TSpeedButton;
    btnVoltar: TSpeedButton;
    actNovo: TAction;
    actEditar: TAction;
    actSalvar: TAction;
    actCancelar: TAction;
    actDeletar: TAction;
    actBuscar: TAction;
    actImprimir: TAction;
    actVoltar: TAction;
    Panel1: TPanel;
    procedure AtivarControles(Ativar:Boolean);
    procedure actNovoExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actDeletarExecute(Sender: TObject);
    procedure actBuscarExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure actVoltarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPadraoCad: TfrmPadraoCad;

implementation

{$R *.dfm}

{ TfrmPadraoCad }

procedure TfrmPadraoCad.AtivarControles(Ativar: Boolean);
begin

  btnNovo.Enabled     := (not Ativar);
  btnEditar.Enabled   := (not Ativar);
  btnDeletar.Enabled  := (not Ativar);
  btnSalvar.Enabled   := Ativar;
  btnCancelar.Enabled := Ativar;

end;

procedure TfrmPadraoCad.actNovoExecute(Sender: TObject);
begin

  //dsP.DataSet.Open;

  //chama a procedure ativar controles
  AtivarControles(true);

  //coloca o dataset no modo de inserção
  dsP.DataSet.Append;

end;

procedure TfrmPadraoCad.actEditarExecute(Sender: TObject);
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

procedure TfrmPadraoCad.actSalvarExecute(Sender: TObject);
begin

  //verifica se esta no ato de inserção ou edição
  if dsP.DataSet.State in [dsInsert, dsEdit] then
    dsP.DataSet.Post;
  AtivarControles(False);

end;

procedure TfrmPadraoCad.actCancelarExecute(Sender: TObject);
begin

  dsP.DataSet.Cancel;
  AtivarControles(false);

end;

procedure TfrmPadraoCad.actDeletarExecute(Sender: TObject);
begin

  if Application.MessageBox('DESEJA DELETAR ESTE REGISTRO?','CONFIRME',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = IDNO then
    exit;
  try
    dsP.DataSet.Delete;
  except
    ShowMessage('OCORREU UM ERRO AO DELETAR O REGISTRO');
  end;

end;

procedure TfrmPadraoCad.actBuscarExecute(Sender: TObject);
begin
  //comando não herdado
end;

procedure TfrmPadraoCad.actImprimirExecute(Sender: TObject);
begin
    //comando não herdado
end;

procedure TfrmPadraoCad.actVoltarExecute(Sender: TObject);
begin
  Close;
end;

end.
