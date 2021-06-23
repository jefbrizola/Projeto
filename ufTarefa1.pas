unit ufTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FDQuery1,
  FireDAC.Phys.FBDef, FireDAC.Phys, FireDAC.Phys.IBBase, FireDAC.Phys.FB,
  IdBaseComponent, IdThreadComponent;

type
  TfTarefa1 = class(TForm)
    MemoColunas: TMemo;
    MemoTabelas: TMemo;
    MemoCondicoes: TMemo;
    MemoSQL: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    spQuery1: TspQuery;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure MemoTabelasKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MemoColunasKeyPress(Sender: TObject; var Key: Char);
    procedure MemoCondicoesKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa1: TfTarefa1;
  type
  Erro = class(Exception);

implementation

{$R *.dfm}

procedure TfTarefa1.Button1Click(Sender: TObject);
var sl,s2,s3: TStringList;
    sSQLCol: string;
begin

  if MemoTabelas.Lines.Count > 1 then
  begin
    raise Erro.create('Só é permitido informar apenas 1 tabela!');
    MemoTabelas.SetFocus;
    exit;
  end;


  sl := TStringList.Create;
  for sSQLCol in MemoColunas.Lines do
  begin
     sl.Add(sSQLCol);
     spQuery1.SetspColunas(sl);
  end;

  s2 := TStringList.Create;
  s2.Add(MemoTabelas.Lines.Text);
  spQuery1.SpTabelas:=s2;

  s3 := TStringList.Create;
  for sSQLCol in MemoCondicoes.Lines do
  begin
     s3.Add(sSQLCol);
     spQuery1.SetspCondicoes(s3);
  end;


  spQuery1.GeraSQL;
  
  MemoSQL.Text:= spQuery1.SQL.Text;

end;

procedure TfTarefa1.Button2Click(Sender: TObject);
begin

 MemoColunas.Clear;
 MemoTabelas.Clear;
 MemoCondicoes.Clear;
 MemoSQL.Clear;


end;

procedure TfTarefa1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FreeAndNil(fTarefa1);
end;

procedure TfTarefa1.MemoColunasKeyPress(Sender: TObject; var Key: Char);
begin

//Quebrar linhas automaticamente
If key = #32 then
   Begin
      Key:= #13;
   end;

end;

procedure TfTarefa1.MemoCondicoesKeyPress(Sender: TObject; var Key: Char);
begin
If key = #32 then
   Begin
      Key:= #13;
   end;
end;

procedure TfTarefa1.MemoTabelasKeyPress(Sender: TObject; var Key: Char);
begin

If key = #32 then
   Begin
      Key:= #13;
   end;

end;

end.
