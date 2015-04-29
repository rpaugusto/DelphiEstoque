inherited frmPesqCadItens: TfrmPesqCadItens
  Left = 366
  Top = 131
  Width = 768
  Height = 489
  Caption = 'Busca e Cadastro de Itens de Venda'
  PixelsPerInch = 96
  TextHeight = 25
  inherited pgPadrao: TPageControl
    Width = 760
    Height = 439
    inherited pgPesquisa: TTabSheet
      inherited GroupBox1: TGroupBox
        Width = 752
        inherited cbBusca: TComboBox
          Items.Strings = (
            'DESCRI'#199#195'O')
        end
        inherited edtBusca: TEdit
          Width = 481
        end
        inherited btnPesquisa: TBitBtn
          Left = 648
        end
      end
      inherited GroupBox2: TGroupBox
        Width = 752
        inherited DBGrid1: TDBGrid
          Top = 27
          Width = 748
          Height = 419
          Align = alClient
          DataSource = dsP
          Columns = <
            item
              Expanded = False
              FieldName = 'id'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nome'
              Width = 500
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'valor'
              Width = 180
              Visible = True
            end>
        end
      end
    end
    inherited pgCadastro: TTabSheet
      object Label1: TLabel [0]
        Left = 8
        Top = 72
        Width = 73
        Height = 25
        Caption = 'CODIGO'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [1]
        Left = 8
        Top = 144
        Width = 103
        Height = 25
        Caption = 'DESCRICAO'
        FocusControl = DBEdit2
      end
      object Label3: TLabel [2]
        Left = 8
        Top = 208
        Width = 58
        Height = 25
        Caption = 'VALOR'
        FocusControl = DBEdit3
      end
      inherited Panel1: TPanel
        Width = 752
      end
      object DBEdit1: TDBEdit
        Left = 8
        Top = 96
        Width = 100
        Height = 33
        DataField = 'id'
        DataSource = dsP
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 8
        Top = 168
        Width = 500
        Height = 33
        DataField = 'nome'
        DataSource = dsP
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 8
        Top = 232
        Width = 250
        Height = 33
        DataField = 'valor'
        DataSource = dsP
        TabOrder = 3
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 439
    Width = 760
  end
  inherited dsP: TDataSource
    DataSet = dm.qItens
    Left = 716
  end
  inherited ActionList1: TActionList
    Left = 684
  end
  inherited ImageList1: TImageList
    Left = 652
  end
end
