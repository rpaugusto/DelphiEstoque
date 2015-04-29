object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 879
  Top = 372
  Height = 308
  Width = 469
  object conecta: TADOConnection
    Connected = True
    ConnectionString = 
      'FILE NAME=D:\Users\rui\Google Drive\ETEC\3 Semestre\DSO\PROVA\co' +
      'nexao.udl'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 16
  end
  object qClientes: TADOQuery
    Connection = conecta
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM clientes')
    Left = 32
    Top = 136
    object qClientesid: TAutoIncField
      DisplayLabel = 'CODIGO'
      FieldName = 'id'
      ReadOnly = True
      DisplayFormat = '0000'
    end
    object qClientesnome: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'nome'
      Size = 50
    end
    object qClientescpf: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'cpf'
      EditMask = '000\.000\.000\-00;1;_'
      Size = 14
    end
    object qClientesrg: TStringField
      DisplayLabel = 'RG'
      FieldName = 'rg'
      Size = 14
    end
    object qClientessexo: TStringField
      DisplayLabel = 'SEXO'
      FieldName = 'sexo'
      Size = 1
    end
    object qClientesendereco: TStringField
      DisplayLabel = 'ENDERE'#199'O'
      FieldName = 'endereco'
      Size = 50
    end
    object qClientescidade: TStringField
      DisplayLabel = 'CIDADE'
      FieldName = 'cidade'
      Size = 50
    end
    object qClientesuf: TStringField
      DisplayLabel = 'UF'
      FieldName = 'uf'
      Size = 2
    end
    object qClientesrenda: TBCDField
      DisplayLabel = 'RENDA'
      FieldName = 'renda'
      DisplayFormat = '##,##0.00'
      Precision = 19
    end
    object qClientescadastro: TDateTimeField
      DisplayLabel = 'CADASTRO'
      FieldName = 'cadastro'
      EditMask = '!99/99/0000;1;_'
    end
    object qClientestipo_id: TIntegerField
      DisplayLabel = 'TIPO'
      FieldName = 'tipo_id'
    end
  end
  object qFuncionarios: TADOQuery
    Connection = conecta
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM funcionarios')
    Left = 104
    Top = 136
    object qFuncionariosid: TAutoIncField
      DisplayLabel = 'CODIGO'
      FieldName = 'id'
      ReadOnly = True
      DisplayFormat = '0000'
    end
    object qFuncionariosnome: TStringField
      DisplayLabel = 'NOME'
      FieldName = 'nome'
      Size = 100
    end
    object qFuncionarioscadastro: TDateTimeField
      DisplayLabel = 'CADASTRO'
      FieldName = 'cadastro'
      EditMask = '!99/99/0000;1;_'
    end
    object qFuncionariossexo: TStringField
      DisplayLabel = 'SEXO'
      FieldName = 'sexo'
      FixedChar = True
      Size = 1
    end
    object qFuncionariossalario: TBCDField
      DisplayLabel = 'SALARIO'
      FieldName = 'salario'
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
    object qFuncionariosendereco: TStringField
      DisplayLabel = 'ENDERE'#199'O'
      FieldName = 'endereco'
      Size = 100
    end
    object qFuncionarioscpf: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'cpf'
      EditMask = '000\.000\.000\-00;1;_'
      FixedChar = True
      Size = 14
    end
  end
  object qPedidos: TADOQuery
    Connection = conecta
    Parameters = <>
    SQL.Strings = (
      'select c.nome, p.dia, p.valor from pedidos p'
      'inner join clientes c on c.id = p.cliente_id')
    Left = 176
    Top = 136
    object qPedidosnome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object qPedidosdia: TDateTimeField
      FieldName = 'dia'
    end
    object qPedidosvalor: TBCDField
      FieldName = 'valor'
      DisplayFormat = '#,##0.00'
      Precision = 19
    end
  end
  object qItens: TADOQuery
    Connection = conecta
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM itens')
    Left = 232
    Top = 136
    object qItensid: TAutoIncField
      DisplayLabel = 'CODIGO'
      FieldName = 'id'
      ReadOnly = True
    end
    object qItensnome: TStringField
      DisplayLabel = 'DESCRICAO'
      FieldName = 'nome'
      Size = 50
    end
    object qItensvalor: TBCDField
      DisplayLabel = 'VALOR'
      FieldName = 'valor'
      Precision = 19
    end
  end
end
