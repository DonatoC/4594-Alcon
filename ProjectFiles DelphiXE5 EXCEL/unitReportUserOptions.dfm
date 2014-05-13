object frmReportUserOptions: TfrmReportUserOptions
  Left = 540
  Top = 101
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'frmReportUserOptions'
  ClientHeight = 373
  ClientWidth = 534
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape56: TShape
    Left = 0
    Top = 43
    Width = 534
    Height = 330
    Align = alClient
    Pen.Color = 3513907
    ExplicitTop = 41
    ExplicitHeight = 504
  end
  object EFlashTable2: TEFlashTable
    Left = 107
    Top = 95
    Width = 320
    Height = 134
    Movie = 
      '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
      'Setup Source Files DelphiXE5\SET\Animation\ALC_TABLE.swf'
    FrameNum = 0
    Playing = True
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
    FlashVars = 'topBorderStroke=0x7CA0B8'
    AllowFullscreen = False
    rowHeight = 34
    allowColumnDrag = False
    MoviePath = 
      '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
      'Setup Source Files DelphiXE5\SET\Animation\ALC_TABLE.swf'
    penWidth = 0
    gridPenWidth = 0
    topMargin = 1
    rightMargin = 1
    leftMargin = 1
    bottomMargin = 1
    topBorderHeight = 50
    topBorderFill = 12099708
    topBorderStroke = 12099708
    topLeftCornerRadius = 0
    topRightCornerRadius = 0
    bottomRightCornerRadius = 0
    bottomLeftCornerRadius = 0
    lhColumnWidth = 0
    lhColumnFill = clWhite
    mainFill = clWhite
    colNum = 1
    rowNum = 2
    headerGradientStartColour = 16246979
    headerGradientEndColour = 16246979
    gradientAngle = 0
    alternateRowColour = 14414563
    showDropShadow = False
    showBevel = False
    hideColsOverTobBorder = True
    hiderowsOverlhBorder = False
    headerGradient = True
    startColourAtRowOne = False
    alternateRowColours = True
    showAnchorCoordinates = False
    markersColor = clBlack
    showDrawTableCounter = False
    reportDrawTable = False
  end
  object Shape57: TShape
    Left = 0
    Top = 0
    Width = 534
    Height = 43
    Align = alTop
    Brush.Color = 3513907
    Pen.Color = 3513907
    ExplicitTop = -5
    ExplicitWidth = 473
  end
  object lab_Prev_PatientID: TLabel
    Left = 11
    Top = 11
    Width = 280
    Height = 24
    AutoSize = False
    Caption = 'Report options:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object btn_Confirm_FollowUp: TFlashButtonEx
    Left = 160
    Top = 261
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
    FlashVars = 'btnTxt=Generate reports'
    AllowFullscreen = False
    ButtonCaption = 'Generate reports'
    MoviePath = 
      '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
      'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
  end
  object FlashButtonEx1: TFlashButtonEx
    Left = 160
    Top = 310
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
    Left = 138
    Top = 163
    Width = 258
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = 'Distance Visual Acuity Scale'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 2960685
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label140: TLabel
    Left = 23
    Top = 69
    Width = 488
    Height = 19
    Alignment = taCenter
    AutoSize = False
    Caption = 'Please select the visual acuity scale to be used in the reports'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7368816
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 124
    Top = 111
    Width = 258
    Height = 25
    AutoSize = False
    Caption = 'Visual Acuity scale:'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 55
    Top = 520
    Width = 440
    Height = 19
    Alignment = taCenter
    AutoSize = False
    Caption = 'Please select the comorbidity to be used in the reports'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7368816
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object EFlashTable1: TEFlashTable
    Left = 115
    Top = 547
    Width = 320
    Height = 115
    Visible = False
    Movie = 
      '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
      'Setup Source Files DelphiXE5\SET\Animation\ALC_TABLE.swf'
    FrameNum = 0
    Playing = True
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
    FlashVars = 'topBorderStroke=0x7CA0B8'
    AllowFullscreen = False
    rowHeight = 34
    allowColumnDrag = False
    MoviePath = 
      '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
      'Setup Source Files DelphiXE5\SET\Animation\ALC_TABLE.swf'
    penWidth = 0
    gridPenWidth = 0
    topMargin = 1
    rightMargin = 1
    leftMargin = 1
    bottomMargin = 1
    topBorderHeight = 50
    topBorderFill = 12099708
    topBorderStroke = 12099708
    topLeftCornerRadius = 0
    topRightCornerRadius = 0
    bottomRightCornerRadius = 0
    bottomLeftCornerRadius = 0
    lhColumnWidth = 0
    lhColumnFill = clWhite
    mainFill = clWhite
    colNum = 1
    rowNum = 1
    headerGradientStartColour = 16246979
    headerGradientEndColour = 16246979
    gradientAngle = 0
    alternateRowColour = 14414563
    showDropShadow = False
    showBevel = False
    hideColsOverTobBorder = True
    hiderowsOverlhBorder = False
    headerGradient = True
    startColourAtRowOne = False
    alternateRowColours = True
    showAnchorCoordinates = False
    markersColor = clBlack
    showDrawTableCounter = False
    reportDrawTable = False
  end
  object Label4: TLabel
    Left = 132
    Top = 563
    Width = 230
    Height = 19
    AutoSize = False
    Caption = 'Comorbidity:'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object DBComboBox_Centre_DistanceScaleID: TDBLookupComboBox
    Left = 138
    Top = 195
    Width = 258
    Height = 26
    Color = clWhite
    DataField = 'DistanceVisualAcuityScaleID'
    DataSource = frmDBControls.ALC_DATASOURCE_CENTRES
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 2960685
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    KeyField = 'DistanceVisualAcuityScaleID'
    ListField = 'DistanceVisualAcuityScaleDesc'
    ListSource = frmDBControls.ALC_DS_DIS_SCALE
    ParentFont = False
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 146
    Top = 615
    Width = 258
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 2960685
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = 'ComboBox1'
    Visible = False
  end
end
