object References: TReferences
  Left = 1851
  Top = 276
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'References'
  ClientHeight = 139
  ClientWidth = 545
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 80
    Top = 32
    Width = 185
    Height = 41
    Caption = 'Load reference'
    TabOrder = 0
    Visible = False
    OnClick = Panel1Click
  end
  object RichEdit2: TRichEdit
    Left = 72
    Top = 24
    Width = 33
    Height = 49
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Lines.Strings = (
      'Rich'
      'Edit2')
    ParentFont = False
    TabOrder = 1
    Visible = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 41
    Height = 139
    Align = alLeft
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 2
  end
  object RichEdit1: TRichEdit
    Left = 41
    Top = 0
    Width = 463
    Height = 139
    TabStop = False
    Align = alClient
    Alignment = taCenter
    BorderStyle = bsNone
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Panel3: TPanel
    Left = 504
    Top = 0
    Width = 41
    Height = 139
    Align = alRight
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 4
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 545
    Height = 19
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 5
  end
end
