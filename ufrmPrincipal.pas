unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFrmPrincipal = class(TForm)
    Tarefas: TMainMenu;
    Tarefa1: TMenuItem;
    Tarefa2: TMenuItem;
    Tarefa3: TMenuItem;
    procedure Tarefa1Click(Sender: TObject);
    procedure Tarefa2Click(Sender: TObject);
    procedure Tarefa3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses ufTarefa1,ufTarefa2, ufTarefa3;

procedure TFrmPrincipal.Tarefa1Click(Sender: TObject);
begin
  fTarefa1:= TfTarefa1.Create(Self);
  fTarefa1.Show;
end;

procedure TFrmPrincipal.Tarefa2Click(Sender: TObject);
begin
  fTarefa2:= TfTarefa2.Create(Self);
  fTarefa2.Show;
end;

procedure TFrmPrincipal.Tarefa3Click(Sender: TObject);
begin
  fTarefa3:= TfTarefa3.Create(Self);
  fTarefa3.Show;
end;

end.


