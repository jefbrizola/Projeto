unit ufTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, System.Math, Recurso;

type
  TfTarefa3 = class(TForm)
    DBGrid: TDBGrid;
    DBEdit3: TDBEdit;
    BtObterTot: TButton;
    BtObterTotDivi: TButton;
    EdTotal: TEdit;
    EdTotalDiv: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtObterTotClick(Sender: TObject);
    procedure BtObterTotDiviClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa3: TfTarefa3;
  CDS: TClientDataSet;
  DS: TDataSource;

implementation

{$R *.dfm}

procedure TfTarefa3.BtObterTotClick(Sender: TObject);
var  Calculo: TCalcula;
     nTotal: double;
begin
    Calculo:= TCalcula.Create;
    try
      nTotal := Calculo.calculo(CDS);
      EdTotal.Text:=  FloatToStr(nTotal);
    finally
      FreeAndNil(Calculo);
    end;


end;

procedure TfTarefa3.BtObterTotDiviClick(Sender: TObject);
var  Calculo: TCalcula;
     nTotal: double;

begin

    Calculo:= TCalcula.Create;
    try
        nTotal := Calculo.calculoTotDiv(CDS);
        EdTotalDiv.Text :=  FloatToStr(nTotal);
    finally
      FreeAndNil(Calculo);
    end;


end;

procedure TfTarefa3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CDS.Close;
  FreeAndNil(CDS);
  FreeAndNil(DS);
  FreeAndNil(fTarefa3);
end;

procedure TfTarefa3.FormCreate(Sender: TObject);
var  int : Integer;
       i : Integer;
begin

  CDS:= TClientDataSet.Create(Self);
  CDS.Close;
  CDS.FieldDefs.Clear;
  CDS.FieldDefs.add('idProjeto',ftInteger);
  CDS.FieldDefs.add('NomeProjeto',ftString,50);
  CDS.FieldDefs.add('Valor',ftCurrency);
  CDS.CreateDataSet;

  DS := TDataSource.Create(nil);
  DS.DataSet := CDS;

  DBGrid.DataSource:= DS;

  //Popula a Grid:

  CDS.Open;
  for i := 1 to 10 do
  begin
     CDS.Insert;
     CDS.FieldByName('idProjeto').AsInteger:= i;
     CDS.FieldByName('NomeProjeto').AsString:= 'Projeto'+IntToStr(i);
     CDS.FieldByName('Valor').AsCurrency:= Random(100);
  end;

end;

end.
