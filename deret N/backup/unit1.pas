unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnHitung: TButton;
    edtJumlah: TEdit;
    edtFaktorial: TEdit;
    edtDeret: TEdit;
    rgHasil: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    N: TLabel;
    procedure btnHitungClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

function Factorial(N: integer): integer;
begin
  if N <= 1 then
    Result := 1
  else
    Result := N * Factorial(N - 1);
end;

procedure TForm1.btnHitungClick(Sender: TObject);
var
  N, faktorial, jumlah: integer;
  i: Integer;
begin
// Dapatkan nilai N dari TEdit (edtDeret)
  N := StrToIntDef(edtDeret.Text, 0);

// Hitung jumlah deret ke-N
  jumlah := 0;
  for i := 1 to N do
    jumlah := jumlah + i;
  edtJumlah.Text := IntToStr(jumlah);

// Hitung faktorial dari jumlah deret dan tampilkan hasilnya
  faktorial := Factorial(N);
  edtFaktorial.Text := IntToStr(faktorial);

end;

end.

