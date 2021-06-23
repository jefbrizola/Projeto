object fTarefa1: TfTarefa1
  Left = 0
  Top = 0
  Caption = 'Tarefa 1'
  ClientHeight = 410
  ClientWidth = 671
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 38
    Height = 13
    Caption = 'Colunas'
  end
  object Label2: TLabel
    Left = 248
    Top = 16
    Width = 37
    Height = 13
    Caption = 'Tabelas'
  end
  object Label3: TLabel
    Left = 464
    Top = 16
    Width = 49
    Height = 13
    Caption = 'Condi'#231#245'es'
  end
  object Label4: TLabel
    Left = 25
    Top = 214
    Width = 57
    Height = 13
    Caption = 'SQL Gerado'
  end
  object MemoColunas: TMemo
    Left = 24
    Top = 32
    Width = 185
    Height = 161
    TabOrder = 0
    OnKeyPress = MemoColunasKeyPress
  end
  object MemoTabelas: TMemo
    Left = 248
    Top = 32
    Width = 185
    Height = 161
    TabOrder = 1
    OnKeyPress = MemoTabelasKeyPress
  end
  object MemoCondicoes: TMemo
    Left = 464
    Top = 32
    Width = 185
    Height = 161
    TabOrder = 2
    OnKeyPress = MemoCondicoesKeyPress
  end
  object MemoSQL: TMemo
    Left = 24
    Top = 232
    Width = 409
    Height = 170
    TabOrder = 3
  end
  object Button1: TButton
    Left = 516
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Gerar SQL'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 516
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 5
    OnClick = Button2Click
  end
  object spQuery1: TspQuery
    Left = 608
    Top = 192
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 696
    Top = 256
  end
end
