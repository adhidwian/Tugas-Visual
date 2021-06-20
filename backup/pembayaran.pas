unit pembayaran;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    nBarang: TEdit;
    hBarang: TEdit;
    jBarang: TEdit;
    bBarang: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private

  public

  end;

var
  Form3: TForm3;

implementation

{$R *.lfm}

{ TForm3 }

procedure TForm3.Button1Click(Sender: TObject);
var
  harga, jumlah, bayar:real;
begin
  harga:=StrToFloat(hBarang.Text);
  jumlah:=StrToFloat(jBarang.Text);
  bayar:=harga*jumlah;
  bBarang.Text:=FloatToStr(bayar);

end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  close
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
  nBarang.Text:='';
  hBarang.Text:='';
  jBarang.Text:='';
  bBarang.Text:='';
end;

end.

