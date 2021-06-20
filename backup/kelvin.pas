unit Kelvin;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm11 }

  TForm11 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    bAwal: TEdit;
    bAkhir: TEdit;
    bTambah: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
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
  Form11: TForm11;

implementation

{$R *.lfm}

{ TForm11 }

procedure TForm11.Button3Click(Sender: TObject);
begin
  close
end;

procedure TForm11.FormActivate(Sender: TObject);
begin
    bAwal.Text:='';
  bAkhir.Text:='';
  bTambah.Text:='';
  ListBox1.Clear;
  ListBox2.Clear;
  ListBox3.Clear;
end;

procedure TForm11.Button2Click(Sender: TObject);
begin
  bAwal.Text:='';
  bAkhir.Text:='';
  bTambah.Text:='';
  ListBox1.Clear;
  ListBox2.Clear;
  ListBox3.Clear;
end;

procedure TForm11.Button1Click(Sender: TObject);
var
  awal, akhir, tambah, hasilKC, hasilKF:real;
  kelvin, celcius, fahren:String;
begin
  awal:=StrToFloat(bAwal.Text);
  akhir:=StrToFloat(bAkhir.Text);
  tambah:=StrToFloat(bTambah.Text);

  repeat
    //K ke C
    kelvin:=FloatToStr(awal);
    hasilKC:=awal-273.15;
    celcius:=FloatToStr(hasilKC);

    //K ke F
    kelvin:=FloatToStr(awal);
    hasilKF:=(awal-273.15)*1.8+32;
    fahren:=FloatToStr(hasilKF);

    ListBox1.Items.Add(kelvin);
    ListBox2.Items.Add(fahren);
    ListBox3.Items.Add(celcius);

    awal:=awal+tambah;
  until
  awal>akhir;
end;

end.

