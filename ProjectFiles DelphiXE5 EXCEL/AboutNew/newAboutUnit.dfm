object frmNewAbout: TfrmNewAbout
  Left = 2009
  Top = 251
  BorderStyle = bsNone
  Caption = 'frmNewAbout'
  ClientHeight = 320
  ClientWidth = 420
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object FlashPlayerControl1: TTransparentFlashPlayerControl
    Left = 0
    Top = 0
    Width = 420
    Height = 320
    Align = alClient
    OnFSCommand = FlashPlayerControl1FSCommand
    Movie = 
      '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\Setup Source Files DelphiXE5\SET\Animation\ABOUT.swf'
    FrameNum = -1
    Playing = True
    Quality = 1
    ScaleMode = 3
    AlignMode = 0
    BackgroundColor = -1
    Loop = True
    WMode = 'Transparent'
    Menu = True
    Scale = 'NoScale'
    DeviceFont = False
    EmbedMovie = False
    Quality2 = 'High'
    AllowFullscreen = False
    MakeParentTransparent = True
    ExplicitWidth = 862
    ExplicitHeight = 613
  end
end
