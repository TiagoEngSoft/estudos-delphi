unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Button1: TButton;
    ComboBox1: TComboBox;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    PaintBox1: TPaintBox;
    PaintBox2: TPaintBox;
    PaintBox3: TPaintBox;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  FieldValue: string;
begin
  FieldValue := TField(DBGrid1.DataSource.DataSet.Fields.FieldByName('situacao')).AsString;

  // Configura a cor de fundo e a cor do texto com base no valor do campo
  if FieldValue = 'nao contado' then
  begin
    DBGrid1.Canvas.Brush.Color := clRed;
    DBGrid1.Canvas.Font.Color := clWhite; // Define a cor do texto como branco
  end
  else if FieldValue = 'em contagem' then
  begin
    DBGrid1.Canvas.Brush.Color := clYellow;
    DBGrid1.Canvas.Font.Color := clBlack; // Define a cor do texto como preto para melhor contraste
  end
  else
  begin
    DBGrid1.Canvas.Brush.Color := clGreen;
    DBGrid1.Canvas.Font.Color := clWhite; // Define a cor do texto como branco
  end;

  // Desenha o fundo da célula
  DBGrid1.Canvas.FillRect(Rect);

  // Desenha o texto da célula
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;
procedure TForm1.PaintBoxPaint(Sender: TObject);
var
  PaintBox: TPaintBox;
begin
  PaintBox := Sender as TPaintBox;

  // Qual a instancia
  if PaintBox = PaintBox1 then
    PaintBox.Canvas.Brush.Color := clRed
  else if PaintBox = PaintBox2 then
    PaintBox.Canvas.Brush.Color := clYellow
  else if PaintBox = PaintBox3 then
    PaintBox.Canvas.Brush.Color := clGreen;

  // Formato
  PaintBox.Canvas.FillRect(PaintBox.ClientRect);
end;


end.
