object frmEndSection: TfrmEndSection
  Left = 772
  Top = 412
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'frmEndSection'
  ClientHeight = 348
  ClientWidth = 368
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel8: TPanel
    Left = 0
    Top = -5
    Width = 368
    Height = 353
    BevelOuter = bvNone
    Caption = 'Panel3'
    TabOrder = 0
    object Shape46: TShape
      Left = 0
      Top = 0
      Width = 368
      Height = 353
      Align = alClient
      Pen.Color = 3513907
      ExplicitLeft = -208
      ExplicitTop = -8
    end
    object Shape47: TShape
      Left = 0
      Top = 1
      Width = 440
      Height = 31
      Brush.Color = 3513907
      Pen.Color = 3513907
    end
    object lab_title: TLabel
      Left = 4
      Top = 8
      Width = 229
      Height = 19
      Caption = 'This completes the initial visit:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label47: TLabel
      Left = 12
      Top = 53
      Width = 314
      Height = 19
      Caption = 'Please choose one of the options below: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7368816
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Button40: TButton
      Left = 95
      Top = 144
      Width = 170
      Height = 25
      Caption = 'Patients'
      TabOrder = 0
      OnClick = Button40Click
    end
    object Button41: TButton
      Left = 95
      Top = 192
      Width = 170
      Height = 25
      Caption = 'Main menu'
      TabOrder = 1
      OnClick = Button41Click
    end
    object Button42: TButton
      Left = 95
      Top = 99
      Width = 170
      Height = 25
      Caption = 'Centre Details'
      TabOrder = 2
      OnClick = Button42Click
    end
  end
end
