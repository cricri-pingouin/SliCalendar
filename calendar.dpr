program calendar;

uses
  Forms,
  Unit1 in '..\Calendar\Unit1.pas' {Form1};

{$R *.res}
{$SetPEFlags 1}

begin
  Application.Initialize;
  Application.Title := 'Calendar';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
