unit profil;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm9 }

  TForm9 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private

  public

  end;

var
  Form9: TForm9;

implementation

{$R *.lfm}

{ TForm9 }


procedure TForm9.FormActivate(Sender: TObject);
begin

end;

procedure TForm9.Button1Click(Sender: TObject);
begin
  CLOSE
end;


end.

