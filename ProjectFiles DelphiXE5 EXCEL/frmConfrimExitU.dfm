object frmConfirmExit: TfrmConfirmExit
  Left = 480
  Top = 392
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'frmConfirmExit'
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
  Visible = True
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
      '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
      'Setup Source Files DelphiXE5\SET\Animation\ALCON_CLOSE.swf'
    FrameNum = 0
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
    ExplicitTop = -8
  end
end
