unit untDesktop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ToolWin, ComCtrls;

type
  TfrmDesktop = class(TForm)
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Pedidos1: TMenuItem;
    Relatoriosa1: TMenuItem;
    Clientes1: TMenuItem;
    Funcionarios1: TMenuItem;
    Novo1: TMenuItem;
    Clientes2: TMenuItem;
    Funcionrios1: TMenuItem;
    Pedidos2: TMenuItem;
    Ajuda1: TMenuItem;
    Sair1: TMenuItem;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDesktop: TfrmDesktop;

implementation

{$R *.dfm}

procedure TfrmDesktop.Sair1Click(Sender: TObject);
begin

  Application.Terminate;

end;

end.
