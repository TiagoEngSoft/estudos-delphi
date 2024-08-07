unit Cliente;

interface

uses
  System.Classes;


type
  TClasseAmiga = class
    strict private
      Teste : String;
    public
      procedure TesteDeSoftware;
  end;

type
  TCliente = class
  strict private
    FDataNascimento: TDateTime;
    FNome: String;
    FTelefone : String;
    FEndereco : String;
    procedure SetDataNascimento(const Value: TDateTime);
    procedure SetNome(const Value: String);
    function GetEndereco: String;
    procedure SetEndereco(const Value: String);
  public
    Cidade: String;
    UF: String;
    Saldo : Currency;
    constructor Create;
    procedure CadastrarCliente;
    procedure CriarFinanceiro;
    function Idade : Integer;
    property Nome : String read FNome write SetNome;
    property DataNascimento : TDateTime read FDataNascimento write SetDataNascimento;
    property Telefone : String read FTelefone write FTelefone;
    property Endereco: String read GetEndereco write SetEndereco;

  end;

implementation

uses
  System.SysUtils;

{ TCliente }

procedure TCliente.CadastrarCliente;
var
  Lista : TStringList;
begin
  Lista := TStringList.Create;
  try
    Lista.Add('Nome:' + Nome);
    Lista.Add('Telefone:' + Telefone);
    Lista.Add('Endere�o:' + Endereco);
    Lista.Add('Cidade:' + Cidade);
    Lista.Add('UF:' + UF);
    Lista.SaveToFile(Nome + '_Cliente.txt');
  finally
    Lista.Free;
  end;
end;

constructor TCliente.Create;
begin
  UF := 'RJ';
  Saldo := 1000;
end;

procedure TCliente.CriarFinanceiro;
var
  Lista : TStringList;
begin
  Lista := TStringList.Create;
  try
    Lista.Add('Nome:' + Nome);
    Lista.Add('Saldo:' + CurrToStr(Saldo));
    Lista.SaveToFile(Nome + '_Financeiro.txt');
  finally
    Lista.Free;
  end;
end;

function TCliente.GetEndereco: String;
begin
  Result := FEndereco + ' | Rio de Janeiro | Brasil';
end;

function TCliente.Idade: Integer;
begin
  Result := Trunc((Now - FDataNascimento) / 365.25);
end;

procedure TCliente.SetDataNascimento(const Value: TDateTime);
begin
  FDataNascimento := Value;
end;

procedure TCliente.SetEndereco(const Value: String);
begin
  FEndereco := Value;
end;

procedure TCliente.SetNome(const Value: String);
begin
  if Value = '' then
    raise Exception.Create('Nome n�o pode ser nulo');

  FNome := Value;
end;

{ TClasseAmiga }

procedure TClasseAmiga.TesteDeSoftware;
var
  aClasse : TCliente;
begin
  aClasse.Cidade;
end;

end.
