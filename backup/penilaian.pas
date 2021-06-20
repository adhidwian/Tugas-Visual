unit penilaian;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm5 }

  TForm5 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit7: TEdit;
    Edit1: TEdit;
    Edit10: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit9: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    pagi: TRadioButton;
    kotakSI: TRadioButton;
    kotakTI: TRadioButton;
    sore: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure kotakSIChange(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure kotakTIChange(Sender: TObject);
    procedure pagiChange(Sender: TObject);
    procedure soreChange(Sender: TObject);
  private

  public

  end;

var
  Form5: TForm5;

implementation

{$R *.lfm}

{ TForm5 }



procedure TForm5.Button1Click(Sender: TObject);
var
  total_biaya, a, bw:real;
begin

  a:=StrToFloat(Edit7.Text);
  bw:=StrToFloat(Edit9.Text);
  total_biaya:=a+bw;
  Edit10.Text:=FloatToStr(total_biaya);


end;

procedure TForm5.Button2Click(Sender: TObject);
begin
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  Edit4.Text:='';
  Edit5.Text:='';
  Edit6.Text:='';
  Edit7.Text:='';
  Edit9.Text:='';
  Edit10.Text:='';
  kotakSI.Checked:=false;
  kotakTI.Checked:=false;
  pagi.Checked:=false;
  sore.Checked:=false;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
  close
end;

procedure TForm5.Button4Click(Sender: TObject);
VAR
   nilai1,nilai2,hasil1,hasil2,hasil3:real;
begin
     nilai1:=StrToFloat(Edit1.Text);
  nilai2:=StrToFloat(Edit2.Text);
  hasil1:=(nilai1*40)/100;
  hasil2:=(nilai2*60)/100;
  Edit3.Text:=FloatToStr(hasil1);
  Edit4.Text:=FloatToStr(hasil2);

  hasil3:=hasil2+hasil1;
  Edit5.Text:=FloatToStr(hasil3);

  if hasil3<60 then
  Edit6.Text:='Gagal'
  else
  if hasil3>=60 then
  Edit6.Text:='Lulus';
end;

procedure TForm5.FormActivate(Sender: TObject);
begin
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  Edit4.Text:='';
  Edit5.Text:='';
  Edit6.Text:='';
  Edit7.Text:='';
  Edit9.Text:='';
  Edit10.Text:='';
  kotakSI.Checked:=false;
  kotakTI.Checked:=false;
  pagi.Checked:=false;
  sore.Checked:=false;
end;

procedure TForm5.kotakSIChange(Sender: TObject);
var
  a:real;
begin
    if kotakSI.Checked = true then
    a:=2500000;
    Edit7.Text:=FloatToStr(a);

    if kotakSI.Checked= false then
    Edit7.Text:='';
end;

procedure TForm5.Edit3Change(Sender: TObject);
begin

end;

procedure TForm5.kotakTIChange(Sender: TObject);
VAR
  a:real;
begin
        if kotakTI.Checked = true then
    a:=3000000;
    Edit7.Text:=FloatToStr(a);

    if kotakTI.Checked= false then
    Edit7.Text:=''
end;


procedure TForm5.pagiChange(Sender: TObject);
var
biaya_pagi:real;
begin
    if pagi.Checked = true then
    biaya_pagi:=50000;
    Edit9.Text:=FloatToStr(biaya_pagi);
end;

procedure TForm5.soreChange(Sender: TObject);
var
biaya_sore:real;
begin
    if sore.Checked = true then
    biaya_sore:=1000000;
    Edit9.Text:=FloatToStr(biaya_sore);
end;

end.

