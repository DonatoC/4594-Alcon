object FrmPreLoader: TFrmPreLoader
  Left = 302
  Top = 137
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Loading'
  ClientHeight = 320
  ClientWidth = 420
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object FC: TTransparentFlashPlayerControl
    Left = 0
    Top = 0
    Width = 420
    Height = 320
    Align = alClient
    OnFSCommand = FCFSCommand
    FrameNum = -1
    Playing = False
    Quality = 1
    ScaleMode = 0
    AlignMode = 0
    BackgroundColor = -1
    Loop = True
    WMode = 'Transparent'
    Menu = True
    Scale = 'ShowAll'
    DeviceFont = False
    EmbedMovie = False
    Quality2 = 'High'
    MakeParentTransparent = True
  end
end