unit untPesCadItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untPesqCadPadrao, Mask, DBCtrls, StdCtrls, ImgList, ActnList,
  DB, ComCtrls, Buttons, ExtCtrls, Grids, DBGrids;

type
  TfrmPesqCadItens = class(TfrmPesqCadPadrao)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqCadItens: TfrmPesqCadItens;

implementation

uses untDM;

{$R *.dfm}

end.
