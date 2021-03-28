object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 514
  ClientWidth = 449
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 204
    Height = 13
    Caption = 'Insira sua Chave do Google API Translator'
  end
  object Label2: TLabel
    Left = 8
    Top = 409
    Width = 424
    Height = 33
    AutoSize = False
    Caption = 
      'Verifique em https://cloud.google.com/translate/docs/languages?h' +
      'l=pt-br os parametros disponiveis de cada linguagem para adicion' +
      'ar nos edits acima'
    WordWrap = True
  end
  object Memo1: TMemo
    Left = 8
    Top = 54
    Width = 209
    Height = 273
    Lines.Strings = (
      'Assim mesmo, a determina'#231#227'o clara de '
      'objetivos auxilia a prepara'#231#227'o e a '
      'composi'#231#227'o do sistema de participa'#231#227'o '
      'geral.'
      ''
      'Podemos j'#225' vislumbrar o modo pelo qual '
      'a percep'#231#227'o das dificuldades garante a '
      'contribui'#231#227'o de um grupo importante na '
      'determina'#231#227'o do retorno esperado a '
      'longo prazo.')
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 223
    Top = 54
    Width = 209
    Height = 273
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 8
    Top = 333
    Width = 209
    Height = 21
    TabOrder = 2
    Text = 'pt'
  end
  object Edit2: TEdit
    Left = 223
    Top = 333
    Width = 209
    Height = 21
    TabOrder = 3
    Text = 'en'
  end
  object Button1: TButton
    Left = 8
    Top = 448
    Width = 424
    Height = 58
    Caption = 'Traduzir'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Edit3: TEdit
    Left = 8
    Top = 27
    Width = 424
    Height = 21
    TabOrder = 5
    Text = 'INSIRA SUA CHAVE GOOGLE API AQUI'
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 368
    Width = 97
    Height = 17
    Caption = 'Habilitar Cache'
    TabOrder = 6
    OnClick = CheckBox1Click
  end
end
