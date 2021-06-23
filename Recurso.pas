unit Recurso;

interface

  USES Datasnap.DBClient, system.classes, System.Math;

  type

   TCalcula = Class
   public
   class function calculo(var pCDS : TClientDataSet): Double;
   class function calculoTotDiv(var pCDS : TClientDataSet): Double;

   end;

implementation

{ TCalcula }

class function TCalcula.calculo(var pCDS: TClientDataSet): Double;
var nTotal : Double;
begin

  nTotal := 0;
  pCDS.First;
  while not pCDS.Eof do
  begin

   nTotal:= nTotal+ pCDS.FieldByName('Valor').AsCurrency;

   pCDS.Next;

  end;

  result := nTotal;




end;

class function TCalcula.calculoTotDiv(var pCDS: TClientDataSet): Double;
var nValorAnt,nValorAtual, nTotal : Double;
    Cont: integer;
begin

  nValorAnt   := 0;
  nValorAtual := 0;
  nTotal      := 0;
  Cont        :=0;
  pCDS.Open;
  pCDS.First;
  while not pCDS.Eof do
  begin
   if Cont > 0 then
   begin
      nValorAtual:= pCDS.FieldByName('Valor').AsCurrency;
      nTotal:= nTotal +(nValorAtual/nValorAnt);
   end;

   nValorAnt:= pCDS.FieldByName('Valor').AsCurrency;
   Inc(Cont);
   pCDS.Next;
  end;

  Result := Roundto(nTotal,-3);

end;

end.
