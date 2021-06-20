unit penjualan;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm7 }

  TForm7 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    etotal: TEdit;
    etgl: TEdit;
    enofaktur: TEdit;
    eitem: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lnama: TListBox;
    lharga: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form7: TForm7;

implementation

{$R *.lfm}

{ TForm7 }

procedure TForm7.FormCreate(Sender: TObject);
begin
  DateSeparator:='-';
  ShortDateFormat:='mm/dd/yyyy';
  etgl.Text:=''+
  DateToStr(Date);
end;

procedure TForm7.Button1Click(Sender: TObject);
var
  inputnama, inputharga:String;
  i,j:integer;
  harga:real;
begin
  harga:=0;
  j:=0;
  j:=StrToInt(eitem.Text);
  if j<=0 then
  begin
    ShowMessage('Data tidak boleh lebih kecil dari nol');
    exit;
    end
  else
  begin
    for i:=1 to j do
    begin
      inputnama:=InputBox('Input Nama Barang','Ketikkan Nama Barang','');
      inputharga:=InputBox('Input Harga Barang','Ketikkan Harga Barang','');
      lnama.Items.Add(inputnama);
      lharga.Items.Add(inputharga);
      harga:=harga+StrToFloat(inputharga);
    end;
  end;
  etotal.Text:=FloatToStr(harga);

end;

procedure TForm7.Button2Click(Sender: TObject);
begin
  eitem.Text:='';
  enofaktur.Text:='';
  lnama.Clear;
  lharga.Clear;
  etotal.Text:='';
end;

procedure TForm7.Button4Click(Sender: TObject);
begin
  close
end;

procedure TForm7.FormActivate(Sender: TObject);
begin
eitem.Text:='';
  enofaktur.Text:='';
  lnama.Clear;
  lharga.Clear;
  etotal.Text:='';
end;

end.

