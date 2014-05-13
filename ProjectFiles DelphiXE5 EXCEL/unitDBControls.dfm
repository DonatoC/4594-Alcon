object frmDBControls: TfrmDBControls
  Left = 1997
  Top = 141
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'frmDBControls'
  ClientHeight = 1029
  ClientWidth = 3000
  Color = clWhite
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 3000
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    Color = 3513907
    ParentBackground = False
    TabOrder = 0
    object Title: TLabel
      Left = 20
      Top = 7
      Width = 51
      Height = 33
      Caption = 'Title'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label115: TLabel
      Left = 190
      Top = 14
      Width = 350
      Height = 33
      Alignment = taRightJustify
      Caption = 'NOTE TO PROGRAMMER: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label117: TLabel
      Left = 546
      Top = 3
      Width = 657
      Height = 66
      AutoSize = False
      Caption = 
        'Expand this forms width to reveal ADO connection, tables, dataso' +
        'urce and Queries'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 969
    Width = 3000
    Height = 60
    Align = alBottom
    BevelOuter = bvNone
    Color = 3513907
    ParentBackground = False
    TabOrder = 1
    object Button15: TButton
      Left = 109
      Top = 20
      Width = 75
      Height = 25
      Caption = 'NEXT >>'
      TabOrder = 0
      Visible = False
      OnClick = Button15Click
    end
    object Button16: TButton
      Left = 20
      Top = 20
      Width = 75
      Height = 25
      Caption = '<< BACK  '
      TabOrder = 1
      Visible = False
      OnClick = Button16Click
    end
    object Button21: TButton
      Left = 190
      Top = 20
      Width = 75
      Height = 25
      Caption = 'NEXT ini >>'
      TabOrder = 2
      Visible = False
      OnClick = Button21Click
    end
    object Button22: TButton
      Left = 271
      Top = 20
      Width = 75
      Height = 25
      Caption = 'NEXT follow >>'
      TabOrder = 3
      Visible = False
      OnClick = Button22Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 73
    Width = 3000
    Height = 896
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 2
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabVisible = False
      object Label1: TLabel
        Left = 50
        Top = 474
        Width = 42
        Height = 13
        Caption = 'centreID'
        FocusControl = DBEDIT_centreID
        Visible = False
      end
      object Label2: TLabel
        Left = 50
        Top = 431
        Width = 56
        Height = 13
        Caption = 'centreGUID'
        FocusControl = DBEdit_CentreGUID
        Visible = False
      end
      object Label7: TLabel
        Left = 251
        Top = 530
        Width = 54
        Height = 13
        Caption = 'DateAdded'
        FocusControl = DBEdit_Centre_DateAdded
        Visible = False
      end
      object Label8: TLabel
        Left = 50
        Top = 388
        Width = 63
        Height = 13
        Caption = 'dateUpdated'
        FocusControl = DBEdit_Centre_DateUpdated
        Visible = False
      end
      object Shape1: TShape
        Left = 377
        Top = 93
        Width = 459
        Height = 450
        Pen.Color = 3513907
      end
      object Label90: TLabel
        Left = 772
        Top = 164
        Width = 17
        Height = 33
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label91: TLabel
        Left = 772
        Top = 265
        Width = 17
        Height = 33
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label92: TLabel
        Left = 772
        Top = 358
        Width = 17
        Height = 33
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label93: TLabel
        Left = 772
        Top = 467
        Width = 17
        Height = 27
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label6: TLabel
        Left = 494
        Top = 360
        Width = 183
        Height = 18
        Caption = 'Number Of OCT machines'
        FocusControl = DBEdit_Centre_Machines
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 430
        Top = 334
        Width = 106
        Height = 18
        Caption = 'Population size'
        FocusControl = DBEdit_Centre_Pop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 430
        Top = 443
        Width = 170
        Height = 18
        Caption = 'Near Visual Acuity Scale'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 430
        Top = 140
        Width = 198
        Height = 18
        Caption = 'Distance Visual Acuity Scale'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label97: TLabel
        Left = 1174
        Top = 300
        Width = 17
        Height = 33
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Shape2: TShape
        Left = 377
        Top = 66
        Width = 459
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label140: TLabel
        Left = 387
        Top = 71
        Width = 105
        Height = 19
        Caption = 'Centre details'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label141: TLabel
        Left = 430
        Top = 241
        Width = 170
        Height = 18
        Caption = 'Near Visual Acuity Scale'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label61: TLabel
        Left = 28
        Top = 573
        Width = 59
        Height = 19
        Caption = 'Helpers'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBEDIT_centreID: TDBEdit
        Left = 50
        Top = 490
        Width = 134
        Height = 21
        DataField = 'centreID'
        DataSource = ALC_DATASOURCE_CENTRES
        TabOrder = 0
        Visible = False
      end
      object DBCheckBox_Centre_Arch: TDBCheckBox
        Left = 67
        Top = 526
        Width = 70
        Height = 17
        Caption = 'archived'
        DataField = 'archived'
        DataSource = ALC_DATASOURCE_CENTRES
        TabOrder = 1
        Visible = False
      end
      object DBEdit_CentreGUID: TDBEdit
        Left = 52
        Top = 444
        Width = 225
        Height = 21
        DataField = 'CentreUUID'
        DataSource = ALC_DATASOURCE_CENTRES
        ReadOnly = True
        TabOrder = 2
        Visible = False
        OnChange = DBEdit_CentreGUIDChange
        OnClick = DBEdit_CentreGUIDClick
      end
      object DBEdit_Centre_DateAdded: TDBEdit
        Left = 67
        Top = 549
        Width = 238
        Height = 21
        DataField = 'DateAdded'
        DataSource = ALC_DATASOURCE_CENTRES
        TabOrder = 5
        Visible = False
      end
      object DBEdit_Centre_DateUpdated: TDBEdit
        Left = 50
        Top = 404
        Width = 238
        Height = 21
        DataField = 'dateUpdated'
        DataSource = ALC_DATASOURCE_CENTRES
        TabOrder = 6
        Visible = False
      end
      object ALC_DBGRID_CENTRES: TDBGrid
        Left = 50
        Top = 565
        Width = 569
        Height = 316
        DataSource = ALC_DATASOURCE_CENTRES
        TabOrder = 7
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Visible = False
      end
      object Button1: TButton
        Left = 1030
        Top = 137
        Width = 75
        Height = 25
        Caption = 'Activate'
        TabOrder = 8
        Visible = False
        OnClick = Button1Click
      end
      object Button8: TButton
        Left = 1030
        Top = 195
        Width = 75
        Height = 25
        Caption = 'Insert'
        TabOrder = 9
        Visible = False
        OnClick = Button8Click
      end
      object Button9: TButton
        Left = 1030
        Top = 254
        Width = 75
        Height = 25
        Caption = 'Post'
        TabOrder = 10
        Visible = False
      end
      object Button10: TButton
        Left = 1121
        Top = 305
        Width = 37
        Height = 25
        Caption = 'GEN'
        TabOrder = 11
        Visible = False
      end
      object Button11: TButton
        Left = 1030
        Top = 305
        Width = 75
        Height = 25
        Caption = 'NEXT'
        TabOrder = 14
        Visible = False
      end
      object Button17: TButton
        Left = 734
        Top = 549
        Width = 102
        Height = 25
        Caption = 'Confirm'
        TabOrder = 15
      end
      object DBEdit_Centre_Machines: TDBEdit
        Left = 430
        Top = 467
        Width = 326
        Height = 26
        DataField = 'NumberOfOCTMachines'
        DataSource = ALC_DATASOURCE_CENTRES
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnChange = DBEdit_Centre_MachinesChange
      end
      object DBEdit_Centre_Pop: TDBEdit
        Left = 430
        Top = 358
        Width = 326
        Height = 26
        DataField = 'Population'
        DataSource = ALC_DATASOURCE_CENTRES
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnChange = DBEdit_Centre_PopChange
      end
      object DBComboBox_Centre_NearScaleID: TDBLookupComboBox
        Left = 430
        Top = 265
        Width = 326
        Height = 26
        DataField = 'NearVisualAcuityScaleID'
        DataSource = ALC_DATASOURCE_CENTRES
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'NearVisualAcuityScaleID'
        ListField = 'NearVisualAcuityScaleDesc'
        ListSource = ALC_DS_CENTRE_NEAR_SCALE
        ParentFont = False
        TabOrder = 13
        OnClick = DBComboBox_Centre_NearScaleIDClick
        OnCloseUp = DBComboBox_Centre_NearScaleIDCloseUp
      end
      object DBComboBox_Centre_DistanceScaleID: TDBLookupComboBox
        Left = 430
        Top = 164
        Width = 326
        Height = 26
        DataField = 'DistanceVisualAcuityScaleID'
        DataSource = ALC_DATASOURCE_CENTRES
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'DistanceVisualAcuityScaleID'
        ListField = 'DistanceVisualAcuityScaleDesc'
        ListSource = ALC_DS_DIS_SCALE
        ParentFont = False
        TabOrder = 12
        OnCloseUp = DBComboBox_Centre_DistanceScaleIDCloseUp
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      TabVisible = False
      object Label10: TLabel
        Left = 598
        Top = 818
        Width = 95
        Height = 13
        Caption = 'Audit ID (patientID)'
        FocusControl = DBEdit_Patient_ID
        Visible = False
      end
      object Label11: TLabel
        Left = 598
        Top = 706
        Width = 59
        Height = 13
        Caption = 'patientGUID'
        FocusControl = DBEdit_Patinet_GUID
        Visible = False
      end
      object Label12: TLabel
        Left = 598
        Top = 746
        Width = 42
        Height = 13
        Caption = 'centreID'
        Visible = False
      end
      object Label15: TLabel
        Left = 604
        Top = 597
        Width = 53
        Height = 13
        Caption = 'dateAdded'
        FocusControl = DBEdit_Patient_DateAdded
        Visible = False
      end
      object Label16: TLabel
        Left = 604
        Top = 637
        Width = 63
        Height = 13
        Caption = 'dateUpdated'
        FocusControl = DBEdit_Patient_DateUpdated
        Visible = False
      end
      object Label18: TLabel
        Left = 604
        Top = 547
        Width = 56
        Height = 13
        Caption = 'centreGUID'
        FocusControl = DBEdit_Patient_centreGUID
        Visible = False
      end
      object Label19: TLabel
        Left = 808
        Top = 59
        Width = 373
        Height = 33
        Caption = 'TABLE PATIENT DB CONTROLS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Shape9: TShape
        Left = 415
        Top = 120
        Width = 386
        Height = 313
        Pen.Color = 3513907
      end
      object Shape10: TShape
        Left = 415
        Top = 90
        Width = 386
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object lab_PatientID: TLabel
        Left = 423
        Top = 95
        Width = 92
        Height = 19
        Caption = 'Patient ID: #'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label148: TLabel
        Left = 16
        Top = 17
        Width = 377
        Height = 36
        Caption = 'Only required on initial visit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -32
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label14: TLabel
        Left = 470
        Top = 242
        Width = 27
        Height = 18
        Caption = 'age'
        FocusControl = DBEdit_Patient_CentreID
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 470
        Top = 151
        Width = 52
        Height = 18
        Caption = 'Gender'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label100: TLabel
        Left = 746
        Top = 266
        Width = 17
        Height = 33
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label99: TLabel
        Left = 746
        Top = 175
        Width = 17
        Height = 33
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object TransparentFlashPlayerControl2: TTransparentFlashPlayerControl
        Left = 116
        Top = 249
        Width = 206
        Height = 162
        Visible = False
        Movie = 
          '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
          'Setup Source Files DelphiXE5\SET\Animation\ALC_MASK.swf'
        FrameNum = 0
        Playing = False
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
      end
      object DBEdit_Patient_ID: TDBEdit
        Left = 598
        Top = 834
        Width = 134
        Height = 21
        DataField = 'patientID'
        DataSource = ALC_DATASOURCE_PATIENTS
        ReadOnly = True
        TabOrder = 0
        Visible = False
      end
      object DBEdit_Patinet_GUID: TDBEdit
        Left = 598
        Top = 722
        Width = 292
        Height = 21
        DataField = 'CentreUUID'
        DataSource = ALC_DATASOURCE_PATIENTS
        ReadOnly = True
        TabOrder = 1
        Visible = False
      end
      object DBEdit_Patient_CentreID: TDBEdit
        Left = 598
        Top = 759
        Width = 292
        Height = 21
        DataField = 'centreID'
        DataSource = ALC_DATASOURCE_PATIENTS
        ReadOnly = True
        TabOrder = 2
        Visible = False
      end
      object DBCheckBox_Patient_Arch: TDBCheckBox
        Left = 604
        Top = 868
        Width = 97
        Height = 17
        Caption = 'archived'
        DataField = 'archived'
        DataSource = ALC_DATASOURCE_PATIENTS
        TabOrder = 3
        Visible = False
      end
      object DBEdit_Patient_DateAdded: TDBEdit
        Left = 604
        Top = 613
        Width = 238
        Height = 21
        DataField = 'dateAdded'
        DataSource = ALC_DATASOURCE_PATIENTS
        TabOrder = 4
        Visible = False
      end
      object DBEdit_Patient_DateUpdated: TDBEdit
        Left = 604
        Top = 653
        Width = 238
        Height = 21
        DataField = 'dateUpdated'
        DataSource = ALC_DATASOURCE_PATIENTS
        TabOrder = 5
        Visible = False
      end
      object DBEdit_Patient_centreGUID: TDBEdit
        Left = 598
        Top = 791
        Width = 281
        Height = 21
        DataField = 'CentreUUID'
        DataSource = ALC_DATASOURCE_PATIENTS
        ReadOnly = True
        TabOrder = 6
        Visible = False
      end
      object Button2: TButton
        Left = 604
        Top = 566
        Width = 75
        Height = 25
        Caption = 'Activate'
        TabOrder = 7
        Visible = False
        OnClick = Button2Click
      end
      object DBGrid1: TDBGrid
        Left = 47
        Top = 566
        Width = 449
        Height = 316
        DataSource = ALC_DATASOURCE_PATIENTS
        TabOrder = 8
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Visible = False
      end
      object DBGrid9: TDBGrid
        Left = 116
        Top = 566
        Width = 449
        Height = 316
        DataSource = ALC_DS_ANSWERS_BASE
        TabOrder = 12
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Visible = False
      end
      object Button31: TButton
        Left = 840
        Top = 847
        Width = 102
        Height = 25
        Caption = 'Confirm'
        TabOrder = 13
        Visible = False
      end
      object Button12: TButton
        Left = 726
        Top = 439
        Width = 75
        Height = 25
        Caption = 'Confirm'
        TabOrder = 11
        OnClick = Button12Click
      end
      object DBComboBox_Patient_Age: TDBLookupComboBox
        Left = 470
        Top = 266
        Width = 264
        Height = 26
        DataField = 'ageID'
        DataSource = ALC_DATASOURCE_PATIENTS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'ageID'
        ListField = 'ageRangeDesc'
        ListSource = ALC_DS_AGE
        ParentFont = False
        TabOrder = 9
        OnCloseUp = DBComboBox_Patient_AgeCloseUp
      end
      object DBLookupComboBox_Patient_Gender: TDBLookupComboBox
        Left = 470
        Top = 175
        Width = 264
        Height = 26
        DataField = 'genderID'
        DataSource = ALC_DATASOURCE_PATIENTS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'genderID'
        ListField = 'gender'
        ListSource = ALC_DS_GENDER
        ParentFont = False
        TabOrder = 10
        OnCloseUp = DBLookupComboBox_Patient_GenderCloseUp
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      TabVisible = False
      object Label20: TLabel
        Left = 1232
        Top = 31
        Width = 266
        Height = 33
        Caption = 'Medical History Details'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label134: TLabel
        Left = 816
        Top = 47
        Width = 59
        Height = 13
        Caption = 'referralDate'
      end
      object Shape19: TShape
        Left = 216
        Top = 40
        Width = 761
        Height = 358
        Pen.Color = 3513907
      end
      object Shape20: TShape
        Left = 216
        Top = 10
        Width = 761
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label156: TLabel
        Left = 227
        Top = 15
        Width = 115
        Height = 19
        Caption = 'Medical history'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label103: TLabel
        Left = 504
        Top = 323
        Width = 17
        Height = 33
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label102: TLabel
        Left = 504
        Top = 266
        Width = 17
        Height = 33
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label27: TLabel
        Left = 239
        Top = 304
        Width = 124
        Height = 18
        Caption = 'Reason for referal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 239
        Top = 242
        Width = 115
        Height = 18
        Caption = 'Source of referal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Shape27: TShape
        Left = 216
        Top = 438
        Width = 761
        Height = 41
        Pen.Color = 3513907
      end
      object Shape28: TShape
        Left = 216
        Top = 408
        Width = 761
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label29: TLabel
        Left = 227
        Top = 416
        Width = 92
        Height = 19
        Caption = 'Primary Eye'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label106: TLabel
        Left = 328
        Top = 413
        Width = 17
        Height = 21
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape29: TShape
        Left = 216
        Top = 520
        Width = 761
        Height = 353
        Pen.Color = 3513907
      end
      object Shape30: TShape
        Left = 216
        Top = 490
        Width = 761
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label105: TLabel
        Left = 227
        Top = 495
        Width = 692
        Height = 19
        Caption = 
          'Ocular pathologies currently present or present in past 3 years ' +
          '(Multiple selections allowed)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label112: TLabel
        Left = 925
        Top = 495
        Width = 17
        Height = 33
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label104: TLabel
        Left = 948
        Top = 495
        Width = 17
        Height = 33
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBGrid2: TDBGrid
        Left = 16
        Top = 331
        Width = 149
        Height = 316
        DataSource = ALC_DATASOURCE_MEDICAL
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Visible = False
      end
      object Button3: TButton
        Left = 59
        Top = 285
        Width = 75
        Height = 25
        Caption = 'Activate'
        TabOrder = 1
        Visible = False
        OnClick = Button3Click
      end
      object DBEdit_Medical_DateAdded: TDBEdit
        Left = 13
        Top = 215
        Width = 139
        Height = 21
        DataField = 'dateAdded'
        DataSource = ALC_DATASOURCE_MEDICAL
        TabOrder = 20
        Visible = False
      end
      object DBEdit_Medical_DateUpdated: TDBEdit
        Left = 13
        Top = 242
        Width = 139
        Height = 21
        DataField = 'DateUpdated'
        DataSource = ALC_DATASOURCE_MEDICAL
        TabOrder = 21
        Visible = False
      end
      object Button13: TButton
        Left = 872
        Top = 879
        Width = 105
        Height = 25
        Caption = 'Confirm'
        TabOrder = 25
        OnClick = Button13Click
      end
      object DBLookupComboBox_Medical_ReasonForReferalID: TDBLookupComboBox
        Left = 239
        Top = 328
        Width = 250
        Height = 26
        DataField = 'ReasonForReferalID'
        DataSource = ALC_DATASOURCE_MEDICAL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'ReasonForReferalID'
        ListField = 'ReasonForReferalDesc'
        ListSource = ALC_DS_MED_REF_REASON
        ParentFont = False
        TabOrder = 24
        OnCloseUp = DBLookupComboBox_Medical_ReasonForReferalIDCloseUp
      end
      object DBLookupComboBox_Medical_SourceOfReferalID: TDBLookupComboBox
        Left = 239
        Top = 266
        Width = 250
        Height = 26
        DataField = 'SourceOfReferalID'
        DataSource = ALC_DATASOURCE_MEDICAL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SourceOfReferralID'
        ListField = 'SourceOfReferralDesc'
        ListSource = ALC_DS_MED_REF_SOURCE
        ParentFont = False
        TabOrder = 23
        OnCloseUp = DBLookupComboBox_Medical_SourceOfReferalIDCloseUp
      end
      object DBCheckBox_Medical_Arch: TDBCheckBox
        Left = 13
        Top = 121
        Width = 97
        Height = 17
        Caption = 'Archived'
        DataField = 'Archived'
        DataSource = ALC_DATASOURCE_MEDICAL
        TabOrder = 22
        Visible = False
      end
      object DBEdit_Medical_patientID: TDBEdit
        Left = 13
        Top = 188
        Width = 139
        Height = 21
        DataField = 'answerBaseID'
        DataSource = ALC_DATASOURCE_MEDICAL
        TabOrder = 3
        Visible = False
      end
      object DBEdit_Medical_MedicalHistoryID: TDBEdit
        Left = 13
        Top = 161
        Width = 139
        Height = 21
        DataField = 'PatientMedicalHistoryID'
        DataSource = ALC_DATASOURCE_MEDICAL
        TabOrder = 2
        Visible = False
      end
      object DBCheckBox_Medical_NotRelevant_OS: TDBCheckBox
        Tag = 3
        Left = 541
        Top = 842
        Width = 20
        Height = 17
        DataField = 'NotRelevant_OS'
        DataSource = ALC_DATASOURCE_MEDICAL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 19
        OnClick = DBCheckBox_Medical_NotRelevant_OSClick
      end
      object DBCheckBox_Medical_NotRelevant_OD: TDBCheckBox
        Tag = 2
        Left = 239
        Top = 842
        Width = 20
        Height = 17
        DataField = 'NotRelevant_OD'
        DataSource = ALC_DATASOURCE_MEDICAL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 18
        OnClick = DBCheckBox_Medical_NotRelevant_ODClick
      end
      object DBCheckBox_Medical_Other_OS: TDBCheckBox
        Tag = 3
        Left = 541
        Top = 818
        Width = 20
        Height = 17
        DataField = 'Other_OS'
        DataSource = ALC_DATASOURCE_MEDICAL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
        OnClick = DBCheckBox_Medical_Other_OSClick
      end
      object DBCheckBox_Medical_Other_OD: TDBCheckBox
        Tag = 2
        Left = 239
        Top = 818
        Width = 20
        Height = 17
        DataField = 'Other_OD'
        DataSource = ALC_DATASOURCE_MEDICAL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
        OnClick = DBCheckBox_Medical_Other_ODClick
      end
      object DBCheckBox_Medical_RetinalDetachment_OS: TDBCheckBox
        Tag = 3
        Left = 541
        Top = 771
        Width = 20
        Height = 17
        DataField = 'RetinalDetachment_OS'
        DataSource = ALC_DATASOURCE_MEDICAL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        OnClick = DBCheckBox_Medical_RetinalDetachment_OSClick
      end
      object DBCheckBox_Medical_RetinalDetachment_OD: TDBCheckBox
        Tag = 2
        Left = 239
        Top = 771
        Width = 20
        Height = 17
        DataField = 'RetinalDetachment_OD'
        DataSource = ALC_DATASOURCE_MEDICAL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        OnClick = DBCheckBox_Medical_RetinalDetachment_ODClick
      end
      object DBCheckBox_Medical_RetinalVeinOcclusion_OS: TDBCheckBox
        Tag = 3
        Left = 541
        Top = 747
        Width = 20
        Height = 17
        DataField = 'RetinalVeinOcclusion_OS'
        DataSource = ALC_DATASOURCE_MEDICAL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        OnClick = DBCheckBox_Medical_RetinalVeinOcclusion_OSClick
      end
      object DBCheckBox_Medical_RetinalVeinOcclusion_OD: TDBCheckBox
        Tag = 2
        Left = 239
        Top = 747
        Width = 20
        Height = 17
        DataField = 'RetinalVeinOcclusion_OD'
        DataSource = ALC_DATASOURCE_MEDICAL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        OnClick = DBCheckBox_Medical_RetinalVeinOcclusion_ODClick
      end
      object DBCheckBox_Medical_ProliferativeDiabeticRetinopathy_OS: TDBCheckBox
        Tag = 3
        Left = 541
        Top = 700
        Width = 20
        Height = 17
        DataField = 'ProliferativeDiabeticRetinopathy_OS'
        DataSource = ALC_DATASOURCE_MEDICAL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnClick = DBCheckBox_Medical_ProliferativeDiabeticRetinopathy_OSClick
      end
      object DBCheckBox_Medical_ProliferativeDiabeticRetinopathy_OD: TDBCheckBox
        Tag = 2
        Left = 239
        Top = 700
        Width = 20
        Height = 17
        DataField = 'ProliferativeDiabeticRetinopathy_OD'
        DataSource = ALC_DATASOURCE_MEDICAL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnClick = DBCheckBox_Medical_ProliferativeDiabeticRetinopathy_ODClick
      end
      object DBCheckBox_Medical_DME_OS: TDBCheckBox
        Tag = 3
        Left = 541
        Top = 676
        Width = 20
        Height = 17
        DataField = 'DME_OS'
        DataSource = ALC_DATASOURCE_MEDICAL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = DBCheckBox_Medical_DME_OSClick
      end
      object DBCheckBox_Medical_DME_OD: TDBCheckBox
        Tag = 2
        Left = 239
        Top = 676
        Width = 20
        Height = 17
        DataField = 'DME_OD'
        DataSource = ALC_DATASOURCE_MEDICAL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = DBCheckBox_Medical_DME_ODClick
      end
      object DBCheckBox_Medical_DryAMD_OS: TDBCheckBox
        Tag = 3
        Left = 541
        Top = 653
        Width = 20
        Height = 17
        DataField = 'DryAMD_OS'
        DataSource = ALC_DATASOURCE_MEDICAL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = DBCheckBox_Medical_DryAMD_OSClick
      end
      object DBCheckBox_Medical_DryAMD_OD: TDBCheckBox
        Tag = 2
        Left = 239
        Top = 653
        Width = 20
        Height = 17
        DataField = 'DryAMD_OD'
        DataSource = ALC_DATASOURCE_MEDICAL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = DBCheckBox_Medical_DryAMD_ODClick
      end
      object DBCheckBox_Medical_WetAMD_OS: TDBCheckBox
        Tag = 3
        Left = 541
        Top = 629
        Width = 20
        Height = 17
        DataField = 'WetAMD_OS'
        DataSource = ALC_DATASOURCE_MEDICAL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = DBCheckBox_Medical_WetAMD_OSClick
      end
      object DBCheckBox_Medical_WetAMD_OD: TDBCheckBox
        Tag = 2
        Left = 239
        Top = 629
        Width = 20
        Height = 17
        DataField = 'WetAMD_OD'
        DataSource = ALC_DATASOURCE_MEDICAL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = DBCheckBox_Medical_WetAMD_ODClick
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'TabSheet4'
      ImageIndex = 3
      TabVisible = False
      object Label30: TLabel
        Left = 495
        Top = 3
        Width = 508
        Height = 33
        Caption = 'TABLE ANSWERS INI VISIT DB CONTROLS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label31: TLabel
        Left = 1176
        Top = 673
        Width = 97
        Height = 13
        Caption = 'AnswersInitialVisitID'
        FocusControl = DBEdit_AnsIni_AnswersInitialVisitID
        Visible = False
      end
      object Label32: TLabel
        Left = 1176
        Top = 713
        Width = 70
        Height = 13
        Caption = 'AnswerBaseID'
        FocusControl = DBEdit_AnsIni_AnswerBaseID
        Visible = False
      end
      object Label34: TLabel
        Left = 1000
        Top = 814
        Width = 64
        Height = 13
        Caption = 'DateUpdated'
        FocusControl = DBEdit_AnsIni_DateUpdated
        Visible = False
      end
      object Shape21: TShape
        Left = 157
        Top = 89
        Width = 796
        Height = 288
        Pen.Color = 3513907
      end
      object Shape22: TShape
        Left = 157
        Top = 59
        Width = 796
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label21: TLabel
        Left = 168
        Top = 64
        Width = 352
        Height = 19
        Caption = 'Ocular symptoms (Multiple selections allowed)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label108: TLabel
        Left = 536
        Top = 61
        Width = 17
        Height = 33
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label114: TLabel
        Left = 592
        Top = 61
        Width = 17
        Height = 33
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape23: TShape
        Left = 157
        Top = 441
        Width = 796
        Height = 288
        Pen.Color = 3513907
      end
      object Shape24: TShape
        Left = 157
        Top = 411
        Width = 796
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label22: TLabel
        Left = 168
        Top = 416
        Width = 572
        Height = 19
        Caption = 
          'Previous treatment received in the last 5 years (Multiple select' +
          'ions required)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label113: TLabel
        Left = 751
        Top = 414
        Width = 17
        Height = 33
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label110: TLabel
        Left = 796
        Top = 420
        Width = 15
        Height = 33
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button4: TButton
        Left = 1360
        Top = 25
        Width = 75
        Height = 25
        Caption = 'Activate'
        TabOrder = 1
        OnClick = Button4Click
      end
      object DBEdit_AnsIni_AnswersInitialVisitID: TDBEdit
        Left = 1176
        Top = 689
        Width = 225
        Height = 21
        DataField = 'AnswersInitialVisitID'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        TabOrder = 2
        Visible = False
      end
      object DBEdit_AnsIni_AnswerBaseID: TDBEdit
        Left = 1176
        Top = 726
        Width = 225
        Height = 21
        DataField = 'AnswerBaseID'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        TabOrder = 3
        Visible = False
      end
      object DBCheckBox_AnsIni_SymptomsFloaters_OD: TDBCheckBox
        Tag = 1
        Left = 186
        Top = 112
        Width = 280
        Height = 17
        Caption = 'Symptoms Floaters OD'
        DataField = 'SymptomsFloaters_OD'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = DBCheckBox_AnsIni_SymptomsFloaters_ODClick
      end
      object DBCheckBox_AnsIni_SymptomsFloaters_OS: TDBCheckBox
        Tag = 2
        Left = 565
        Top = 112
        Width = 280
        Height = 17
        Caption = 'Symptoms Floaters OS'
        DataField = 'SymptomsFloaters_OS'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = DBCheckBox_AnsIni_SymptomsFloaters_OSClick
      end
      object DBCheckBox_AnsIni_SymptomsFlashesOfLight_OD: TDBCheckBox
        Tag = 1
        Left = 186
        Top = 137
        Width = 280
        Height = 17
        Caption = 'Symptoms Flashes Of Light OD'
        DataField = 'SymptomsFlashesOfLight_OD'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = DBCheckBox_AnsIni_SymptomsFlashesOfLight_ODClick
      end
      object DBCheckBox_AnsIni_SymptomsFlashesOfLight_OS: TDBCheckBox
        Tag = 2
        Left = 565
        Top = 137
        Width = 280
        Height = 17
        Caption = 'Symptoms Flashes Of Light OS'
        DataField = 'SymptomsFlashesOfLight_OS'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = DBCheckBox_AnsIni_SymptomsFlashesOfLight_OSClick
      end
      object DBCheckBox_AnsIni_SymptomsObjectsAppearSmaller_OD: TDBCheckBox
        Tag = 1
        Left = 186
        Top = 189
        Width = 311
        Height = 17
        Caption = 'Symptoms Objects Appear Smaller OD'
        DataField = 'SymptomsObjectsAppearSmaller_OD'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = DBCheckBox_AnsIni_SymptomsObjectsAppearSmaller_ODClick
      end
      object DBCheckBox_AnsIni_SymptomsObjectsAppearSmaller_OS: TDBCheckBox
        Tag = 2
        Left = 565
        Top = 189
        Width = 300
        Height = 17
        Caption = 'Symptoms Objects Appear Smaller OS'
        DataField = 'SymptomsObjectsAppearSmaller_OS'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = DBCheckBox_AnsIni_SymptomsObjectsAppearSmaller_OSClick
      end
      object DBCheckBox_AnsIni_SymptomsDifficultyReadingAtNight_OD: TDBCheckBox
        Tag = 1
        Left = 186
        Top = 243
        Width = 311
        Height = 17
        Caption = 'Symptoms Difficulty Reading At Night OD'
        DataField = 'SymptomsDifficultyReadingAtNight_OD'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnClick = DBCheckBox_AnsIni_SymptomsDifficultyReadingAtNight_ODClick
      end
      object DBCheckBox_AnsIni_SymptomsDifficultyReadingAtNight_OS: TDBCheckBox
        Tag = 2
        Left = 565
        Top = 240
        Width = 316
        Height = 17
        Caption = 'Symptoms Difficulty Reading At Night OS'
        DataField = 'SymptomsDifficultyReadingAtNight_OS'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnClick = DBCheckBox_AnsIni_SymptomsDifficultyReadingAtNight_OSClick
      end
      object DBCheckBox_AnsIni_SymptomsBlurredVision_OD: TDBCheckBox
        Tag = 1
        Left = 186
        Top = 266
        Width = 280
        Height = 17
        Caption = 'Symptoms Blurred Vision OD'
        DataField = 'SymptomsBlurredVision_OD'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        OnClick = DBCheckBox_AnsIni_SymptomsBlurredVision_ODClick
      end
      object DBCheckBox_AnsIni_SymptomsBlurredVision_OS: TDBCheckBox
        Tag = 2
        Left = 565
        Top = 266
        Width = 280
        Height = 17
        Caption = 'Symptoms Blurred Vision OS'
        DataField = 'SymptomsBlurredVision_OS'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        OnClick = DBCheckBox_AnsIni_SymptomsBlurredVision_OSClick
      end
      object DBCheckBox_AnsIni_SymptomsVisualReduction_OD: TDBCheckBox
        Tag = 1
        Left = 186
        Top = 292
        Width = 280
        Height = 17
        Caption = 'Symptoms Visual Reduction OD'
        DataField = 'SymptomsVisualReduction_OD'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        OnClick = DBCheckBox_AnsIni_SymptomsVisualReduction_ODClick
      end
      object DBCheckBox_AnsIni_SymptomsVisualReduction_OS: TDBCheckBox
        Tag = 2
        Left = 565
        Top = 292
        Width = 280
        Height = 17
        Caption = 'Symptoms Visual Reduction OS'
        DataField = 'SymptomsVisualReduction_OS'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        OnClick = DBCheckBox_AnsIni_SymptomsVisualReduction_OSClick
      end
      object DBCheckBox_AnsIni_SymptomsOther_OD: TDBCheckBox
        Tag = 1
        Left = 186
        Top = 318
        Width = 280
        Height = 17
        Caption = 'Symptoms Other OD'
        DataField = 'SymptomsOther_OD'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
        OnClick = DBCheckBox_AnsIni_SymptomsOther_ODClick
      end
      object DBCheckBox_AnsIni_SymptomsOther_OS: TDBCheckBox
        Tag = 2
        Left = 565
        Top = 318
        Width = 280
        Height = 17
        Caption = 'Symptoms Other OS'
        DataField = 'SymptomsOther_OS'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
        OnClick = DBCheckBox_AnsIni_SymptomsOther_OSClick
      end
      object DBCheckBox_AnsIni_SymptomsNotRelevant_OD: TDBCheckBox
        Tag = 1
        Left = 186
        Top = 341
        Width = 280
        Height = 17
        Caption = 'Symptoms Not Relevant OD'
        DataField = 'SymptomsNotRelevant_OD'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 18
        OnClick = DBCheckBox_AnsIni_SymptomsNotRelevant_ODClick
      end
      object DBCheckBox_AnsIni_SymptomsNotRelevant_OS: TDBCheckBox
        Tag = 2
        Left = 565
        Top = 344
        Width = 280
        Height = 17
        Caption = 'Symptoms Not Relevant OS'
        DataField = 'SymptomsNotRelevant_OS'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 19
        OnClick = DBCheckBox_AnsIni_SymptomsNotRelevant_OSClick
      end
      object DBCheckBox_AnsIni_PrevTreatCataractSurgery_OD: TDBCheckBox
        Tag = 3
        Left = 184
        Top = 456
        Width = 400
        Height = 17
        Caption = 'PrevTreatCataractSurgery OD'
        DataField = 'PrevTreatCataractSurgery_OD'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 20
        OnClick = DBCheckBox_AnsIni_PrevTreatCataractSurgery_ODClick
      end
      object DBCheckBox_AnsIni_PrevTreatCataractSurgery_OS: TDBCheckBox
        Tag = 4
        Left = 564
        Top = 459
        Width = 400
        Height = 17
        Caption = 'Prev Treat Cataract Surgery OS'
        DataField = 'PrevTreatCataractSurgery_OS'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 21
        OnClick = DBCheckBox_AnsIni_PrevTreatCataractSurgery_OSClick
      end
      object DBCheckBox_AnsIni_PrevTreatGlaucomaFiltrationSurgery_OD: TDBCheckBox
        Tag = 3
        Left = 184
        Top = 479
        Width = 400
        Height = 17
        Caption = 'Prev Treat Glaucoma Filtration Surgery OD'
        DataField = 'PrevTreatGlaucomaFiltrationSurgery_OD'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 22
        OnClick = DBCheckBox_AnsIni_PrevTreatGlaucomaFiltrationSurgery_ODClick
      end
      object DBCheckBox_AnsIni_PrevTreatGlaucomaFiltrationSurgery_OS: TDBCheckBox
        Tag = 4
        Left = 564
        Top = 482
        Width = 400
        Height = 17
        Caption = 'Prev Treat Glaucoma Filtration Surgery OS'
        DataField = 'PrevTreatGlaucomaFiltrationSurgery_OS'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 23
        OnClick = DBCheckBox_AnsIni_PrevTreatGlaucomaFiltrationSurgery_OSClick
      end
      object DBCheckBox_AnsIni_PrevTreatVitrectomy_OD: TDBCheckBox
        Tag = 3
        Left = 184
        Top = 503
        Width = 400
        Height = 17
        Caption = 'Prev Treat Vitrectomy OD'
        DataField = 'PrevTreatVitrectomy_OD'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 24
        OnClick = DBCheckBox_AnsIni_PrevTreatVitrectomy_ODClick
      end
      object DBCheckBox_AnsIni_PrevTreatVitrectomy_OS: TDBCheckBox
        Tag = 4
        Left = 564
        Top = 505
        Width = 400
        Height = 17
        Caption = 'Prev Treat Vitrectomy OS'
        DataField = 'PrevTreatVitrectomy_OS'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 25
        OnClick = DBCheckBox_AnsIni_PrevTreatVitrectomy_OSClick
      end
      object DBCheckBox_AnsIni_PrevTreatMacularLaserPhotocoagulation_OD: TDBCheckBox
        Tag = 3
        Left = 184
        Top = 527
        Width = 400
        Height = 17
        Caption = 'Prev Treat Macular Laser Photocoagulation OD'
        DataField = 'PrevTreatMacularLaserPhotocoagulation_OD'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 26
        OnClick = DBCheckBox_AnsIni_PrevTreatMacularLaserPhotocoagulation_ODClick
      end
      object DBCheckBox_AnsIni_PrevTreatMacularLaserPhotocoagulation_OS: TDBCheckBox
        Tag = 4
        Left = 564
        Top = 528
        Width = 400
        Height = 17
        Caption = 'Prev Treat Macular Laser Photocoagulation OS'
        DataField = 'PrevTreatMacularLaserPhotocoagulation_OS'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 27
        OnClick = DBCheckBox_AnsIni_PrevTreatMacularLaserPhotocoagulation_OSClick
      end
      object DBCheckBox_AnsIni_PrevTreatPeripheralLaserPhotocoagulation_OD: TDBCheckBox
        Tag = 3
        Left = 184
        Top = 550
        Width = 400
        Height = 17
        Caption = 'Prev Treat Peripheral Laser Photocoagulation OD'
        DataField = 'PrevTreatPeripheralLaserPhotocoagulation_OD'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 28
        OnClick = DBCheckBox_AnsIni_PrevTreatPeripheralLaserPhotocoagulation_ODClick
      end
      object DBCheckBox_AnsIni_PrevTreatPeripheralLaserPhotocoagulation_OS: TDBCheckBox
        Tag = 4
        Left = 564
        Top = 551
        Width = 400
        Height = 17
        Caption = 'Prev Treat Peripheral Laser Photocoagulation OS'
        DataField = 'PrevTreatPeripheralLaserPhotocoagulation_OS'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 29
        OnClick = DBCheckBox_AnsIni_PrevTreatPeripheralLaserPhotocoagulation_OSClick
      end
      object DBCheckBox_AnsIni_PrevTreatOtherSurgery_OD: TDBCheckBox
        Tag = 3
        Left = 184
        Top = 574
        Width = 400
        Height = 17
        Caption = 'Prev Treat Other Surgery OD'
        DataField = 'PrevTreatOtherSurgery_OD'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 30
        OnClick = DBCheckBox_AnsIni_PrevTreatOtherSurgery_ODClick
      end
      object DBCheckBox_AnsIni_PrevTreatOtherSurgery_OS: TDBCheckBox
        Tag = 4
        Left = 564
        Top = 574
        Width = 400
        Height = 17
        Caption = 'Prev Treat Other Surgery OS'
        DataField = 'PrevTreatOtherSurgery_OS'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 31
        OnClick = DBCheckBox_AnsIni_PrevTreatOtherSurgery_OSClick
      end
      object DBCheckBox_AnsIni_PrevTreatIntravitrealAntiVEGF_OD: TDBCheckBox
        Tag = 3
        Left = 184
        Top = 598
        Width = 400
        Height = 17
        Caption = 'Prev Treat Intravitreal Anti VEGF OD'
        DataField = 'PrevTreatIntravitrealAntiVEGF_OD'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 32
        OnClick = DBCheckBox_AnsIni_PrevTreatIntravitrealAntiVEGF_ODClick
      end
      object DBCheckBox_AnsIni_PrevTreatIntravitrealAntiVEGF_OS: TDBCheckBox
        Tag = 4
        Left = 564
        Top = 597
        Width = 400
        Height = 17
        Caption = 'Prev Treat Intravitreal Anti VEGF OS'
        DataField = 'PrevTreatIntravitrealAntiVEGF_OS'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 33
        OnClick = DBCheckBox_AnsIni_PrevTreatIntravitrealAntiVEGF_OSClick
      end
      object DBCheckBox_AnsIni_PrevTreatNotRelevant_OD: TDBCheckBox
        Tag = 3
        Left = 184
        Top = 693
        Width = 400
        Height = 17
        Caption = 'Prev Treat Not Relevant OD'
        DataField = 'PrevTreatNotRelevant_OD'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 34
        OnClick = DBCheckBox_AnsIni_PrevTreatNotRelevant_ODClick
      end
      object DBCheckBox_AnsIni_PrevTreatNotRelevant_OS: TDBCheckBox
        Tag = 4
        Left = 564
        Top = 689
        Width = 400
        Height = 17
        Caption = 'Prev Treat Not Relevant OS'
        DataField = 'PrevTreatNotRelevant_OS'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 35
        OnClick = DBCheckBox_AnsIni_PrevTreatNotRelevant_OSClick
      end
      object DBCheckBox_AnsIni_Arch: TDBCheckBox
        Left = 1224
        Top = 630
        Width = 97
        Height = 17
        Caption = 'Archived'
        DataField = 'Archived'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        TabOrder = 36
        Visible = False
      end
      object DBEdit_AnsIni_DateUpdated: TDBEdit
        Left = 1000
        Top = 830
        Width = 238
        Height = 21
        DataField = 'DateUpdated'
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        TabOrder = 37
        Visible = False
      end
      object DBGrid3: TDBGrid
        Left = 1128
        Top = 61
        Width = 313
        Height = 316
        DataSource = ALC_DATASOURCE_ANSWERS_INI_VISIT
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Visible = False
      end
      object Button14: TButton
        Left = 878
        Top = 745
        Width = 75
        Height = 25
        Caption = 'Confirm'
        TabOrder = 38
        OnClick = Button14Click
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'TabSheet5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ImageIndex = 4
      ParentFont = False
      TabVisible = False
      object Label36: TLabel
        Left = 867
        Top = 761
        Width = 216
        Height = 18
        Caption = 'AnswersInitialAndFollowupVisit'
        FocusControl = DBEdit_INI_FOLLOWUP_AnswersInitialAndFollowupVisit
        Visible = False
      end
      object Label37: TLabel
        Left = 867
        Top = 801
        Width = 104
        Height = 18
        Caption = 'AnswerBaseID'
        FocusControl = DBEdit_INI_FOLLOW_AnswerBaseID
        Visible = False
      end
      object Label46: TLabel
        Left = 867
        Top = 35
        Width = 229
        Height = 18
        Caption = 'OCTCentralRetinalDiameter_OD'
      end
      object Label48: TLabel
        Left = 866
        Top = 123
        Width = 114
        Height = 18
        Caption = 'OCTVMTID_OD'
      end
      object Label50: TLabel
        Left = 865
        Top = 191
        Width = 184
        Height = 18
        Caption = 'OCTMacularHoleSize_OD'
        FocusControl = DBEdit_INI_FOLLOW_OCTMacularHoleSize_OD
      end
      object Label52: TLabel
        Left = 35
        Top = 529
        Width = 186
        Height = 18
        Caption = 'ProposedTreatmentID_OD'
      end
      object Label53: TLabel
        Left = 306
        Top = 529
        Width = 185
        Height = 18
        Caption = 'ProposedTreatmentID_OS'
      end
      object Label54: TLabel
        Left = 34
        Top = 572
        Width = 205
        Height = 18
        Caption = 'ProposedTreatmentDate_OD'
      end
      object Label55: TLabel
        Left = 306
        Top = 572
        Width = 204
        Height = 18
        Caption = 'ProposedTreatmentDate_OS'
      end
      object Label56: TLabel
        Left = 34
        Top = 615
        Width = 243
        Height = 18
        Caption = 'ProposedTreatmentRationalID_OD'
      end
      object Label57: TLabel
        Left = 304
        Top = 615
        Width = 242
        Height = 18
        Caption = 'ProposedTreatmentRationalID_OS'
      end
      object Label59: TLabel
        Left = 1236
        Top = 906
        Width = 94
        Height = 18
        Caption = 'DateUpdated'
        FocusControl = DBEdit_INI_FOLLOW_DateUpdated
      end
      object Label118: TLabel
        Left = 25
        Top = 250
        Width = 272
        Height = 19
        Caption = 'OCT '#8211' Ocular Coherence Tomography'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label121: TLabel
        Left = 306
        Top = 239
        Width = 17
        Height = 33
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape25: TShape
        Left = 16
        Top = 39
        Width = 564
        Height = 269
        Pen.Color = 3513907
      end
      object Shape26: TShape
        Left = 13
        Top = 2
        Width = 564
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label28: TLabel
        Left = 24
        Top = 8
        Width = 394
        Height = 19
        Caption = 'Visual acuity '#8211' Best Corrected Visual Acuity (BCVA) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label120: TLabel
        Left = 424
        Top = 3
        Width = 17
        Height = 33
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label40: TLabel
        Left = 25
        Top = 153
        Width = 102
        Height = 18
        Caption = 'Decimal 10/10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label38: TLabel
        Left = 25
        Top = 79
        Width = 126
        Height = 18
        Caption = 'ETDRS '#8208' logMAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Shape31: TShape
        Left = 13
        Top = 34
        Width = 564
        Height = 31
        Brush.Color = 4568679
        Pen.Color = 3513907
      end
      object Label35: TLabel
        Left = 24
        Top = 40
        Width = 169
        Height = 19
        Caption = 'Distance Visual Acuity'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape32: TShape
        Left = 14
        Top = 108
        Width = 563
        Height = 31
        Brush.Color = 4568679
        Pen.Color = 5090905
      end
      object Label98: TLabel
        Left = 24
        Top = 114
        Width = 138
        Height = 19
        Caption = 'Near Visual Acuity'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label107: TLabel
        Left = 242
        Top = 39
        Width = 146
        Height = 19
        Caption = 'OD (Oculus Dexter)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label109: TLabel
        Left = 411
        Top = 39
        Width = 149
        Height = 19
        Caption = 'OS (oculus sinister)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape33: TShape
        Left = 13
        Top = 186
        Width = 564
        Height = 31
        Brush.Color = 4568679
        Pen.Color = 3513907
      end
      object Label39: TLabel
        Left = 24
        Top = 192
        Width = 96
        Height = 19
        Caption = 'Amsler chart'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape34: TShape
        Left = 15
        Top = 329
        Width = 564
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label41: TLabel
        Left = 26
        Top = 335
        Width = 154
        Height = 19
        Caption = 'Intraocular pressure'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape35: TShape
        Left = 16
        Top = 360
        Width = 564
        Height = 90
        Pen.Color = 3513907
      end
      object Label42: TLabel
        Left = 237
        Top = 335
        Width = 146
        Height = 19
        Caption = 'OD (Oculus Dexter)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label43: TLabel
        Left = 406
        Top = 335
        Width = 149
        Height = 19
        Caption = 'OS (oculus sinister)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape36: TShape
        Left = 586
        Top = 34
        Width = 613
        Height = 813
        Pen.Color = 3513907
      end
      object Shape37: TShape
        Left = 586
        Top = 3
        Width = 613
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label116: TLabel
        Left = 597
        Top = 9
        Width = 290
        Height = 19
        Caption = 'OCT '#8211' Ocular Coherence Tomography'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape38: TShape
        Left = 586
        Top = 35
        Width = 613
        Height = 31
        Brush.Color = 4568679
        Pen.Color = 3513907
      end
      object Label157: TLabel
        Left = 596
        Top = 40
        Width = 534
        Height = 19
        Caption = 
          'Vitreomacular adhesion (VMA, adherence but no evidence of tracti' +
          'on)  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape39: TShape
        Left = 586
        Top = 108
        Width = 613
        Height = 31
        Brush.Color = 4568679
        Pen.Color = 3513907
      end
      object Label158: TLabel
        Left = 596
        Top = 113
        Width = 382
        Height = 19
        Caption = 'Size of the adhesion in microns at the widest point'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape40: TShape
        Left = 586
        Top = 186
        Width = 613
        Height = 31
        Brush.Color = 4568679
        Pen.Color = 3513907
      end
      object Label159: TLabel
        Left = 598
        Top = 192
        Width = 444
        Height = 19
        Caption = 'Central retinal 1mm diameter subfield thickness in microns'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape41: TShape
        Left = 587
        Top = 257
        Width = 612
        Height = 31
        Brush.Color = 4568679
        Pen.Color = 3513907
      end
      object Label160: TLabel
        Left = 598
        Top = 262
        Width = 216
        Height = 19
        Caption = 'Vitreomacular traction (VMT)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape42: TShape
        Left = 587
        Top = 329
        Width = 612
        Height = 31
        Brush.Color = 4568679
        Pen.Color = 3513907
      end
      object Label161: TLabel
        Left = 598
        Top = 334
        Width = 208
        Height = 19
        Caption = 'Full thickness macular hole'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape43: TShape
        Left = 586
        Top = 406
        Width = 613
        Height = 31
        Brush.Color = 4568679
        Pen.Color = 3513907
      end
      object Label162: TLabel
        Left = 597
        Top = 413
        Width = 327
        Height = 19
        Caption = 'Provide size of the macular hole in microns'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape44: TShape
        Left = 16
        Top = 456
        Width = 564
        Height = 207
        Pen.Color = 3513907
      end
      object Shape45: TShape
        Left = 16
        Top = 475
        Width = 564
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label44: TLabel
        Left = 27
        Top = 481
        Width = 155
        Height = 19
        Caption = 'Proposed Treatment'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label124: TLabel
        Left = 204
        Top = 483
        Width = 17
        Height = 33
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label122: TLabel
        Left = 820
        Top = 258
        Width = 17
        Height = 33
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape3: TShape
        Left = 1224
        Top = 32
        Width = 177
        Height = 57
        Brush.Color = 3575781
        Pen.Color = 3513907
      end
      object Shape4: TShape
        Left = 1227
        Top = 95
        Width = 409
        Height = 790
        Brush.Color = 11239721
        Pen.Color = 3513907
      end
      object Shape7: TShape
        Left = 1639
        Top = 95
        Width = 346
        Height = 790
        Brush.Color = 4380100
        Pen.Color = 3513907
      end
      object Label119: TLabel
        Left = 1227
        Top = 8
        Width = 89
        Height = 19
        Caption = 'Connection'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label126: TLabel
        Left = 1544
        Top = 73
        Width = 90
        Height = 19
        Caption = 'DataSource'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label127: TLabel
        Left = 1895
        Top = 73
        Width = 85
        Height = 19
        Caption = 'DataTables'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape8: TShape
        Left = 1991
        Top = 95
        Width = 642
        Height = 790
        Brush.Color = 2711437
        Pen.Color = 3513907
      end
      object Label128: TLabel
        Left = 2548
        Top = 70
        Width = 59
        Height = 19
        Caption = 'Queries'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBGrid4: TDBGrid
        Left = 649
        Top = 720
        Width = 520
        Height = 115
        DataSource = ALC_DATASOURCE_INI_FOLLOWUP
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Visible = False
      end
      object Button5: TButton
        Left = 1124
        Top = 853
        Width = 75
        Height = 25
        Caption = 'Confirm'
        TabOrder = 1
        OnClick = Button5Click
      end
      object DBEdit_INI_FOLLOWUP_AnswersInitialAndFollowupVisit: TDBEdit
        Left = 867
        Top = 777
        Width = 211
        Height = 26
        DataField = 'AnswersInitialAndFollowupVisit'
        DataSource = ALC_DATASOURCE_INI_FOLLOWUP
        TabOrder = 2
        Visible = False
      end
      object DBEdit_INI_FOLLOW_AnswerBaseID: TDBEdit
        Left = 867
        Top = 817
        Width = 211
        Height = 26
        DataField = 'AnswerBaseID'
        DataSource = ALC_DATASOURCE_INI_FOLLOWUP
        TabOrder = 3
        Visible = False
      end
      object DBCheckBox_INI_FOLLOW_OCTVitreomacularAdhesion_OD: TDBCheckBox
        Left = 830
        Top = 78
        Width = 129
        Height = 17
        Caption = 'Adhesion OD'
        DataField = 'OCTVitreomacularAdhesion_OD'
        DataSource = ALC_DATASOURCE_INI_FOLLOWUP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = DBCheckBox_INI_FOLLOW_OCTVitreomacularAdhesion_ODClick
      end
      object DBCheckBox_INI_FOLLOW_OCTVitreomacularAdhesion_OS: TDBCheckBox
        Left = 1007
        Top = 78
        Width = 135
        Height = 17
        Caption = 'Adhesion OS'
        DataField = 'OCTVitreomacularAdhesion_OS'
        DataSource = ALC_DATASOURCE_INI_FOLLOWUP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = DBCheckBox_INI_FOLLOW_OCTVitreomacularAdhesion_OSClick
      end
      object DBEdit_INI_FOLLOW_OCTVMASize_OD: TDBEdit
        Left = 830
        Top = 151
        Width = 125
        Height = 26
        DataField = 'OCTVMASize_OD'
        DataSource = ALC_DATASOURCE_INI_FOLLOWUP
        TabOrder = 6
        Visible = False
      end
      object DBEdit_INI_FOLLOW_OCTVMASize_OS: TDBEdit
        Left = 1005
        Top = 151
        Width = 126
        Height = 26
        DataField = 'OCTVMASize_OS'
        DataSource = ALC_DATASOURCE_INI_FOLLOWUP
        TabOrder = 7
        Visible = False
      end
      object DBEdit_INI_FOLLOW_OCTMacularHoleSize_OD: TDBEdit
        Left = 729
        Top = 457
        Width = 193
        Height = 26
        DataField = 'OCTMacularHoleSize_OD'
        DataSource = ALC_DATASOURCE_INI_FOLLOWUP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit_INI_FOLLOW_OCTMacularHoleSize_OS: TDBEdit
        Left = 949
        Top = 457
        Width = 181
        Height = 26
        DataField = 'OCTMacularHoleSize_OS'
        DataSource = ALC_DATASOURCE_INI_FOLLOWUP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object DBCheckBox_INI_FOLLOW_OCTEpiretinalMembrane_OD: TDBCheckBox
        Left = 602
        Top = 618
        Width = 287
        Height = 17
        Caption = 'OCTEpiretinalMembrane_OD'
        DataField = 'OCTEpiretinalMembrane_OD'
        DataSource = ALC_DATASOURCE_INI_FOLLOWUP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object DBCheckBox_INI_FOLLOW_OCTEpiretinalMembrane_OS: TDBCheckBox
        Left = 893
        Top = 618
        Width = 287
        Height = 17
        Caption = 'OCTEpiretinalMembrane_OS'
        DataField = 'OCTEpiretinalMembrane_OS'
        DataSource = ALC_DATASOURCE_INI_FOLLOWUP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
      end
      object DBCheckBox_INI_FOLLOW_Archived: TDBCheckBox
        Left = 1192
        Top = 902
        Width = 97
        Height = 17
        Caption = 'Archived'
        DataField = 'Archived'
        DataSource = ALC_DATASOURCE_INI_FOLLOWUP
        TabOrder = 12
        Visible = False
      end
      object DBEdit_INI_FOLLOW_DateUpdated: TDBEdit
        Left = 1236
        Top = 925
        Width = 144
        Height = 26
        DataField = 'DateUpdated'
        DataSource = ALC_DATASOURCE_INI_FOLLOWUP
        TabOrder = 13
      end
      object DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OD: TDBLookupComboBox
        Left = 35
        Top = 522
        Width = 250
        Height = 26
        DataField = 'ProposedTreatmentID_OD'
        DataSource = ALC_DATASOURCE_INI_FOLLOWUP
        KeyField = 'ProposedTreatmentID'
        ListField = 'ProposedTreatmentDesc'
        ListSource = ALC_DS_PROPOSED_TREAT
        TabOrder = 16
        OnCloseUp = DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_ODCloseUp
      end
      object DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OS: TDBLookupComboBox
        Left = 310
        Top = 522
        Width = 250
        Height = 26
        DataField = 'ProposedTreatmentID_OS'
        DataSource = ALC_DATASOURCE_INI_FOLLOWUP
        KeyField = 'ProposedTreatmentID'
        ListField = 'ProposedTreatmentDesc'
        ListSource = ALC_DS_PROPOSED_TREAT
        TabOrder = 17
        OnCloseUp = DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OSCloseUp
      end
      object DateTimePicker5: TDateTimePicker
        Left = 35
        Top = 568
        Width = 251
        Height = 26
        Date = 41549.612807314810000000
        Time = 41549.612807314810000000
        TabOrder = 18
        OnChange = DateTimePicker5Change
      end
      object DateTimePicker6: TDateTimePicker
        Left = 310
        Top = 568
        Width = 248
        Height = 26
        Date = 41549.612807314810000000
        Time = 41549.612807314810000000
        TabOrder = 19
        OnChange = DateTimePicker6Change
      end
      object DBLookupComboBox_INI_FOLLOW_VisualAcuityDistance_OS: TDBLookupComboBox
        Left = 408
        Top = 76
        Width = 146
        Height = 26
        DataField = 'VisualAcuityDistance_OS'
        DataSource = ALC_DATASOURCE_INI_FOLLOWUP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'SnellenMeter_6'
        ListField = 'SnellenMeter_6Desc'
        ParentFont = False
        TabOrder = 15
        OnCloseUp = DBLookupComboBox_INI_FOLLOW_VisualAcuityDistance_OSCloseUp
      end
      object DBLookupComboBox_INI_FOLLOW_VisualAcuityDistance_OD: TDBLookupComboBox
        Left = 242
        Top = 76
        Width = 147
        Height = 26
        DataField = 'VisualAcuityDistance_OD'
        DataSource = ALC_DATASOURCE_INI_FOLLOWUP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'LogMar'
        ListField = 'SnellenMeter_6Desc'
        ParentFont = False
        TabOrder = 14
        OnCloseUp = DBLookupComboBox_INI_FOLLOW_VisualAcuityDistance_ODCloseUp
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'TabSheet6'
      ImageIndex = 5
      TabVisible = False
      object Label62: TLabel
        Left = 937
        Top = 424
        Width = 130
        Height = 13
        Caption = 'AnswerFollowupVisitOnlyID'
        FocusControl = DBEdit_FOLLOWUP_AnswerFollowupVisitOnlyID
        Visible = False
      end
      object Label63: TLabel
        Left = 936
        Top = 467
        Width = 70
        Height = 13
        Caption = 'AnswerBaseID'
        FocusControl = DBEdit_FOLLOWUP_AnswerBaseID
        Visible = False
      end
      object Label80: TLabel
        Left = 936
        Top = 632
        Width = 62
        Height = 13
        Caption = 'DateCreated'
        FocusControl = DBEdit_FOLLOWUP_DateCreated
        Visible = False
      end
      object Label81: TLabel
        Left = 936
        Top = 696
        Width = 64
        Height = 13
        Caption = 'DateUpdated'
        FocusControl = DBEdit_FOLLOWUP_DateUpdated
        Visible = False
      end
      object Shape48: TShape
        Left = 96
        Top = 165
        Width = 745
        Height = 611
        Pen.Color = 3513907
      end
      object Shape49: TShape
        Left = 96
        Top = 133
        Width = 745
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label49: TLabel
        Left = 105
        Top = 140
        Width = 443
        Height = 19
        Caption = 'Occular Symptoms (Only required at follow-up clinic visits)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label125: TLabel
        Left = 557
        Top = 138
        Width = 17
        Height = 33
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label79: TLabel
        Left = 469
        Top = 744
        Width = 200
        Height = 18
        Caption = 'Occular Symptoms Other OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label78: TLabel
        Left = 114
        Top = 744
        Width = 201
        Height = 18
        Caption = 'Occular Symptoms Other OD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label77: TLabel
        Left = 469
        Top = 671
        Width = 279
        Height = 18
        Caption = 'Occular Symptoms Visual Reduction OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label76: TLabel
        Left = 114
        Top = 671
        Width = 280
        Height = 18
        Caption = 'Occular Symptoms Visual Reduction OD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label75: TLabel
        Left = 469
        Top = 599
        Width = 260
        Height = 18
        Caption = 'Occular Symptoms Blurred Vision OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label74: TLabel
        Left = 114
        Top = 599
        Width = 261
        Height = 18
        Caption = 'Occular Symptoms Blurred Vision OD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label73: TLabel
        Left = 469
        Top = 486
        Width = 302
        Height = 18
        Caption = 'Occular Symptoms Central Black Image OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label72: TLabel
        Left = 114
        Top = 486
        Width = 303
        Height = 18
        Caption = 'Occular Symptoms Central Black Image OD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label71: TLabel
        Left = 469
        Top = 414
        Width = 327
        Height = 18
        Caption = 'Occular Symptoms Objects Appear Smaller OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label70: TLabel
        Left = 111
        Top = 414
        Width = 328
        Height = 18
        Caption = 'Occular Symptoms Objects Appear Smaller OD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label69: TLabel
        Left = 469
        Top = 341
        Width = 274
        Height = 18
        Caption = 'Occular Symptoms Distorted Vision OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label68: TLabel
        Left = 114
        Top = 341
        Width = 275
        Height = 18
        Caption = 'Occular Symptoms Distorted Vision OD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label67: TLabel
        Left = 469
        Top = 255
        Width = 275
        Height = 18
        Caption = 'Occular Symptoms Flashes Of Light OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label66: TLabel
        Left = 113
        Top = 256
        Width = 276
        Height = 18
        Caption = 'Occular Symptoms Flashes Of Light OD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label65: TLabel
        Left = 469
        Top = 181
        Width = 219
        Height = 18
        Caption = 'Occular Symptoms Floaters OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label64: TLabel
        Left = 113
        Top = 186
        Width = 220
        Height = 18
        Caption = 'Occular Symptoms Floaters OD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Shape50: TShape
        Left = 94
        Top = 56
        Width = 395
        Height = 61
        Pen.Color = 3513907
      end
      object Shape51: TShape
        Left = 94
        Top = 25
        Width = 395
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label51: TLabel
        Left = 101
        Top = 31
        Width = 151
        Height = 19
        Caption = 'Secondary Cateract'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label123: TLabel
        Left = 258
        Top = 26
        Width = 17
        Height = 33
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 580
        Top = 136
        Width = 17
        Height = 33
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label45: TLabel
        Left = 120
        Top = 542
        Width = 169
        Height = 18
        Caption = 'Difficulty reading at night'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label47: TLabel
        Left = 475
        Top = 542
        Width = 169
        Height = 18
        Caption = 'Difficulty reading at night'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBGrid5: TDBGrid
        Left = 872
        Top = 88
        Width = 333
        Height = 316
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Visible = False
      end
      object Button6: TButton
        Left = 766
        Top = 782
        Width = 75
        Height = 25
        Caption = 'Confirm'
        TabOrder = 1
        OnClick = Button6Click
      end
      object DBEdit_FOLLOWUP_AnswerFollowupVisitOnlyID: TDBEdit
        Left = 937
        Top = 440
        Width = 205
        Height = 21
        DataField = 'AnswerFollowupVisitOnlyID'
        TabOrder = 2
        Visible = False
      end
      object DBEdit_FOLLOWUP_AnswerBaseID: TDBEdit
        Left = 936
        Top = 483
        Width = 134
        Height = 21
        DataField = 'AnswerBaseID'
        TabOrder = 3
        Visible = False
      end
      object DBEdit_FOLLOWUP_DateCreated: TDBEdit
        Left = 936
        Top = 648
        Width = 238
        Height = 21
        DataField = 'DateCreated'
        TabOrder = 4
        Visible = False
      end
      object DBCheckBox_FOLLOWUP_Archived: TDBCheckBox
        Left = 936
        Top = 672
        Width = 97
        Height = 17
        Caption = 'Archived'
        DataField = 'Archived'
        TabOrder = 5
        Visible = False
      end
      object DBEdit_FOLLOWUP_DateUpdated: TDBEdit
        Left = 936
        Top = 712
        Width = 238
        Height = 21
        DataField = 'DateUpdated'
        TabOrder = 6
        Visible = False
      end
      object DBLookupCB_FOLLOWUP_OccularSymptomsDistortedVisionID_OS: TDBLookupComboBox
        Tag = 3
        Left = 469
        Top = 365
        Width = 250
        Height = 26
        DataField = 'OccularSymptomsDistortedVisionID_OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'OccularSymptomsID'
        ListField = 'OccularSymptomsDesc'
        ListSource = ALC_DS_OS_SHORT
        ParentFont = False
        TabOrder = 20
      end
      object DBCheckBox_INI_FOLLOW_SecCateractPresence_OS: TDBCheckBox
        Tag = 99
        Left = 294
        Top = 78
        Width = 48
        Height = 17
        Caption = 'OS'
        DataField = 'SecCateractPresence_OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 24
        OnClick = DBCheckBox_INI_FOLLOW_SecCateractPresence_OSClick
      end
      object DBCheckBox_INI_FOLLOW_SecCateractPresence_OD: TDBCheckBox
        Tag = 99
        Left = 111
        Top = 79
        Width = 75
        Height = 15
        Caption = 'OD'
        DataField = 'SecCateractPresence_OD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 23
        OnClick = DBCheckBox_INI_FOLLOW_SecCateractPresence_ODClick
      end
      object DBLookupCB_FOLLOWUP_OccularSymptomsFloatersID_OS: TDBLookupComboBox
        Tag = 3
        Left = 469
        Top = 205
        Width = 250
        Height = 26
        DataField = 'OccularSymptomsFloatersID_OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'OccularSymptomsID'
        ListField = 'OccularSymptomsDesc'
        ListSource = ALC_DS_OS_SHORT
        ParentFont = False
        TabOrder = 22
      end
      object DBLookupCB_FOLLOWUP_OccularSymptomsFlashesOfLightID_OS: TDBLookupComboBox
        Tag = 3
        Left = 469
        Top = 279
        Width = 250
        Height = 26
        DataField = 'OccularSymptomsFlashesOfLightID_OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'OccularSymptomsID'
        ListField = 'OccularSymptomsDesc'
        ListSource = ALC_DS_OS_SHORT
        ParentFont = False
        TabOrder = 21
      end
      object DBLookupCB_FOLLOWUP_OccularSymptomsObjectsAppearSmallerID_OS: TDBLookupComboBox
        Tag = 3
        Left = 469
        Top = 438
        Width = 250
        Height = 26
        DataField = 'OccularSymptomsObjectsAppearSmallerID_OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'OccularSymptomsID'
        ListField = 'OccularSymptomsDesc'
        ListSource = ALC_DS_OS_SHORT
        ParentFont = False
        TabOrder = 19
      end
      object DBLookupCB_FOLLOWUP_OccularSymptomsOtherID_OS: TDBLookupComboBox
        Tag = 3
        Left = 469
        Top = 768
        Width = 250
        Height = 26
        DataField = 'OccularSymptomsOtherID_OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'OccularSymptomsID'
        ListField = 'OccularSymptomsDesc'
        ListSource = ALC_DS_OS_SHORT
        ParentFont = False
        TabOrder = 18
        OnClick = DBLookupCB_FOLLOWUP_OccularSymptomsOtherID_OSClick
      end
      object DBLookupCB_FOLLOWUP_OccularSymptomsVisualReductionID_OS: TDBLookupComboBox
        Tag = 3
        Left = 469
        Top = 695
        Width = 250
        Height = 26
        DataField = 'OccularSymptomsVisualReductionID_OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'OccularSymptomsID'
        ListField = 'OccularSymptomsDesc'
        ListSource = ALC_DS_OS_SHORT
        ParentFont = False
        TabOrder = 17
      end
      object DBLookupCB_FOLLOWUP_OccularSymptomsBlurredVisionID_OS: TDBLookupComboBox
        Tag = 3
        Left = 469
        Top = 623
        Width = 250
        Height = 26
        DataField = 'OccularSymptomsBlurredVisionID_OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'OccularSymptomsID'
        ListField = 'OccularSymptomsDesc'
        ListSource = ALC_DS_OS_SHORT
        ParentFont = False
        TabOrder = 16
      end
      object DBLookupCB_FOLLOWUP_OccularSymptomsCentralBlackImageID_OS: TDBLookupComboBox
        Tag = 3
        Left = 469
        Top = 510
        Width = 250
        Height = 26
        DataField = 'OccularSymptomsCentralBlackImageID_OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'OccularSymptomsID'
        ListField = 'OccularSymptomsDesc'
        ListSource = ALC_DS_OS_SHORT
        ParentFont = False
        TabOrder = 15
      end
      object DBLookupCB_FOLLOWUP_OccularSymptomsCentralBlackImageID_OD: TDBLookupComboBox
        Tag = 2
        Left = 113
        Top = 510
        Width = 250
        Height = 26
        DataField = 'OccularSymptomsCentralBlackImageID_OD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'OccularSymptomsID'
        ListField = 'OccularSymptomsDesc'
        ListSource = ALC_DS_OS_SHORT
        ParentFont = False
        TabOrder = 14
      end
      object DBLookupCB_FOLLOWUP_OccularSymptomsBlurredVisionID_OD: TDBLookupComboBox
        Tag = 2
        Left = 113
        Top = 623
        Width = 250
        Height = 26
        DataField = 'OccularSymptomsBlurredVisionID_OD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'OccularSymptomsID'
        ListField = 'OccularSymptomsDesc'
        ListSource = ALC_DS_OS_SHORT
        ParentFont = False
        TabOrder = 13
      end
      object DBLookupCB_FOLLOWUP_OccularSymptomsVisualReductionID_OD: TDBLookupComboBox
        Tag = 2
        Left = 113
        Top = 695
        Width = 250
        Height = 26
        DataField = 'OccularSymptomsVisualReductionID_OD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'OccularSymptomsID'
        ListField = 'OccularSymptomsDesc'
        ListSource = ALC_DS_OS_SHORT
        ParentFont = False
        TabOrder = 12
      end
      object DBLookupCB_FOLLOWUP_OccularSymptomsOtherID_OD: TDBLookupComboBox
        Tag = 2
        Left = 113
        Top = 768
        Width = 250
        Height = 26
        DataField = 'OccularSymptomsOtherID_OD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'OccularSymptomsID'
        ListField = 'OccularSymptomsDesc'
        ListSource = ALC_DS_OS_SHORT
        ParentFont = False
        TabOrder = 11
      end
      object DBLookupCB_FOLLOWUP_OccularSymptomsObjectsAppearSmallerID_OD: TDBLookupComboBox
        Tag = 2
        Left = 113
        Top = 438
        Width = 250
        Height = 26
        DataField = 'OccularSymptomsObjectsAppearSmallerID_OD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'OccularSymptomsID'
        ListField = 'OccularSymptomsDesc'
        ListSource = ALC_DS_OS_SHORT
        ParentFont = False
        TabOrder = 10
      end
      object DBLookupComboBox_FOLLOWUP_OccularSymptomsDistortedVisionID_OD: TDBLookupComboBox
        Tag = 2
        Left = 113
        Top = 365
        Width = 250
        Height = 26
        DataField = 'OccularSymptomsDistortedVisionID_OD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'OccularSymptomsID'
        ListField = 'OccularSymptomsDesc'
        ListSource = ALC_DS_OS_SHORT
        ParentFont = False
        TabOrder = 9
      end
      object DBLookupComboBox_FOLLOWUP_OccularSymptomsFlashesOfLightID_OD: TDBLookupComboBox
        Tag = 2
        Left = 113
        Top = 280
        Width = 250
        Height = 26
        DataField = 'OccularSymptomsFlashesOfLightID_OD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'OccularSymptomsID'
        ListField = 'OccularSymptomsDesc'
        ListSource = ALC_DS_OS_SHORT
        ParentFont = False
        TabOrder = 8
      end
      object DBLookupComboBox_FOLLOWUP_OccularSymptomsFloatersID_OD: TDBLookupComboBox
        Tag = 2
        Left = 114
        Top = 206
        Width = 250
        Height = 26
        DataField = 'OccularSymptomsFloatersID_OD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'OccularSymptomsID'
        ListField = 'OccularSymptomsDesc'
        ListSource = ALC_DS_OS_LONG
        ParentFont = False
        TabOrder = 7
      end
      object DBLookupComboBox_DifficultyReading_OD: TDBLookupComboBox
        Tag = 2
        Left = 119
        Top = 566
        Width = 250
        Height = 26
        DataField = 'OccularSymptomsDifficultyReadingAtNight_OD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'OccularSymptomsID'
        ListField = 'OccularSymptomsDesc'
        ListSource = ALC_DS_OS_SHORT
        ParentFont = False
        TabOrder = 25
      end
      object DBLookupComboBox_DifficultyReading_OS: TDBLookupComboBox
        Tag = 3
        Left = 475
        Top = 566
        Width = 250
        Height = 26
        DataField = 'OccularSymptomsDifficultyReadingAtNight_OS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'OccularSymptomsID'
        ListField = 'OccularSymptomsDesc'
        ListSource = ALC_DS_OS_SHORT
        ParentFont = False
        TabOrder = 26
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'TabSheet7'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 6
      ParentFont = False
      TabVisible = False
      object Shape52: TShape
        Left = 486
        Top = 138
        Width = 395
        Height = 288
        Pen.Color = 3513907
      end
      object Label82: TLabel
        Left = 1104
        Top = 683
        Width = 77
        Height = 13
        Caption = 'DischargeVisitID'
        FocusControl = DBEdi_DISCHARGE_DischargeVisitID
        Visible = False
      end
      object Label83: TLabel
        Left = 1104
        Top = 723
        Width = 70
        Height = 13
        Caption = 'AnswerBaseID'
        FocusControl = DBEdit_DISCHARGE_AnserBaseID
        Visible = False
      end
      object Label84: TLabel
        Left = 510
        Top = 154
        Width = 171
        Height = 18
        Caption = 'Discharge Planned Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label85: TLabel
        Left = 510
        Top = 259
        Width = 156
        Height = 18
        Caption = 'Discharge Actual Date'
        FocusControl = DBEdit_DISCHARGE_DischargeDate
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label86: TLabel
        Left = 510
        Top = 329
        Width = 130
        Height = 18
        Caption = 'Discharge Reason'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label87: TLabel
        Left = 1104
        Top = 779
        Width = 62
        Height = 13
        Caption = 'DateCreated'
        FocusControl = DBEdit_DISCHARGE_DateCreated
        Visible = False
      end
      object Label88: TLabel
        Left = 1104
        Top = 843
        Width = 64
        Height = 13
        Caption = 'DateUpdated'
        FocusControl = DBEdit_DISCHARGE_DateUpdated
        Visible = False
      end
      object Label89: TLabel
        Left = 480
        Top = 952
        Width = 37
        Height = 13
        Caption = 'Label89'
      end
      object Shape53: TShape
        Left = 486
        Top = 108
        Width = 395
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label60: TLabel
        Left = 497
        Top = 113
        Width = 162
        Height = 19
        Caption = 'Discharge of patients'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button7: TButton
        Left = 806
        Top = 441
        Width = 75
        Height = 25
        Caption = 'Confirm'
        TabOrder = 0
        OnClick = Button7Click
      end
      object DBGrid6: TDBGrid
        Left = 935
        Top = 192
        Width = 450
        Height = 316
        DataSource = ALC_DATASOURCE_DISCHARGE
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Visible = False
      end
      object DBEdi_DISCHARGE_DischargeVisitID: TDBEdit
        Left = 1104
        Top = 699
        Width = 134
        Height = 21
        DataField = 'DischargeVisitID'
        DataSource = ALC_DATASOURCE_DISCHARGE
        TabOrder = 2
        Visible = False
      end
      object DBEdit_DISCHARGE_AnserBaseID: TDBEdit
        Left = 1104
        Top = 739
        Width = 134
        Height = 21
        DataField = 'AnswerBaseID'
        DataSource = ALC_DATASOURCE_DISCHARGE
        TabOrder = 3
        Visible = False
      end
      object DBCheckBox_DISCHARGE_LostToFollowup: TDBCheckBox
        Left = 510
        Top = 226
        Width = 156
        Height = 17
        Caption = 'Lost To Follow up'
        DataField = 'LostToFollowup'
        DataSource = ALC_DATASOURCE_DISCHARGE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit_DISCHARGE_DischargeDate: TDBEdit
        Left = 672
        Top = 635
        Width = 238
        Height = 21
        DataField = 'DischargeDate'
        DataSource = ALC_DATASOURCE_DISCHARGE
        TabOrder = 5
        Visible = False
        OnChange = DBEdit_DISCHARGE_DischargeDateChange
      end
      object DBEdit_DISCHARGE_DateCreated: TDBEdit
        Left = 1104
        Top = 795
        Width = 238
        Height = 21
        DataField = 'DateCreated'
        DataSource = ALC_DATASOURCE_DISCHARGE
        TabOrder = 6
        Visible = False
      end
      object DBCheckBox_DISCHARGE_Archived: TDBCheckBox
        Left = 1104
        Top = 819
        Width = 97
        Height = 17
        Caption = 'Archived'
        DataField = 'Archived'
        DataSource = ALC_DATASOURCE_DISCHARGE
        TabOrder = 7
        Visible = False
      end
      object DBEdit_DISCHARGE_DateUpdated: TDBEdit
        Left = 1104
        Top = 859
        Width = 238
        Height = 21
        DataField = 'DateUpdated'
        DataSource = ALC_DATASOURCE_DISCHARGE
        TabOrder = 8
        Visible = False
      end
      object DBLookupComboBox_DISCHARGE_DischargeReasonID: TDBLookupComboBox
        Left = 510
        Top = 348
        Width = 250
        Height = 26
        DataField = 'DischargeReasonID'
        DataSource = ALC_DATASOURCE_DISCHARGE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'DischargeReasonID'
        ListField = 'DischargeReasonDesc'
        ListSource = ALC_DS_REASON_DISCHARGE
        ParentFont = False
        TabOrder = 9
        OnCloseUp = DBLookupComboBox_Medical_SourceOfReferalIDCloseUp
      end
      object DateTimePicker1: TDateTimePicker
        Left = 510
        Top = 173
        Width = 111
        Height = 26
        Date = 41549.612807314810000000
        Time = 41549.612807314810000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object DateTimePicker7: TDateTimePicker
        Left = 510
        Top = 283
        Width = 111
        Height = 26
        Date = 41549.612807314810000000
        Time = 41549.612807314810000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnChange = DateTimePicker7Change
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'TabSheet8'
      ImageIndex = 7
      TabVisible = False
      object Label111: TLabel
        Left = 51
        Top = 19
        Width = 500
        Height = 33
        Caption = 'Please select one of the following options:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Shape5: TShape
        Left = 316
        Top = 101
        Width = 612
        Height = 444
        Pen.Color = 3513907
      end
      object Shape6: TShape
        Left = 316
        Top = 74
        Width = 612
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label144: TLabel
        Left = 327
        Top = 80
        Width = 121
        Height = 19
        Caption = 'Patient options:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object RadioButton1: TRadioButton
        Left = 340
        Top = 127
        Width = 150
        Height = 17
        Caption = 'Insert new patient'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = RadioButton1Click
      end
      object RadioButton2: TRadioButton
        Left = 340
        Top = 169
        Width = 184
        Height = 17
        Caption = 'Edit previous patient'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = RadioButton2Click
      end
      object Button18: TButton
        Left = 519
        Top = 125
        Width = 75
        Height = 25
        Caption = 'Confirm'
        TabOrder = 2
        TabStop = False
        Visible = False
        OnClick = Button18Click
      end
      object DBGrid7: TDBGrid
        Left = 102
        Top = 776
        Width = 449
        Height = 106
        DataSource = ALC_DATASOURCE_PATIENTS
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Visible = False
      end
      object Panel5: TPanel
        Left = 327
        Top = 192
        Width = 593
        Height = 314
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 4
        Visible = False
        object Shape13: TShape
          Left = 9
          Top = 8
          Width = 570
          Height = 31
          Brush.Color = 5090905
          Pen.Color = 3513907
        end
        object Shape14: TShape
          Left = 9
          Top = 38
          Width = 570
          Height = 260
          Pen.Color = 5090905
        end
        object Label150: TLabel
          Left = 24
          Top = 14
          Width = 508
          Height = 19
          Caption = 
            'Previous patients: Click one of the patients below to view episo' +
            'des'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object ScrollBox1: TScrollBox
          Left = 14
          Top = 42
          Width = 564
          Height = 253
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = 16250610
          ParentColor = False
          TabOrder = 0
        end
      end
      object Edit1: TEdit
        Left = 120
        Top = 184
        Width = 161
        Height = 21
        TabOrder = 5
        Text = 'Edit1'
        Visible = False
      end
      object Button33: TButton
        Left = 206
        Top = 211
        Width = 75
        Height = 25
        Caption = 'Button33'
        TabOrder = 6
        Visible = False
        OnClick = Button33Click
      end
      object Memo1: TMemo
        Left = 105
        Top = 304
        Width = 185
        Height = 89
        Lines.Strings = (
          'Memo1')
        TabOrder = 7
        Visible = False
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'TabSheet9'
      ImageIndex = 8
      TabVisible = False
      object Shape56: TShape
        Left = 345
        Top = 49
        Width = 386
        Height = 328
        Pen.Color = 3513907
      end
      object Label94: TLabel
        Left = 393
        Top = 796
        Width = 53
        Height = 13
        Caption = 'Entered By'
        FocusControl = DBEdit_Patient_EnteredBy
        Visible = False
      end
      object Label96: TLabel
        Left = 615
        Top = 807
        Width = 17
        Height = 33
        AutoSize = False
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label133: TLabel
        Left = 375
        Top = 403
        Width = 86
        Height = 13
        Caption = 'new episode Date'
        Visible = False
      end
      object Label135: TLabel
        Left = 153
        Top = 215
        Width = 121
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label136: TLabel
        Left = 153
        Top = 240
        Width = 121
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label137: TLabel
        Left = 153
        Top = 265
        Width = 121
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label138: TLabel
        Left = 153
        Top = 290
        Width = 121
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label139: TLabel
        Left = 153
        Top = 315
        Width = 121
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Shape11: TShape
        Left = 233
        Top = 436
        Width = 632
        Height = 305
        Pen.Color = 3513907
      end
      object Shape12: TShape
        Left = 233
        Top = 405
        Width = 632
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object lab_Prev_Patient_Visits: TLabel
        Left = 251
        Top = 411
        Width = 201
        Height = 19
        Caption = 'Patient ID # previous visits'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label95: TLabel
        Left = 400
        Top = 80
        Width = 52
        Height = 18
        Caption = 'Gender'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label163: TLabel
        Left = 400
        Top = 171
        Width = 27
        Height = 18
        Caption = 'age'
        FocusControl = DBEdit_Patient_CentreID
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Shape57: TShape
        Left = 345
        Top = 19
        Width = 386
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object lab_Prev_PatientID: TLabel
        Left = 355
        Top = 24
        Width = 92
        Height = 19
        Caption = 'Patient ID: #'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button20: TButton
        Left = 157
        Top = 315
        Width = 75
        Height = 25
        Caption = 'Button19'
        TabOrder = 0
        Visible = False
        OnClick = Button20Click
      end
      object DBGrid8: TDBGrid
        Left = 954
        Top = 449
        Width = 276
        Height = 316
        DataSource = ALC_DATASOURCE_PATIENTS
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Visible = False
      end
      object DBEdit_Patient_EnteredBy: TDBEdit
        Left = 392
        Top = 813
        Width = 220
        Height = 21
        DataField = 'EnteredBy'
        DataSource = ALC_DS_ANSWERS_BASE
        TabOrder = 2
        Visible = False
        OnChange = DBEdit_Patient_EnteredByChange
      end
      object Button23: TButton
        Left = 280
        Top = 449
        Width = 75
        Height = 25
        Caption = 'Button19'
        TabOrder = 3
        Visible = False
      end
      object Button24: TButton
        Left = 280
        Top = 480
        Width = 75
        Height = 25
        Caption = 'Button19'
        TabOrder = 4
        Visible = False
      end
      object Button25: TButton
        Left = 280
        Top = 511
        Width = 75
        Height = 25
        Caption = 'Button19'
        TabOrder = 5
        Visible = False
      end
      object Button26: TButton
        Left = 280
        Top = 542
        Width = 75
        Height = 25
        Caption = 'Button19'
        TabOrder = 6
        Visible = False
      end
      object Button27: TButton
        Left = 280
        Top = 573
        Width = 75
        Height = 25
        Caption = 'Button19'
        TabOrder = 7
        Visible = False
      end
      object Panel6: TPanel
        Left = 251
        Top = 442
        Width = 589
        Height = 131
        BevelOuter = bvNone
        Caption = 'Panel6'
        Color = clWhite
        ParentBackground = False
        TabOrder = 8
        object Shape15: TShape
          Left = 9
          Top = 39
          Width = 570
          Height = 82
          Pen.Color = 5090905
        end
        object Shape16: TShape
          Left = 9
          Top = 8
          Width = 570
          Height = 31
          Brush.Color = 5090905
          Pen.Color = 3513907
        end
        object Label151: TLabel
          Left = 24
          Top = 14
          Width = 131
          Height = 19
          Caption = 'intial visit details:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label152: TLabel
          Left = 224
          Top = 14
          Width = 90
          Height = 19
          Alignment = taCenter
          Caption = 'Episode date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label130: TLabel
          Left = 218
          Top = 63
          Width = 121
          Height = 19
          Alignment = taCenter
          AutoSize = False
          Caption = 'N/A'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          OnClick = Label130Click
        end
        object Button19: TButton
          Left = 388
          Top = 60
          Width = 75
          Height = 25
          Caption = 'add'
          TabOrder = 0
          OnClick = Button19Click
        end
      end
      object Panel7: TPanel
        Left = 251
        Top = 579
        Width = 589
        Height = 131
        BevelOuter = bvNone
        Caption = 'Panel6'
        Color = clWhite
        ParentBackground = False
        TabOrder = 9
        object Shape17: TShape
          Left = 9
          Top = 39
          Width = 570
          Height = 82
          Pen.Color = 5090905
        end
        object Shape18: TShape
          Left = 9
          Top = 8
          Width = 570
          Height = 31
          Brush.Color = 5090905
          Pen.Color = 3513907
        end
        object Label153: TLabel
          Left = 24
          Top = 14
          Width = 165
          Height = 19
          Caption = 'follow up visit details:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label154: TLabel
          Left = 224
          Top = 14
          Width = 112
          Height = 19
          Alignment = taCenter
          AutoSize = False
          Caption = 'Episode date(s)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label155: TLabel
          Left = 213
          Top = 64
          Width = 135
          Height = 19
          Alignment = taCenter
          AutoSize = False
          Caption = 'No records found'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Button37: TButton
          Left = 392
          Top = 56
          Width = 75
          Height = 25
          Caption = 'add'
          TabOrder = 0
          OnClick = Button37Click
        end
        object ScrollBox2: TScrollBox
          Left = 218
          Top = 56
          Width = 151
          Height = 51
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = clWhite
          ParentColor = False
          TabOrder = 1
        end
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 400
        Top = 195
        Width = 264
        Height = 26
        DataField = 'ageID'
        DataSource = ALC_DATASOURCE_PATIENTS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'ageID'
        ListField = 'ageRangeDesc'
        ListSource = ALC_DS_AGE
        ParentFont = False
        TabOrder = 10
        OnCloseUp = DBComboBox_Patient_AgeCloseUp
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 400
        Top = 104
        Width = 264
        Height = 26
        DataField = 'genderID'
        DataSource = ALC_DATASOURCE_PATIENTS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2960685
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'genderID'
        ListField = 'gender'
        ListSource = ALC_DS_GENDER
        ParentFont = False
        TabOrder = 11
        OnCloseUp = DBLookupComboBox_Patient_GenderCloseUp
      end
      object Button47: TButton
        Left = 16
        Top = 18
        Width = 189
        Height = 25
        Caption = 'Return to previous patients'
        TabOrder = 12
        OnClick = Button47Click
      end
      object Button46: TButton
        Left = 16
        Top = 49
        Width = 189
        Height = 25
        Caption = 'Close input form'
        TabOrder = 13
        OnClick = Button46Click
      end
      object Button32: TButton
        Left = 589
        Top = 331
        Width = 75
        Height = 25
        Caption = 'Confirm'
        TabOrder = 14
        OnClick = Button32Click
      end
    end
  end
  object ALC_Connection_1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=\\vmw' +
      'are-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\Setup' +
      ' Source Files DelphiXE5\SET\System\db.mdb;Mode=Share Deny None;P' +
      'ersist Security Info=False;Jet OLEDB:System database="";Jet OLED' +
      'B:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engi' +
      'ne Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Par' +
      'tial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:N' +
      'ew Database Password="";Jet OLEDB:Create System Database=False;J' +
      'et OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on C' +
      'ompact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet ' +
      'OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 1302
    Top = 120
  end
  object ALC_TBL_Centres: TADOTable
    Connection = ALC_Connection_1
    CursorType = ctStatic
    TableName = 'tblCentres'
    Left = 1864
    Top = 704
    object ALC_TBL_CentresCentreID: TAutoIncField
      FieldName = 'CentreID'
      ReadOnly = True
    end
    object ALC_TBL_CentresCentreUUID: TWideStringField
      FieldName = 'CentreUUID'
      Size = 36
    end
    object ALC_TBL_CentresDistanceVisualAcuityScaleID: TIntegerField
      FieldName = 'DistanceVisualAcuityScaleID'
    end
    object ALC_TBL_CentresNearVisualAcuityScaleID: TIntegerField
      FieldName = 'NearVisualAcuityScaleID'
    end
    object ALC_TBL_CentresPopulation: TIntegerField
      FieldName = 'Population'
    end
    object ALC_TBL_CentresNumberOfOCTMachines: TIntegerField
      FieldName = 'NumberOfOCTMachines'
    end
    object ALC_TBL_CentresDateAdded: TDateTimeField
      FieldName = 'DateAdded'
    end
    object ALC_TBL_CentresDateUpdated: TDateTimeField
      FieldName = 'DateUpdated'
    end
    object ALC_TBL_CentresArchived: TBooleanField
      FieldName = 'Archived'
    end
    object ALC_TBL_CentresAuthorID: TWideStringField
      FieldName = 'AuthorID'
      Size = 255
    end
  end
  object ALC_DATASOURCE_CENTRES: TDataSource
    DataSet = ALC_TBL_Centres
    Left = 1302
    Top = 193
  end
  object ALC_TBL_Patients: TADOTable
    Connection = ALC_Connection_1
    CursorType = ctStatic
    TableName = 'tblPatients'
    Left = 1720
    Top = 344
    object ALC_TBL_PatientsPatientID: TAutoIncField
      FieldName = 'PatientID'
      ReadOnly = True
    end
    object ALC_TBL_PatientsPatientUUID: TWideStringField
      FieldName = 'PatientUUID'
      Size = 36
    end
    object ALC_TBL_PatientsCentreID: TIntegerField
      FieldName = 'CentreID'
    end
    object ALC_TBL_PatientsCentreUUID: TWideStringField
      FieldName = 'CentreUUID'
      Size = 255
    end
    object ALC_TBL_PatientsGenderID: TIntegerField
      FieldName = 'GenderID'
    end
    object ALC_TBL_PatientsAgeID: TIntegerField
      FieldName = 'AgeID'
    end
    object ALC_TBL_PatientsDateAdded: TDateTimeField
      FieldName = 'DateAdded'
    end
    object ALC_TBL_PatientsDateUpdated: TDateTimeField
      FieldName = 'DateUpdated'
    end
    object ALC_TBL_PatientsArchived: TBooleanField
      FieldName = 'Archived'
    end
    object ALC_TBL_PatientsAuthorID: TWideStringField
      FieldName = 'AuthorID'
      Size = 255
    end
  end
  object ALC_DATASOURCE_PATIENTS: TDataSource
    DataSet = ALC_TBL_Patients
    Left = 1302
    Top = 609
  end
  object ALC_TBL_Medical: TADOTable
    Connection = ALC_Connection_1
    CursorType = ctStatic
    EnableBCD = False
    TableName = 'tblPatientMedicalHistory'
    Left = 1872
    Top = 192
    object ALC_TBL_MedicalPatientMedicalHistoryID: TAutoIncField
      FieldName = 'PatientMedicalHistoryID'
      ReadOnly = True
    end
    object ALC_TBL_MedicalpatientID: TIntegerField
      FieldName = 'patientID'
    end
    object ALC_TBL_MedicalAnswerBaseID: TIntegerField
      FieldName = 'AnswerBaseID'
    end
    object ALC_TBL_MedicalSourceOfReferalID: TIntegerField
      FieldName = 'SourceOfReferalID'
    end
    object ALC_TBL_MedicalPhakia_OD: TIntegerField
      FieldName = 'Phakia_OD'
    end
    object ALC_TBL_MedicalPhakia_OS: TIntegerField
      FieldName = 'Phakia_OS'
    end
    object ALC_TBL_MedicalPseudophakia_OD: TBooleanField
      FieldName = 'Pseudophakia_OD'
    end
    object ALC_TBL_Medicalpseudophakia_OS: TBooleanField
      FieldName = 'pseudophakia_OS'
    end
    object ALC_TBL_MedicalReasonForReferalID: TIntegerField
      FieldName = 'ReasonForReferalID'
    end
    object ALC_TBL_MedicalGlaucoma_OD: TBooleanField
      FieldName = 'Glaucoma_OD'
    end
    object ALC_TBL_MedicalGlaucoma_OS: TBooleanField
      FieldName = 'Glaucoma_OS'
    end
    object ALC_TBL_MedicalWetAMD_OD: TBooleanField
      FieldName = 'WetAMD_OD'
    end
    object ALC_TBL_MedicalWetAMD_OS: TBooleanField
      FieldName = 'WetAMD_OS'
    end
    object ALC_TBL_MedicalDryAMD_OD: TBooleanField
      FieldName = 'DryAMD_OD'
    end
    object ALC_TBL_MedicalDryAMD_OS: TBooleanField
      FieldName = 'DryAMD_OS'
    end
    object ALC_TBL_MedicalDME_OD: TBooleanField
      FieldName = 'DME_OD'
    end
    object ALC_TBL_MedicalDME_OS: TBooleanField
      FieldName = 'DME_OS'
    end
    object ALC_TBL_MedicalProliferativeDiabeticRetinopathy_OD: TBooleanField
      FieldName = 'ProliferativeDiabeticRetinopathy_OD'
    end
    object ALC_TBL_MedicalProliferativeDiabeticRetinopathy_OS: TBooleanField
      FieldName = 'ProliferativeDiabeticRetinopathy_OS'
    end
    object ALC_TBL_MedicalRetinalVeinOcclusion_OD: TBooleanField
      FieldName = 'RetinalVeinOcclusion_OD'
    end
    object ALC_TBL_MedicalRetinalVeinOcclusion_OS: TBooleanField
      FieldName = 'RetinalVeinOcclusion_OS'
    end
    object ALC_TBL_MedicalRetinalDetachment_OD: TBooleanField
      FieldName = 'RetinalDetachment_OD'
    end
    object ALC_TBL_MedicalRetinalDetachment_OS: TBooleanField
      FieldName = 'RetinalDetachment_OS'
    end
    object ALC_TBL_MedicalOther_OD: TBooleanField
      FieldName = 'Other_OD'
    end
    object ALC_TBL_MedicalOther_OS: TBooleanField
      FieldName = 'Other_OS'
    end
    object ALC_TBL_MedicalNotRelevant_OD: TBooleanField
      FieldName = 'NotRelevant_OD'
    end
    object ALC_TBL_MedicalNotRelevant_OS: TBooleanField
      FieldName = 'NotRelevant_OS'
    end
    object ALC_TBL_MedicalNonProliferativeDiabeticRetinopathy_OD: TBooleanField
      FieldName = 'Non-ProliferativeDiabeticRetinopathy_OD'
    end
    object ALC_TBL_MedicalNonProliferativeDiabeticRetinopathy_OS: TBooleanField
      FieldName = 'Non-ProliferativeDiabeticRetinopathy_OS'
    end
    object ALC_TBL_MedicalCurrentLensStatus_OD: TIntegerField
      FieldName = 'CurrentLensStatus_OD'
    end
    object ALC_TBL_MedicalCurrentLensStatus_OS: TIntegerField
      FieldName = 'CurrentLensStatus_OS'
    end
    object ALC_TBL_MedicaldateAdded: TDateTimeField
      FieldName = 'dateAdded'
    end
    object ALC_TBL_MedicaldateUpdated: TDateTimeField
      FieldName = 'dateUpdated'
    end
    object ALC_TBL_Medicalarchived: TBooleanField
      FieldName = 'archived'
    end
    object ALC_TBL_MedicalAuthorID: TWideStringField
      FieldName = 'AuthorID'
      Size = 255
    end
  end
  object ALC_DATASOURCE_MEDICAL: TDataSource
    DataSet = ALC_TBL_Medical
    Left = 1472
    Top = 193
  end
  object ALC_TBL_ANSWERS_INI_VISIT: TADOTable
    Connection = ALC_Connection_1
    CursorType = ctStatic
    TableName = 'tblAnswersInitialVisit'
    Left = 1720
    Top = 872
    object ALC_TBL_ANSWERS_INI_VISITAnswersInitialVisitID: TAutoIncField
      FieldName = 'AnswersInitialVisitID'
      ReadOnly = True
    end
    object ALC_TBL_ANSWERS_INI_VISITAnswerBaseID: TIntegerField
      FieldName = 'AnswerBaseID'
    end
    object ALC_TBL_ANSWERS_INI_VISITSymptomsMetamorphopsia_OD: TBooleanField
      FieldName = 'SymptomsMetamorphopsia_OD'
    end
    object ALC_TBL_ANSWERS_INI_VISITSymptomsMetamorphopsia_OS: TBooleanField
      FieldName = 'SymptomsMetamorphopsia_OS'
    end
    object ALC_TBL_ANSWERS_INI_VISITSymptomsBlurredVision_OD: TBooleanField
      FieldName = 'SymptomsBlurredVision_OD'
    end
    object ALC_TBL_ANSWERS_INI_VISITSymptomsBlurredVision_OS: TBooleanField
      FieldName = 'SymptomsBlurredVision_OS'
    end
    object ALC_TBL_ANSWERS_INI_VISITSymptomsObjectsAppearSmaller_OD: TBooleanField
      FieldName = 'SymptomsObjectsAppearSmaller_OD'
    end
    object ALC_TBL_ANSWERS_INI_VISITSymptomsObjectsAppearSmaller_OS: TBooleanField
      FieldName = 'SymptomsObjectsAppearSmaller_OS'
    end
    object ALC_TBL_ANSWERS_INI_VISITSymptomsFloaters_OD: TBooleanField
      FieldName = 'SymptomsFloaters_OD'
    end
    object ALC_TBL_ANSWERS_INI_VISITSymptomsFloaters_OS: TBooleanField
      FieldName = 'SymptomsFloaters_OS'
    end
    object ALC_TBL_ANSWERS_INI_VISITSymptomsFlashesOfLight_OD: TBooleanField
      FieldName = 'SymptomsFlashesOfLight_OD'
    end
    object ALC_TBL_ANSWERS_INI_VISITSymptomsFlashesOfLight_OS: TBooleanField
      FieldName = 'SymptomsFlashesOfLight_OS'
    end
    object ALC_TBL_ANSWERS_INI_VISITSymptomsDifficultyReadingAtNight_OD: TBooleanField
      FieldName = 'SymptomsDifficultyReadingAtNight_OD'
    end
    object ALC_TBL_ANSWERS_INI_VISITSymptomsDifficultyReadingAtNight_OS: TBooleanField
      FieldName = 'SymptomsDifficultyReadingAtNight_OS'
    end
    object ALC_TBL_ANSWERS_INI_VISITSymptomsScotoma_OD: TBooleanField
      FieldName = 'SymptomsScotoma_OD'
    end
    object ALC_TBL_ANSWERS_INI_VISITSymptomsScotoma_OS: TBooleanField
      FieldName = 'SymptomsScotoma_OS'
    end
    object ALC_TBL_ANSWERS_INI_VISITSymptomsVisualReduction_OD: TBooleanField
      FieldName = 'SymptomsVisualReduction_OD'
    end
    object ALC_TBL_ANSWERS_INI_VISITSymptomsVisualReduction_OS: TBooleanField
      FieldName = 'SymptomsVisualReduction_OS'
    end
    object ALC_TBL_ANSWERS_INI_VISITSymptomsOther_OD: TBooleanField
      FieldName = 'SymptomsOther_OD'
    end
    object ALC_TBL_ANSWERS_INI_VISITSymptomsOther_OS: TBooleanField
      FieldName = 'SymptomsOther_OS'
    end
    object ALC_TBL_ANSWERS_INI_VISITSymptomsNotRelevant_OD: TBooleanField
      FieldName = 'SymptomsNotRelevant_OD'
    end
    object ALC_TBL_ANSWERS_INI_VISITSymptomsNotRelevant_OS: TBooleanField
      FieldName = 'SymptomsNotRelevant_OS'
    end
    object ALC_TBL_ANSWERS_INI_VISITPrevTreatCataractSurgery_OD: TBooleanField
      FieldName = 'PrevTreatCataractSurgery_OD'
    end
    object ALC_TBL_ANSWERS_INI_VISITPrevTreatCataractSurgery_OS: TBooleanField
      FieldName = 'PrevTreatCataractSurgery_OS'
    end
    object ALC_TBL_ANSWERS_INI_VISITPrevTreatGlaucomaFiltrationSurgery_OD: TBooleanField
      FieldName = 'PrevTreatGlaucomaFiltrationSurgery_OD'
    end
    object ALC_TBL_ANSWERS_INI_VISITPrevTreatGlaucomaFiltrationSurgery_OS: TBooleanField
      FieldName = 'PrevTreatGlaucomaFiltrationSurgery_OS'
    end
    object ALC_TBL_ANSWERS_INI_VISITPrevTreatVitrectomy_OD: TBooleanField
      FieldName = 'PrevTreatVitrectomy_OD'
    end
    object ALC_TBL_ANSWERS_INI_VISITPrevTreatVitrectomy_OS: TBooleanField
      FieldName = 'PrevTreatVitrectomy_OS'
    end
    object ALC_TBL_ANSWERS_INI_VISITPrevTreatMacularLaserPhotocoagulation_OD: TBooleanField
      FieldName = 'PrevTreatMacularLaserPhotocoagulation_OD'
    end
    object ALC_TBL_ANSWERS_INI_VISITPrevTreatMacularLaserPhotocoagulation_OS: TBooleanField
      FieldName = 'PrevTreatMacularLaserPhotocoagulation_OS'
    end
    object ALC_TBL_ANSWERS_INI_VISITPrevTreatPeripheralLaserPhotocoagulation_OD: TBooleanField
      FieldName = 'PrevTreatPeripheralLaserPhotocoagulation_OD'
    end
    object ALC_TBL_ANSWERS_INI_VISITPrevTreatPeripheralLaserPhotocoagulation_OS: TBooleanField
      FieldName = 'PrevTreatPeripheralLaserPhotocoagulation_OS'
    end
    object ALC_TBL_ANSWERS_INI_VISITPrevTreatOtherSurgery_OD: TBooleanField
      FieldName = 'PrevTreatOtherSurgery_OD'
    end
    object ALC_TBL_ANSWERS_INI_VISITPrevTreatOtherSurgery_OS: TBooleanField
      FieldName = 'PrevTreatOtherSurgery_OS'
    end
    object ALC_TBL_ANSWERS_INI_VISITPrevTreatIntravitrealAntiVEGF_OD: TBooleanField
      FieldName = 'PrevTreatIntravitrealAntiVEGF_OD'
    end
    object ALC_TBL_ANSWERS_INI_VISITPrevTreatIntravitrealAntiVEGF_OS: TBooleanField
      FieldName = 'PrevTreatIntravitrealAntiVEGF_OS'
    end
    object ALC_TBL_ANSWERS_INI_VISITPrevTreatIntravitrealSteroid_OD: TBooleanField
      FieldName = 'PrevTreatIntravitrealSteroid_OD'
    end
    object ALC_TBL_ANSWERS_INI_VISITPrevTreatIntravitrealSteroid_OS: TBooleanField
      FieldName = 'PrevTreatIntravitrealSteroid_OS'
    end
    object ALC_TBL_ANSWERS_INI_VISITPrevTreatOther_OD: TBooleanField
      FieldName = 'PrevTreatOther_OD'
    end
    object ALC_TBL_ANSWERS_INI_VISITPrevTreatOther_OS: TBooleanField
      FieldName = 'PrevTreatOther_OS'
    end
    object ALC_TBL_ANSWERS_INI_VISITPrevTreatNotRelevant_OD: TBooleanField
      FieldName = 'PrevTreatNotRelevant_OD'
    end
    object ALC_TBL_ANSWERS_INI_VISITPrevTreatNotRelevant_OS: TBooleanField
      FieldName = 'PrevTreatNotRelevant_OS'
    end
    object ALC_TBL_ANSWERS_INI_VISITPreviousOccurance_OD: TIntegerField
      FieldName = 'PreviousOccurance_OD'
    end
    object ALC_TBL_ANSWERS_INI_VISITPreviousOccurance_OS: TIntegerField
      FieldName = 'PreviousOccurance_OS'
    end
    object ALC_TBL_ANSWERS_INI_VISITDateAdded: TDateTimeField
      FieldName = 'DateAdded'
    end
    object ALC_TBL_ANSWERS_INI_VISITdateUpdated: TDateTimeField
      FieldName = 'dateUpdated'
    end
    object ALC_TBL_ANSWERS_INI_VISITarchived: TBooleanField
      FieldName = 'archived'
    end
    object ALC_TBL_ANSWERS_INI_VISITAuthorID: TWideStringField
      FieldName = 'AuthorID'
      Size = 255
    end
  end
  object ALC_DATASOURCE_ANSWERS_INI_VISIT: TDataSource
    DataSet = ALC_TBL_ANSWERS_INI_VISIT
    Left = 1302
    Top = 673
  end
  object ALC_TBL_ANSWERS_INI_FOLLOWUP: TADOTable
    Connection = ALC_Connection_1
    CursorType = ctStatic
    EnableBCD = False
    TableName = 'tblAnswersInitialAndFollowupVisit'
    Left = 1720
    Top = 192
    object ALC_TBL_ANSWERS_INI_FOLLOWUPAnswersInitialAndFollowupVisit: TAutoIncField
      FieldName = 'AnswersInitialAndFollowupVisit'
      ReadOnly = True
    end
    object ALC_TBL_ANSWERS_INI_FOLLOWUPAnswerBaseID: TIntegerField
      FieldName = 'AnswerBaseID'
    end
    object ALC_TBL_ANSWERS_INI_FOLLOWUPVisualAcuityDistance_OD: TIntegerField
      FieldName = 'VisualAcuityDistance_OD'
    end
    object ALC_TBL_ANSWERS_INI_FOLLOWUPVisualAcuityDistance_OS: TIntegerField
      FieldName = 'VisualAcuityDistance_OS'
    end
    object ALC_TBL_ANSWERS_INI_FOLLOWUPOCTVitreomacularAdhesion_OD: TBooleanField
      FieldName = 'OCTVitreomacularAdhesion_OD'
    end
    object ALC_TBL_ANSWERS_INI_FOLLOWUPOCTVitreomacularAdhesion_OS: TBooleanField
      FieldName = 'OCTVitreomacularAdhesion_OS'
    end
    object ALC_TBL_ANSWERS_INI_FOLLOWUPOCTVMASize_OD: TFloatField
      FieldName = 'OCTVMASize_OD'
    end
    object ALC_TBL_ANSWERS_INI_FOLLOWUPOCTVMASize_OS: TFloatField
      FieldName = 'OCTVMASize_OS'
    end
    object ALC_TBL_ANSWERS_INI_FOLLOWUPOCTVMTPresent_OD: TBooleanField
      FieldName = 'OCTVMTPresent_OD'
    end
    object ALC_TBL_ANSWERS_INI_FOLLOWUPOCTVMTPresent_OS: TBooleanField
      FieldName = 'OCTVMTPresent_OS'
    end
    object ALC_TBL_ANSWERS_INI_FOLLOWUPOCTMacularHole_OD: TBooleanField
      FieldName = 'OCTMacularHole_OD'
    end
    object ALC_TBL_ANSWERS_INI_FOLLOWUPOCTMacularHole_OS: TBooleanField
      FieldName = 'OCTMacularHole_OS'
    end
    object ALC_TBL_ANSWERS_INI_FOLLOWUPOCTMacularHoleSize_OD: TFloatField
      FieldName = 'OCTMacularHoleSize_OD'
    end
    object ALC_TBL_ANSWERS_INI_FOLLOWUPOCTMacularHoleSize_OS: TFloatField
      FieldName = 'OCTMacularHoleSize_OS'
    end
    object ALC_TBL_ANSWERS_INI_FOLLOWUPOCTEpiretinalMembrane_OD: TBooleanField
      FieldName = 'OCTEpiretinalMembrane_OD'
    end
    object ALC_TBL_ANSWERS_INI_FOLLOWUPOCTEpiretinalMembrane_OS: TBooleanField
      FieldName = 'OCTEpiretinalMembrane_OS'
    end
    object ALC_TBL_ANSWERS_INI_FOLLOWUPProposedTreatmentID_OD: TIntegerField
      FieldName = 'ProposedTreatmentID_OD'
    end
    object ALC_TBL_ANSWERS_INI_FOLLOWUPProposedTreatmentID_OS: TIntegerField
      FieldName = 'ProposedTreatmentID_OS'
    end
    object ALC_TBL_ANSWERS_INI_FOLLOWUPProposedTreatmentDate_OD: TDateTimeField
      FieldName = 'ProposedTreatmentDate_OD'
    end
    object ALC_TBL_ANSWERS_INI_FOLLOWUPProposedTreatmentDate_OS: TDateTimeField
      FieldName = 'ProposedTreatmentDate_OS'
    end
    object ALC_TBL_ANSWERS_INI_FOLLOWUPProposedTreatmentRationaleID_OD: TIntegerField
      FieldName = 'ProposedTreatmentRationaleID_OD'
    end
    object ALC_TBL_ANSWERS_INI_FOLLOWUPProposedTreatmentRationaleID_OS: TIntegerField
      FieldName = 'ProposedTreatmentRationaleID_OS'
    end
    object ALC_TBL_ANSWERS_INI_FOLLOWUPSecCateractPresence_OD: TBooleanField
      FieldName = 'SecCateractPresence_OD'
    end
    object ALC_TBL_ANSWERS_INI_FOLLOWUPSecCateractPresence_OS: TBooleanField
      FieldName = 'SecCateractPresence_OS'
    end
    object ALC_TBL_ANSWERS_INI_FOLLOWUPDateAdded: TDateTimeField
      FieldName = 'DateAdded'
    end
    object ALC_TBL_ANSWERS_INI_FOLLOWUPDateUpdated: TDateTimeField
      FieldName = 'DateUpdated'
    end
    object ALC_TBL_ANSWERS_INI_FOLLOWUPArchived: TBooleanField
      FieldName = 'Archived'
    end
    object ALC_TBL_ANSWERS_INI_FOLLOWUPAuthorID: TWideStringField
      FieldName = 'AuthorID'
      Size = 255
    end
  end
  object ALC_DATASOURCE_INI_FOLLOWUP: TDataSource
    DataSet = ALC_TBL_ANSWERS_INI_FOLLOWUP
    Left = 1472
    Top = 455
  end
  object ALC_TBL_DISCHARGE: TADOTable
    Connection = ALC_Connection_1
    CursorType = ctStatic
    TableName = 'tblAnswersDischargeVisit'
    Left = 1872
    Top = 392
    object ALC_TBL_DISCHARGEDischargeVisitID: TAutoIncField
      FieldName = 'DischargeVisitID'
      ReadOnly = True
    end
    object ALC_TBL_DISCHARGEAnswerBaseID: TIntegerField
      FieldName = 'AnswerBaseID'
    end
    object ALC_TBL_DISCHARGEDischargeDate: TDateTimeField
      FieldName = 'DischargeDate'
    end
    object ALC_TBL_DISCHARGELostToFollowup: TBooleanField
      FieldName = 'LostToFollowup'
    end
    object ALC_TBL_DISCHARGEDischargeReasonID: TIntegerField
      FieldName = 'DischargeReasonID'
    end
    object ALC_TBL_DISCHARGEDateCreated: TDateTimeField
      FieldName = 'DateCreated'
    end
    object ALC_TBL_DISCHARGEDateUpdated: TDateTimeField
      FieldName = 'DateUpdated'
    end
    object ALC_TBL_DISCHARGEarchived: TBooleanField
      FieldName = 'archived'
    end
    object ALC_TBL_DISCHARGEAuthorID: TWideStringField
      FieldName = 'AuthorID'
      Size = 255
    end
  end
  object ALC_DATASOURCE_DISCHARGE: TDataSource
    DataSet = ALC_TBL_DISCHARGE
    Left = 1472
    Top = 665
  end
  object ALC_TBL_CENTRE_DIS_SCALE: TADOTable
    Connection = ALC_Connection_1
    CursorType = ctStatic
    TableName = 'tblLookupDistanceVisualAcuityScale'
    Left = 1872
    Top = 296
    object ALC_TBL_CENTRE_DIS_SCALEDistanceVisualAcuityScaleID: TAutoIncField
      FieldName = 'DistanceVisualAcuityScaleID'
      ReadOnly = True
    end
    object ALC_TBL_CENTRE_DIS_SCALEDistanceVisualAcuityScaleDesc: TWideStringField
      FieldName = 'DistanceVisualAcuityScaleDesc'
      Size = 100
    end
    object ALC_TBL_CENTRE_DIS_SCALEarchived: TBooleanField
      FieldName = 'archived'
    end
    object ALC_TBL_CENTRE_DIS_SCALEDateAdded: TDateTimeField
      FieldName = 'DateAdded'
    end
  end
  object ALC_DS_DIS_SCALE: TDataSource
    DataSet = ALC_TBL_CENTRE_DIS_SCALE
    Left = 1302
    Top = 241
  end
  object ALC_TBL_CENTRE_NEAR_SCALE: TADOTable
    Connection = ALC_Connection_1
    CursorType = ctStatic
    TableName = 'tblLookupNearVisualAcuityScale'
    Left = 1872
    Top = 248
    object ALC_TBL_CENTRE_NEAR_SCALENearVisualAcuityScaleID: TAutoIncField
      FieldName = 'NearVisualAcuityScaleID'
      ReadOnly = True
    end
    object ALC_TBL_CENTRE_NEAR_SCALENearVisualAcuityScaleDesc: TWideStringField
      FieldName = 'NearVisualAcuityScaleDesc'
      Size = 100
    end
    object ALC_TBL_CENTRE_NEAR_SCALEArchived: TBooleanField
      FieldName = 'Archived'
    end
    object ALC_TBL_CENTRE_NEAR_SCALEDateAdded: TDateTimeField
      FieldName = 'DateAdded'
    end
  end
  object ALC_DS_CENTRE_NEAR_SCALE: TDataSource
    DataSet = ALC_TBL_CENTRE_NEAR_SCALE
    Left = 1302
    Top = 297
  end
  object ALC_DS_ANSWERS_BASE: TDataSource
    DataSet = ALC_TBL_ANSWERS_BASE
    Left = 1302
    Top = 349
  end
  object ALC_TBL_ANSWERS_BASE: TADOTable
    Connection = ALC_Connection_1
    CursorType = ctStatic
    TableName = 'tblAnswersBase'
    Left = 1720
    Top = 920
    object ALC_TBL_ANSWERS_BASEAnswerBaseID: TAutoIncField
      FieldName = 'AnswerBaseID'
      ReadOnly = True
    end
    object ALC_TBL_ANSWERS_BASEEpisodeSetID: TIntegerField
      FieldName = 'EpisodeSetID'
    end
    object ALC_TBL_ANSWERS_BASEPatientID: TIntegerField
      FieldName = 'PatientID'
    end
    object ALC_TBL_ANSWERS_BASEPatientUUID: TWideStringField
      FieldName = 'PatientUUID'
      Size = 255
    end
    object ALC_TBL_ANSWERS_BASEEnteredBy: TWideStringField
      FieldName = 'EnteredBy'
      Size = 100
    end
    object ALC_TBL_ANSWERS_BASEEpisodeDate: TDateTimeField
      FieldName = 'EpisodeDate'
    end
    object ALC_TBL_ANSWERS_BASEEpisodeNumber: TIntegerField
      FieldName = 'EpisodeNumber'
    end
    object ALC_TBL_ANSWERS_BASECompleted: TBooleanField
      FieldName = 'Completed'
    end
    object ALC_TBL_ANSWERS_BASEDateAdded: TDateTimeField
      FieldName = 'DateAdded'
    end
    object ALC_TBL_ANSWERS_BASEdateUpdated: TDateTimeField
      FieldName = 'dateUpdated'
    end
    object ALC_TBL_ANSWERS_BASEarchived: TBooleanField
      FieldName = 'archived'
    end
    object ALC_TBL_ANSWERS_BASEAuthorID: TWideStringField
      FieldName = 'AuthorID'
      Size = 255
    end
  end
  object ALC_TBL_AGE: TADOTable
    Connection = ALC_Connection_1
    CursorType = ctStatic
    TableName = 'tblLookupAgeRange'
    Left = 1872
    Top = 648
    object ALC_TBL_AGEageID: TAutoIncField
      FieldName = 'ageID'
      ReadOnly = True
    end
    object ALC_TBL_AGEageRangeDesc: TWideStringField
      FieldName = 'ageRangeDesc'
      Size = 100
    end
    object ALC_TBL_AGEArchived: TBooleanField
      FieldName = 'Archived'
    end
    object ALC_TBL_AGEDateAdded: TDateTimeField
      FieldName = 'DateAdded'
    end
  end
  object ALC_DS_AGE: TDataSource
    DataSet = ALC_TBL_AGE
    Left = 1472
    Top = 405
  end
  object ALC_TBL_GENDER: TADOTable
    Connection = ALC_Connection_1
    CursorType = ctStatic
    TableName = 'tblLookupGender'
    Left = 1720
    Top = 392
    object ALC_TBL_GENDERgenderID: TAutoIncField
      FieldName = 'genderID'
      ReadOnly = True
    end
    object ALC_TBL_GENDERgender: TWideStringField
      FieldName = 'gender'
      Size = 6
    end
    object ALC_TBL_GENDERDateAdded: TDateTimeField
      FieldName = 'DateAdded'
    end
  end
  object ALC_DS_GENDER: TDataSource
    DataSet = ALC_TBL_GENDER
    Left = 1303
    Top = 727
  end
  object ALC_TBL_MED_REF_SOURCE: TADOTable
    Connection = ALC_Connection_1
    CursorType = ctStatic
    TableName = 'tblLookupSourceOfReferral'
    Left = 1720
    Top = 296
    object ALC_TBL_MED_REF_SOURCESourceOfReferralID: TAutoIncField
      FieldName = 'SourceOfReferralID'
      ReadOnly = True
    end
    object ALC_TBL_MED_REF_SOURCESourceOfReferralDesc: TWideStringField
      FieldName = 'SourceOfReferralDesc'
      Size = 255
    end
    object ALC_TBL_MED_REF_SOURCEArchived: TBooleanField
      FieldName = 'Archived'
    end
    object ALC_TBL_MED_REF_SOURCEDateAdded: TDateTimeField
      FieldName = 'DateAdded'
    end
  end
  object ALC_DS_MED_REF_SOURCE: TDataSource
    DataSet = ALC_TBL_MED_REF_SOURCE
    Left = 1296
    Top = 905
  end
  object ALC_TBL_MED_REF_REASON: TADOTable
    Connection = ALC_Connection_1
    CursorType = ctStatic
    TableName = 'tblLookupReasonForReferral'
    Left = 1872
    Top = 448
    object ALC_TBL_MED_REF_REASONReasonForReferalID: TAutoIncField
      FieldName = 'ReasonForReferalID'
      ReadOnly = True
    end
    object ALC_TBL_MED_REF_REASONReasonForReferalDesc: TWideStringField
      FieldName = 'ReasonForReferalDesc'
      Size = 100
    end
    object ALC_TBL_MED_REF_REASONArchived: TBooleanField
      FieldName = 'Archived'
    end
    object ALC_TBL_MED_REF_REASONDateAdded: TDateTimeField
      FieldName = 'DateAdded'
    end
  end
  object ALC_DS_MED_REF_REASON: TDataSource
    DataSet = ALC_TBL_MED_REF_REASON
    Left = 1472
    Top = 609
  end
  object ALC_TBL_DISTANCEVA: TADOTable
    Connection = ALC_Connection_1
    CursorType = ctStatic
    TableName = 'tblLookupDistanceVisualAcuityScale'
    Left = 1720
    Top = 488
    object ALC_TBL_DISTANCEVADistanceVisualAcuityScaleID: TAutoIncField
      FieldName = 'DistanceVisualAcuityScaleID'
      ReadOnly = True
    end
    object ALC_TBL_DISTANCEVADistanceVisualAcuityScaleDesc: TWideStringField
      FieldName = 'DistanceVisualAcuityScaleDesc'
      Size = 100
    end
    object ALC_TBL_DISTANCEVAarchived: TBooleanField
      FieldName = 'archived'
    end
    object ALC_TBL_DISTANCEVADateAdded: TDateTimeField
      FieldName = 'DateAdded'
    end
  end
  object ALC_DS_DISTANCEVA: TDataSource
    DataSet = ALC_TBL_DISTANCEVA
    Left = 1472
    Top = 297
  end
  object ALC_TBL_NEARVA: TADOTable
    Connection = ALC_Connection_1
    CursorType = ctStatic
    TableName = 'tblLookupNearVisualAcuityScale'
    Left = 1720
    Top = 248
    object ALC_TBL_NEARVANearVisualAcuityScaleID: TAutoIncField
      FieldName = 'NearVisualAcuityScaleID'
      ReadOnly = True
    end
    object ALC_TBL_NEARVANearVisualAcuityScaleDesc: TWideStringField
      FieldName = 'NearVisualAcuityScaleDesc'
      Size = 100
    end
    object ALC_TBL_NEARVAArchived: TBooleanField
      FieldName = 'Archived'
    end
    object ALC_TBL_NEARVADateAdded: TDateTimeField
      FieldName = 'DateAdded'
    end
  end
  object ALC_DS_NEARVA: TDataSource
    DataSet = ALC_TBL_NEARVA
    Left = 1472
    Top = 721
  end
  object ALC_DS_OCTVMTID: TDataSource
    Left = 1472
    Top = 240
  end
  object ALC_TBL_PROPOSED_TREAT: TADOTable
    Connection = ALC_Connection_1
    CursorType = ctStatic
    TableName = 'tblLookupProposedTreatment'
    Left = 1720
    Top = 640
    object ALC_TBL_PROPOSED_TREATProposedTreatmentID: TAutoIncField
      FieldName = 'ProposedTreatmentID'
      ReadOnly = True
    end
    object ALC_TBL_PROPOSED_TREATProposedTreatmentDesc: TWideStringField
      FieldName = 'ProposedTreatmentDesc'
      Size = 100
    end
    object ALC_TBL_PROPOSED_TREATArchived: TBooleanField
      FieldName = 'Archived'
    end
    object ALC_TBL_PROPOSED_TREATDateAdded: TDateTimeField
      FieldName = 'DateAdded'
    end
  end
  object ALC_DS_PROPOSED_TREAT: TDataSource
    DataSet = ALC_TBL_PROPOSED_TREAT
    Left = 1302
    Top = 454
  end
  object ALC_TBL_RATION_TREAT: TADOTable
    Connection = ALC_Connection_1
    CursorType = ctStatic
    TableName = 'tblLookupProposedTreatmentRational'
    Left = 1720
    Top = 536
    object ALC_TBL_RATION_TREATProposedTreatmentRationalID: TAutoIncField
      FieldName = 'ProposedTreatmentRationalID'
      ReadOnly = True
    end
    object ALC_TBL_RATION_TREATProposedTreatmentRationalDesc: TWideStringField
      FieldName = 'ProposedTreatmentRationalDesc'
      Size = 100
    end
    object ALC_TBL_RATION_TREATArchived: TBooleanField
      FieldName = 'Archived'
    end
    object ALC_TBL_RATION_TREATDateAdded: TDateTimeField
      FieldName = 'DateAdded'
    end
  end
  object ALC_DS_RATION_TREAT: TDataSource
    DataSet = ALC_TBL_RATION_TREAT
    Left = 1302
    Top = 405
  end
  object ALC_TBL_OS_SHORT: TADOTable
    Connection = ALC_Connection_1
    CursorType = ctStatic
    TableName = 'tbllookupOccularSymptomsShort'
    Left = 1720
    Top = 440
    object ALC_TBL_OS_SHORTOccularSymptomsID: TAutoIncField
      FieldName = 'OccularSymptomsID'
      ReadOnly = True
    end
    object ALC_TBL_OS_SHORTOccularSymptomsDesc: TWideStringField
      FieldName = 'OccularSymptomsDesc'
      Size = 100
    end
    object ALC_TBL_OS_SHORTArchived: TBooleanField
      FieldName = 'Archived'
    end
    object ALC_TBL_OS_SHORTDateAdded: TDateTimeField
      FieldName = 'DateAdded'
    end
  end
  object ALC_DS_OS_SHORT: TDataSource
    DataSet = ALC_TBL_OS_SHORT
    Left = 1302
    Top = 502
  end
  object ALC_TBL_OS_LONG: TADOTable
    Connection = ALC_Connection_1
    CursorType = ctStatic
    TableName = 'tbllookupOccularSymptomsLong'
    Left = 1720
    Top = 680
    object ALC_TBL_OS_LONGOccularSymptomsID: TAutoIncField
      FieldName = 'OccularSymptomsID'
      ReadOnly = True
    end
    object ALC_TBL_OS_LONGOccularSymptomsDesc: TWideStringField
      FieldName = 'OccularSymptomsDesc'
      Size = 100
    end
    object ALC_TBL_OS_LONGArchived: TBooleanField
      FieldName = 'Archived'
    end
    object ALC_TBL_OS_LONGDateAdded: TDateTimeField
      FieldName = 'DateAdded'
    end
  end
  object ALC_DS_OS_LONG: TDataSource
    DataSet = ALC_TBL_OS_LONG
    Left = 1302
    Top = 552
  end
  object ALC_TBL_REASON_DISCHARGE: TADOTable
    Connection = ALC_Connection_1
    CursorType = ctStatic
    TableName = 'tblLookupDischargeReasons'
    Left = 1864
    Top = 600
    object ALC_TBL_REASON_DISCHARGEDischargeReasonID: TAutoIncField
      FieldName = 'DischargeReasonID'
      ReadOnly = True
    end
    object ALC_TBL_REASON_DISCHARGEDischargeReasonDesc: TWideStringField
      FieldName = 'DischargeReasonDesc'
      Size = 255
    end
    object ALC_TBL_REASON_DISCHARGEArchived: TBooleanField
      FieldName = 'Archived'
    end
    object ALC_TBL_REASON_DISCHARGEDateAdded: TDateTimeField
      FieldName = 'DateAdded'
    end
  end
  object ALC_DS_REASON_DISCHARGE: TDataSource
    DataSet = ALC_TBL_REASON_DISCHARGE
    Left = 1472
    Top = 769
  end
  object ADOTable1: TADOTable
    Connection = ALC_Connection_1
    CursorType = ctStatic
    TableName = 'tblLookupAgeRange'
    Left = 1864
    Top = 552
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 1472
    Top = 910
  end
  object ADOTable2: TADOTable
    Connection = ALC_Connection_1
    CursorType = ctStatic
    TableName = 'tblLookupGender'
    Left = 1872
    Top = 344
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 1584
    Top = 190
  end
  object ADOQuery1: TADOQuery
    Connection = ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT tblAnswersBase.episodeSetID'
      
        'FROM tblAnswersBase INNER JOIN tblAnswersDischargeVisit ON tblAn' +
        'swersBase.AnswerBaseID = tblAnswersDischargeVisit.AnswerBaseID;')
    Left = 2460
    Top = 690
    object ADOQuery1episodeSetID: TIntegerField
      FieldName = 'episodeSetID'
    end
  end
  object ALC_TBL_EPISODESETS: TADOTable
    Connection = ALC_Connection_1
    CursorType = ctStatic
    TableName = 'tblEpisodeSets'
    Left = 1720
    Top = 824
    object ALC_TBL_EPISODESETSEpisodeSetID: TAutoIncField
      FieldName = 'EpisodeSetID'
      ReadOnly = True
    end
    object ALC_TBL_EPISODESETSPatientID: TIntegerField
      FieldName = 'PatientID'
    end
    object ALC_TBL_EPISODESETSPatientUUID: TWideStringField
      FieldName = 'PatientUUID'
      Size = 255
    end
    object ALC_TBL_EPISODESETSDateAdded: TDateTimeField
      FieldName = 'DateAdded'
    end
    object ALC_TBL_EPISODESETSDateUpdated: TDateTimeField
      FieldName = 'DateUpdated'
    end
    object ALC_TBL_EPISODESETSArchived: TBooleanField
      FieldName = 'Archived'
    end
    object ALC_TBL_EPISODESETSAuthorID: TWideStringField
      FieldName = 'AuthorID'
      Size = 255
    end
  end
  object ALC_DS_EPISODESETS: TDataSource
    DataSet = ALC_TBL_EPISODESETS
    Left = 1303
    Top = 785
  end
  object ADOQuery2: TADOQuery
    Connection = ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT tblPatients.patientID'
      
        'FROM tblPatients WHERE tblPatients.patientID NOT  IN (SELECT tbl' +
        'AnswersBase.patientID FROM  tblAnswersBase)')
    Left = 2468
    Top = 578
    object ADOQuery2patientID: TIntegerField
      FieldName = 'patientID'
    end
  end
  object ADOQuery3: TADOQuery
    Connection = ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT qrySub_LastVisitByEpisodeSetIDAndPatientID.patientID AS P' +
        'atientID'
      'FROM qrySub_LastVisitByEpisodeSetIDAndPatientID'
      
        'WHERE (((qrySub_LastVisitByEpisodeSetIDAndPatientID.episodeSetID' +
        ') Not In (select distinct qrySub_DischargeVisitByAnswerBaseIDAnd' +
        'EpisodeSetID.episodeSetID from qrySub_DischargeVisitByAnswerBase' +
        'IDAndEpisodeSetID)));')
    Left = 2468
    Top = 530
    object ADOQuery3PatientID: TIntegerField
      FieldName = 'PatientID'
    end
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery2
    Left = 1468
    Top = 842
  end
  object qryReport_Gender: TADOQuery
    Connection = ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Count(tblPatients.patientID) AS CountOfpatientID, tblLook' +
        'upGender.gender'
      
        'FROM tblLookupGender INNER JOIN tblPatients ON tblLookupGender.g' +
        'enderID=tblPatients.genderID'
      'GROUP BY tblLookupGender.gender, tblPatients.archived'
      'HAVING (((tblPatients.archived)=False));')
    Left = 2175
    Top = 616
    object qryReport_GenderCountOfpatientID: TIntegerField
      FieldName = 'CountOfpatientID'
    end
    object qryReport_Gendergender: TWideStringField
      FieldName = 'gender'
      Size = 6
    end
  end
  object qryReport_ProportionOfPatientsMovingFromWWToSurgeryOrInjections: TADOQuery
    Connection = ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Count(tblPatients.patientID) AS CountOfpatientID, tbLooku' +
        'plIndication.IndicationDesc'
      
        'FROM tbLookuplIndication INNER JOIN tblPatients ON tbLookuplIndi' +
        'cation.IndicationID=tblPatients.IndicationID'
      
        'GROUP BY tbLookuplIndication.IndicationDesc, tblPatients.archive' +
        'd, tbLookuplIndication.Archived'
      
        'HAVING (((tblPatients.archived)=False) AND ((tbLookuplIndication' +
        '.Archived)=False))'
      'ORDER BY tbLookuplIndication.IndicationDesc;')
    Left = 2170
    Top = 449
    object IntegerField5: TIntegerField
      FieldName = 'CountOfpatientID'
    end
    object WideStringField5: TWideStringField
      FieldName = 'IndicationDesc'
      Size = 255
    end
  end
  object qryReport_averageTimeBetweeninitialVisitAndDischarge: TADOQuery
    Connection = ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Count(tblPatients.patientID) AS CountOfpatientID, tbLooku' +
        'plIndication.IndicationDesc'
      
        'FROM tbLookuplIndication INNER JOIN tblPatients ON tbLookuplIndi' +
        'cation.IndicationID=tblPatients.IndicationID'
      
        'GROUP BY tbLookuplIndication.IndicationDesc, tblPatients.archive' +
        'd, tbLookuplIndication.Archived'
      
        'HAVING (((tblPatients.archived)=False) AND ((tbLookuplIndication' +
        '.Archived)=False))'
      'ORDER BY tbLookuplIndication.IndicationDesc;')
    Left = 2170
    Top = 233
    object IntegerField2: TIntegerField
      FieldName = 'CountOfpatientID'
    end
    object WideStringField2: TWideStringField
      FieldName = 'IndicationDesc'
      Size = 255
    end
  end
  object qryReport_VMTIncidence: TADOQuery
    Connection = ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Count(tblPatients.patientID) AS CountOfpatientID, tbLooku' +
        'plIndication.IndicationDesc'
      
        'FROM tbLookuplIndication INNER JOIN tblPatients ON tbLookuplIndi' +
        'cation.IndicationID=tblPatients.IndicationID'
      
        'GROUP BY tbLookuplIndication.IndicationDesc, tblPatients.archive' +
        'd, tbLookuplIndication.Archived'
      
        'HAVING (((tblPatients.archived)=False) AND ((tbLookuplIndication' +
        '.Archived)=False))'
      'ORDER BY tbLookuplIndication.IndicationDesc;')
    Left = 2170
    Top = 344
    object qryReport_VMTIncidenceCountOfpatientID: TIntegerField
      FieldName = 'CountOfpatientID'
    end
    object qryReport_VMTIncidenceIndicationDesc: TWideStringField
      FieldName = 'IndicationDesc'
      Size = 255
    end
  end
  object qryReport_Age: TADOQuery
    Connection = ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Count(tblPatients.patientID) AS CountOfpatientID, tblLook' +
        'upAgeRange.ageRangeDesc'
      
        'FROM tblLookupAgeRange INNER JOIN tblPatients ON tblLookupAgeRan' +
        'ge.ageID = tblPatients.ageID'
      
        'GROUP BY tblLookupAgeRange.ageRangeDesc, tblPatients.archived, t' +
        'blLookupAgeRange.Archived'
      
        'HAVING (((tblPatients.archived)=False) AND ((tblLookupAgeRange.A' +
        'rchived)=False));')
    Left = 2176
    Top = 560
    object qryReport_AgeCountOfpatientID: TIntegerField
      FieldName = 'CountOfpatientID'
    end
    object qryReport_AgeageRangeDesc: TWideStringField
      FieldName = 'ageRangeDesc'
      Size = 100
    end
  end
  object qryReport_ReasonForDischarge: TADOQuery
    Connection = ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Count(tblPatients.patientID) AS CountOfpatientID, tbLooku' +
        'plIndication.IndicationDesc'
      
        'FROM tbLookuplIndication INNER JOIN tblPatients ON tbLookuplIndi' +
        'cation.IndicationID=tblPatients.IndicationID'
      
        'GROUP BY tbLookuplIndication.IndicationDesc, tblPatients.archive' +
        'd, tbLookuplIndication.Archived'
      
        'HAVING (((tblPatients.archived)=False) AND ((tbLookuplIndication' +
        '.Archived)=False))'
      'ORDER BY tbLookuplIndication.IndicationDesc;')
    Left = 2464
    Top = 345
    object IntegerField1: TIntegerField
      FieldName = 'CountOfpatientID'
    end
    object WideStringField1: TWideStringField
      FieldName = 'IndicationDesc'
      Size = 255
    end
  end
  object qryReport_averageTimeBetweenInitialvisitAndTreatment: TADOQuery
    Connection = ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Count(tblPatients.patientID) AS CountOfpatientID, tbLooku' +
        'plIndication.IndicationDesc'
      
        'FROM tbLookuplIndication INNER JOIN tblPatients ON tbLookuplIndi' +
        'cation.IndicationID=tblPatients.IndicationID'
      
        'GROUP BY tbLookuplIndication.IndicationDesc, tblPatients.archive' +
        'd, tbLookuplIndication.Archived'
      
        'HAVING (((tblPatients.archived)=False) AND ((tbLookuplIndication' +
        '.Archived)=False))'
      'ORDER BY tbLookuplIndication.IndicationDesc;')
    Left = 2168
    Top = 401
    object IntegerField4: TIntegerField
      FieldName = 'CountOfpatientID'
    end
    object WideStringField4: TWideStringField
      FieldName = 'IndicationDesc'
      Size = 255
    end
  end
  object qryReport_AverageDurationBetweenVisits: TADOQuery
    Connection = ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Count(tblPatients.patientID) AS CountOfpatientID, tbLooku' +
        'plIndication.IndicationDesc'
      
        'FROM tbLookuplIndication INNER JOIN tblPatients ON tbLookuplIndi' +
        'cation.IndicationID=tblPatients.IndicationID'
      
        'GROUP BY tbLookuplIndication.IndicationDesc, tblPatients.archive' +
        'd, tbLookuplIndication.Archived'
      
        'HAVING (((tblPatients.archived)=False) AND ((tbLookuplIndication' +
        '.Archived)=False))'
      'ORDER BY tbLookuplIndication.IndicationDesc;')
    Left = 2463
    Top = 801
    object IntegerField3: TIntegerField
      FieldName = 'CountOfpatientID'
    end
    object WideStringField3: TWideStringField
      FieldName = 'IndicationDesc'
      Size = 255
    end
  end
  object qryReport_AverageNoOfVisitsBetweenInitialVisitAndDischarge: TADOQuery
    Connection = ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Count(tblPatients.patientID) AS CountOfpatientID, tbLooku' +
        'plIndication.IndicationDesc'
      
        'FROM tbLookuplIndication INNER JOIN tblPatients ON tbLookuplIndi' +
        'cation.IndicationID=tblPatients.IndicationID'
      
        'GROUP BY tbLookuplIndication.IndicationDesc, tblPatients.archive' +
        'd, tbLookuplIndication.Archived'
      
        'HAVING (((tblPatients.archived)=False) AND ((tbLookuplIndication' +
        '.Archived)=False))'
      'ORDER BY tbLookuplIndication.IndicationDesc;')
    Left = 2183
    Top = 841
    object IntegerField6: TIntegerField
      FieldName = 'CountOfpatientID'
    end
    object WideStringField6: TWideStringField
      FieldName = 'IndicationDesc'
      Size = 255
    end
  end
  object qrySub_DischargedAnswersIDs: TADOQuery
    Connection = ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Count(tblPatients.patientID) AS CountOfpatientID, tblLook' +
        'upGender.gender'
      
        'FROM tblLookupGender INNER JOIN tblPatients ON tblLookupGender.g' +
        'enderID=tblPatients.genderID'
      'GROUP BY tblLookupGender.gender, tblPatients.archived'
      'HAVING (((tblPatients.archived)=False));')
    Left = 2471
    Top = 464
    object IntegerField7: TIntegerField
      FieldName = 'CountOfpatientID'
    end
    object WideStringField7: TWideStringField
      FieldName = 'gender'
      Size = 6
    end
  end
  object qrySub_EpisodesIdsOfDischargedAnswers: TADOQuery
    Connection = ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Count(tblPatients.patientID) AS CountOfpatientID, tblLook' +
        'upGender.gender'
      
        'FROM tblLookupGender INNER JOIN tblPatients ON tblLookupGender.g' +
        'enderID=tblPatients.genderID'
      'GROUP BY tblLookupGender.gender, tblPatients.archived'
      'HAVING (((tblPatients.archived)=False));')
    Left = 2463
    Top = 408
    object IntegerField8: TIntegerField
      FieldName = 'CountOfpatientID'
    end
    object WideStringField8: TWideStringField
      FieldName = 'gender'
      Size = 6
    end
  end
  object qrySub_AnswersIdOfInitialVisitsWithADischargedID: TADOQuery
    Connection = ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Count(tblPatients.patientID) AS CountOfpatientID, tblLook' +
        'upGender.gender'
      
        'FROM tblLookupGender INNER JOIN tblPatients ON tblLookupGender.g' +
        'enderID=tblPatients.genderID'
      'GROUP BY tblLookupGender.gender, tblPatients.archived'
      'HAVING (((tblPatients.archived)=False));')
    Left = 2463
    Top = 232
    object IntegerField14: TIntegerField
      FieldName = 'CountOfpatientID'
    end
    object WideStringField14: TWideStringField
      FieldName = 'gender'
      Size = 6
    end
  end
  object qryReport_SourceOfReferral: TADOQuery
    Connection = ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Count(tblPatients.patientID) AS CountOfpatientID, tblLook' +
        'upSourceOfReferral.SourceOfReferralDesc'
      
        'FROM tblPatients INNER JOIN (tblLookupSourceOfReferral INNER JOI' +
        'N tblPatientMedicalHistory ON tblLookupSourceOfReferral.SourceOf' +
        'ReferralID = tblPatientMedicalHistory.SourceOfReferalID) ON tblP' +
        'atients.patientID = tblPatientMedicalHistory.patientID'
      
        'GROUP BY tblLookupSourceOfReferral.SourceOfReferralDesc, tblPati' +
        'ents.archived, tblPatientMedicalHistory.Archived, tblLookupSourc' +
        'eOfReferral.Archived'
      
        'HAVING (((tblPatients.archived)=False) AND ((tblPatientMedicalHi' +
        'story.Archived)=False) AND ((tblLookupSourceOfReferral.Archived)' +
        '=False))'
      'ORDER BY tblLookupSourceOfReferral.SourceOfReferralDesc;')
    Left = 2183
    Top = 896
    object qryReport_SourceOfReferralCountOfpatientID: TIntegerField
      FieldName = 'CountOfpatientID'
    end
    object qryReport_SourceOfReferralSourceOfReferralDesc: TWideStringField
      FieldName = 'SourceOfReferralDesc'
      Size = 255
    end
  end
  object qryReport_ReasonforReferral: TADOQuery
    Connection = ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Count(tblPatients.patientID) AS CountOfpatientID, tblLook' +
        'upReasonForReferral.ReasonForReferalDesc'
      
        'FROM tblLookupReasonForReferral INNER JOIN (tblPatients INNER JO' +
        'IN tblPatientMedicalHistory ON tblPatients.patientID = tblPatien' +
        'tMedicalHistory.patientID) ON tblLookupReasonForReferral.ReasonF' +
        'orReferalID = tblPatientMedicalHistory.ReasonForReferalID'
      
        'GROUP BY tblLookupReasonForReferral.ReasonForReferalDesc, tblPat' +
        'ients.archived, tblPatientMedicalHistory.Archived, tblLookupReas' +
        'onForReferral.Archived'
      'ORDER BY tblLookupReasonForReferral.ReasonForReferalDesc;')
    Left = 2463
    Top = 288
    object qryReport_ReasonforReferralCountOfpatientID: TIntegerField
      FieldName = 'CountOfpatientID'
    end
    object qryReport_ReasonforReferralReasonForReferalDesc: TWideStringField
      FieldName = 'ReasonForReferalDesc'
      Size = 100
    end
  end
  object qryReport_PrimaryAffectedEye: TADOQuery
    Connection = ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT qrySub_AffectedBoth.CountOfpatientID AS [Both], qrySub_Af' +
        'fectedBoth.CountOfpatientID AS AffectedOD, qrySub_AffectedOS.Cou' +
        'ntOfpatientID AS AffectedOS'
      'FROM qrySub_AffectedBoth, qrySub_AffectedOD, qrySub_AffectedOS;')
    Left = 2170
    Top = 288
    object qryReport_PrimaryAffectedEyeBoth: TIntegerField
      FieldName = 'Both'
    end
    object qryReport_PrimaryAffectedEyeAffectedOD: TIntegerField
      FieldName = 'AffectedOD'
    end
    object qryReport_PrimaryAffectedEyeAffectedOS: TIntegerField
      FieldName = 'AffectedOS'
    end
  end
  object qryReport_ComorbiditiesPerc: TADOQuery
    Connection = ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT SUM(IIF(IIf(PrimaryAffectedEye_OD, VitreomacularAdhesion_' +
        'OD, VitreomacularAdhesion_OS), 1, 0)) / ('
      #9#9'SELECT COUNT(patientID)'
      #9#9'FROM tblPatients'
      #9#9'WHERE tblPatients.archived = False'
      
        #9#9') * 100 AS VitreomacularAdhesion, SUM(IIF(IIf(PrimaryAffectedE' +
        'ye_OD, VitreomacularTraction_OD, VitreomacularTraction_OS), 1, 0' +
        ')) / ('
      #9#9'SELECT COUNT(patientID)'
      #9#9'FROM tblPatients'
      #9#9'WHERE tblPatients.archived = False'
      
        #9#9') * 100 AS VitreomacularTraction, SUM(IIF(IIf(PrimaryAffectedE' +
        'ye_OD, MacularHoleWithVMT_OD, MacularHoleWithVMT_OS), 1, 0)) / ('
      #9#9'SELECT COUNT(patientID)'
      #9#9'FROM tblPatients'
      #9#9'WHERE tblPatients.archived = False'
      
        #9#9') * 100 AS MacularHoleWithVMT, SUM(IIF(IIf(PrimaryAffectedEye_' +
        'OD, MacularHoleWithoutVMT_OD, MacularHoleWithoutVMT_OS), 1, 0)) ' +
        '/ ('
      #9#9'SELECT COUNT(patientID)'
      #9#9'FROM tblPatients'
      #9#9'WHERE tblPatients.archived = False'
      
        #9#9') * 100 AS MacularHoleWithoutVMT, SUM(IIF(IIf(PrimaryAffectedE' +
        'ye_OD, WetAMD_OD, WetAMD_OS), 1, 0)) / ('
      #9#9'SELECT COUNT(patientID)'
      #9#9'FROM tblPatients'
      #9#9'WHERE tblPatients.archived = False'
      
        #9#9') * 100 AS WetAMD, SUM(IIF(IIf(PrimaryAffectedEye_OD, DryAMD_O' +
        'D, DryAMD_OS), 1, 0)) / ('
      #9#9'SELECT COUNT(patientID)'
      #9#9'FROM tblPatients'
      #9#9'WHERE tblPatients.archived = False'
      
        #9#9') * 100 AS DryAMD, SUM(IIF(IIf(PrimaryAffectedEye_OD, DME_OD, ' +
        'DME_OS), 1, 0)) / ('
      #9#9'SELECT COUNT(patientID)'
      #9#9'FROM tblPatients'
      #9#9'WHERE tblPatients.archived = False'
      
        #9#9') * 100 AS DME, SUM(IIF(IIf(PrimaryAffectedEye_OD, Proliferati' +
        'veDiabeticRetinopathy_OD, ProliferativeDiabeticRetinopathy_OS), ' +
        '1, 0)) / ('
      #9#9'SELECT COUNT(patientID)'
      #9#9'FROM tblPatients'
      #9#9'WHERE tblPatients.archived = False'
      
        #9#9') * 100 AS ProliferativeDiabeticRetinopathy, SUM(IIF(IIf(Prima' +
        'ryAffectedEye_OD, Cataract_OD, Cataract_OS), 1, 0)) / ('
      #9#9'SELECT COUNT(patientID)'
      #9#9'FROM tblPatients'
      #9#9'WHERE tblPatients.archived = False'
      
        #9#9') * 100 AS Cataract, SUM(IIF(IIf(PrimaryAffectedEye_OD, Retina' +
        'lVeinOcclusion_OD, RetinalVeinOcclusion_OS), 1, 0)) / ('
      #9#9'SELECT COUNT(patientID)'
      #9#9'FROM tblPatients'
      #9#9'WHERE tblPatients.archived = False'
      
        #9#9') * 100 AS RetinalVeinOcclusion, SUM(IIF(IIf(PrimaryAffectedEy' +
        'e_OD, RetinalDetachment_OD, RetinalDetachment_OS), 1, 0)) / ('
      #9#9'SELECT COUNT(patientID)'
      #9#9'FROM tblPatients'
      #9#9'WHERE tblPatients.archived = False'
      
        #9#9') * 100 AS RetinalDetachment, SUM(IIF(IIf(PrimaryAffectedEye_O' +
        'D, HighMyopia_OD, HighMyopia_OS), 1, 0)) / ('
      #9#9'SELECT COUNT(patientID)'
      #9#9'FROM tblPatients'
      #9#9'WHERE tblPatients.archived = False'
      
        #9#9') * 100 AS HighMyopia, SUM(IIF(IIf(PrimaryAffectedEye_OD, Othe' +
        'r_OS), 1, 0)) / ('
      #9#9'SELECT COUNT(patientID)'
      #9#9'FROM tblPatients'
      #9#9'WHERE tblPatients.archived = False'
      
        #9#9') * 100 AS Other, SUM(IIF(IIf(PrimaryAffectedEye_OD, NotReleva' +
        'nt_OD, NotRelevant_OS), 1, 0)) / ('
      #9#9'SELECT COUNT(patientID)'
      #9#9'FROM tblPatients'
      #9#9'WHERE tblPatients.archived = False'
      #9#9') * 100 AS NotRelevant'
      
        'FROM tblPatients INNER JOIN tblPatientMedicalHistory ON tblPatie' +
        'nts.patientID = tblPatientMedicalHistory.patientID'
      'GROUP BY tblPatients.archived, tblPatientMedicalHistory.Archived'
      
        'HAVING (((tblPatients.archived) = False) AND (tblPatientMedicalH' +
        'istory.Archived = False) );')
    Left = 2170
    Top = 672
    object qryReport_ComorbiditiesPercVitreomacularAdhesion: TFloatField
      FieldName = 'VitreomacularAdhesion'
      ReadOnly = True
    end
    object qryReport_ComorbiditiesPercVitreomacularTraction: TFloatField
      FieldName = 'VitreomacularTraction'
      ReadOnly = True
    end
    object qryReport_ComorbiditiesPercMacularHoleWithVMT: TFloatField
      FieldName = 'MacularHoleWithVMT'
      ReadOnly = True
    end
    object qryReport_ComorbiditiesPercMacularHoleWithoutVMT: TFloatField
      FieldName = 'MacularHoleWithoutVMT'
      ReadOnly = True
    end
    object qryReport_ComorbiditiesPercWetAMD: TFloatField
      FieldName = 'WetAMD'
      ReadOnly = True
    end
    object qryReport_ComorbiditiesPercDryAMD: TFloatField
      FieldName = 'DryAMD'
      ReadOnly = True
    end
    object qryReport_ComorbiditiesPercDME: TFloatField
      FieldName = 'DME'
      ReadOnly = True
    end
    object qryReport_ComorbiditiesPercProliferativeDiabeticRetinopathy: TFloatField
      FieldName = 'ProliferativeDiabeticRetinopathy'
      ReadOnly = True
    end
    object qryReport_ComorbiditiesPercCataract: TFloatField
      FieldName = 'Cataract'
      ReadOnly = True
    end
    object qryReport_ComorbiditiesPercRetinalVeinOcclusion: TFloatField
      FieldName = 'RetinalVeinOcclusion'
      ReadOnly = True
    end
    object qryReport_ComorbiditiesPercRetinalDetachment: TFloatField
      FieldName = 'RetinalDetachment'
      ReadOnly = True
    end
    object qryReport_ComorbiditiesPercHighMyopia: TFloatField
      FieldName = 'HighMyopia'
      ReadOnly = True
    end
    object qryReport_ComorbiditiesPercOther: TFloatField
      FieldName = 'Other'
      ReadOnly = True
    end
    object qryReport_ComorbiditiesPercNotRelevant: TFloatField
      FieldName = 'NotRelevant'
      ReadOnly = True
    end
  end
  object qryReport_OcularSymptomsPerc: TADOQuery
    Connection = ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Sum(IIf(IIf(PrimaryAffectedEye_OD,SymptomsFloaters_OD,Sym' +
        'ptomsFloaters_OS),1,0))/(SELECT COUNT(patientID) FROM tblPatient' +
        's WHERE tblPatients.Archived = False'
      
        #9')*100 AS SymptomsFloaters, Sum(IIf(IIf(PrimaryAffectedEye_OD,Sy' +
        'mptomsFlashesOfLight_OD,SymptomsFlashesOfLight_OS),1,0))/(SELECT' +
        ' COUNT(patientID) FROM tblPatients WHERE tblPatients.Archived = ' +
        'False'
      
        #9')*100 AS SymptomsFlashesOfLight, Sum(IIf(IIf(PrimaryAffectedEye' +
        '_OD,SymptomsDistortedVision_OD,SymptomsDistortedVision_OS),1,0))' +
        '/(SELECT COUNT(patientID) FROM tblPatients WHERE tblPatients.Arc' +
        'hived = False'
      
        #9')*100 AS SymptomsDistortedVision, Sum(IIf(IIf(PrimaryAffectedEy' +
        'e_OD,SymptomsObjectsAppearSmaller_OD,SymptomsObjectsAppearSmalle' +
        'r_OS),1,0))/(SELECT COUNT(patientID) FROM tblPatients WHERE tblP' +
        'atients.Archived = False'
      
        #9')*100 AS SymptomsObjectsAppearSmaller, Sum(IIf(IIf(PrimaryAffec' +
        'tedEye_OD,SymptomsCentralBlackImage_OD,SymptomsCentralBlackImage' +
        '_OS),1,0))/(SELECT COUNT(patientID) FROM tblPatients WHERE tblPa' +
        'tients.Archived = False'
      
        #9')*100 AS SymptomsCentralBlackImage, Sum(IIf(IIf(PrimaryAffected' +
        'Eye_OD,SymptomsDifficultyReadingAtNight_OD,SymptomsDifficultyRea' +
        'dingAtNight_OS),1,0))/(SELECT COUNT(patientID) FROM tblPatients ' +
        'WHERE tblPatients.Archived = False'
      
        #9')*100 AS SymptomsDifficultyReadingAtNight, Sum(IIf(IIf(PrimaryA' +
        'ffectedEye_OD,SymptomsBlurredVision_OD,SymptomsBlurredVision_OS)' +
        ',1,0))/(SELECT COUNT(patientID) FROM tblPatients WHERE tblPatien' +
        'ts.Archived = False'
      
        #9')*100 AS SymptomsBlurredVision, Sum(IIf(IIf(PrimaryAffectedEye_' +
        'OD,SymptomsVisualReduction_OD,SymptomsVisualReduction_OS),1,0))/' +
        '(SELECT COUNT(patientID) FROM tblPatients WHERE tblPatients.Arch' +
        'ived = False'
      
        #9')*100 AS SymptomsVisualReduction, Sum(IIf(IIf(PrimaryAffectedEy' +
        'e_OD,SymptomsOther_OD,SymptomsOther_OS),1,0))/(SELECT COUNT(pati' +
        'entID) FROM tblPatients WHERE tblPatients.Archived = False'
      
        #9')*100 AS SymptomsOther, Sum(IIf(IIf(PrimaryAffectedEye_OD,Sympt' +
        'omsNotRelevant_OD,SymptomsNotRelevant_OS),1,0))/(SELECT COUNT(pa' +
        'tientID) FROM tblPatients WHERE tblPatients.Archived = False'
      #9')*100 AS SymptomsNotRelevant'
      
        'FROM ((tblPatients INNER JOIN tblAnswersBase ON tblPatients.pati' +
        'entID = tblAnswersBase.patientID) INNER JOIN tblAnswersInitialVi' +
        'sit ON tblAnswersBase.AnswerBaseID = tblAnswersInitialVisit.Answ' +
        'erBaseID) INNER JOIN tblPatientMedicalHistory ON tblPatients.pat' +
        'ientID = tblPatientMedicalHistory.patientID'
      
        'WHERE (((tblPatients.archived)=False) AND ((tblAnswersBase.archi' +
        'ved)=False) AND ((tblAnswersBase.[EpisodeNumber])=1) AND ((tblAn' +
        'swersInitialVisit.Archived)=False));')
    Left = 2466
    Top = 632
    object qryReport_OcularSymptomsPercSymptomsFloaters: TFloatField
      FieldName = 'SymptomsFloaters'
      ReadOnly = True
    end
    object qryReport_OcularSymptomsPercSymptomsFlashesOfLight: TFloatField
      FieldName = 'SymptomsFlashesOfLight'
      ReadOnly = True
    end
    object qryReport_OcularSymptomsPercSymptomsDistortedVision: TFloatField
      FieldName = 'SymptomsDistortedVision'
      ReadOnly = True
    end
    object qryReport_OcularSymptomsPercSymptomsObjectsAppearSmaller: TFloatField
      FieldName = 'SymptomsObjectsAppearSmaller'
      ReadOnly = True
    end
    object qryReport_OcularSymptomsPercSymptomsCentralBlackImage: TFloatField
      FieldName = 'SymptomsCentralBlackImage'
      ReadOnly = True
    end
    object qryReport_OcularSymptomsPercSymptomsDifficultyReadingAtNight: TFloatField
      FieldName = 'SymptomsDifficultyReadingAtNight'
      ReadOnly = True
    end
    object qryReport_OcularSymptomsPercSymptomsBlurredVision: TFloatField
      FieldName = 'SymptomsBlurredVision'
      ReadOnly = True
    end
    object qryReport_OcularSymptomsPercSymptomsVisualReduction: TFloatField
      FieldName = 'SymptomsVisualReduction'
      ReadOnly = True
    end
    object qryReport_OcularSymptomsPercSymptomsOther: TFloatField
      FieldName = 'SymptomsOther'
      ReadOnly = True
    end
    object qryReport_OcularSymptomsPercSymptomsNotRelevant: TFloatField
      FieldName = 'SymptomsNotRelevant'
      ReadOnly = True
    end
  end
  object qryReport_PreviousInterventionPerc: TADOQuery
    Connection = ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Sum(IIf(IIf(PrimaryAffectedEye_OD,PrevTreatCataractSurger' +
        'y_OD,PrevTreatCataractSurgery_OS),1,0))/(SELECT COUNT(patientID)' +
        ' FROM tblPatients WHERE tblPatients.Archived = False '#9')*100 AS P' +
        'revTreatCataractSurgery, Sum(IIf(IIf(PrimaryAffectedEye_OD,PrevT' +
        'reatGlaucomaFiltrationSurgery_OD,PrevTreatGlaucomaFiltrationSurg' +
        'ery_OS),1,0))/(SELECT COUNT(patientID) FROM tblPatients WHERE tb' +
        'lPatients.Archived = False '#9')*100 AS PrevTreatGlaucomaFiltration' +
        'Surgery, Sum(IIf(IIf(PrimaryAffectedEye_OD,PrevTreatVitrectomy_O' +
        'D,PrevTreatVitrectomy_OS),1,0))/(SELECT COUNT(patientID) FROM tb' +
        'lPatients WHERE tblPatients.Archived = False '#9')*100 AS PrevTreat' +
        'Vitrectomy, Sum(IIf(IIf(PrimaryAffectedEye_OD,PrevTreatMacularLa' +
        'serPhotocoagulation_OD,PrevTreatMacularLaserPhotocoagulation_OS)' +
        ',1,0))/(SELECT COUNT(patientID) FROM tblPatients WHERE tblPatien' +
        'ts.Archived = False '#9')*100 AS PrevTreatMacularLaserPhotocoagulat' +
        'ion, Sum(IIf(IIf(PrimaryAffectedEye_OD,PrevTreatPeripheralLaserP' +
        'hotocoagulation_OD,PrevTreatPeripheralLaserPhotocoagulation_OS),' +
        '1,0))/(SELECT COUNT(patientID) FROM tblPatients WHERE tblPatient' +
        's.Archived = False '#9')*100 AS PrevTreatPeripheralLaserPhotocoagul' +
        'ation, Sum(IIf(IIf(PrimaryAffectedEye_OD,PrevTreatOtherSurgery_O' +
        'D,PrevTreatOtherSurgery_OS),1,0))/(SELECT COUNT(patientID) FROM ' +
        'tblPatients WHERE tblPatients.Archived = False '#9')*100 AS PrevTre' +
        'atOtherSurgery, Sum(IIf(IIf(PrimaryAffectedEye_OD,PrevTreatIntra' +
        'vitrealAntiVEGF_OD,PrevTreatIntravitrealAntiVEGF_OS),1,0))/(SELE' +
        'CT COUNT(patientID) FROM tblPatients WHERE tblPatients.Archived ' +
        '= False '#9')*100 AS PrevTreatIntravitrealAntiVEGF, Sum(IIf(IIf(Pri' +
        'maryAffectedEye_OD,PrevTreatIntravitrealSteroidLiquid_OD,PrevTre' +
        'atIntravitrealSteroidLiquid_OS),1,0))/(SELECT COUNT(patientID) F' +
        'ROM tblPatients WHERE tblPatients.Archived = False '#9')*100 AS Pre' +
        'vTreatIntravitrealSteroidLiquid, Sum(IIf(IIf(PrimaryAffectedEye_' +
        'OD,PrevTreatIntravitrealSteroidImplant_OD,PrevTreatIntravitrealS' +
        'teroidImplant_OS),1,0))/(SELECT COUNT(patientID) FROM tblPatient' +
        's WHERE tblPatients.Archived = False '#9')*100 AS PrevTreatIntravit' +
        'realSteroidImplant, Sum(IIf(IIf(PrimaryAffectedEye_OD,PrevTreatO' +
        'therIntravitrealInjection_OD,PrevTreatOtherIntravitrealInjection' +
        '_OS),1,0))/(SELECT COUNT(patientID) FROM tblPatients WHERE tblPa' +
        'tients.Archived = False '#9')*100 AS PrevTreatOtherIntravitrealInje' +
        'ction, Sum(IIf(IIf(PrimaryAffectedEye_OD,PrevTreatNotRelevant_OD' +
        ',PrevTreatNotRelevant_OS),1,0))/(SELECT COUNT(patientID) FROM tb' +
        'lPatients WHERE tblPatients.Archived = False '#9')*100 AS PrevTreat' +
        'NotRelevant'
      
        'FROM ((tblPatients INNER JOIN tblPatientMedicalHistory ON tblPat' +
        'ients.patientID = tblPatientMedicalHistory.patientID) INNER JOIN' +
        ' tblAnswersBase ON tblPatients.patientID = tblAnswersBase.patien' +
        'tID) INNER JOIN tblAnswersInitialVisit ON tblAnswersBase.AnswerB' +
        'aseID = tblAnswersInitialVisit.AnswerBaseID'
      
        'WHERE (((tblPatients.archived)=False) AND ((tblPatientMedicalHis' +
        'tory.Archived)=False) AND ((tblAnswersBase.archived)=False) AND ' +
        '((tblAnswersInitialVisit.Archived)=False) AND ((tblAnswersBase.E' +
        'pisodeNumber)=1));')
    Left = 2170
    Top = 504
    object qryReport_PreviousInterventionPercPrevTreatCataractSurgery: TFloatField
      FieldName = 'PrevTreatCataractSurgery'
      ReadOnly = True
    end
    object qryReport_PreviousInterventionPercPrevTreatGlaucomaFiltrationSurgery: TFloatField
      FieldName = 'PrevTreatGlaucomaFiltrationSurgery'
      ReadOnly = True
    end
    object qryReport_PreviousInterventionPercPrevTreatVitrectomy: TFloatField
      FieldName = 'PrevTreatVitrectomy'
      ReadOnly = True
    end
    object qryReport_PreviousInterventionPercPrevTreatMacularLaserPhotocoagulation: TFloatField
      FieldName = 'PrevTreatMacularLaserPhotocoagulation'
      ReadOnly = True
    end
    object qryReport_PreviousInterventionPercPrevTreatPeripheralLaserPhotocoagulation: TFloatField
      FieldName = 'PrevTreatPeripheralLaserPhotocoagulation'
      ReadOnly = True
    end
    object qryReport_PreviousInterventionPercPrevTreatOtherSurgery: TFloatField
      FieldName = 'PrevTreatOtherSurgery'
      ReadOnly = True
    end
    object qryReport_PreviousInterventionPercPrevTreatIntravitrealAntiVEGF: TFloatField
      FieldName = 'PrevTreatIntravitrealAntiVEGF'
      ReadOnly = True
    end
    object qryReport_PreviousInterventionPercPrevTreatIntravitrealSteroidLiquid: TFloatField
      FieldName = 'PrevTreatIntravitrealSteroidLiquid'
      ReadOnly = True
    end
    object qryReport_PreviousInterventionPercPrevTreatIntravitrealSteroidImplant: TFloatField
      FieldName = 'PrevTreatIntravitrealSteroidImplant'
      ReadOnly = True
    end
    object qryReport_PreviousInterventionPercPrevTreatOtherIntravitrealInjection: TFloatField
      FieldName = 'PrevTreatOtherIntravitrealInjection'
      ReadOnly = True
    end
    object qryReport_PreviousInterventionPercPrevTreatNotRelevant: TFloatField
      FieldName = 'PrevTreatNotRelevant'
      ReadOnly = True
    end
  end
  object ADOQuery4: TADOQuery
    Connection = ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT tblPatients.patientID, tblLookupGender.gender, tblLookupA' +
        'geRange.ageRangeDesc'
      
        'FROM tblLookupAgeRange INNER JOIN (tblLookupGender INNER JOIN tb' +
        'lPatients ON tblLookupGender.genderID = tblPatients.genderID) ON' +
        ' tblLookupAgeRange.ageID = tblPatients.ageID;')
    Left = 2460
    Top = 746
    object ADOQuery4patientID: TAutoIncField
      FieldName = 'patientID'
      ReadOnly = True
    end
    object ADOQuery4gender: TWideStringField
      FieldName = 'gender'
      Size = 6
    end
    object ADOQuery4ageRangeDesc: TWideStringField
      FieldName = 'ageRangeDesc'
      Size = 100
    end
  end
  object ADOQuery5: TADOQuery
    Connection = ALC_Connection_1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'paramEpisodeSetID'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'SELECT TOP 1 tblAnswersBase.episodeDate'
      'FROM tblAnswersBase'
      
        'WHERE (((tblAnswersBase.episodeSetID)=:paramEpisodeSetID) AND ((' +
        'tblAnswersBase.EpisodeNumber)<>1))'
      'ORDER BY tblAnswersBase.episodeDate DESC;')
    Left = 2180
    Top = 786
    object ADOQuery5episodeDate: TDateTimeField
      FieldName = 'episodeDate'
    end
  end
  object ADOQuery6: TADOQuery
    Connection = ALC_Connection_1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'paramEpisodeSetID'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'SELECT tblAnswersBase.episodeSetID, tblAnswersBase.episodeDate'
      'FROM tblAnswersBase'
      
        'WHERE (((tblAnswersBase.episodeSetID)=:paramEpisodeSetID) AND ((' +
        'tblAnswersBase.EpisodeNumber)=1));'
      '')
    Left = 2180
    Top = 730
    object ADOQuery6episodeSetID: TIntegerField
      FieldName = 'episodeSetID'
    end
    object ADOQuery6episodeDate: TDateTimeField
      FieldName = 'episodeDate'
    end
  end
  object ALC_TBL_INDICATIONS: TADOTable
    Connection = ALC_Connection_1
    CursorType = ctStatic
    TableName = 'tblIndicationGrouping'
    Left = 1872
    Top = 504
    object ALC_TBL_INDICATIONSIndicationGroupingID: TAutoIncField
      FieldName = 'IndicationGroupingID'
      ReadOnly = True
    end
    object ALC_TBL_INDICATIONSIndicationGroupingDescription: TWideStringField
      FieldName = 'IndicationGroupingDescription'
      Size = 255
    end
    object ALC_TBL_INDICATIONSdateAdded: TDateTimeField
      FieldName = 'dateAdded'
    end
    object ALC_TBL_INDICATIONSdateUpdated: TDateTimeField
      FieldName = 'dateUpdated'
    end
    object ALC_TBL_INDICATIONSArchived: TBooleanField
      FieldName = 'Archived'
    end
    object ALC_TBL_INDICATIONSAuthorID: TWideStringField
      FieldName = 'AuthorID'
      Size = 255
    end
  end
  object ALC_DS_INDICATIONS: TDataSource
    DataSet = ALC_TBL_INDICATIONS
    Left = 1472
    Top = 357
  end
  object ALC_TBL_CURRENT_LENS_STATUS: TADOTable
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=\\vmw' +
      'are-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\Setup' +
      ' Source Files DelphiXE5\SET\System\db.mdb;Mode=Share Deny None;J' +
      'et OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB' +
      ':Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database' +
      ' Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Gl' +
      'obal Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet ' +
      'OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=Fa' +
      'lse;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compa' +
      'ct Without Replica Repair=False;Jet OLEDB:SFP=False;'
    CursorType = ctStatic
    TableName = 'tblLookUpCurrentLensStatus'
    Left = 1720
    Top = 592
    object ALC_TBL_CURRENT_LENS_STATUSLensStatusID: TAutoIncField
      FieldName = 'LensStatusID'
      ReadOnly = True
    end
    object ALC_TBL_CURRENT_LENS_STATUSLensStatusDescription: TWideStringField
      FieldName = 'LensStatusDescription'
      Size = 255
    end
    object ALC_TBL_CURRENT_LENS_STATUSdateAdded: TDateTimeField
      FieldName = 'dateAdded'
    end
    object ALC_TBL_CURRENT_LENS_STATUSdateUpdated: TDateTimeField
      FieldName = 'dateUpdated'
    end
    object ALC_TBL_CURRENT_LENS_STATUSArchived: TBooleanField
      FieldName = 'Archived'
    end
    object ALC_TBL_CURRENT_LENS_STATUSAuthorID: TWideStringField
      FieldName = 'AuthorID'
      Size = 255
    end
  end
  object ALC_DS_CURRENT_LENS_STATUS: TDataSource
    DataSet = ALC_TBL_CURRENT_LENS_STATUS
    Left = 1464
    Top = 527
  end
  object ALC_TBL_VISUAL_ACUITY_MATRIX: TADOTable
    Connection = ALC_Connection_1
    CursorType = ctStatic
    TableName = 'tblLookupVisualAcuityMatrix'
    Left = 1864
    Top = 760
    object ALC_TBL_VISUAL_ACUITY_MATRIXVisualAcuityMatrixID: TAutoIncField
      FieldName = 'VisualAcuityMatrixID'
      ReadOnly = True
    end
    object ALC_TBL_VISUAL_ACUITY_MATRIXSnellenFeet_20Desc: TWideStringField
      FieldName = 'SnellenFeet_20Desc'
      Size = 50
    end
    object ALC_TBL_VISUAL_ACUITY_MATRIXSnellenFeet_20: TBCDField
      FieldName = 'SnellenFeet_20'
      Precision = 18
      Size = 1
    end
    object ALC_TBL_VISUAL_ACUITY_MATRIXSnellenMeter_6Desc: TWideStringField
      FieldName = 'SnellenMeter_6Desc'
      Size = 50
    end
    object ALC_TBL_VISUAL_ACUITY_MATRIXSnellenMeter_6: TBCDField
      FieldName = 'SnellenMeter_6'
      Precision = 18
      Size = 1
    end
    object ALC_TBL_VISUAL_ACUITY_MATRIXDecimalDesc: TWideStringField
      FieldName = 'DecimalDesc'
      Size = 50
    end
    object ALC_TBL_VISUAL_ACUITY_MATRIXDecimal: TBCDField
      FieldName = 'Decimal'
      Precision = 18
      Size = 2
    end
    object ALC_TBL_VISUAL_ACUITY_MATRIXLogMarDesc: TWideStringField
      FieldName = 'LogMarDesc'
      Size = 50
    end
    object ALC_TBL_VISUAL_ACUITY_MATRIXLogMar: TBCDField
      FieldName = 'LogMar'
      Precision = 18
      Size = 2
    end
    object ALC_TBL_VISUAL_ACUITY_MATRIXLineNumberDesc: TWideStringField
      FieldName = 'LineNumberDesc'
      Size = 50
    end
    object ALC_TBL_VISUAL_ACUITY_MATRIXLineNumber: TBCDField
      FieldName = 'LineNumber'
      Precision = 18
      Size = 2
    end
    object ALC_TBL_VISUAL_ACUITY_MATRIXJaegerDesc: TWideStringField
      FieldName = 'JaegerDesc'
      Size = 50
    end
    object ALC_TBL_VISUAL_ACUITY_MATRIXJaeger: TBCDField
      FieldName = 'Jaeger'
      Precision = 18
      Size = 2
    end
    object ALC_TBL_VISUAL_ACUITY_MATRIXInches_14Desc: TWideStringField
      FieldName = 'Inches_14Desc'
      Size = 50
    end
    object ALC_TBL_VISUAL_ACUITY_MATRIXInches_14: TBCDField
      FieldName = 'Inches_14'
      Precision = 18
      Size = 1
    end
    object ALC_TBL_VISUAL_ACUITY_MATRIXCentimeters_35Desc: TWideStringField
      FieldName = 'Centimeters_35Desc'
      Size = 50
    end
    object ALC_TBL_VISUAL_ACUITY_MATRIXCentimeters_35: TBCDField
      FieldName = 'Centimeters_35'
      Precision = 18
      Size = 1
    end
    object ALC_TBL_VISUAL_ACUITY_MATRIXdateAdded: TDateTimeField
      FieldName = 'dateAdded'
    end
    object ALC_TBL_VISUAL_ACUITY_MATRIXdateUpdated: TDateTimeField
      FieldName = 'dateUpdated'
    end
    object ALC_TBL_VISUAL_ACUITY_MATRIXarchived: TBooleanField
      FieldName = 'archived'
    end
    object ALC_TBL_VISUAL_ACUITY_MATRIXAuthorID: TWideStringField
      FieldName = 'AuthorID'
      Size = 255
    end
  end
  object ALC_DS_VISUAL_ACUITY_MATRIX: TDataSource
    DataSet = ALC_TBL_VISUAL_ACUITY_MATRIX
    Left = 1096
    Top = 606
  end
  object ALC_TBL_PREVIOUS_OCCURANCE: TADOTable
    Connection = ALC_Connection_1
    CursorType = ctStatic
    TableName = 'tblLookupPreviousOccurance'
    Left = 1864
    Top = 816
    object ALC_TBL_PREVIOUS_OCCURANCEPreviousOccuranceID: TAutoIncField
      FieldName = 'PreviousOccuranceID'
      ReadOnly = True
    end
    object ALC_TBL_PREVIOUS_OCCURANCEPreviousOccuranceDescription: TWideStringField
      FieldName = 'PreviousOccuranceDescription'
      Size = 255
    end
    object ALC_TBL_PREVIOUS_OCCURANCEdateAdded: TDateTimeField
      FieldName = 'dateAdded'
    end
    object ALC_TBL_PREVIOUS_OCCURANCEdateupdated: TDateTimeField
      FieldName = 'dateupdated'
    end
    object ALC_TBL_PREVIOUS_OCCURANCEarchived: TBooleanField
      FieldName = 'archived'
    end
    object ALC_TBL_PREVIOUS_OCCURANCEAuthorID: TWideStringField
      FieldName = 'AuthorID'
      Size = 255
    end
  end
  object ALC_DS_PREVIOUS_OCCURANCE: TDataSource
    DataSet = ALC_TBL_PREVIOUS_OCCURANCE
    Left = 1552
    Top = 910
  end
  object ADOCmdSelectPatientByID: TADOCommand
    CommandText = 'SELECT * FROM tblPatients WHERE PatientID = :PatientID'
    Connection = ALC_Connection_1
    Parameters = <
      item
        Name = 'PatientID'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 1580
    Top = 247
  end
  object qryPatientUUIDByPatientID: TADOQuery
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=\\vmw' +
      'are-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\Setup' +
      ' Source Files DelphiXE5\SET\System\db.mdb;Mode=Share Deny None;J' +
      'et OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB' +
      ':Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database' +
      ' Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Gl' +
      'obal Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet ' +
      'OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=Fa' +
      'lse;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compa' +
      'ct Without Replica Repair=False;Jet OLEDB:SFP=False;'
    CursorType = ctStatic
    DataSource = ALC_DATASOURCE_PATIENTS
    Parameters = <>
    Left = 2460
    Top = 871
  end
end
