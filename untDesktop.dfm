object frmDesktop: TfrmDesktop
  Left = 192
  Top = 117
  Width = 979
  Height = 563
  Caption = 'Area de Trabalho'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 493
    Width = 971
    Height = 19
    Panels = <>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 971
    Height = 29
    Caption = 'ToolBar1'
    TabOrder = 1
    object ToolButton1: TToolButton
      Left = 0
      Top = 2
      Caption = 'ToolButton1'
      ImageIndex = 0
    end
    object ToolButton2: TToolButton
      Left = 23
      Top = 2
      Caption = 'ToolButton2'
      ImageIndex = 1
    end
    object ToolButton3: TToolButton
      Left = 46
      Top = 2
      Caption = 'ToolButton3'
      ImageIndex = 2
    end
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 120
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
      end
      object Funcionarios1: TMenuItem
        Caption = 'Funcionarios'
      end
    end
    object Pedidos1: TMenuItem
      Caption = 'Pedidos'
      object Novo1: TMenuItem
        Caption = 'Novo'
      end
    end
    object Relatoriosa1: TMenuItem
      Caption = 'Relatorios'
      object Clientes2: TMenuItem
        Caption = 'Clientes'
      end
      object Funcionrios1: TMenuItem
        Caption = 'Funcionrios'
      end
      object Pedidos2: TMenuItem
        Caption = 'Pedidos'
      end
    end
    object Ajuda1: TMenuItem
      Caption = 'Ajuda'
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end
