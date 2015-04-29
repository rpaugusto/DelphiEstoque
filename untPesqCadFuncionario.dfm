inherited frmPesqCadFuncionario: TfrmPesqCadFuncionario
  Width = 751
  Height = 557
  Caption = 'Busca e Cadastro de Funcionarios'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 25
  inherited pgPadrao: TPageControl
    Width = 743
    Height = 507
    ActivePage = pgCadastro
    inherited pgPesquisa: TTabSheet
      inherited GroupBox1: TGroupBox
        Width = 735
        inherited cbBusca: TComboBox
          Items.Strings = (
            'NOME'
            'CFP')
        end
        inherited edtBusca: TEdit
          Width = 457
        end
        inherited btnPesquisa: TBitBtn
          Left = 624
          OnClick = btnPesquisaClick
        end
      end
      inherited GroupBox2: TGroupBox
        Width = 735
        Height = 400
        inherited DBGrid1: TDBGrid
          Top = 16
          Width = 727
          Height = 377
          DataSource = dsP
          OnCellClick = DBGrid1CellClick
          Columns = <
            item
              Expanded = False
              FieldName = 'id'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome'
              Width = 450
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cpf'
              Width = 175
              Visible = True
            end>
        end
      end
    end
    inherited pgCadastro: TTabSheet
      object Label1: TLabel [0]
        Left = 0
        Top = 72
        Width = 73
        Height = 25
        Caption = 'CODIGO'
        FocusControl = edtId
      end
      object Label2: TLabel [1]
        Left = 80
        Top = 72
        Width = 57
        Height = 25
        Caption = 'NOME'
        FocusControl = DBEdit2
      end
      object Label3: TLabel [2]
        Left = 0
        Top = 136
        Width = 98
        Height = 25
        Caption = 'CADASTRO'
        FocusControl = DBEdit3
      end
      object Label4: TLabel [3]
        Left = 448
        Top = 136
        Width = 46
        Height = 25
        Caption = 'SEXO'
        FocusControl = DBEdit4
      end
      object Label5: TLabel [4]
        Left = 240
        Top = 136
        Width = 77
        Height = 25
        Caption = 'SALARIO'
        FocusControl = DBEdit5
      end
      object Label6: TLabel [5]
        Left = 0
        Top = 200
        Width = 97
        Height = 25
        Caption = 'ENDERE'#199'O'
        FocusControl = DBEdit6
      end
      object Label7: TLabel [6]
        Left = 512
        Top = 136
        Width = 33
        Height = 25
        Caption = 'CPF'
        FocusControl = DBEdit7
      end
      inherited Panel1: TPanel
        Width = 735
      end
      object edtId: TDBEdit
        Left = 0
        Top = 96
        Width = 73
        Height = 33
        Color = clScrollBar
        DataField = 'id'
        DataSource = dsP
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 80
        Top = 96
        Width = 657
        Height = 33
        DataField = 'nome'
        DataSource = dsP
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 0
        Top = 160
        Width = 225
        Height = 33
        DataField = 'cadastro'
        DataSource = dsP
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 448
        Top = 160
        Width = 49
        Height = 33
        DataField = 'sexo'
        DataSource = dsP
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 240
        Top = 160
        Width = 185
        Height = 33
        DataField = 'salario'
        DataSource = dsP
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 0
        Top = 224
        Width = 2504
        Height = 33
        DataField = 'endereco'
        DataSource = dsP
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 512
        Top = 160
        Width = 217
        Height = 33
        DataField = 'cpf'
        DataSource = dsP
        TabOrder = 7
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 264
        Width = 737
        Height = 201
        Caption = 'ULTIMOS PEDIDOS: '
        TabOrder = 8
        object DBGrid2: TDBGrid
          Left = 8
          Top = 24
          Width = 721
          Height = 169
          DataSource = dsA
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -19
          TitleFont.Name = 'Segoe UI Semibold'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'dia'
              Title.Caption = 'Data'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome'
              Title.Caption = 'Cliente'
              Width = 400
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor'
              Title.Caption = 'Valor'
              Width = 150
              Visible = True
            end>
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 507
    Width = 743
  end
  inherited dsP: TDataSource
    DataSet = dm.qFuncionarios
    Left = 708
  end
  inherited ActionList1: TActionList
    Left = 676
  end
  inherited ImageList1: TImageList
    Left = 644
  end
  object dsA: TDataSource
    DataSet = dm.qPedidos
    Left = 708
    Top = 76
  end
end
