object Reffrm: TReffrm
  Left = 494
  Top = 206
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 486
  ClientWidth = 708
  Color = clWhite
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnPaint = FormPaint
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object FlashRefInfo: TTransparentFlashPlayerControl
    Left = 0
    Top = 0
    Width = 708
    Height = 486
    Align = alClient
    OnFSCommand = FlashRefInfoFSCommand
    Movie = 
      '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
      'Setup Source Files DelphiXE5\SET\Animation\REF.swf'
    FrameNum = -1
    Playing = True
    Quality = 1
    ScaleMode = 2
    AlignMode = 0
    BackgroundColor = -1
    Loop = True
    WMode = 'Transparent'
    Menu = True
    Scale = 'ExactFit'
    DeviceFont = False
    EmbedMovie = False
    Quality2 = 'High'
    AllowFullscreen = False
    MakeParentTransparent = True
  end
  object Button1: TButton
    Left = -1000
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
  end
end
