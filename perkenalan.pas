unit perkenalan;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button2: TButton;
    eNPM: TEdit;
    eNama: TEdit;
    eAlamat: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  //nama:=InputBox('Input Nama','Masukkan Nama Anda','');
  //npm:=InputBox('Input NPM','Masukkan NPM Anda','');
  //alamat:=InputBox('Input Alamat','Masukkan Alamat Anda','');
  //eNPM.Text:=(npm);
  //eNama.Text:=(nama);
  //eAlamat.Text:=(alamat);

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  //eNPM.Text:='2010010047';
  //eNama.Text:='Dwian';
  //eAlamat.Text:='Banjarbaru';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  close
end;

procedure TForm1.FormActivate(Sender: TObject);
var
  nama,npm,alamat:String;
begin
  eNPM.Text:='';
  eNama.Text:='';
  eAlamat.Text:='';

  npm:=InputBox('Input NPM','Masukkan NPM Anda','');
  nama:=InputBox('Input Nama','Masukkan Nama Anda','');
  alamat:=InputBox('Input Alamat','Masukkan Alamat Anda','');
  eNPM.Text:=(npm);
  eNama.Text:=(nama);
  eAlamat.Text:=(alamat);
end;

end.

