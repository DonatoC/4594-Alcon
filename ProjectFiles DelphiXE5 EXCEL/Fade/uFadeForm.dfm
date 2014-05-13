object frmFadeForm: TfrmFadeForm
  Left = 310
  Top = 222
  Caption = 'frmFadeForm'
  ClientHeight = 564
  ClientWidth = 790
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TransparentFlashPlayerControl1: TTransparentFlashPlayerControl
    Left = 0
    Top = 0
    Width = 790
    Height = 564
    Align = alClient
    Movie = 
      '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
      'Setup Source Files DelphiXE5\SET\Animation\ALC_MASK.swf'
    FrameNum = 0
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
    ExplicitTop = -1
  end
end
