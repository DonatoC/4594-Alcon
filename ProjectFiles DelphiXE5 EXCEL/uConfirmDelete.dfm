object frmConfirmDelete: TfrmConfirmDelete
  Left = 1737
  Top = 258
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'frmConfirmDelete'
  ClientHeight = 270
  ClientWidth = 441
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
  object Shape56: TShape
    Left = 0
    Top = 0
    Width = 441
    Height = 270
    Align = alClient
    Pen.Color = 3513907
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 442
    ExplicitHeight = 250
  end
  object Shape57: TShape
    Left = 0
    Top = 0
    Width = 441
    Height = 43
    Brush.Color = 3513907
    Pen.Color = 3513907
  end
  object lab_Prev_PatientID: TLabel
    Left = 8
    Top = 4
    Width = 280
    Height = 30
    AutoSize = False
    Caption = 'Warning!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 40
    Top = 57
    Width = 345
    Height = 40
    Alignment = taCenter
    AutoSize = False
    Caption = 'Audit ID : #'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 2960685
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object Label1: TLabel
    Left = 40
    Top = 100
    Width = 345
    Height = 38
    Alignment = taCenter
    AutoSize = False
    Caption = 
      'You have selected to delete this record. Please select one of th' +
      'e options below.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 2960685
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object btn_Confirm_FollowUp: TFlashButtonEx
    Left = 122
    Top = 154
    Width = 181
    Height = 41
    OnClick = btn_Confirm_FollowUpClick
    Movie = 
      '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
    FrameNum = -1
    Playing = False
    Quality = 1
    ScaleMode = 3
    AlignMode = 5
    BackgroundColor = -1
    Loop = True
    WMode = 'Transparent'
    SAlign = 'LT'
    Menu = True
    Scale = 'NoScale'
    DeviceFont = False
    EmbedMovie = False
    Quality2 = 'High'
    AllowFullscreen = False
    ButtonCaption = 'Yes, delete'
    MoviePath = 
      '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
  end
  object FlashButtonEx1: TFlashButtonEx
    Left = 122
    Top = 201
    Width = 181
    Height = 41
    OnClick = FlashButtonEx1Click
    Movie = 
      '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
    FrameNum = -1
    Playing = False
    Quality = 1
    ScaleMode = 3
    AlignMode = 5
    BackgroundColor = -1
    Loop = True
    WMode = 'Transparent'
    SAlign = 'LT'
    Menu = True
    Scale = 'NoScale'
    DeviceFont = False
    EmbedMovie = False
    Quality2 = 'High'
    AllowFullscreen = False
    ButtonCaption = 'No, cancel'
    MoviePath = 
      '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
  end
end
