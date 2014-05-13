object frmEpisodeDatePicker: TfrmEpisodeDatePicker
  Left = 1588
  Top = 198
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'frmEpisodeDatePicker'
  ClientHeight = 282
  ClientWidth = 290
  Color = clWhite
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape56: TShape
    Left = 0
    Top = 0
    Width = 290
    Height = 282
    Align = alClient
    Pen.Color = 3513907
    ExplicitTop = -24
    ExplicitWidth = 282
    ExplicitHeight = 418
  end
  object Shape57: TShape
    Left = 0
    Top = -5
    Width = 473
    Height = 43
    Brush.Color = 3513907
    Pen.Color = 3513907
  end
  object lab_Prev_PatientID: TLabel
    Left = 8
    Top = 8
    Width = 280
    Height = 30
    AutoSize = False
    Caption = 'Select appointment date:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label94: TLabel
    Left = 37
    Top = 88
    Width = 124
    Height = 27
    AutoSize = False
    Caption = 'Entered By:'
    FocusControl = DBEdit_Patient_EnteredBy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 2960685
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label96: TLabel
    Left = 122
    Top = 83
    Width = 17
    Height = 26
    AutoSize = False
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7368816
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn_Confirm_Ini: TFlashButtonEx
    Left = 41
    Top = 156
    Width = 213
    Height = 41
    OnClick = btn_Confirm_IniClick
    Movie = 
      '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
      'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
    FrameNum = 0
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
    FlashVars = 'btnTxt=Confirm initial visit'
    AllowFullscreen = False
    ButtonCaption = 'Confirm initial visit'
    MoviePath = 
      '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
      'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
  end
  object FlashButtonEx1: TFlashButtonEx
    Left = 41
    Top = 203
    Width = 213
    Height = 41
    OnClick = FlashButtonEx1Click
    Movie = 
      '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
      'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
    FrameNum = 0
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
    FlashVars = 'btnTxt=Cancel'
    AllowFullscreen = False
    ButtonCaption = 'Cancel'
    MoviePath = 
      '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
      'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
  end
  object Label1: TLabel
    Left = 316
    Top = 45
    Width = 285
    Height = 23
    AutoSize = False
    Caption = 'Warning: Invalid date! '
    FocusControl = DBEdit_Patient_EnteredBy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 2960685
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Visible = False
    WordWrap = True
  end
  object Label2: TLabel
    Left = 316
    Top = 64
    Width = 285
    Height = 36
    AutoSize = False
    Caption = 
      'The date selected is after the follow up visit. Please edit the ' +
      'follow up visit dates first. '
    FocusControl = DBEdit_Patient_EnteredBy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 2960685
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Visible = False
    WordWrap = True
  end
  object btn_Confirm_FollowUp: TFlashButtonEx
    Left = 41
    Top = 156
    Width = 213
    Height = 41
    OnClick = btn_Confirm_FollowUpClick
    Movie = 
      '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
      'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
    FrameNum = 0
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
    FlashVars = 'btnTxt=Confirm follow up visit'
    AllowFullscreen = False
    ButtonCaption = 'Confirm follow up visit'
    MoviePath = 
      '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
      'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 37
    Top = 52
    Width = 111
    Height = 26
    Date = 0.612807314806559600
    Time = 0.612807314806559600
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnCloseUp = DateTimePicker1CloseUp
    OnChange = DateTimePicker1Change
    OnExit = DateTimePicker1Exit
  end
  object Button32: TButton
    Left = 20
    Top = 567
    Width = 75
    Height = 25
    Caption = 'Confirm'
    TabOrder = 1
    OnClick = Button32Click
  end
  object DBGrid8: TDBGrid
    Left = 445
    Top = 516
    Width = 276
    Height = 316
    DataSource = frmDBControls.ALC_DS_ANSWERS_BASE
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit_Patient_EnteredBy: TDBEdit
    Left = 37
    Top = 113
    Width = 220
    Height = 26
    DataField = 'EnteredBy'
    DataSource = frmDBControls.ALC_DS_ANSWERS_BASE
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 2960685
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnChange = DBEdit_Patient_EnteredByChange
  end
  object DBEdit1: TDBEdit
    Left = 333
    Top = 142
    Width = 292
    Height = 21
    DataField = 'episodeDate'
    DataSource = frmDBControls.ALC_DS_ANSWERS_BASE
    TabOrder = 4
    OnChange = DBEdit1Change
  end
end
