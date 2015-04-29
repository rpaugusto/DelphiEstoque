program PROVA;

uses
  Forms,
  untDesktop in 'untDesktop.pas' {frmDesktop},
  untPadraoCad in 'untPadraoCad.pas' {frmPadraoCad},
  untPesqCadPadrao in 'untPesqCadPadrao.pas' {frmPesqCadPadrao},
  untDM in 'untDM.pas' {dm: TDataModule},
  untPesqCadClientes in 'untPesqCadClientes.pas' {frmCadPesqClientes},
  untPesqCadFuncionario in 'untPesqCadFuncionario.pas' {frmPesqCadFuncionario},
  untSobre in 'untSobre.pas' {frmAjuda},
  untPedidos in 'untPedidos.pas' {frmPedido},
  untPesCadItens in 'untPesCadItens.pas' {frmPesqCadItens};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmCadPesqClientes, frmCadPesqClientes);
  Application.CreateForm(TfrmPesqCadItens, frmPesqCadItens);
  Application.Run;
end.
