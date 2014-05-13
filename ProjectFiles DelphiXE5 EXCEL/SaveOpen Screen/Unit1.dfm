object FrmPreLoader: TFrmPreLoader
  Left = 481
  Top = 235
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Loading CADDOM'
  ClientHeight = 298
  ClientWidth = 381
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object FC: TTransparentFlashPlayerControl
    Left = 0
    Top = 0
    Width = 381
    Height = 298
    Align = alClient
    OnFSCommand = FCFSCommand
    Movie = 'C:\Program Files\Abacus\CADDOM\Animation\CAD_PRELOADER.swf'
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
    MakeParentTransparent = True
  end
end
