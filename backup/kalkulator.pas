unit kalkulator;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
var
  nil1,nil2,tambah: real;
begin
     nil1:=StrToFloat(Edit1.Text);
     nil2:=StrToFloat(Edit2.Text);
     tambah:=nil1+nil2;
     Edit3.Text:=FloatToStr(tambah);
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  nil1,nil2,tambah: real;
begin
     nil1:=StrToFloat(Edit1.Text);
     nil2:=StrToFloat(Edit2.Text);
     tambah:=nil1*nil2;
     Edit4.Text:=FloatToStr(tambah);

end;

procedure TForm2.Button3Click(Sender: TObject);
var
  nil1,nil2,tambah: real;
begin
     nil1:=StrToFloat(Edit1.Text);
     nil2:=StrToFloat(Edit2.Text);
     tambah:=nil1/nil2;
     Edit5.Text:=FloatToStr(tambah);

end;

procedure TForm2.Button4Click(Sender: TObject);
var
  nil1,nil2,tambah: real;
begin
   nil1:=StrToFloat(Edit1.Text);
   nil2:=StrToFloat(Edit2.Text);
   tambah:=nil1-nil2;
   Edit6.Text:=FloatToStr(tambah);
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  Edit4.Text:='';
  Edit5.Text:='';
  Edit6.Text:='';
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
  close
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
     Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  Edit4.Text:='';
  Edit5.Text:='';
  Edit6.Text:='';
end;

end.

