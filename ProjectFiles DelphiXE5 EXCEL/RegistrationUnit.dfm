object frmRegistration: TfrmRegistration
  Left = -940
  Top = 205
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'frmRegistration'
  ClientHeight = 431
  ClientWidth = 575
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape2: TShape
    Left = 0
    Top = 0
    Width = 575
    Height = 38
    Align = alTop
    Brush.Color = 12615680
    Pen.Color = 12615680
    Pen.Width = 2
    ExplicitLeft = -68
    ExplicitWidth = 679
  end
  object Title: TSpFormatLabel
    Tag = 2
    Left = 25
    Top = 9
    Width = 312
    Height = 18
    AutoSize = False
    Caption = 'Registration'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    ActivateHighLighting = False
    highLightedColor = clBlue
    spEnabled = False
    recNo = 0
    sheetNo = 9
    colNo = 4
    rowNo = 4
    labelFormat = 'Spreadsheet'
    percentageFactor = False
    negativeColor = clWindowText
    intCurrency = False
    currDecPlaces = 0
    multiLanguage = False
    currencyAtStart = False
    spaceBetweenMergedCells = False
    readLabel = False
    Tag2 = 0
    enableSubSup = False
    FromBuilderComponent = False
  end
  object Shape1: TShape
    Left = 0
    Top = 38
    Width = 575
    Height = 393
    Align = alClient
    Brush.Style = bsClear
    Pen.Color = 12615680
    Pen.Width = 2
    ExplicitTop = 33
  end
  object CloseButton: TFlashButtonEx
    Left = 352
    Top = 382
    Width = 199
    Height = 39
    OnClick = CloseButtonClick
    Movie = 
      '\\abacusint.local\data\Public\AIProjects\Templates\I.T\Setup Sou' +
      'rce Files\Template D2009\Template\Animation\MASTER_BTN.swf'
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
    AllowFullscreen = False
    ButtonCaption = 'Exit the model'
    MoviePath = 
      '\\abacusint.local\data\Public\AIProjects\Templates\I.T\Setup Sou' +
      'rce Files\Template D2009\Template\Animation\MASTER_BTN.swf'
  end
  object spLabel20: TSpFormatLabel
    Left = 25
    Top = 55
    Width = 528
    Height = 41
    AutoSize = False
    Caption = 
      'Please enter your name, e-mail address and job title to activate' +
      ' your copy of the software'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 5066061
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
    WordWrap = True
    ActivateHighLighting = False
    highLightedColor = clBlue
    spEnabled = False
    recNo = 0
    sheetNo = 15
    colNo = 4
    rowNo = 109
    labelFormat = 'Spreadsheet'
    percentageFactor = False
    negativeColor = clWindowText
    intCurrency = False
    currDecPlaces = 0
    multiLanguage = False
    currencyAtStart = False
    spaceBetweenMergedCells = False
    readLabel = False
    Tag2 = 0
    enableSubSup = False
    FromBuilderComponent = False
  end
  object SpFormatLabel1: TSpFormatLabel
    Left = 25
    Top = 111
    Width = 72
    Height = 18
    AutoSize = False
    Caption = 'Name'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 5066061
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
    ActivateHighLighting = False
    highLightedColor = clBlue
    spEnabled = False
    recNo = 0
    sheetNo = 15
    colNo = 4
    rowNo = 109
    labelFormat = 'Spreadsheet'
    percentageFactor = False
    negativeColor = clWindowText
    intCurrency = False
    currDecPlaces = 0
    multiLanguage = False
    currencyAtStart = False
    spaceBetweenMergedCells = False
    readLabel = False
    Tag2 = 0
    enableSubSup = False
    FromBuilderComponent = False
  end
  object SpFormatLabel2: TSpFormatLabel
    Left = 25
    Top = 178
    Width = 168
    Height = 18
    AutoSize = False
    Caption = 'E-mail address'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 5066061
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
    ActivateHighLighting = False
    highLightedColor = clBlue
    spEnabled = False
    recNo = 0
    sheetNo = 15
    colNo = 4
    rowNo = 109
    labelFormat = 'Spreadsheet'
    percentageFactor = False
    negativeColor = clWindowText
    intCurrency = False
    currDecPlaces = 0
    multiLanguage = False
    currencyAtStart = False
    spaceBetweenMergedCells = False
    readLabel = False
    Tag2 = 0
    enableSubSup = False
    FromBuilderComponent = False
  end
  object SpFormatLabel3: TSpFormatLabel
    Left = 25
    Top = 212
    Width = 120
    Height = 18
    AutoSize = False
    Caption = 'Job title'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 5066061
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
    ActivateHighLighting = False
    highLightedColor = clBlue
    spEnabled = False
    recNo = 0
    sheetNo = 15
    colNo = 4
    rowNo = 109
    labelFormat = 'Spreadsheet'
    percentageFactor = False
    negativeColor = clWindowText
    intCurrency = False
    currDecPlaces = 0
    multiLanguage = False
    currencyAtStart = False
    spaceBetweenMergedCells = False
    readLabel = False
    Tag2 = 0
    enableSubSup = False
    FromBuilderComponent = False
  end
  object OKButton: TFlashButtonEx
    Left = 148
    Top = 382
    Width = 199
    Height = 39
    OnClick = OKButtonClick
    Movie = 
      '\\abacusint.local\data\Public\AIProjects\Templates\I.T\Setup Sou' +
      'rce Files\Template D2009\Template\Animation\MASTER_BTN.swf'
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
    AllowFullscreen = False
    ButtonCaption = 'Click to activate'
    MoviePath = 
      '\\abacusint.local\data\Public\AIProjects\Templates\I.T\Setup Sou' +
      'rce Files\Template D2009\Template\Animation\MASTER_BTN.swf'
  end
  object SpFormatLabel4: TSpFormatLabel
    Left = 25
    Top = 144
    Width = 72
    Height = 18
    AutoSize = False
    Caption = 'Surname'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 5066061
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
    ActivateHighLighting = False
    highLightedColor = clBlue
    spEnabled = False
    recNo = 0
    sheetNo = 15
    colNo = 4
    rowNo = 109
    labelFormat = 'Spreadsheet'
    percentageFactor = False
    negativeColor = clWindowText
    intCurrency = False
    currDecPlaces = 0
    multiLanguage = False
    currencyAtStart = False
    spaceBetweenMergedCells = False
    readLabel = False
    Tag2 = 0
    enableSubSup = False
    FromBuilderComponent = False
  end
  object Shape3: TShape
    Left = 24
    Top = 276
    Width = 521
    Height = 67
    Pen.Color = 12615680
  end
  object SpFormatLabel5: TSpFormatLabel
    Left = 65
    Top = 284
    Width = 444
    Height = 53
    AutoSize = False
    Caption = 
      'The information you supply will be used by xxxxxx and Abacus Int' +
      'ernational for administrative purposes within the terms of the D' +
      'ata Protection Act 1998. We shall not supply it to third parties' +
      '.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 5066061
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
    WordWrap = True
    ActivateHighLighting = False
    highLightedColor = clBlue
    spEnabled = False
    recNo = 0
    sheetNo = 15
    colNo = 4
    rowNo = 109
    labelFormat = 'Spreadsheet'
    percentageFactor = False
    negativeColor = clWindowText
    intCurrency = False
    currDecPlaces = 0
    multiLanguage = False
    currencyAtStart = False
    spaceBetweenMergedCells = False
    readLabel = False
    Tag2 = 0
    enableSubSup = False
    FromBuilderComponent = False
  end
  object SpFormatLabel6: TSpFormatLabel
    Left = 25
    Top = 251
    Width = 164
    Height = 18
    AutoSize = False
    Caption = 'Terms and conditions'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 12615680
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = True
    ActivateHighLighting = False
    highLightedColor = clBlue
    spEnabled = False
    recNo = 0
    sheetNo = 15
    colNo = 4
    rowNo = 109
    labelFormat = 'Spreadsheet'
    percentageFactor = False
    negativeColor = clWindowText
    intCurrency = False
    currDecPlaces = 0
    multiLanguage = False
    currencyAtStart = False
    spaceBetweenMergedCells = False
    readLabel = False
    Tag2 = 0
    enableSubSup = False
    FromBuilderComponent = False
  end
  object Memo1: TMemo
    Left = 552
    Top = 276
    Width = 185
    Height = 89
    TabOrder = 0
    Visible = False
  end
  object CheckBox1: TCheckBox
    Left = 24
    Top = 350
    Width = 505
    Height = 21
    Caption = 
      'Please tick to confirm that you have read the terms and conditio' +
      'ns'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 5066061
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edName: TESpEditStd
    Left = 148
    Top = 108
    Width = 397
    Height = 24
    Alignment = taLeftJustify
    Color = clWhite
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 5066061
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    padding = 6
    Decimals = 0
    sheetNo = 1
    colNo = 1
    rowNo = 1
    editFormat = 'Text'
    onChangeColor = clBlack
    onChangeFontColor = clBlack
    percentageFactor = False
    spEnabled = False
    currDecPlaces = 0
    showReset = True
    writeBlank = False
    recNo = 0
    multiLanguage = False
    currencyAtStart = False
    visibleIfBlank = False
    activateLimits = False
    ignoreOnChangeColor = False
    Tag2 = 0
    restoreFromRange = False
    readEdit = False
    OnEnterWrite = True
    FromBuilderComponent = False
    excludeFromSave = False
    borderSize = 1
    borderColour = 10773763
    DisabledColour = clWhite
    DisabledTextColor = clGray
  end
  object edSurname: TESpEditStd
    Left = 148
    Top = 141
    Width = 397
    Height = 24
    Alignment = taLeftJustify
    Color = clWhite
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 5066061
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    padding = 6
    Decimals = 0
    sheetNo = 1
    colNo = 1
    rowNo = 1
    editFormat = 'Text'
    onChangeColor = clBlack
    onChangeFontColor = clBlack
    percentageFactor = False
    spEnabled = False
    currDecPlaces = 0
    showReset = True
    writeBlank = False
    recNo = 0
    multiLanguage = False
    currencyAtStart = False
    visibleIfBlank = False
    activateLimits = False
    ignoreOnChangeColor = False
    Tag2 = 0
    restoreFromRange = False
    readEdit = False
    OnEnterWrite = True
    FromBuilderComponent = False
    excludeFromSave = False
    borderSize = 1
    borderColour = 10773763
    DisabledColour = clWhite
    DisabledTextColor = clGray
  end
  object edEmail: TESpEditStd
    Left = 148
    Top = 175
    Width = 397
    Height = 24
    Alignment = taLeftJustify
    Color = clWhite
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 5066061
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
    padding = 6
    Decimals = 0
    sheetNo = 1
    colNo = 1
    rowNo = 1
    editFormat = 'Text'
    onChangeColor = clBlack
    onChangeFontColor = clBlack
    percentageFactor = False
    spEnabled = False
    currDecPlaces = 0
    showReset = True
    writeBlank = False
    recNo = 0
    multiLanguage = False
    currencyAtStart = False
    visibleIfBlank = False
    activateLimits = False
    ignoreOnChangeColor = False
    Tag2 = 0
    restoreFromRange = False
    readEdit = False
    OnEnterWrite = True
    FromBuilderComponent = False
    excludeFromSave = False
    borderSize = 1
    borderColour = 10773763
    DisabledColour = clWhite
    DisabledTextColor = clGray
  end
  object edJobTitle: TESpEditStd
    Left = 148
    Top = 209
    Width = 397
    Height = 24
    Alignment = taLeftJustify
    Color = clWhite
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 5066061
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 5
    padding = 6
    Decimals = 0
    sheetNo = 1
    colNo = 1
    rowNo = 1
    editFormat = 'Text'
    onChangeColor = clBlack
    onChangeFontColor = clBlack
    percentageFactor = False
    spEnabled = False
    currDecPlaces = 0
    showReset = True
    writeBlank = False
    recNo = 0
    multiLanguage = False
    currencyAtStart = False
    visibleIfBlank = False
    activateLimits = False
    ignoreOnChangeColor = False
    Tag2 = 0
    restoreFromRange = False
    readEdit = False
    OnEnterWrite = True
    FromBuilderComponent = False
    excludeFromSave = False
    borderSize = 1
    borderColour = 10773763
    DisabledColour = clWhite
    DisabledTextColor = clGray
  end
end
