unit Fahrenheit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm10 }

  TForm10 = class(TForm)
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
  Form10: TForm10;

implementation

{$R *.lfm}

{ TForm10 }

procedure TForm10.Button3Click(Sender: TObject);
begin
  close
end;

procedure TForm10.FormActivate(Sender: TObject);
begin
   bAwal.Text:='';
  bAkhir.Text:='';
  bTambah.Text:='';
  ListBox1.Clear;
  ListBox2.Clear;
  ListBox3.Clear;
end;

procedure TForm10.Button2Click(Sender: TObject);
begin
  bAwal.Text:='';
  bAkhir.Text:='';
  bTambah.Text:='';
  ListBox1.Clear;
  ListBox2.Clear;
  ListBox3.Clear;
end;

procedure TForm10.Button1Click(Sender: TObject);
var
  awal, akhir, tambah,hasilFC,hasilFK:real;
  celcius, fahren, kelvin:String;
begin
  awal:=StrToFloat(bAwal.Text);
  akhir:=StrToFloat(bAkhir.Text);
  tambah:=StrToFloat(bTambah.Text);

  repeat
    //F ke C
    fahren:=FloatToStr(awal);
    hasilFC:=(awal-32)*(5/9);
    celcius:=FloatToStr(hasilFC);

    //F ke K
    fahren:=FloatToStr(awal);
    hasilFK:=(awal-32)*(5/9)+273.15;
    kelvin:=FloatToStr(hasilFK);

    ListBox1.Items.Add(fahren);
    ListBox2.Items.Add(celcius);
    ListBox3.Items.Add(kelvin);
    awal:=awal+tambah;

  until
  awal>akhir;

end;

end.

