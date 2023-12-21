object Form1: TForm1
  Left = 214
  Top = 188
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Calendar'
  ClientHeight = 271
  ClientWidth = 267
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
    Width = 105
    Height = 13
    Caption = 'Selected date is today'
  end
  object lbl2: TLabel
    Left = 96
    Top = 248
    Width = 57
    Height = 13
    Caption = '00:00:00'
  end
  object lbl3: TLabel
    Left = 8
    Top = 248
    Width = 82
    Height = 13
    Caption = 'Chronometer:'
  end
  object cal1: TMonthCalendar
    Left = 8
    Top = 8
    Width = 251
    Height = 183
    Date = 45280.554234131950000000
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
  object btn1: TButton
    Left = 208
    Top = 240
    Width = 51
    Height = 21
    Caption = 'Start'
    TabOrder = 2
    OnClick = btn1Click
  end
  object tmr1: TTimer
    OnTimer = tmr1Timer
    Left = 224
    Top = 112
  end
  object tmr2: TTimer
    Enabled = False
    OnTimer = tmr2Timer
    Left = 224
    Top = 152
  end
end
