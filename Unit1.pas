unit Unit1;

interface

uses
  SysUtils, Classes, Controls, Forms, ExtCtrls, ComCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    cal1: TMonthCalendar;
    DateTimePicker1: TDateTimePicker;
    lbl1: TLabel;
    tmr1: TTimer;
    procedure DateBetween;
    procedure FormShow(Sender: TObject);
    procedure cal1Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.DateBetween;
var
  i: Extended;
begin
  i := Round(Now - cal1.Date);
  if i = 0 then
    lbl1.Caption := 'Today.'
  else if i = 1 then
    lbl1.Caption := 'Yesterday.'
  else if i = -1 then
    lbl1.Caption := 'Tomorrow.'
  else if i > 0 then
    lbl1.Caption := FloatToStr(i) + ' days ago.'
  else
    lbl1.Caption := FloatToStr(Abs(i)) + ' days from today.';
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Self.Caption := TimeToStr(Now);
  cal1.Date := Now;
  DateTimePicker1.DateTime := Now;
end;

procedure TForm1.cal1Click(Sender: TObject);
begin
  DateTimePicker1.DateTime := cal1.Date;
  DateBetween;
end;

procedure TForm1.DateTimePicker1Change(Sender: TObject);
begin
  cal1.Date := DateTimePicker1.DateTime;
  DateBetween;
end;

procedure TForm1.tmr1Timer(Sender: TObject);
begin
  Form1.Caption := TimeToStr(Now);
  DateTimePicker1.Time := Now;
end;

end.

