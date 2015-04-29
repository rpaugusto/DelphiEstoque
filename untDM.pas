unit untDM;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  Tdm = class(TDataModule)
    conecta: TADOConnection;
    qClientes: TADOQuery;
    qClientesid: TAutoIncField;
    qClientesnome: TStringField;
    qClientescpf: TStringField;
    qClientesrg: TStringField;
    qClientessexo: TStringField;
    qClientesendereco: TStringField;
    qClientescidade: TStringField;
    qClientesuf: TStringField;
    qClientesrenda: TBCDField;
    qClientescadastro: TDateTimeField;
    qClientestipo_id: TIntegerField;
    qFuncionarios: TADOQuery;
    qFuncionariosid: TAutoIncField;
    qFuncionariosnome: TStringField;
    qFuncionarioscadastro: TDateTimeField;
    qFuncionariossexo: TStringField;
    qFuncionariossalario: TBCDField;
    qFuncionariosendereco: TStringField;
    qFuncionarioscpf: TStringField;
    qPedidos: TADOQuery;
    qPedidosnome: TStringField;
    qPedidosdia: TDateTimeField;
    qPedidosvalor: TBCDField;
    qItens: TADOQuery;
    qItensid: TAutoIncField;
    qItensnome: TStringField;
    qItensvalor: TBCDField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
begin

      {conecta.Connected         := False;
      conecta.ConnectionString  := 'FILENAME='+ ExtractFilePath()
                                    +'conexao.udl'; }
       conecta.Connected        := True;

end;

end.
