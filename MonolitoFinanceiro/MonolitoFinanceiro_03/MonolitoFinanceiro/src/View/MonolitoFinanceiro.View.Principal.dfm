object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Monolito Financeiro'
  ClientHeight = 418
  ClientWidth = 646
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  TextHeight = 19
  object MainMenu1: TMainMenu
    Left = 496
    Top = 32
    object mnuCadastro: TMenuItem
      Caption = 'Cadastros'
      object mnuCadastroPadrao: TMenuItem
        Caption = 'Cadastro Padr'#227'o'
        OnClick = mnuCadastroPadraoClick
      end
    end
    object mnuRelatorios: TMenuItem
      Caption = 'Relat'#243'rios'
    end
    object mnuAjuda: TMenuItem
      Caption = 'Ajuda'
    end
  end
end
