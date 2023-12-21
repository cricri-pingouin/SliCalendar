object Form1: TForm1
  Left = 214
  Top = 188
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Calendar'
  ClientHeight = 252
  ClientWidth = 271
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 224
    Width = 251
    Height = 13
    Caption = 'Today'
  end
  object cal1: TMonthCalendar
    Left = 8
    Top = 8
    Width = 251
    Height = 183
    Date = 45280.092180219910000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    WeekNumbers = True
    OnClick = cal1Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 8
    Top = 197
    Width = 251
    Height = 21
    Date = 45280.000000000000000000
    Time = 45280.000000000000000000
    DateMode = dmUpDown
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    OnChange = DateTimePicker1Change
  end
  object tmr1: TTimer
    OnTimer = tmr1Timer
    Left = 144
    Top = 120
  end
end
