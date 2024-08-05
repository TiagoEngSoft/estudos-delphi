unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Classe.Calculadora;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit3: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    FCalculadora: iCalculadora;
    procedure SetCalculadora(const Value: iCalculadora);
    procedure Operacao;
    { Private declarations }
  public
    { Public declarations }
    property Calculadora : iCalculadora read FCalculadora write SetCalculadora;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Calculadora := TSoma.New;
  Operacao;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Calculadora := TSubtrair.New;
  Operacao;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Calculadora := TDividir.New;
  Operacao;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Calculadora := TMultiplicar.New;
  Operacao;
end;

procedure TForm1.Operacao;
begin
  Edit3.Text := FloatToStr(Calculadora.Operacao(StrToFloat(Edit1.Text), StrToFloat(Edit2.Text)));
end;

procedure TForm1.SetCalculadora(const Value: iCalculadora);
begin
  FCalculadora := Value;
end;

end.
