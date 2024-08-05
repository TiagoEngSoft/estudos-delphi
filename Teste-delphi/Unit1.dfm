object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 390
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 304
    Top = 83
    Width = 27
    Height = 20
    Caption = 'De: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 45
    Top = 334
    Width = 69
    Height = 15
    Caption = 'N'#227'o contado'
  end
  object Label3: TLabel
    Left = 440
    Top = 83
    Width = 26
    Height = 20
    Caption = 'at'#233':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 157
    Top = 334
    Width = 74
    Height = 15
    Caption = 'Em contagem'
  end
  object Label5: TLabel
    Left = 265
    Top = 334
    Width = 46
    Height = 15
    Caption = 'Contado'
  end
  object PaintBox1: TPaintBox
    Left = 8
    Top = 334
    Width = 25
    Height = 22
    OnPaint = PaintBoxPaint
  end
  object PaintBox2: TPaintBox
    Left = 120
    Top = 333
    Width = 25
    Height = 22
    OnPaint = PaintBoxPaint
  end
  object PaintBox3: TPaintBox
    Left = 237
    Top = 334
    Width = 25
    Height = 22
    OnPaint = PaintBoxPaint
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 116
    Width = 628
    Height = 205
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENDEDOR'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUACAO'
        Width = 150
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 16
    Top = 33
    Width = 283
    Height = 23
    TabOrder = 1
    TextHint = 'Pesquise aqui..'
  end
  object Button1: TButton
    Left = 305
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Pesquisa'
    TabOrder = 2
  end
  object ComboBox1: TComboBox
    Left = 16
    Top = 78
    Width = 145
    Height = 23
    ItemIndex = 0
    TabOrder = 3
    Text = 'Or'#231'amentos'
    Items.Strings = (
      'Or'#231'amentos'
      'Clientes'
      'Vendedor')
  end
  object DateTimePicker1: TDateTimePicker
    Left = 337
    Top = 79
    Width = 90
    Height = 23
    Date = 45508.000000000000000000
    Time = 0.483915370372415100
    TabOrder = 4
  end
  object DateTimePicker2: TDateTimePicker
    Left = 472
    Top = 78
    Width = 82
    Height = 23
    Date = 45508.000000000000000000
    Time = 0.484127141200588100
    TabOrder = 5
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\thiag\Desktop\01.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Server=localhost'
      'Port=3050'
      'DriverID=FB')
    Connected = True
    Left = 368
    Top = 328
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM ORCAMETNOS o  ')
    Left = 456
    Top = 328
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 536
    Top = 328
  end
end
