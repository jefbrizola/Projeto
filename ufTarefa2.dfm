object fTarefa2: TfTarefa2
  Left = 0
  Top = 0
  Caption = 'Tarefa2'
  ClientHeight = 182
  ClientWidth = 566
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
  object Gauge2: TGauge
    Left = 70
    Top = 137
    Width = 475
    Height = 20
    ForeColor = clNavy
    Progress = 0
  end
  object Gauge1: TGauge
    Left = 70
    Top = 95
    Width = 475
    Height = 20
    ForeColor = clNavy
    Progress = 0
  end
  object Label1: TLabel
    Left = 154
    Top = 27
    Width = 78
    Height = 13
    Caption = 'Tempo Thread 1'
  end
  object Label2: TLabel
    Left = 154
    Top = 54
    Width = 78
    Height = 13
    Caption = 'Tempo Thread 2'
  end
  object Label3: TLabel
    Left = 20
    Top = 99
    Width = 43
    Height = 13
    Caption = 'Thread 1'
  end
  object Label4: TLabel
    Left = 20
    Top = 141
    Width = 43
    Height = 13
    Caption = 'Thread 2'
  end
  object Button1: TButton
    Left = 320
    Top = 34
    Width = 75
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object EditTempo1: TEdit
    Left = 238
    Top = 24
    Width = 43
    Height = 21
    TabOrder = 1
  end
  object EditTempo2: TEdit
    Left = 238
    Top = 51
    Width = 43
    Height = 21
    TabOrder = 2
  end
end
