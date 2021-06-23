object fTarefa3: TfTarefa3
  Left = 0
  Top = 0
  Caption = 'Tarefa 3'
  ClientHeight = 443
  ClientWidth = 577
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid: TDBGrid
    Left = 24
    Top = 8
    Width = 529
    Height = 338
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IdProjeto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeProjeto'
        Width = 356
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Width = 73
        Visible = True
      end>
  end
  object DBEdit3: TDBEdit
    Left = 200
    Top = 840
    Width = 134
    Height = 21
    DataField = 'Valor'
    TabOrder = 1
  end
  object BtObterTot: TButton
    Left = 336
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Obter Total'
    TabOrder = 2
    OnClick = BtObterTotClick
  end
  object BtObterTotDivi: TButton
    Left = 296
    Top = 392
    Width = 115
    Height = 25
    Caption = 'Obter Total Divis'#245'es'
    TabOrder = 3
    OnClick = BtObterTotDiviClick
  end
  object EdTotal: TEdit
    Left = 432
    Top = 354
    Width = 121
    Height = 21
    Alignment = taRightJustify
    Enabled = False
    TabOrder = 4
  end
  object EdTotalDiv: TEdit
    Left = 432
    Top = 394
    Width = 121
    Height = 21
    Alignment = taRightJustify
    Enabled = False
    TabOrder = 5
  end
end
