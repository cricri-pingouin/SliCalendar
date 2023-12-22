object Form1: TForm1
  Left = 214
  Top = 188
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Calendar'
  ClientHeight = 299
  ClientWidth = 269
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
  object lblDateDiff: TLabel
    Left = 8
    Top = 224
    Width = 108
    Height = 13
    Caption = 'Selected date is today.'
  end
  object lblChronoValue: TLabel
    Left = 79
    Top = 248
    Width = 74
    Height = 13
    Caption = '00:00:00'
  end
  object lblChrono: TLabel
    Left = 8
    Top = 248
    Width = 65
    Height = 18
    Caption = 'Chronometer:'
  end
  object lblTimer: TLabel
    Left = 8
    Top = 272
    Width = 65
    Height = 13
    Caption = 'Timer:'
  end
  object cal1: TMonthCalendar
    Left = 8
    Top = 8
    Width = 251
    Height = 183
    Date = 45280.427283611110000000
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
  object btnChronoStartStop: TButton
    Left = 167
    Top = 245
    Width = 43
    Height = 21
    Caption = 'Start'
    TabOrder = 2
    OnClick = btnChronoStartStopClick
  end
  object btnTimerStartStop: TButton
    Left = 167
    Top = 272
    Width = 43
    Height = 21
    Caption = 'Start'
    TabOrder = 3
    OnClick = btnTimerStartStopClick
  end
  object dtp1: TDateTimePicker
    Left = 79
    Top = 272
    Width = 74
    Height = 21
    Date = 45282.000000000000000000
    Time = 45282.000000000000000000
    Kind = dtkTime
    TabOrder = 4
  end
  object btnChronoReset: TButton
    Left = 216
    Top = 245
    Width = 43
    Height = 21
    Caption = 'Reset'
    TabOrder = 5
    OnClick = btnChronoResetClick
  end
  object tmrCaption: TTimer
    OnTimer = tmrCaptionTimer
    Left = 224
    Top = 56
  end
  object tmrChrono: TTimer
    Enabled = False
    OnTimer = tmrChronoTimer
    Left = 224
    Top = 88
  end
  object tmrTimer: TTimer
    Enabled = False
    OnTimer = tmrTimerTimer
    Left = 224
    Top = 120
  end
end
