object frmSaveOpen: TfrmSaveOpen
  Left = 440
  Top = 294
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'data progress - Advagraf'
  ClientHeight = 197
  ClientWidth = 399
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
    Width = 399
    Height = 197
    Align = alClient
    OnFSCommand = FCFSCommand
    OnClick = FCClick
    Movie = 
      'C:\Program Files\Abacus\Advagraf\Animation\ADV_PRE_GENERATING.sw' +
      'f'
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
