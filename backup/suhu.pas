unit suhu;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm8 }

  TForm8 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    bAwal: TEdit;
    bAkhir: TEdit;
    bTambah: TEdit;
    Button3: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListBox3: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private

  public

  end;

var
  Form8: TForm8;

implementation

{$R *.lfm}

{ TForm8 }
//Program Konversi dari Celcius ke Fahrenheit dan Kelvin
procedure TForm8.Button2Click(Sender: TObject);
begin
  close
end;

procedure TForm8.Button3Click(Sender: TObject);
begin
  bAwal.Text:='';
  bAkhir.Text:='';
  bTambah.Text:='';
  ListBox1.Clear;
  ListBox2.Clear;
  ListBox3.Clear;
end;

procedure TForm8.FormActivate(Sender: TObject);
begin
   bAwal.Text:='';
  bAkhir.Text:='';
  bTambah.Text:='';
  ListBox1.Clear;
  ListBox2.Clear;
  ListBox3.Clear;
end;

procedure TForm8.Button1Click(Sender: TObject);
var
  awal, akhir, tambah:Real;
  celcius, faren, kelvin:String;
  hitungCF, hitungCK:real;
begin
  awal:=StrToFloat(bAwal.Text);
  akhir:=StrToFloat(bAkhir.Text);
  tambah:=StrToFloat(bTambah.Text);

  repeat
    //C Ke F
    celcius:=FloatToStr(awal);
    hitungCF:=(1.8*awal)+32;
    faren:=FloatToStr(hitungCF);

    //C ke K
    celcius:=FloatToStr(awal);
    hitungCK:=awal+273.15;
    kelvin:=FloatToStr(hitungCK);

    ListBox1.Items.Add(celcius);
    ListBox2.Items.Add(faren);
    ListBox3.Items.Add(kelvin);
    awal:=awal+tambah;
  until
       awal>akhir;


end;

end.

