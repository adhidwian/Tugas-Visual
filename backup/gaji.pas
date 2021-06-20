unit gaji;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm4 }

  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    cJabatan: TComboBox;
    Edit1: TEdit;
    ePokok: TEdit;
    eTunjangan: TEdit;
    eBersih: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    eTetap: TRadioButton;
    eHonorer: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cJabatanChange(Sender: TObject);
    procedure eHonorerChange(Sender: TObject);
    procedure eTetapChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private

  public

  end;

var
  Form4: TForm4;

implementation

{$R *.lfm}

{ TForm4 }

procedure TForm4.cJabatanChange(Sender: TObject);
begin
     if cjabatan.Text = 'Direktur' then
     epokok.Text := '5000000'
  else
      if cjabatan.Text = 'Manager' then epokok.Text := '2000000'
  else
      if cjabatan.Text = 'Karyawan' then epokok.Text := '1000000'
  else
      epokok.Text := '0'

end;

procedure TForm4.Button1Click(Sender: TObject);
var
  a,b,c:real;
begin
  a := strtofloat(epokok.Text);
  b := strtofloat(etunjangan.Text);
  c := a+b;
ebersih.Text := floattostr(c);

end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  cjabatan.Text := 'Pilih Jabatan';
  Edit1.Text := '';
  ebersih.Text := '0';
  etunjangan.Text := '0';
  epokok.Text := '0';
  etetap.Checked := false;
  ehonorer.Checked := false;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
  close
end;

procedure TForm4.eHonorerChange(Sender: TObject);
var
  a, hasil:real;
begin
  if ehonorer.Checked = true then
  a := strtofloat(epokok.Text);
  hasil  :=a*0.1;
  etunjangan.Text := floattostr(hasil)

end;

procedure TForm4.eTetapChange(Sender: TObject);
var
  a, hasil:real;
begin
  if etetap.Checked = true then
  a := strtofloat(epokok.Text);
  hasil  :=a*0.3;
  etunjangan.Text := floattostr(hasil)
end;

procedure TForm4.FormActivate(Sender: TObject);
begin
     cjabatan.Text := 'Pilih Jabatan';
  Edit1.Text := '';
  ebersih.Text := '0';
  etunjangan.Text := '0';
  epokok.Text := '0';
  etetap.Checked := false;
  ehonorer.Checked := false;
end;





end.

