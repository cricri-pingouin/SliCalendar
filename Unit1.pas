unit Unit1;

interface

uses
  SysUtils, Classes, Controls, Forms, ExtCtrls, ComCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    cal1: TMonthCalendar;
    DateTimePicker1: TDateTimePicker;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    btn1: TButton;
    tmr1: TTimer;
    tmr2: TTimer;
    procedure DateBetween;
    procedure FormShow(Sender: TObject);
    procedure cal1Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure tmr2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Chrono: Boolean;
    StartTime: TTime;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.DateBetween;
var
  i: Extended;
  Caption: string;
begin
  i := Date - cal1.Date;
  Caption := 'Selected date is ';
  if i = 0 then
    Caption := Caption + 'today.'
  else if i = 1 then
    Caption := Caption + 'yesterday.'
  else if i = -1 then
    Caption := Caption + 'tomorrow.'
  else if i > 0 then
    Caption := Caption + FloatToStr(i) + ' days ago.'
  else
    Caption := Caption + FloatToStr(Abs(i)) + ' days from today.';
  lbl1.Caption := Caption;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Self.Caption := TimeToStr(Time);
  cal1.Date := Date;
  DateTimePicker1.DateTime := Date;
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

procedure TForm1.btn1Click(Sender: TObject);
begin
  if not Chrono then
  begin
    Chrono := True;
    btn1.Caption := 'Stop';
    StartTime := Time;
    tmr2.enabled := True;
  end
  else
  begin
    Chrono := False;
    btn1.Caption := 'Start';
    tmr2.enabled := False;
  end;
end;

procedure TForm1.tmr1Timer(Sender: TObject);
begin
  Form1.Caption := TimeToStr(Time);
end;

procedure TForm1.tmr2Timer(Sender: TObject);
begin
  lbl2.Caption := TimeToStr(Time - StartTime);
end;

end.

