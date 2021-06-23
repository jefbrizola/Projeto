unit ufTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Samples.Gauges, Vcl.StdCtrls;


type

  TContador1 = class(TThread)
    protected
    fBarra: TGauge;
    fcont: Integer;
    fTempEspera : integer;
    procedure Contator;
    procedure Execute; override;
    constructor Cria(const Barra: TGauge);
  end;

 { TContador2 = class(TThread)
    protected
    fBarra: TGauge;
    fcont: Integer;
    fTempEspera : integer;
    procedure Contator;
    procedure Execute; override;
    constructor Cria(const Barra: TGauge);
  end;}


type

  TfTarefa2 = class(TForm)
    Button1: TButton;
    Gauge2: TGauge;
    EditTempo1: TEdit;
    Gauge1: TGauge;
    EditTempo2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa2: TfTarefa2;

implementation

{$R *.dfm}

{ TContador }

procedure TContador1.Contator;
begin


  Inc(fCont);

  fBarra.Progress :=fCont;

  if fCont = 100 then
  begin
   fBarra.MaxValue :=100;
   Terminate;
  end;


end;

constructor TContador1.Cria(const Barra: TGauge);
begin

  Create(False);
  fbarra             := Barra;
  FreeOnTerminate := True;
  fCont          := 0;

end;

procedure TContador1.Execute;
begin

  while not Terminated do
    begin

      Synchronize(Contator);

      Sleep(fTempEspera);

    end;

end;



procedure TfTarefa2.Button1Click(Sender: TObject);
Var Thr1: TContador1;
    Thr2: TContador1;

begin

  Thr1:= TContador1.Create(True);
  Thr2:= TContador1.Create(True);

  Thr1.fTempEspera:= StrToInt(EditTempo1.Text);
  Thr1.Cria(Gauge1);


  Thr2.fTempEspera:= StrToInt(EditTempo2.Text);
  Thr2.Cria(Gauge2);



end;



procedure TfTarefa2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FreeAndNil(fTarefa2);
end;

end.
