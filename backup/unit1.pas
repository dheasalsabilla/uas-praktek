unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Ca, pH: real;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Ca:=strtofloat(edit1.text);
  pH:=-ln(ca)/ln(10);
  label3.caption:= 'Harga pH Asam Kuat = ' + floattostr(pH);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  edit1.text:= ' ' ;
  label3.caption:= ' ';
  edit1.setfocus;
end;

end.

