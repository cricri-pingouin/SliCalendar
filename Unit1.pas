unit Unit1;

interface

uses
  SysUtils, Classes, Controls, Forms, ExtCtrls, ComCtrls, StdCtrls, MMSystem;

type
  TForm1 = class(TForm)
    cal1: TMonthCalendar;
    DateTimePicker1: TDateTimePicker;
    tmrCaption: TTimer;
    lblChrono: TLabel;
    lblDateDiff: TLabel;
    lblChronoValue: TLabel;
    btnChronoStartStop: TButton;
    btnChronoReset: TButton;
    tmrChrono: TTimer;
    lblTimer: TLabel;
    dtp1: TDateTimePicker;
    btnTimerStartStop: TButton;
    tmrTimer: TTimer;
    procedure DateBetween;
    procedure FormShow(Sender: TObject);
    procedure cal1Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure btnChronoStartStopClick(Sender: TObject);
    procedure btnChronoResetClick(Sender: TObject);
    procedure btnTimerStartStopClick(Sender: TObject);
    procedure tmrCaptionTimer(Sender: TObject);
    procedure tmrChronoTimer(Sender: TObject);
    procedure tmrTimerTimer(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    Chrono, Timer: Boolean;
    ChronoTime: TTime;
    const
      TimerInterval = 1 / 24 / 60 / 60;
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
  lblDateDiff.Caption := Caption;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Self.Caption := TimeToStr(Time);
  cal1.Date := Date;
  DateTimePicker1.DateTime := Date;
  ChronoTime := 0;
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

procedure TForm1.btnChronoStartStopClick(Sender: TObject);
begin
  if not Chrono then
  begin
    btnChronoStartStop.Caption := 'Stop';
    Chrono := True;
    tmrChrono.enabled := True;
  end
  else
  begin
    tmrChrono.enabled := False;
    Chrono := False;
    btnChronoStartStop.Caption := 'Start';
  end;
end;

procedure TForm1.btnChronoResetClick(Sender: TObject);
begin
  ChronoTime := 0;
  lblChronoValue.Caption := '00:00:00';
end;

procedure TForm1.btnTimerStartStopClick(Sender: TObject);
begin
  if not Timer then
  begin
    btnTimerStartStop.Caption := 'Stop';
    dtp1.Date := 1000;
    Timer := True;
    tmrTimer.enabled := True;
  end
  else
  begin
    tmrTimer.enabled := False;
    Timer := False;
    btnTimerStartStop.Caption := 'Start';
  end;
end;

procedure TForm1.tmrCaptionTimer(Sender: TObject);
begin
  Form1.Caption := TimeToStr(Time);
end;

procedure TForm1.tmrChronoTimer(Sender: TObject);
begin
  ChronoTime := ChronoTime + TimerInterval;
  lblChronoValue.Caption := TimeToStr(ChronoTime);
end;

procedure TForm1.tmrTimerTimer(Sender: TObject);
begin
  dtp1.Time := dtp1.Time - TimerInterval;
  if dtp1.Time >= 1000.9999 then
  begin
    dtp1.Time := 0;
    sndPlaySound('sound.wav', SND_NODEFAULT or SND_ASYNC);
    btnTimerStartStopClick(Self);
  end;
end;

end.

