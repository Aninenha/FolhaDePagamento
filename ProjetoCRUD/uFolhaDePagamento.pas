unit uFolhaDePagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, DBClient;

type
  TfrFolhaDePagamento = class(TForm)
    gbFuncionario: TGroupBox;
    lbNomeGbFuncionario: TLabel;
    cbNomeGbFuncionario: TComboBox;
    lbCargoGbFuncionario: TLabel;
    edCargoGbFuncionario: TEdit;
    btCadastrarGbFuncionario: TButton;
    gbProventos: TGroupBox;
    gbDescontos: TGroupBox;
    lbSalarioBaseGbProventos: TLabel;
    lbHorasExtrasGbProventos: TLabel;
    lbOutrosGbProventos: TLabel;
    lbTotalGbProventos: TLabel;
    edSalarioBaseGbProventos: TEdit;
    edHorasExtrasGbProventos: TEdit;
    edOutrosGbProventos: TEdit;
    edTotalGbProventos: TEdit;
    lbTotalGbDescontos: TLabel;
    edTotalGbDescontos: TEdit;
    edValeTransporteGbDescontos: TEdit;
    lbValeTransporteGbDescontos: TLabel;
    lbIRRFGbDescontos: TLabel;
    edIRRFGbDescontos: TEdit;
    edINSSGbDescontos: TEdit;
    lbINSSGbDescontos: TLabel;
    gbResultado: TGroupBox;
    lbTotalProventosGbResultado: TLabel;
    lbTotalDescontosGbResultado: TLabel;
    lbSalarioLiquidoGbResultado: TLabel;
    edTotalProventosGbResultado: TEdit;
    edTotalDescontosGbResultado: TEdit;
    edSalarioLiquidoGbResultado: TEdit;
    btCalcular: TButton;
    btSalvar: TButton;
    btLimpar: TButton;
    btConsultarGbFuncionario: TButton;
    dsFolhaDePagamentos: TDataSource;
    grFolhaDePagamentos: TDBGrid;
    cdsCadastroDeFuncionarios: TClientDataSet;
    dsCadastroDeFuncionarios: TDataSource;
    pnCadastroDeFuncionarios: TPanel;
    lbCadastroDeFuncionariosPnCadastroDeFuncionarios: TLabel;
    lbCodigoPnCadastroDeFuncionarios: TLabel;
    lbNomePnCadastroDeFuncionarios: TLabel;
    lbCargoPnCadastroDeFuncionarios: TLabel;
    lbEnderecoPnCadastroDeFuncionarios: TLabel;
    lbTelefonePnCadastroDeFuncionarios: TLabel;
    btSalvarPnCadastroDeFuncionarios: TButton;
    btFecharPnCadastroDeFuncionarios: TButton;
    edCodigoPnCadastroDeFuncionarios: TEdit;
    edNomePnCadastroDeFuncionarios: TEdit;
    edEnderecoPnCadastroDeFuncionarios: TEdit;
    edTelefonePnCadastroDeFuncionarios: TEdit;
    cbCargoPnCadastroDeFuncionarios: TComboBox;
    cdsCadastroDeFuncionariosbdCODIGO: TIntegerField;
    cdsCadastroDeFuncionariosbdNOME: TStringField;
    cdsCadastroDeFuncionariosbdCARGO: TIntegerField;
    cdsCadastroDeFuncionariosbdENDERECO: TStringField;
    cdsCadastroDeFuncionariosbdTELEFONE: TStringField;
    btConsultarTabela: TButton;
    lbMes: TLabel;
    cbMesGbFuncionario: TComboBox;
    lbAno: TLabel;
    cbAnoGbFuncionario: TComboBox;
    btDelete: TButton;
    cdsFolhaDePagamentos: TClientDataSet;
    cdsFolhaDePagamentosbdCODIGOFOLHA: TIntegerField;
    cdsFolhaDePagamentosbdNOME: TStringField;
    cdsFolhaDePagamentosbdCODIGO: TIntegerField;
    cdsFolhaDePagamentosbdCARGO: TStringField;
    cdsFolhaDePagamentosbdSALARIOBASE: TCurrencyField;
    cdsFolhaDePagamentosbdHORASEXTRAS: TCurrencyField;
    cdsFolhaDePagamentosbdOUTROS: TCurrencyField;
    cdsFolhaDePagamentosbdTOTALPROVENTOS: TCurrencyField;
    cdsFolhaDePagamentosbdINSS: TCurrencyField;
    cdsFolhaDePagamentosbdIRRF: TCurrencyField;
    cdsFolhaDePagamentosbdVALETRANSPORTE: TCurrencyField;
    cdsFolhaDePagamentosbdTOTALDESCONTOS: TCurrencyField;
    cdsFolhaDePagamentosbdSALARIOLIQUIDO: TCurrencyField;
    cdsFolhaDePagamentosbdMES: TStringField;
    cdsFolhaDePagamentosbdANO: TIntegerField;
    procedure btCadastrarGbFuncionarioClick(Sender: TObject);
    procedure btFecharPnCadastroDeFuncionariosClick(Sender: TObject);
    procedure btCalcularClick(Sender: TObject);
    procedure btSalvarPnCadastroDeFuncionariosClick(Sender: TObject);
    procedure cbNomeGbFuncionarioChange(Sender: TObject);
    procedure btConsultarGbFuncionarioClick(Sender: TObject);
    procedure edSalarioBaseGbProventosExit(Sender: TObject);
    procedure edHorasExtrasGbProventosExit(Sender: TObject);
    procedure edOutrosGbProventosExit(Sender: TObject);
    procedure edTotalGbProventosChange(Sender: TObject);
    procedure edTotalGbDescontosChange(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btConsultarTabelaClick(Sender: TObject);
    procedure edCodigoPnCadastroDeFuncionariosExit(Sender: TObject);
    procedure grFolhaDePagamentosCellClick(Column: TColumn);
    procedure btDeleteClick(Sender: TObject);
    procedure cbMesGbFuncionarioChange(Sender: TObject);
    procedure cbAnoGbFuncionarioChange(Sender: TObject);
  private
    procedure pEnviarCadastroDeFuncionarios;
    procedure pCalcularProventos;
    function fCalcularINSS(prSalarioBase:Currency):Currency;
    function fCalcularIRRF(prSalarioBase:Currency):Currency;
    function fCalcularValeTransporte(prSalarioBase:Currency):Currency;
    procedure pCalcularDescontos;
    procedure pCalcularSalarioLiquido;
    procedure pEnviarFolhaDePagamento;
    procedure pDesabilitarCamposDaTelaPrincipal;
    procedure pHabilitarCamposDaTelaPrincipal;
    procedure pDefinirTabOrderDaTelaPrincipal;
    procedure pDefinirTabOrderDoPnCadastroDeFuncionario;
    function fValidarCampoNumerico(prText:string):boolean;
    function fValidarCampoVazioEmEdit(prEdit:TEdit):boolean;
    function fIsNan(prText:string):boolean;
    procedure pLimparCamposDaTelaPrincipal;
    procedure pRetornarInformacoesDeFolha;
    function fRegistroExiste:boolean;
    procedure pAtualizarCbNome;
  public
    { Public declarations }
  end;

var
  frFolhaDePagamento: TfrFolhaDePagamento;

implementation

{$R *.dfm}

procedure TfrFolhaDePagamento.btCadastrarGbFuncionarioClick(
  Sender: TObject);
begin
  pnCadastroDeFuncionarios.Top :=112;
  pnCadastroDeFuncionarios.left :=96;
  pnCadastroDeFuncionarios.Visible:=true;
  pDesabilitarCamposDaTelaPrincipal;
end;

procedure TfrFolhaDePagamento.btFecharPnCadastroDeFuncionariosClick(
  Sender: TObject);
begin
  pnCadastroDeFuncionarios.Visible:=false;
  pHabilitarCamposDaTelaPrincipal;
end;

procedure TfrFolhaDePagamento.btCalcularClick(Sender: TObject);
var
  wSalarioBase:Currency;
begin
  if fValidarCampoVazioEmEdit(edSalarioBaseGbProventos) or fValidarCampoVazioEmEdit(edHorasExtrasGbProventos) or fValidarCampoVazioEmEdit(edOutrosGbProventos) then
     begin
       ShowMessage('Preencha todos os campos!');
       Exit;
     end;
  if fIsNan(edSalarioBaseGbProventos.Text) or fIsNan(edHorasExtrasGbProventos.Text) or fIsNan(edOutrosGbProventos.Text) then
     begin
       ShowMessage('Não coloque valores inválidos nos campos de valor monetário!');
       Exit;
     end;
  if (StrToCurr(edSalarioBaseGbProventos.Text) <0) or (StrToCurr(edHorasExtrasGbProventos.Text) <0) or (StrToCurr(edOutrosGbProventos.Text) <0) then
     begin
       ShowMessage('Valores monetários não podem ser abaixo de 0');
       Exit;
     end;

  wSalarioBase:=StrToCurrDef(edSalarioBaseGbProventos.Text,0);
  edINSSGbDescontos.Text := CurrToStr(fCalcularINSS(wSalarioBase));
  edIRRFGbDescontos.Text := CurrToStr(fCalcularIRRF(wSalarioBase));
  edValeTransporteGbDescontos.Text := CurrToStr(fCalcularValeTransporte(wSalarioBase));
  pCalcularDescontos;
  pCalcularSalarioLiquido;
  btSalvar.Enabled:=true;
end;

procedure TfrFolhaDePagamento.btSalvarPnCadastroDeFuncionariosClick(
  Sender: TObject);
begin
  if (edCodigoPnCadastroDeFuncionarios.Text = '') or (edNomePnCadastroDeFuncionarios.Text = '') or (cbCargoPnCadastroDeFuncionarios.ItemIndex = -1) or (edEnderecoPnCadastroDeFuncionarios.Text = '') or (edTelefonePnCadastroDeFuncionarios.Text = '') then
     begin
       ShowMessage('Preencha todos os campos!');
       exit;
     end;
  if StrToCurr(edCodigoPnCadastroDeFuncionarios.Text) <0 then
     begin
       ShowMessage('Código não pode ser valor negativo!');
       Exit;
     end;
  if fValidarCampoNumerico(edCodigoPnCadastroDeFuncionarios.Text) then
     begin
       ShowMessage('Código precisa ser um valor integral!');
       Exit;
     end;


  cdsCadastroDeFuncionarios.IndexFieldNames := 'bdCODIGO';
  if cdsCadastroDeFuncionarios.FindKey([StrToInt(edCodigoPnCadastroDeFuncionarios.text)]) then
     begin
       //Atualiza as folhas de pagamento com o respectivo código do funcionario
       cdsFolhaDePagamentos.IndexFieldNames := 'bdCODIGO';

       while not cdsFolhaDePagamentos.Eof do
         begin
           if cdsFolhaDePagamentos.FindKey([StrToInt(edCodigoPnCadastroDeFuncionarios.text)]) then
              begin
                cdsFolhaDePagamentos.Edit;
                cdsFolhaDePagamentosbdNOME.AsString := edNomePnCadastroDeFuncionarios.Text;
                cdsFolhaDePagamentos.Post;
              end;
           cdsFolhaDePagamentos.Next;
         end;
       //deleta o item do index cujo nome corresponda o nome do codigo procurado
       cbNomeGbFuncionario.Items.Delete(cbNomeGbFuncionario.Items.IndexOf(cdsCadastroDeFuncionariosbdNOME.AsString));
       cdsCadastroDeFuncionarios.Edit;
     end
  else
     begin
       cdsCadastroDeFuncionarios.Insert;
     end;

  pEnviarCadastroDeFuncionarios;
  pAtualizarCbNome;

  ShowMessage('Cadastro realizado com sucesso!');

  edCodigoPnCadastroDeFuncionarios.Clear;
  edNomePnCadastroDeFuncionarios.Clear;
  cbCargoPnCadastroDeFuncionarios.ItemIndex := -1;
  edEnderecoPnCadastroDeFuncionarios.Clear;
  edTelefonePnCadastroDeFuncionarios.Clear;

  edCodigoPnCadastroDeFuncionarios.SetFocus;
end;

procedure TfrFolhaDePagamento.pEnviarCadastroDeFuncionarios;
begin
  cdsCadastroDeFuncionariosbdCODIGO.AsInteger := StrToInt(edCodigoPnCadastroDeFuncionarios.text);
  cdsCadastroDeFuncionariosbdNOME.AsString := edNomePnCadastroDeFuncionarios.Text;
  cdsCadastroDeFuncionariosbdCARGO.AsInteger := cbCargoPnCadastroDeFuncionarios.ItemIndex;
  cdsCadastroDeFuncionariosbdENDERECO.AsString := edEnderecoPnCadastroDeFuncionarios.Text;
  cdsCadastroDeFuncionariosbdTELEFONE.AsString := edTelefonePnCadastroDeFuncionarios.Text;
  cdsCadastroDeFuncionarios.Post;
end;

procedure TfrFolhaDePagamento.cbNomeGbFuncionarioChange(Sender: TObject);
begin
  if cbNomeGbFuncionario.ItemIndex = -1 then
     begin
       edCargoGbFuncionario.Text := '';
     end
  else
     begin
       cdsCadastroDeFuncionarios.IndexFieldNames := 'bdNOME';
       cdsCadastroDeFuncionarios.FindKey([cbNomeGbFuncionario.Items[cbNomeGbFuncionario.ItemIndex]]);
       edCargoGbFuncionario.Text := cbCargoPnCadastroDeFuncionarios.Items[cdsCadastroDeFuncionariosbdCARGO.AsInteger];
     end;

  if fRegistroExiste then
     begin
       // encontrar
       pRetornarInformacoesDeFolha;
     end;
end;

procedure TfrFolhaDePagamento.btConsultarGbFuncionarioClick(Sender: TObject);
var
  wFuncionarios:string;
begin
  wFuncionarios := '';
  cdsCadastroDeFuncionarios.IndexFieldNames := 'bdCODIGO';
  cdsCadastroDeFuncionarios.First;

  while not cdsCadastroDeFuncionarios.Eof do
    begin
      wFuncionarios := wFuncionarios + 'Código: ' + IntToStr(cdsCadastroDeFuncionariosbdCODIGO.AsInteger) + '| Nome: ' + cdsCadastroDeFuncionariosbdNOME.AsString + '.' + #13;
      cdsCadastroDeFuncionarios.Next;
    end;

  ShowMessage(wFuncionarios);
end;

procedure TfrFolhaDePagamento.pCalcularProventos;
var
  wSalarioBase:Currency;
  wHorasExtras:Currency;
  wOutros:Currency;
begin
  // Limpa os campos de descontos quando há alguma alteração
  edTotalGbDescontos.Text := '';
  edIRRFGbDescontos.Text := '';
  edINSSGbDescontos.Text := '';

  wSalarioBase := StrToCurrDef(edSalarioBaseGbProventos.Text,0);
  wHorasExtras := StrToCurrDef(edHorasExtrasGbProventos.Text,0);
  wOutros := StrToCurrDef(edOutrosGbProventos.Text,0);
  edTotalGbProventos.Text := CurrToStr(wSalarioBase+wHorasExtras+wOutros);
end;

procedure TfrFolhaDePagamento.edSalarioBaseGbProventosExit(
  Sender: TObject);
begin
  if not fValidarCampoVazioEmEdit(edSalarioBaseGbProventos) then
     pCalcularProventos;
end;

procedure TfrFolhaDePagamento.edHorasExtrasGbProventosExit(
  Sender: TObject);
begin
  if not fValidarCampoVazioEmEdit(edHorasExtrasGbProventos) then
     pCalcularProventos;
end;

procedure TfrFolhaDePagamento.edOutrosGbProventosExit(Sender: TObject);
begin
  if not fValidarCampoVazioEmEdit(edOutrosGbProventos) then
     pCalcularProventos;
end;

function TfrFolhaDePagamento.fCalcularINSS(
  prSalarioBase: Currency): Currency;
var
  wDeducaoTotal : currency;
begin
  if prSalarioBase < 1621 then
     begin
       wDeducaoTotal := prSalarioBase*0.075;
     end
  else
     begin
       wDeducaoTotal := 121.57;
       if prSalarioBase < 2902.84 then
          begin
            wDeducaoTotal := wDeducaoTotal + (prSalarioBase-1621)*0.09;
          end
       else
          begin
            wDeducaoTotal := wDeducaoTotal + 115.37;
            if prSalarioBase < 4354.27 then
               begin
                 wDeducaoTotal := wDeducaoTotal + (prSalarioBase-2902.84)*0.12;
               end
            else
               begin
                 wDeducaoTotal := wDeducaoTotal + 174.17;
                 if prSalarioBase < 8475.55 then
                    begin
                      wDeducaoTotal := wDeducaoTotal + (prSalarioBase-4354.27)*0.14;
                    end
                 else
                    begin
                      wDeducaoTotal := wDeducaoTotal + 576.98;
                    end;
               end;
          end;
     end;

    Result := wDeducaoTotal;

end;

function TfrFolhaDePagamento.fCalcularIRRF(
  prSalarioBase: Currency): Currency;
begin
  Result := prSalarioBase * 0.15;
end;

function TfrFolhaDePagamento.fCalcularValeTransporte(
  prSalarioBase: Currency): Currency;
begin
  Result := prSalarioBase * 0.06;
end;

procedure TfrFolhaDePagamento.pCalcularDescontos;
var
  wINSS:Currency;
  wIRRF:Currency;
  wValeTransporte:Currency;
begin
  // Colocar validação
  wINSS:= StrToCurr(edINSSGbDescontos.Text);
  wIRRF:= StrToCurr(edIRRFGbDescontos.Text);
  wValeTransporte:= StrToCurrDef(edValeTransporteGbDescontos.Text,0);

  edTotalGbDescontos.Text:= CurrToStr(wINSS + wIRRF + wValeTransporte);
end;

procedure TfrFolhaDePagamento.pCalcularSalarioLiquido;
var
  wProventos: Currency;
  wDescontos: Currency;
  wSalarioLiquido: Currency;
begin
  wProventos := StrToCurrDef(edTotalGbProventos.Text,0);
  wDescontos := StrToCurrDef(edTotalGbDescontos.Text,0);
  wSalarioLiquido := wProventos - wDescontos;

  edSalarioLiquidoGbResultado.Text := CurrToStr(wSalarioLiquido);
end;

procedure TfrFolhaDePagamento.edTotalGbProventosChange(Sender: TObject);
begin
  edTotalProventosGbResultado.Text := edTotalGbProventos.Text;
end;

procedure TfrFolhaDePagamento.edTotalGbDescontosChange(Sender: TObject);
begin
  edTotalDescontosGbResultado.Text := edTotalGbDescontos.Text;
end;

procedure TfrFolhaDePagamento.btSalvarClick(Sender: TObject);
begin
  if cbNomeGbFuncionario.ItemIndex = -1 then
     begin
       ShowMessage('Selecione um funcionário para realizar o registro!');
       Exit;
     end;
  if (cbMesGbFuncionario.ItemIndex = -1) or (cbAnoGbFuncionario.ItemIndex = -1) then
     begin
       ShowMessage('Selecione uma data válida para efetuar o registro!');
       Exit;
     end;

  cdsFolhaDePagamentos.IndexFieldNames := 'bdCODIGOFOLHA';
  if cdsFolhaDePagamentos.FindKey([StrToInt(IntToStr(cbMesGbFuncionario.ItemIndex + 1) + cbAnoGbFuncionario.Items[cbAnoGbFuncionario.ItemIndex] + '00' + IntToStr(cdsCadastroDeFuncionariosbdCODIGO.AsInteger))]) then
     cdsFolhaDePagamentos.Edit
  else
     cdsFolhaDePagamentos.Insert;

  pEnviarFolhaDePagamento;
  btSalvar.Enabled:=false;

  pLimparCamposDaTelaPrincipal;
end;

procedure TfrFolhaDePagamento.pEnviarFolhaDePagamento;
begin
  //Coloca o foco no compo nome do cdsCadastroDeFuncionarios para reutilizar quanto necessário
  cdsCadastroDeFuncionarios.IndexFieldNames := 'bdNOME';
  cdsCadastroDeFuncionarios.FindKey([cbNomeGbFuncionario.Items[cbNomeGbFuncionario.ItemIndex]]);
  //Inicio dos envios
  //// Padrão de código da folha: mes/ano/00/codigodofuncionario
  cdsFolhaDePagamentosbdCODIGOFOLHA.AsInteger :=StrToInt(IntToStr(cbMesGbFuncionario.ItemIndex + 1) + cbAnoGbFuncionario.Items[cbAnoGbFuncionario.ItemIndex] + '00' + IntToStr(cdsCadastroDeFuncionariosbdCODIGO.AsInteger));
  cdsFolhaDePagamentosbdNOME.AsString := cbNomeGbFuncionario.Items[cbNomeGbFuncionario.ItemIndex];
  //Pega o Código do cdsCadastroDeFuncionarios seguindo o nome;
  cdsFolhaDePagamentosbdMES.AsString := cbMesGbFuncionario.Items[cbMesGbFuncionario.ItemIndex];
  cdsFolhaDePagamentosbdANO.AsInteger := StrToInt(cbAnoGbFuncionario.Items[cbAnoGbFuncionario.itemIndex]);
  cdsFolhaDePagamentosbdCODIGO.AsInteger := cdsCadastroDeFuncionariosbdCODIGO.AsInteger;
  cdsFolhaDePagamentosbdCARGO.AsString:= edCargoGbFuncionario.Text;
  cdsFolhaDePagamentosbdSALARIOBASe.AsCurrency := StrToCurrDef(edSalarioBaseGbProventos.Text,0);
  cdsFolhaDePagamentosbdHORASEXTRAS.AsCurrency := StrToCurrDef(edHorasExtrasGbProventos.Text, 0);
  cdsFolhaDePagamentosbdOUTROS.AsCurrency := StrToCurrDef(edOutrosGbProventos.Text,0);
  cdsFolhaDePagamentosbdTOTALPROVENTOS.AsCurrency := StrToCurr(edTotalGbProventos.Text);
  cdsFolhaDePagamentosbdINSS.AsCurrency := StrToCurr(edINSSGbDescontos.Text);
  cdsFolhaDePagamentosbdIRRF.AsCurrency := StrToCurr(edIRRFGbDescontos.Text);
  cdsFolhaDePagamentosbdVALETRANSPORTE.AsCurrency := StrToCurr(edValeTransporteGbDescontos.Text);
  cdsFolhaDePagamentosbdTOTALDESCONTOS.AsCurrency := StrToCurr(edTotalGbDescontos.Text);
  cdsFolhaDePagamentosbdSALARIOLIQUIDO.AsCurrency := StrToCurr(edSalarioLiquidoGbResultado.Text);
  cdsFolhaDePagamentos.Post;
end;

procedure TfrFolhaDePagamento.btLimparClick(Sender: TObject);
begin
  pLimparCamposDaTelaPrincipal;

  cbNomeGbFuncionario.SetFocus;
end;

procedure TfrFolhaDePagamento.btConsultarTabelaClick(Sender: TObject);
var
  wPagamentos: string;
begin
  wPagamentos := '';

  cdsFolhaDePagamentos.First;
  while not cdsFolhaDePagamentos.Eof do
    begin
      wPagamentos := wPagamentos + 'Código: ' + IntToStr(cdsFolhaDePagamentosBDCODIGO.AsInteger) + '| Nome: ' + cdsFolhaDePagamentosbdNOME.AsString + '| Cargo:' + cdsFolhaDePagamentosbdCARGO.AsString + '| Salário Base: R$' + CurrToStr(cdsFolhaDePagamentosbdSALARIOBASE.AsCurrency) + '| Salário Líquido: R$' + CurrToStr(cdsFolhaDePagamentosbdSALARIOLIQUIDO.AsCurrency) + '.' + #13;
      cdsFolhaDePagamentos.Next;
    end;
  ShowMessage(wPagamentos);
end;

procedure TfrFolhaDePagamento.pDesabilitarCamposDaTelaPrincipal;
begin
  // Desabilita campos
  cbNomeGbFuncionario.Enabled := False;
  btConsultarGbFuncionario.Enabled := False;
  btCadastrarGbFuncionario.Enabled := False;
  edSalarioBaseGbProventos.Enabled := False;
  edHorasExtrasGbProventos.Enabled := False;
  edOutrosGbProventos.Enabled := False;
  btConsultarTabela.Enabled := False;
  btCalcular.Enabled := False;
  btSalvar.Enabled := False;
  btLimpar.Enabled := False;
  grFolhaDePagamentos.Enabled := False;

  // Aciona ReadOnly
  edSalarioBaseGbProventos.ReadOnly := True;
  edHorasExtrasGbProventos.ReadOnly := True;
  edOutrosGbProventos.ReadOnly := True;
  edValeTransporteGbDescontos.ReadOnly := True;

  //Altera TabOrder
  pDefinirTabOrderDoPnCadastroDeFuncionario;
end;

procedure TfrFolhaDePagamento.pHabilitarCamposDaTelaPrincipal;
begin
  //Habilita campos
  cbNomeGbFuncionario.Enabled := True;
  btConsultarGbFuncionario.Enabled := True;
  btCadastrarGbFuncionario.Enabled := True;
  edSalarioBaseGbProventos.Enabled := True;
  edHorasExtrasGbProventos.Enabled := True;
  edOutrosGbProventos.Enabled := True;
  btConsultarTabela.Enabled := True;
  btCalcular.Enabled := True;
  btLimpar.Enabled := True;
  grFolhaDePagamentos.Enabled := True;

  //Desativa ReadOnly
  edSalarioBaseGbProventos.ReadOnly := False;
  edHorasExtrasGbProventos.ReadOnly := False;
  edOutrosGbProventos.ReadOnly := False;
  edValeTransporteGbDescontos.ReadOnly := False;

  // Coloca o foco no cbNomeGbFuncionario
  cbNomeGbFuncionario.SetFocus;

  // Altera TabOrder
  pDefinirTabOrderDaTelaPrincipal;
end;

procedure TfrFolhaDePagamento.pDefinirTabOrderDaTelaPrincipal;
begin
  cbNomeGbFuncionario.TabOrder:= 0;
  btConsultarGbFuncionario.TabOrder:= 1;
  btCadastrarGbFuncionario.TabOrder:= 2;
  edSalarioBaseGbProventos.TabOrder:= 3;
  edHorasExtrasGbProventos.TabOrder:= 4;
  edOutrosGbProventos.TabOrder:=5;
  edValeTransporteGbDescontos.TabOrder:= 6;
  btCalcular.TabOrder:= 7;
  btSalvar.TabOrder:=8;
  btLimpar.TabOrder:=9;
  btConsultarTabela.TabOrder:=10;
  cbNomeGbFuncionario.TabOrder:=11;
end;

procedure TfrFolhaDePagamento.pDefinirTabOrderDoPnCadastroDeFuncionario;
begin
  edCodigoPnCadastroDeFuncionarios.TabOrder := 0;
  edNomePnCadastroDeFuncionarios.TabOrder := 1;
  cbCargoPnCadastroDeFuncionarios.TabOrder := 2;
  edEnderecoPnCadastroDeFuncionarios.TabOrder := 3;
  edTelefonePnCadastroDeFuncionarios.TabOrder := 4;
  btSalvarPnCadastroDeFuncionarios.TabOrder := 5;
  btFecharPnCadastroDeFuncionarios.TabOrder := 6;
end;

procedure TfrFolhaDePagamento.edCodigoPnCadastroDeFuncionariosExit(
  Sender: TObject);
begin
  if fValidarCampoNumerico(edCodigoPnCadastroDeFuncionarios.Text) then
     Exit;

  cdsCadastroDeFuncionarios.IndexFieldNames := 'bdCODIGO';
  if cdsCadastroDeFuncionarios.FindKey([StrToInt(edCodigoPnCadastroDeFuncionarios.Text)]) then
     begin
       edNomePnCadastroDeFuncionarios.Text := cdsCadastroDeFuncionariosbdNOME.AsString;
       cbCargoPnCadastroDeFuncionarios.ItemIndex := cdsCadastroDeFuncionariosbdCARGO.AsInteger;
       edEnderecoPnCadastroDeFuncionarios.Text := cdsCadastroDeFuncionariosbdENDERECO.AsString;
       edTelefonePnCadastroDeFuncionarios.Text := cdsCadastroDeFuncionariosbdTELEFONE.AsString;
     end;
end;

function TfrFolhaDePagamento.fValidarCampoNumerico(
  prText: string): boolean;
begin
  Result := false;

  if StrToIntDef(prText,-1) = -1 then
     Result := true;
end;

function TfrFolhaDePagamento.fValidarCampoVazioEmEdit(
  prEdit: TEdit): boolean;
begin
  Result:= false;

  if prEdit.Text = '' then
     begin
       Result:= true;
     end;
end;

function TfrFolhaDePagamento.fIsNan(prText: string): boolean;
begin
  Result := false;

  if (StrToCurrDef(prText,0) = 0) and (StrToCurrDef(prText , -1) = -1) then
     Result := true;
end;

procedure TfrFolhaDePagamento.pLimparCamposDaTelaPrincipal;
begin
  cbNomeGbFuncionario.ItemIndex := -1;
  cbNomeGbFuncionario.Text := '';
  edCargoGbFuncionario.Text := '';
  cbMesGbFuncionario.ItemIndex := -1;
  cbAnoGbFuncionario.ItemIndex := -1;
  edSalarioBaseGbProventos.Text := '';
  edHorasExtrasGbProventos.Text := '';
  edOutrosGbProventos.Text := '';
  edTotalGbProventos.Text := '';
  edINSSGbDescontos.Text := '';
  edIRRFGbDescontos.Text :='';
  edValeTransporteGbDescontos.Text := '';
  edTotalGbDescontos.Text := '';
  edTotalProventosGbResultado.Text := '';
  edTotalDescontosGbResultado.Text := '';
  edSalarioLiquidoGbResultado.Text := '';
end;



procedure TfrFolhaDePagamento.grFolhaDePagamentosCellClick(
  Column: TColumn);
begin
  cdsFolhaDePagamentos.IndexFieldNames := 'bdCODIGOFOLHA';
  // Pega o valor do campo selecionado e procura a chave no cds
  cdsFolhaDePagamentos.FindKey([grFolhaDePagamentos.Fields[0].Value]);
  pRetornarInformacoesDeFolha;
end;

procedure TfrFolhaDePagamento.pRetornarInformacoesDeFolha;
var
  wSalarioBase : currency;
begin
  // Retorna as informações segundo foram salvas
  cbNomeGbFuncionario.ItemIndex := cbNomeGbFuncionario.Items.IndexOf(cdsFolhaDePagamentosbdNOME.AsString);
  cbMesGbFuncionario.ItemIndex := cbMesGbFuncionario.Items.IndexOf(cdsFolhaDePagamentosbdMES.AsString);
  cbAnoGbFuncionario.ItemIndex := cbAnoGbFuncionario.Items.IndexOf(cdsFolhaDePagamentosbdANO.AsString);
  edSalarioBaseGbProventos.Text := CurrToStr(cdsFolhaDePagamentosbdSALARIOBASE.AsCurrency);
  edHorasExtrasGbProventos.Text := CurrToStr(cdsFolhaDePagamentosbdHORASEXTRAS.AsCurrency);
  edOutrosGbProventos.Text := CurrToStr(cdsFolhaDePagamentosbdOUTROS.AsCurrency);

  // Para calcular todos os proventos corretamente
  pCalcularProventos;

  // Repete os calculos de descontos
  wSalarioBase:=StrToCurrDef(edSalarioBaseGbProventos.Text,0);
  edINSSGbDescontos.Text := CurrToStr(fCalcularINSS(wSalarioBase));
  edIRRFGbDescontos.Text := CurrToStr(fCalcularIRRF(wSalarioBase));
  edValeTransporteGbDescontos.Text := CurrToStr(fCalcularValeTransporte(wSalarioBase));

  // Para calcular todos os descontos e salário liquido + habilitar o botão salvar;
  pCalcularDescontos;
  pCalcularSalarioLiquido;
  btSalvar.Enabled:=true;
end;

procedure TfrFolhaDePagamento.btDeleteClick(Sender: TObject);
begin
  cdsFolhaDePagamentos.IndexFieldNames := 'bdCODIGOFOLHA';
  cdsFolhaDePagamentos.FindKey([StrToInt(IntToStr(cbMesGbFuncionario.ItemIndex + 1) + cbAnoGbFuncionario.Items[cbAnoGbFuncionario.ItemIndex] + '00' + IntToStr(cdsCadastroDeFuncionariosbdCODIGO.AsInteger))]);
  cdsFolhaDePagamentos.Delete;

  pLimparCamposDaTelaPrincipal;
end;

function TfrFolhaDePagamento.fRegistroExiste: boolean;
begin
  Result := true;

  // se todos os registros existem simultaneamente ele retorna as informações
  // talvez possa ser melhor usar if else para evitar trazer a folha errada?
  cdsFolhaDePagamentos.IndexFieldNames := 'bdNOME';
  if not cdsFolhaDePagamentos.FindKey([cbNomeGbFuncionario.Items[cbNomeGbFuncionario.ItemIndex]]) then
     Result := false;

  cdsFolhaDePagamentos.IndexFieldNames := 'bdMES';
  if not cdsFolhaDePagamentos.FindKey([cbMesGbFuncionario.Items[cbMesGbFuncionario.ItemIndex]]) then
     Result := false;

  cdsFolhaDePagamentos.IndexFieldNames := 'bdANO';
  if not cdsFolhaDePagamentos.FindKey([cbAnoGbFuncionario.Items[cbAnoGbFuncionario.ItemIndex]]) then
     Result := false;
end;

procedure TfrFolhaDePagamento.cbMesGbFuncionarioChange(Sender: TObject);
begin
  if fRegistroExiste then
     begin
       // retorna as infos para os campos editáveis e combobox
       pRetornarInformacoesDeFolha;
     end;
end;

procedure TfrFolhaDePagamento.cbAnoGbFuncionarioChange(Sender: TObject);
begin
  if fRegistroExiste then
     begin
       // retorna as infos para os campos editáveis e combobox
       pRetornarInformacoesDeFolha;
     end;
end;

procedure TfrFolhaDePagamento.pAtualizarCbNome;
begin
  cbNomeGbFuncionario.Clear;

  cdsCadastroDeFuncionarios.IndexFieldNames := 'bdCODIGO';
  while not cdsCadastroDeFuncionarios.Eof do
    begin
      cbNomeGbFuncionario.Items.Add(cdsCadastroDeFuncionariosbdNOME.AsString);
      cdsCadastroDeFuncionarios.Next;
    end;
end;

end.
