unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    E_1: TEdit;
    E_2: TEdit;
    E_Result: TEdit;
    btnPiu: TButton;
    btnLess: TButton;
    btnPer: TButton;
    btnDiviso: TButton;
    BtnClear: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure BtnClearClick(Sender: TObject);
    procedure btnPiuClick(Sender: TObject);
    procedure btnLessClick(Sender: TObject);
    procedure btnPerClick(Sender: TObject);
    procedure btnDivisoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPiuMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnPiuMouseLeave(Sender: TObject);
    procedure btnLessMouseLeave(Sender: TObject);
    procedure btnLessMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnPerMouseLeave(Sender: TObject);
    procedure btnPerMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnDivisoMouseLeave(Sender: TObject);
    procedure btnDivisoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    function Sum(const A:Integer; B:Integer) : Integer;
    function Men(const A:Integer; B:Integer) : Integer;
    function Per(const A:Integer; B:Integer) : Integer;
    function Divi(const A:Integer; B:Integer) : Integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnClearClick(Sender: TObject);
begin
  //E_1.Text := '';
  E_1.Clear;
  //E_2.Text := '';
  E_2.Clear;
  //E_Result.Text := '';
  E_Result.Clear;
  label2.Caption := '';

  end;

procedure TForm1.btnDivisoClick(Sender: TObject);
var
  A : Integer;
  B : Integer;
  Resu : Integer;
begin
  A := strToInt(E_1.Text);
  B := strToInt(E_2.Text);

  Resu := divi(A,B);

  E_Result.Text := intToStr(Resu);

  Label2.Caption := '/';

end;

procedure TForm1.btnDivisoMouseLeave(Sender: TObject);
begin
  Label2.Caption := '';
end;

procedure TForm1.btnDivisoMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Label2.Caption := '/';
end;

procedure TForm1.btnLessClick(Sender: TObject);
var
  A : Integer;
  B : Integer;
  Resu : Integer;
begin
  A := strToInt(E_1.Text);
  B := strToInt(E_2.Text);

  Resu := Men(A,B);

  E_Result.Text := IntToStr(Resu);

  Label2.Caption := '-';

end;

procedure TForm1.btnLessMouseLeave(Sender: TObject);
begin
  Label2.Caption := '';
end;

procedure TForm1.btnLessMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Label2.Caption := '-';
end;

procedure TForm1.btnPerClick(Sender: TObject);
var
A : Integer;
B : Integer;
Resu : Integer;
begin

  A := strToInt(E_1.Text);
  B := strToInt(E_2.Text);

  Resu := Per(A,B);

  E_Result.Text := IntToStr(Resu);

  Label2.Caption := '*';

end;

procedure TForm1.btnPerMouseLeave(Sender: TObject);
begin
  Label2.Caption := '';
end;

procedure TForm1.btnPerMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Label2.Caption := '*';
end;

procedure TForm1.btnPiuClick(Sender: TObject);
var
  A : Integer;
  B : Integer;
  Resu : Integer;
begin
  if E_1.Text = '' then
  begin
    ShowMessage('Digitare un valore da calcolare');
  end else
   if E_2.Text = '' then
      Begin
       ShowMessage('Digitare un valore da calcolare');
      End else
  begin
  A := strToInt(E_1.Text);
  B := strToInt(E_2.Text);

  Resu := Sum(A,B);

  E_Result.Text := IntToStr(Resu);

  Label2.Caption := '+';
  end;
end;


procedure TForm1.btnPiuMouseLeave(Sender: TObject);
begin
  Label2.Caption := '';
end;

procedure TForm1.btnPiuMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   Label2.Caption := '+';
end;

function TForm1.Divi(const A: Integer; B: Integer): Integer;
begin
  Result := A div B;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Label2.Caption := '';
end;

function TForm1.Men(const A: Integer; B: Integer): Integer;
begin
  Result := A - B;
end;

function TForm1.Per(const A: Integer; B: Integer): Integer;
begin
  Result := A * B;
end;

function TForm1.Sum(const A: Integer; B: Integer): Integer;
begin
  Result := A + B;
end;

end.
