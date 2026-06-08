program FolhaDePagamento;

uses
  Forms,
  uFolhaDePagamento in 'uFolhaDePagamento.pas' {frFolhaDePagamento};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrFolhaDePagamento, frFolhaDePagamento);
  Application.Run;
end.
