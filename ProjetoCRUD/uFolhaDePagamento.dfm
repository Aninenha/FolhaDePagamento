object frFolhaDePagamento: TfrFolhaDePagamento
  Left = 201
  Top = 119
  Width = 1166
  Height = 646
  Caption = 'Folha de Pagamento'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gbFuncionario: TGroupBox
    Left = 48
    Top = 40
    Width = 537
    Height = 97
    Caption = 'Funcion'#225'rio'
    TabOrder = 0
    TabStop = True
    object lbNomeGbFuncionario: TLabel
      Left = 40
      Top = 36
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object lbCargoGbFuncionario: TLabel
      Left = 364
      Top = 36
      Width = 31
      Height = 13
      Caption = 'Cargo:'
    end
    object lbMes: TLabel
      Left = 48
      Top = 62
      Width = 23
      Height = 13
      Caption = 'M'#234's:'
    end
    object lbAno: TLabel
      Left = 208
      Top = 62
      Width = 22
      Height = 13
      Caption = 'Ano:'
    end
    object cbNomeGbFuncionario: TComboBox
      Left = 75
      Top = 32
      Width = 270
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      OnChange = cbNomeGbFuncionarioChange
    end
    object edCargoGbFuncionario: TEdit
      Left = 400
      Top = 32
      Width = 121
      Height = 21
      TabStop = False
      Enabled = False
      ReadOnly = True
      TabOrder = 5
    end
    object btCadastrarGbFuncionario: TButton
      Left = 367
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Cadastrar'
      TabOrder = 3
      OnClick = btCadastrarGbFuncionarioClick
    end
    object cbMesGbFuncionario: TComboBox
      Left = 75
      Top = 58
      Width = 118
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      OnChange = cbMesGbFuncionarioChange
      Items.Strings = (
        'Janeiro'
        'Fevereiro'
        'Mar'#231'o'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outubro'
        'Novembro'
        'Dezembro')
    end
    object cbAnoGbFuncionario: TComboBox
      Left = 235
      Top = 58
      Width = 110
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      OnChange = cbAnoGbFuncionarioChange
      Items.Strings = (
        '2026')
    end
    object btConsultarGbFuncionario: TButton
      Left = 446
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 4
      OnClick = btConsultarGbFuncionarioClick
    end
  end
  object gbProventos: TGroupBox
    Left = 48
    Top = 144
    Width = 265
    Height = 129
    Caption = 'Proventos'
    TabOrder = 1
    TabStop = True
    object lbSalarioBaseGbProventos: TLabel
      Left = 61
      Top = 32
      Width = 62
      Height = 13
      Caption = 'Sal'#225'rio Base:'
    end
    object lbHorasExtrasGbProventos: TLabel
      Left = 60
      Top = 56
      Width = 63
      Height = 13
      Caption = 'Horas Extras:'
    end
    object lbOutrosGbProventos: TLabel
      Left = 89
      Top = 80
      Width = 34
      Height = 13
      Caption = 'Outros:'
    end
    object lbTotalGbProventos: TLabel
      Left = 96
      Top = 104
      Width = 27
      Height = 13
      Caption = 'Total:'
    end
    object edSalarioBaseGbProventos: TEdit
      Left = 128
      Top = 28
      Width = 121
      Height = 21
      TabOrder = 0
      OnExit = edSalarioBaseGbProventosExit
    end
    object edHorasExtrasGbProventos: TEdit
      Left = 128
      Top = 52
      Width = 121
      Height = 21
      TabOrder = 1
      OnExit = edHorasExtrasGbProventosExit
    end
    object edOutrosGbProventos: TEdit
      Left = 128
      Top = 76
      Width = 121
      Height = 21
      TabOrder = 2
      OnExit = edOutrosGbProventosExit
    end
    object edTotalGbProventos: TEdit
      Left = 128
      Top = 100
      Width = 121
      Height = 21
      TabStop = False
      Enabled = False
      ReadOnly = True
      TabOrder = 3
      OnChange = edTotalGbProventosChange
    end
  end
  object gbDescontos: TGroupBox
    Left = 320
    Top = 144
    Width = 265
    Height = 129
    Caption = 'Descontos'
    TabOrder = 8
    object lbTotalGbDescontos: TLabel
      Left = 96
      Top = 104
      Width = 27
      Height = 13
      Caption = 'Total:'
    end
    object lbValeTransporteGbDescontos: TLabel
      Left = 45
      Top = 80
      Width = 78
      Height = 13
      Caption = 'Vale Transporte:'
    end
    object lbIRRFGbDescontos: TLabel
      Left = 95
      Top = 56
      Width = 28
      Height = 13
      Caption = 'IRRF:'
    end
    object lbINSSGbDescontos: TLabel
      Left = 95
      Top = 32
      Width = 28
      Height = 13
      Caption = 'INSS:'
    end
    object edTotalGbDescontos: TEdit
      Left = 128
      Top = 100
      Width = 121
      Height = 21
      TabStop = False
      Enabled = False
      ReadOnly = True
      TabOrder = 0
      OnChange = edTotalGbDescontosChange
    end
    object edValeTransporteGbDescontos: TEdit
      Left = 128
      Top = 76
      Width = 121
      Height = 21
      TabStop = False
      Enabled = False
      ReadOnly = True
      TabOrder = 1
    end
    object edIRRFGbDescontos: TEdit
      Left = 128
      Top = 52
      Width = 121
      Height = 21
      TabStop = False
      Enabled = False
      ReadOnly = True
      TabOrder = 3
    end
    object edINSSGbDescontos: TEdit
      Left = 128
      Top = 28
      Width = 121
      Height = 21
      TabStop = False
      Enabled = False
      ReadOnly = True
      TabOrder = 2
    end
  end
  object gbResultado: TGroupBox
    Left = 48
    Top = 280
    Width = 537
    Height = 89
    Caption = 'Resultado'
    TabOrder = 2
    TabStop = True
    object lbTotalProventosGbResultado: TLabel
      Left = 27
      Top = 36
      Width = 93
      Height = 13
      Caption = 'Total de Proventos:'
    end
    object lbTotalDescontosGbResultado: TLabel
      Left = 299
      Top = 36
      Width = 96
      Height = 13
      Caption = 'Total de Descontos:'
    end
    object lbSalarioLiquidoGbResultado: TLabel
      Left = 48
      Top = 56
      Width = 72
      Height = 13
      Caption = 'Sal'#225'rio Liquido:'
    end
    object edTotalProventosGbResultado: TEdit
      Left = 128
      Top = 32
      Width = 121
      Height = 21
      TabStop = False
      Enabled = False
      ReadOnly = True
      TabOrder = 0
    end
    object edTotalDescontosGbResultado: TEdit
      Left = 400
      Top = 32
      Width = 121
      Height = 21
      TabStop = False
      Enabled = False
      ReadOnly = True
      TabOrder = 1
    end
    object edSalarioLiquidoGbResultado: TEdit
      Left = 128
      Top = 56
      Width = 393
      Height = 21
      TabStop = False
      Enabled = False
      ReadOnly = True
      TabOrder = 2
    end
  end
  object btCalcular: TButton
    Left = 238
    Top = 373
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = btCalcularClick
  end
  object btSalvar: TButton
    Left = 319
    Top = 373
    Width = 75
    Height = 25
    Caption = 'Salvar'
    Enabled = False
    TabOrder = 4
    OnClick = btSalvarClick
  end
  object btLimpar: TButton
    Left = 401
    Top = 373
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 5
    OnClick = btLimparClick
  end
  object grFolhaDePagamentos: TDBGrid
    Left = 48
    Top = 424
    Width = 537
    Height = 120
    TabStop = False
    DataSource = dsFolhaDePagamentos
    ReadOnly = True
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = grFolhaDePagamentosCellClick
    OnTitleClick = grFolhaDePagamentosTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'bdCODIGOFOLHA'
        Title.Caption = 'Folha'
        Width = 32
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'bdCODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdNOME'
        Title.Caption = 'Nome do Funcion'#225'rio'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdMES'
        Title.Caption = 'M'#234's'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdANO'
        Title.Caption = 'Ano'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdCARGO'
        Title.Caption = 'Cargo'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdSALARIOBASE'
        Title.Caption = 'Sal'#225'rio Base'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdSALARIOLIQUIDO'
        Title.Caption = 'Sal'#225'rio Liquido'
        Visible = True
      end>
  end
  object pnCadastroDeFuncionarios: TPanel
    Left = 712
    Top = 48
    Width = 409
    Height = 209
    TabOrder = 10
    TabStop = True
    Visible = False
    object lbCadastroDeFuncionariosPnCadastroDeFuncionarios: TLabel
      Left = 132
      Top = 16
      Width = 145
      Height = 13
      Caption = 'Cadastro de Funcion'#225'rios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -5
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbCodigoPnCadastroDeFuncionarios: TLabel
      Left = 77
      Top = 44
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object lbNomePnCadastroDeFuncionarios: TLabel
      Left = 82
      Top = 68
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object lbCargoPnCadastroDeFuncionarios: TLabel
      Left = 82
      Top = 92
      Width = 31
      Height = 13
      Caption = 'Cargo:'
    end
    object lbEnderecoPnCadastroDeFuncionarios: TLabel
      Left = 64
      Top = 116
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object lbTelefonePnCadastroDeFuncionarios: TLabel
      Left = 68
      Top = 140
      Width = 45
      Height = 13
      Caption = 'Telefone:'
    end
    object btSalvarPnCadastroDeFuncionarios: TButton
      Left = 123
      Top = 168
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 6
      OnClick = btSalvarPnCadastroDeFuncionariosClick
    end
    object btFecharPnCadastroDeFuncionarios: TButton
      Left = 211
      Top = 168
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 7
      OnClick = btFecharPnCadastroDeFuncionariosClick
    end
    object edCodigoPnCadastroDeFuncionarios: TEdit
      Left = 118
      Top = 40
      Width = 241
      Height = 21
      TabOrder = 0
      OnExit = edCodigoPnCadastroDeFuncionariosExit
    end
    object edNomePnCadastroDeFuncionarios: TEdit
      Left = 118
      Top = 64
      Width = 241
      Height = 21
      TabOrder = 1
    end
    object edEnderecoPnCadastroDeFuncionarios: TEdit
      Left = 118
      Top = 112
      Width = 241
      Height = 21
      TabOrder = 4
    end
    object edTelefonePnCadastroDeFuncionarios: TEdit
      Left = 118
      Top = 136
      Width = 241
      Height = 21
      TabOrder = 5
    end
    object cbCargoPnCadastroDeFuncionarios: TComboBox
      Left = 118
      Top = 88
      Width = 163
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'Analista'
        'L'#237'der'
        'Programador'
        'Product Owner'
        'QA')
    end
    object btNovoPnCadastroDeFuncionarios: TButton
      Left = 284
      Top = 86
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 3
      OnClick = btNovoPnCadastroDeFuncionariosClick
    end
  end
  object btConsultarTabela: TButton
    Left = 157
    Top = 373
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 7
    OnClick = btConsultarTabelaClick
  end
  object btDelete: TButton
    Left = 480
    Top = 373
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 6
    OnClick = btDeleteClick
  end
  object pnCadastroDeCargos: TPanel
    Left = 712
    Top = 296
    Width = 409
    Height = 113
    TabOrder = 11
    Visible = False
    object lbCadastroDeCargosPnCadastroDeCargos: TLabel
      Left = 149
      Top = 16
      Width = 112
      Height = 13
      Caption = 'Cadastro de Cargos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -5
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbNomeDoCargoPnCadastroDeCargos: TLabel
      Left = 36
      Top = 44
      Width = 77
      Height = 13
      Caption = 'Nome do Cargo:'
    end
    object edNomeDoCargoPnCadastroDeCargos: TEdit
      Left = 118
      Top = 40
      Width = 241
      Height = 21
      TabOrder = 0
      OnExit = edCodigoPnCadastroDeFuncionariosExit
    end
    object btSalvarPnCadastroDeCargos: TButton
      Left = 123
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 1
      OnClick = btSalvarPnCadastroDeCargosClick
    end
    object btFecharPnCadastroDeCargos: TButton
      Left = 211
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 2
      OnClick = btFecharPnCadastroDeCargosClick
    end
  end
  object dsFolhaDePagamentos: TDataSource
    DataSet = cdsFolhaDePagamentos
    Left = 80
    Top = 376
  end
  object cdsCadastroDeFuncionarios: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'bdCODIGO'
        DataType = ftInteger
      end
      item
        Name = 'bdNOME'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'bdCARGO'
        DataType = ftInteger
      end
      item
        Name = 'bdENDERECO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'bdTELEFONE'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'cdsCadastroDeFuncionariosIndex'
        Fields = 'bdCODIGO'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'cdsCadastroDeFuncionariosIndex'
    Params = <>
    StoreDefs = True
    Left = 744
    Top = 216
    Data = {
      940000009619E0BD010000001800000005000000000003000000940008626443
      4F4449474F04000100000000000662644E4F4D45010049000000010005574944
      5448020002001400076264434152474F04000100000000000A6264454E444552
      45434F01004900000001000557494454480200020014000A626454454C45464F
      4E4501004900000001000557494454480200020014000000}
    object cdsCadastroDeFuncionariosbdCODIGO: TIntegerField
      FieldName = 'bdCODIGO'
    end
    object cdsCadastroDeFuncionariosbdNOME: TStringField
      FieldName = 'bdNOME'
    end
    object cdsCadastroDeFuncionariosbdCARGO: TIntegerField
      FieldName = 'bdCARGO'
    end
    object cdsCadastroDeFuncionariosbdENDERECO: TStringField
      FieldName = 'bdENDERECO'
    end
    object cdsCadastroDeFuncionariosbdTELEFONE: TStringField
      FieldName = 'bdTELEFONE'
    end
  end
  object dsCadastroDeFuncionarios: TDataSource
    DataSet = cdsCadastroDeFuncionarios
    Left = 776
    Top = 216
  end
  object cdsFolhaDePagamentos: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'bdCODIGOFOLHA'
        DataType = ftInteger
      end
      item
        Name = 'bdNOME'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'bdCODIGO'
        DataType = ftInteger
      end
      item
        Name = 'bdCARGO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'bdSALARIOBASE'
        DataType = ftCurrency
      end
      item
        Name = 'bdHORASEXTRAS'
        DataType = ftCurrency
      end
      item
        Name = 'bdOUTROS'
        DataType = ftCurrency
      end
      item
        Name = 'bdTOTALPROVENTOS'
        DataType = ftCurrency
      end
      item
        Name = 'bdINSS'
        DataType = ftCurrency
      end
      item
        Name = 'bdIRRF'
        DataType = ftCurrency
      end
      item
        Name = 'bdVALETRANSPORTE'
        DataType = ftCurrency
      end
      item
        Name = 'bdTOTALDESCONTOS'
        DataType = ftCurrency
      end
      item
        Name = 'bdSALARIOLIQUIDO'
        DataType = ftCurrency
      end
      item
        Name = 'bdMES'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'bdANO'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'cdsFolhaDePagamentosIndex1'
        Fields = 'bdCODIGOFOLHA'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'cdsFolhaDePagamentosIndex1'
    Params = <>
    StoreDefs = True
    Left = 48
    Top = 376
    Data = {
      130200009619E0BD01000000180000000F00000000000300000013020D626443
      4F4449474F464F4C484104000100000000000662644E4F4D4501004900000001
      00055749445448020002001400086264434F4449474F04000100000000000762
      64434152474F01004900000001000557494454480200020014000D626453414C
      4152494F42415345080004000000010007535542545950450200490006004D6F
      6E6579000D6264484F5241534558545241530800040000000100075355425459
      50450200490006004D6F6E6579000862644F5554524F53080004000000010007
      535542545950450200490006004D6F6E657900106264544F54414C50524F5645
      4E544F53080004000000010007535542545950450200490006004D6F6E657900
      066264494E5353080004000000010007535542545950450200490006004D6F6E
      6579000662644952524608000400000001000753554254595045020049000600
      4D6F6E65790010626456414C455452414E53504F525445080004000000010007
      535542545950450200490006004D6F6E657900106264544F54414C444553434F
      4E544F53080004000000010007535542545950450200490006004D6F6E657900
      10626453414C4152494F4C49515549444F080004000000010007535542545950
      450200490006004D6F6E6579000562644D455301004900000001000557494454
      48020002001400056264414E4F04000100000000000000}
    object cdsFolhaDePagamentosbdCODIGOFOLHA: TIntegerField
      FieldName = 'bdCODIGOFOLHA'
    end
    object cdsFolhaDePagamentosbdNOME: TStringField
      FieldName = 'bdNOME'
    end
    object cdsFolhaDePagamentosbdCODIGO: TIntegerField
      FieldName = 'bdCODIGO'
    end
    object cdsFolhaDePagamentosbdCARGO: TStringField
      FieldName = 'bdCARGO'
    end
    object cdsFolhaDePagamentosbdSALARIOBASE: TCurrencyField
      FieldName = 'bdSALARIOBASE'
    end
    object cdsFolhaDePagamentosbdHORASEXTRAS: TCurrencyField
      FieldName = 'bdHORASEXTRAS'
    end
    object cdsFolhaDePagamentosbdOUTROS: TCurrencyField
      FieldName = 'bdOUTROS'
    end
    object cdsFolhaDePagamentosbdTOTALPROVENTOS: TCurrencyField
      FieldName = 'bdTOTALPROVENTOS'
    end
    object cdsFolhaDePagamentosbdINSS: TCurrencyField
      FieldName = 'bdINSS'
    end
    object cdsFolhaDePagamentosbdIRRF: TCurrencyField
      FieldName = 'bdIRRF'
    end
    object cdsFolhaDePagamentosbdVALETRANSPORTE: TCurrencyField
      FieldName = 'bdVALETRANSPORTE'
    end
    object cdsFolhaDePagamentosbdTOTALDESCONTOS: TCurrencyField
      FieldName = 'bdTOTALDESCONTOS'
    end
    object cdsFolhaDePagamentosbdSALARIOLIQUIDO: TCurrencyField
      FieldName = 'bdSALARIOLIQUIDO'
    end
    object cdsFolhaDePagamentosbdMES: TStringField
      FieldName = 'bdMES'
    end
    object cdsFolhaDePagamentosbdANO: TIntegerField
      FieldName = 'bdANO'
    end
  end
  object cdsCargos: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 744
    Top = 368
    Data = {
      520000009619E0BD01000000180000000200000000000300000052000D626443
      4F4449474F434152474F04000100000000000D62644E4F4D45444F434152474F
      01004900000001000557494454480200020014000000}
    object cdsCargosbdCODIGOCARGO: TIntegerField
      FieldName = 'bdCODIGOCARGO'
    end
    object cdsCargosbdNOMEDOCARGO: TStringField
      FieldName = 'bdNOMEDOCARGO'
    end
  end
  object dsCargos: TDataSource
    DataSet = cdsCargos
    Left = 776
    Top = 368
  end
end
