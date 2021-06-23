unit FDQuery1;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TspQuery = class(TFDQuery)
  private
    FspCondicoes: TStringList;
    FspColunas: TStringList;
    FspTabelas: TStringList;

    { Private declarations }
  protected
    { Protected declarations }
  public
   procedure SetspColunas(const Value: TStringList);
   procedure SetspCondicoes(const Value: TStringList);
   procedure SetspTabelas(const Value: TStringList);

   procedure GeraSQL;
    { Public declarations }
  published
   property spCondicoes: TStringList read FspCondicoes write SetspCondicoes;
   property spColunas: TStringList read FspColunas write SetspColunas;
   property spTabelas: TStringList read FspTabelas write SetspTabelas;


    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('spComponentes', [TspQuery]);
end;

{ TspQuery }

procedure TspQuery.GeraSQL;
var sSQLCol, sSQLTab, sSQLCond, sSQL: string;
    Cont: integer;
begin

 Self.Active:= false;

 sSQL:= 'SELECT '+#13;

 for sSQLCol in FspColunas do
 begin
      sSQL:= sSQL+sSQLCol+', '
 end;

 sSQL:= copy(sSQL,1,length(sSQL)-1);

 sSQL:= sSQL+#13+'FROM '+#13;

 for sSQLTab in FspTabelas do
 begin
   sSQL:= sSQL+sSQLTab;
 end;

  sSQL:= sSQL+#13+'WHERE '+#13;

 for sSQLCond in FspCondicoes do
 begin
   sSQL:= sSQL+sSQLCond+' AND ' ;
 end;

  sSQL:= copy(sSQL,1,length(sSQL)-5);

  Self.SQL.Text := sSQL;

end;

procedure TspQuery.SetspColunas(const Value: TStringList);
begin
  FspColunas := Value;
end;

procedure TspQuery.SetspCondicoes(const Value: TStringList);
begin
  FspCondicoes := Value;
end;

procedure TspQuery.SetspTabelas(const Value: TStringList);
begin
  FspTabelas := Value;
end;

end.
