unit menu_utama;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Menus,
  perkenalan, kalkulator, pembayaran, gaji, penilaian, penjualan,suhu,profil,fahrenheit,kelvin;

type

  { TForm6 }

  TForm6 = class(TForm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    procedure Image1Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
  private

  public

  end;

var
  Form6: TForm6;

implementation

{$R *.lfm}

{ TForm6 }

procedure TForm6.Image1Click(Sender: TObject);
begin

end;


procedure TForm6.MenuItem11Click(Sender: TObject);
begin
  Form8.ShowModal;
end;

procedure TForm6.MenuItem12Click(Sender: TObject);
begin
  Form10.ShowModal;
end;

procedure TForm6.MenuItem13Click(Sender: TObject);
begin
  Form11.ShowModal;
end;

procedure TForm6.MenuItem2Click(Sender: TObject);
begin
  Form9.ShowModal;
end;

procedure TForm6.MenuItem3Click(Sender: TObject);
begin
  close
end;

procedure TForm6.MenuItem4Click(Sender: TObject);
begin
  Form1.ShowModal;
end;

procedure TForm6.MenuItem5Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm6.MenuItem6Click(Sender: TObject);
begin
  Form3.ShowModal;
end;

procedure TForm6.MenuItem7Click(Sender: TObject);
begin
  Form4.ShowModal;
end;

procedure TForm6.MenuItem8Click(Sender: TObject);
begin
  Form5.ShowModal;
end;

procedure TForm6.MenuItem9Click(Sender: TObject);
begin
  Form7.ShowModal;
end;



end.

