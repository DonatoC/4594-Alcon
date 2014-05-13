object frmReport: TfrmReport
  Left = 670
  Top = 163
  BorderStyle = bsSingle
  Caption = 'frmReport'
  ClientHeight = 807
  ClientWidth = 1024
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 60
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 659
    Width = 1024
    Height = 148
    Align = alBottom
    BevelOuter = bvNone
    Color = 3513907
    ParentBackground = False
    TabOrder = 1
    object Button15: TButton
      Left = 167
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Age'
      TabOrder = 0
      OnClick = Button15Click
    end
    object Button16: TButton
      Left = 15
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Gender'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button16Click
    end
    object Button4: TButton
      Left = 91
      Top = 6
      Width = 75
      Height = 25
      Caption = 'VMT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      TabOrder = 2
      OnClick = Button4Click
    end
    object Button11: TButton
      Left = 15
      Top = 33
      Width = 230
      Height = 25
      Caption = 'Average no of visits: initial visit - discharge'
      TabOrder = 3
      OnClick = Button11Click
    end
    object Button12: TButton
      Left = 246
      Top = 33
      Width = 127
      Height = 25
      Caption = 'Reason for discharge'
      TabOrder = 4
      OnClick = Button12Click
    end
    object Button13: TButton
      Left = 375
      Top = 33
      Width = 186
      Height = 25
      Caption = 'Average time: initial visit discharge'
      TabOrder = 5
      OnClick = Button13Click
    end
    object Button14: TButton
      Left = 562
      Top = 33
      Width = 172
      Height = 25
      Caption = 'Average duration between visits'
      TabOrder = 6
      OnClick = Button14Click
    end
    object Button17: TButton
      Left = 609
      Top = 85
      Width = 250
      Height = 25
      Caption = 'Average time between initial visit and treatment'
      TabOrder = 7
      OnClick = Button17Click
    end
    object Button18: TButton
      Left = 15
      Top = 111
      Width = 330
      Height = 25
      Caption = 'Proportion of patient moving from WW to Surgery  Ocriplasmin'
      TabOrder = 8
      OnClick = Button18Click
    end
    object Button20: TButton
      Left = 243
      Top = 6
      Width = 108
      Height = 25
      Caption = 'Source of referral'
      TabOrder = 9
      OnClick = Button20Click
    end
    object Button22: TButton
      Left = 352
      Top = 6
      Width = 108
      Height = 25
      Caption = 'Reason of referral'
      TabOrder = 10
      OnClick = Button22Click
    end
    object Button24: TButton
      Left = 461
      Top = 7
      Width = 124
      Height = 25
      Caption = 'Primary affected eye'
      TabOrder = 11
      OnClick = Button24Click
    end
    object Button26: TButton
      Left = 586
      Top = 8
      Width = 151
      Height = 25
      Caption = 'Comorbidities percentages'
      TabOrder = 12
      OnClick = Button26Click
    end
    object Button28: TButton
      Left = 738
      Top = 8
      Width = 111
      Height = 25
      Caption = 'Ocular symptoms'
      TabOrder = 13
      OnClick = Button28Click
    end
    object Button30: TButton
      Left = 850
      Top = 7
      Width = 170
      Height = 25
      Caption = 'Previous intervention frequency'
      TabOrder = 14
      OnClick = Button30Click
    end
    object Button32: TButton
      Left = 734
      Top = 32
      Width = 139
      Height = 25
      Caption = 'Mean Intraocular pressure'
      TabOrder = 15
      OnClick = Button32Click
    end
    object Button33: TButton
      Left = 15
      Top = 59
      Width = 198
      Height = 25
      Caption = 'Mean change in intraocular pressure'
      TabOrder = 16
      OnClick = Button33Click
    end
    object Button37: TButton
      Left = 383
      Top = 59
      Width = 198
      Height = 25
      Caption = 'Mean change in visual acuity distance'
      TabOrder = 17
      OnClick = Button37Click
    end
    object Button38: TButton
      Left = 214
      Top = 59
      Width = 167
      Height = 25
      Caption = 'Mean in visual acuity distance'
      TabOrder = 18
      OnClick = Button38Click
    end
    object Button40: TButton
      Left = 582
      Top = 59
      Width = 167
      Height = 25
      Caption = 'Mean in visual acuity near'
      TabOrder = 19
      OnClick = Button40Click
    end
    object Button41: TButton
      Left = 750
      Top = 59
      Width = 198
      Height = 25
      Caption = 'Mean change in visual acuity near'
      TabOrder = 20
      OnClick = Button41Click
    end
    object Button44: TButton
      Left = 14
      Top = 85
      Width = 135
      Height = 25
      Caption = 'Scotoma'
      TabOrder = 21
      OnClick = Button44Click
    end
    object Button45: TButton
      Left = 149
      Top = 85
      Width = 107
      Height = 25
      Caption = 'Presence of OCT '
      TabOrder = 22
      OnClick = Button45Click
    end
    object Button47: TButton
      Left = 256
      Top = 85
      Width = 132
      Height = 25
      Caption = 'Vitreomacular Adhesion'
      TabOrder = 23
      OnClick = Button47Click
    end
    object Button50: TButton
      Left = 388
      Top = 85
      Width = 107
      Height = 25
      Caption = 'Macular Hole Size'
      TabOrder = 24
      OnClick = Button50Click
    end
    object Button52: TButton
      Left = 495
      Top = 85
      Width = 114
      Height = 25
      Caption = 'Secondary Cataract'
      TabOrder = 25
      OnClick = Button52Click
    end
    object Button53: TButton
      Left = 346
      Top = 111
      Width = 196
      Height = 25
      Caption = 'Macular hole stage at initial visit'
      TabOrder = 26
      OnClick = Button53Click
    end
    object Button54: TButton
      Left = 542
      Top = 111
      Width = 196
      Height = 25
      Caption = 'Proposed treatment by rationale'
      TabOrder = 27
      OnClick = Button54Click
    end
    object Button58: TButton
      Left = 738
      Top = 111
      Width = 135
      Height = 25
      Caption = 'Distortion'
      TabOrder = 28
      OnClick = Button58Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 60
    Width = 1024
    Height = 599
    ActivePage = GenderReportPage
    Align = alClient
    TabOrder = 2
    object GenderReportPage: TTabSheet
      Caption = 'GenderReportPage'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabVisible = False
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
      object Label1: TLabel
        Left = 175
        Top = 43
        Width = 86
        Height = 13
        Caption = 'new episode Date'
        Visible = False
      end
      object Label2: TLabel
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
      object Label3: TLabel
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
      object Label4: TLabel
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
      object Label5: TLabel
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
      object Label6: TLabel
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
      object Shape1: TShape
        Left = 33
        Top = 76
        Width = 632
        Height = 305
        Pen.Color = 3513907
      end
      object Shape2: TShape
        Left = 33
        Top = 45
        Width = 632
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label7: TLabel
        Left = 43
        Top = 51
        Width = 56
        Height = 19
        Caption = 'Gender'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblMaleDesc: TLabel
        Left = 92
        Top = 133
        Width = 50
        Height = 19
        Caption = 'Males:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblMaleValue: TLabel
        Left = 186
        Top = 133
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblFemaleDesc: TLabel
        Left = 92
        Top = 158
        Width = 70
        Height = 19
        Caption = 'Females:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblFemaleValue: TLabel
        Left = 186
        Top = 158
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button1: TButton
        Left = 720
        Top = 50
        Width = 75
        Height = 25
        Caption = 'run'
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object AgeReportPage: TTabSheet
      Caption = 'AgeReportPage'
      DoubleBuffered = True
      ImageIndex = 1
      ParentDoubleBuffered = False
      TabVisible = False
      object Label8: TLabel
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
      object Label9: TLabel
        Left = 175
        Top = 43
        Width = 86
        Height = 13
        Caption = 'new episode Date'
        Visible = False
      end
      object Label10: TLabel
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
      object Label11: TLabel
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
      object Label12: TLabel
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
      object Label13: TLabel
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
      object Label14: TLabel
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
      object Shape3: TShape
        Left = 33
        Top = 76
        Width = 632
        Height = 305
        Pen.Color = 3513907
      end
      object Shape4: TShape
        Left = 33
        Top = 45
        Width = 632
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label15: TLabel
        Left = 51
        Top = 51
        Width = 82
        Height = 19
        Caption = 'Age Group'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPatientslAgeUnder45Desc: TLabel
        Left = 92
        Top = 133
        Width = 240
        Height = 19
        Caption = 'No of patients younger than 45:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPatientslAgeUnder45Value: TLabel
        Left = 370
        Top = 133
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPatientsAgeBetween45And64Desc: TLabel
        Left = 92
        Top = 158
        Width = 258
        Height = 19
        Caption = 'No of patients between 45 and 64:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPatientsAgeBetween45And64Value: TLabel
        Left = 370
        Top = 158
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPatientsAgeOver64Desc: TLabel
        Left = 92
        Top = 183
        Width = 271
        Height = 19
        Caption = 'No of patients 65 years old or older:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPatientsAgeOver64Value: TLabel
        Left = 370
        Top = 183
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button2: TButton
        Left = 720
        Top = 50
        Width = 75
        Height = 25
        Caption = 'run'
        TabOrder = 0
        OnClick = Button2Click
      end
    end
    object VMTPage: TTabSheet
      Caption = 'VMTPage'
      ImageIndex = 3
      TabVisible = False
      object Label16: TLabel
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
      object Label17: TLabel
        Left = 175
        Top = 43
        Width = 86
        Height = 13
        Caption = 'new episode Date'
        Visible = False
      end
      object Label18: TLabel
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
      object Label19: TLabel
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
      object Label20: TLabel
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
      object Label21: TLabel
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
      object Label22: TLabel
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
      object Shape5: TShape
        Left = 33
        Top = 76
        Width = 632
        Height = 305
        Pen.Color = 3513907
      end
      object Shape6: TShape
        Left = 33
        Top = 45
        Width = 632
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label23: TLabel
        Left = 51
        Top = 51
        Width = 112
        Height = 19
        Caption = 'VMT incidence'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblVMTwithoutMHwithERMDesc: TLabel
        Left = 92
        Top = 133
        Width = 128
        Height = 19
        Caption = 'MH without VMT:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblVMTwithoutMHwithERMValue: TLabel
        Left = 333
        Top = 133
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblVMTwithoutMHwithoutERMDesc: TLabel
        Left = 92
        Top = 158
        Width = 105
        Height = 19
        Caption = 'VMT with MH:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblVMTwithoutMHwithoutERMValue: TLabel
        Left = 333
        Top = 158
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblVMTwithMHwithERMDesc: TLabel
        Left = 92
        Top = 183
        Width = 130
        Height = 19
        Caption = 'VMT without MH:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblVMTwithMHwithERMValue: TLabel
        Left = 333
        Top = 183
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblMHwithoutVMTwithERMDesc: TLabel
        Left = 92
        Top = 208
        Width = 206
        Height = 19
        Caption = 'MH without VMT with ERM:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblMHwithoutVMTwithERMValue: TLabel
        Left = 333
        Top = 208
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblMHwithoutVMTwithoutERMDesc: TLabel
        Left = 92
        Top = 233
        Width = 231
        Height = 19
        Caption = 'MH without VMT without ERM:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblMHwithoutVMTwithoutERMValue: TLabel
        Left = 333
        Top = 233
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button3: TButton
        Left = 720
        Top = 50
        Width = 75
        Height = 25
        Caption = 'run'
        TabOrder = 0
        OnClick = Button3Click
      end
    end
    object AverageNoOfVisitsPage: TTabSheet
      Caption = 'AverageNoOfVisitsPage'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ImageIndex = 4
      ParentFont = False
      TabVisible = False
      object Label24: TLabel
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
      object Label25: TLabel
        Left = 175
        Top = 43
        Width = 127
        Height = 18
        Caption = 'new episode Date'
        Visible = False
      end
      object Label26: TLabel
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
      object Label27: TLabel
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
      object Label28: TLabel
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
      object Label29: TLabel
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
      object Label30: TLabel
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
      object Shape7: TShape
        Left = 33
        Top = 76
        Width = 632
        Height = 305
        Pen.Color = 3513907
      end
      object Shape8: TShape
        Left = 33
        Top = 45
        Width = 632
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label31: TLabel
        Left = 51
        Top = 51
        Width = 410
        Height = 19
        Caption = 'Average no of visits between initial visit and discharge'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblWatchfulWaitingAverageNoAtDischargePointDesc: TLabel
        Left = 92
        Top = 133
        Width = 226
        Height = 19
        Caption = 'Grouped by Watchful Waiting:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblWatchfulWaitingAverageNoAtDischargePointValue: TLabel
        Left = 443
        Top = 133
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSurgeryAverageNoAtDischargePointDesc: TLabel
        Left = 92
        Top = 158
        Width = 161
        Height = 19
        Caption = 'Grouped by Surgery:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSurgeryAverageNoAtDischargePointValue: TLabel
        Left = 443
        Top = 158
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblIntravitrealInjectionAverageNoAtDischargePointDesc: TLabel
        Left = 92
        Top = 183
        Width = 340
        Height = 19
        Caption = 'Grouped byOcriplasmin intravitreal injection:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lbIntravitrealInjectionAverageNoAtDischargePointValue: TLabel
        Left = 443
        Top = 183
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBEdit_INI_FOLLOW_DateUpdated: TDBEdit
        Left = 1236
        Top = 925
        Width = 144
        Height = 26
        DataField = 'DateUpdated'
        TabOrder = 0
      end
      object Button5: TButton
        Left = 720
        Top = 49
        Width = 75
        Height = 25
        Caption = 'run'
        TabOrder = 1
        OnClick = Button5Click
      end
    end
    object ReasonForDischargePage: TTabSheet
      Caption = 'ReasonForDischargePage'
      ImageIndex = 5
      TabVisible = False
      object Label38: TLabel
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
      object Label39: TLabel
        Left = 175
        Top = 43
        Width = 86
        Height = 13
        Caption = 'new episode Date'
        Visible = False
      end
      object Label40: TLabel
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
      object Label41: TLabel
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
      object Label42: TLabel
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
      object Label43: TLabel
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
      object Label44: TLabel
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
      object Shape9: TShape
        Left = 33
        Top = 76
        Width = 968
        Height = 413
        Pen.Color = 3513907
      end
      object Shape10: TShape
        Left = 33
        Top = 45
        Width = 968
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label45: TLabel
        Left = 51
        Top = 51
        Width = 164
        Height = 19
        Caption = 'Reason for discharge'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label46: TLabel
        Left = 60
        Top = 133
        Width = 226
        Height = 19
        Caption = 'Grouped by Watchful Waiting:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label48: TLabel
        Left = 406
        Top = 133
        Width = 161
        Height = 19
        Caption = 'Grouped by Surgery:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label50: TLabel
        Left = 716
        Top = 133
        Width = 249
        Height = 19
        Caption = 'Grouped by Intravitreal injection:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object notApplicableReasonForDischargeWWValue: TLabel
        Left = 297
        Top = 173
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object notApplicableReasonForDischargeWWDesc: TLabel
        Left = 60
        Top = 173
        Width = 115
        Height = 19
        Caption = 'Not applicable:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object completeResolutionReasonForDischargeWWDesc: TLabel
        Left = 60
        Top = 198
        Width = 160
        Height = 19
        Caption = 'Complete resolution:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object completeResolutionReasonForDischargeWWValue: TLabel
        Left = 297
        Top = 198
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object macularHoleClosureReasonForDischargeWWDesc: TLabel
        Left = 60
        Top = 223
        Width = 166
        Height = 19
        Caption = 'Macular Hole closure:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object macularHoleClosureReasonForDischargeWWValue: TLabel
        Left = 297
        Top = 223
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object patientDecisionReasonForDischargeWWDesc: TLabel
        Left = 60
        Top = 252
        Width = 226
        Height = 38
        Caption = 'Patient decision for no further treatment / follow up:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
      end
      object patientDecisionReasonForDischargeWWValue: TLabel
        Left = 297
        Top = 252
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object poorPrognosisReasonForDischargeWWDesc: TLabel
        Left = 60
        Top = 301
        Width = 125
        Height = 19
        Caption = 'Poor prognosis:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object poorPrognosisReasonForDischargeWWValue: TLabel
        Left = 297
        Top = 301
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object otherReasonForDischargeWWDesc: TLabel
        Left = 60
        Top = 326
        Width = 48
        Height = 19
        Caption = 'Other:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object otherReasonForDischargeWWValue: TLabel
        Left = 297
        Top = 326
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label143: TLabel
        Left = 499
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
      object Label144: TLabel
        Left = 499
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
      object Label145: TLabel
        Left = 499
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
      object Label146: TLabel
        Left = 499
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
      object Label147: TLabel
        Left = 499
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
      object notApplicableReasonForDischargeSurgeryValue: TLabel
        Left = 643
        Top = 173
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object notApplicableReasonForDischargeSurgeryDesc: TLabel
        Left = 406
        Top = 173
        Width = 115
        Height = 19
        Caption = 'Not applicable:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object completeResolutionReasonForDischargeSurgeryDesc: TLabel
        Left = 406
        Top = 198
        Width = 160
        Height = 19
        Caption = 'Complete resolution:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object completeResolutionReasonForDischargeSurgeryValue: TLabel
        Left = 643
        Top = 198
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object macularHoleClosureReasonForDischargeSurgeryDesc: TLabel
        Left = 406
        Top = 223
        Width = 166
        Height = 19
        Caption = 'Macular Hole closure:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object macularHoleClosureReasonForDischargeSurgeryValue: TLabel
        Left = 643
        Top = 223
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object patientDecisionReasonForDischargeSurgeryDesc: TLabel
        Left = 406
        Top = 252
        Width = 226
        Height = 38
        Caption = 'Patient decision for no further treatment / follow up:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
      end
      object patientDecisionReasonForDischargeSurgeryValue: TLabel
        Left = 643
        Top = 252
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object poorPrognosisReasonForDischargeSurgeryDesc: TLabel
        Left = 406
        Top = 301
        Width = 125
        Height = 19
        Caption = 'Poor prognosis:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object poorPrognosisReasonForDischargeSurgeryValue: TLabel
        Left = 643
        Top = 301
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object otherReasonForDischargeSurgeryDesc: TLabel
        Left = 406
        Top = 326
        Width = 48
        Height = 19
        Caption = 'Other:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object otherReasonForDischargeSurgeryValue: TLabel
        Left = 643
        Top = 326
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label164: TLabel
        Left = 809
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
      object Label165: TLabel
        Left = 809
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
      object Label166: TLabel
        Left = 809
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
      object Label169: TLabel
        Left = 809
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
      object Label170: TLabel
        Left = 809
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
      object notApplicableReasonForDischargeInjectionValue: TLabel
        Left = 953
        Top = 173
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object notApplicableReasonForDischargeInjectionDesc: TLabel
        Left = 716
        Top = 173
        Width = 115
        Height = 19
        Caption = 'Not applicable:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object completeResolutionReasonForDischargeInjectionDesc: TLabel
        Left = 716
        Top = 198
        Width = 160
        Height = 19
        Caption = 'Complete resolution:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object completeResolutionReasonForDischargeInjectionValue: TLabel
        Left = 953
        Top = 198
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object macularHoleClosureReasonForDischargeInjectionDesc: TLabel
        Left = 716
        Top = 223
        Width = 166
        Height = 19
        Caption = 'Macular Hole closure:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object macularHoleClosureReasonForDischargeInjectionValue: TLabel
        Left = 953
        Top = 223
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object patientDecisionReasonForDischargeInjectionDesc: TLabel
        Left = 716
        Top = 252
        Width = 226
        Height = 38
        Caption = 'Patient decision for no further treatment / follow up:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
      end
      object patientDecisionReasonForDischargeInjectionValue: TLabel
        Left = 953
        Top = 252
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object poorPrognosisReasonForDischargeInjectionDesc: TLabel
        Left = 716
        Top = 301
        Width = 125
        Height = 19
        Caption = 'Poor prognosis:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object poorPrognosisReasonForDischargeInjectionValue: TLabel
        Left = 953
        Top = 301
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object otherReasonForDischargeInjectionDesc: TLabel
        Left = 716
        Top = 326
        Width = 48
        Height = 19
        Caption = 'Other:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object otherReasonForDischargeInjectionValue: TLabel
        Left = 953
        Top = 326
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button6: TButton
        Left = 926
        Top = 3
        Width = 75
        Height = 25
        Caption = 'run'
        TabOrder = 0
        OnClick = Button6Click
      end
    end
    object AverageTimeBetweenInitialVisitAndDischargePage: TTabSheet
      Caption = 'AverageTimeBetweenInitialVisitAndDischargePage'
      ImageIndex = 6
      TabVisible = False
      object Label89: TLabel
        Left = 480
        Top = 952
        Width = 37
        Height = 13
        Caption = 'Label89'
      end
      object Label52: TLabel
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
      object Label53: TLabel
        Left = 175
        Top = 43
        Width = 86
        Height = 13
        Caption = 'new episode Date'
        Visible = False
      end
      object Label54: TLabel
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
      object Label55: TLabel
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
      object Label56: TLabel
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
      object Label57: TLabel
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
      object Label58: TLabel
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
      object Shape13: TShape
        Left = 33
        Top = 76
        Width = 632
        Height = 305
        Pen.Color = 3513907
      end
      object Shape14: TShape
        Left = 33
        Top = 45
        Width = 632
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label59: TLabel
        Left = 51
        Top = 51
        Width = 359
        Height = 19
        Caption = 'Average time between initial visit and discharge'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblAverageTimeBetweenInitialAndDischargeVisitWWDesc: TLabel
        Left = 92
        Top = 133
        Width = 226
        Height = 19
        Caption = 'Grouped by Watchful Waiting:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblAverageTimeBetweenInitialAndDischargeVisitWWValue: TLabel
        Left = 399
        Top = 133
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblAverageTimeBetweenInitialAndDischargeVisitSurgeryDesc: TLabel
        Left = 92
        Top = 158
        Width = 161
        Height = 19
        Caption = 'Grouped by Surgery:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblAverageTimeBetweenInitialAndDischargeVisitSurgeryValue: TLabel
        Left = 399
        Top = 158
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblAverageTimeBetweenInitialAndDischargeVisitInjectionDesc: TLabel
        Left = 92
        Top = 183
        Width = 249
        Height = 19
        Caption = 'Grouped by Intravitreal injection:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblAverageTimeBetweenInitialAndDischargeVisitInjectionValue: TLabel
        Left = 399
        Top = 183
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button7: TButton
        Left = 720
        Top = 50
        Width = 75
        Height = 25
        Caption = 'run'
        TabOrder = 0
        OnClick = Button7Click
      end
    end
    object AverageDurationBetweenVisitsPage: TTabSheet
      Caption = 'AverageDurationBetweenVisitsPage'
      ImageIndex = 7
      TabVisible = False
      object Label66: TLabel
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
      object Label67: TLabel
        Left = 175
        Top = 43
        Width = 86
        Height = 13
        Caption = 'new episode Date'
        Visible = False
      end
      object Label68: TLabel
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
      object Label69: TLabel
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
      object Label70: TLabel
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
      object Label71: TLabel
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
      object Label72: TLabel
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
      object Shape15: TShape
        Left = 33
        Top = 76
        Width = 632
        Height = 305
        Pen.Color = 3513907
      end
      object Shape16: TShape
        Left = 33
        Top = 45
        Width = 632
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label73: TLabel
        Left = 51
        Top = 51
        Width = 243
        Height = 19
        Caption = 'Average duration between visits'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblAverageDurationBetweenVisitsWWDesc: TLabel
        Left = 92
        Top = 133
        Width = 226
        Height = 19
        Caption = 'Grouped by Watchful Waiting:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblAverageDurationBetweenVisitsWWValue: TLabel
        Left = 399
        Top = 133
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblAverageDurationBetweenVisitsSurgeryDesc: TLabel
        Left = 92
        Top = 158
        Width = 161
        Height = 19
        Caption = 'Grouped by Surgery:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblAverageDurationBetweenVisitsSurgeryValue: TLabel
        Left = 399
        Top = 158
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblAverageDurationBetweenVisitsInjectionDesc: TLabel
        Left = 92
        Top = 183
        Width = 249
        Height = 19
        Caption = 'Grouped by Intravitreal injection:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblAverageDurationBetweenVisitsInjectionValue: TLabel
        Left = 399
        Top = 183
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBGrid7: TDBGrid
        Left = 102
        Top = 776
        Width = 449
        Height = 106
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Visible = False
      end
      object Button8: TButton
        Left = 720
        Top = 50
        Width = 75
        Height = 25
        Caption = 'run'
        TabOrder = 1
        OnClick = Button8Click
      end
    end
    object AverageTimeBetweenInitialVisitAndTreatmentPage: TTabSheet
      Caption = 'AverageTimeBetweenInitialVisitAndTreatmentPage'
      ImageIndex = 8
      TabVisible = False
      object Label80: TLabel
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
      object Label81: TLabel
        Left = 175
        Top = 43
        Width = 86
        Height = 13
        Caption = 'new episode Date'
        Visible = False
      end
      object Label82: TLabel
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
      object Label83: TLabel
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
      object Label84: TLabel
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
      object Label85: TLabel
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
      object Label86: TLabel
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
        Left = 33
        Top = 76
        Width = 632
        Height = 305
        Pen.Color = 3513907
      end
      object Shape12: TShape
        Left = 33
        Top = 45
        Width = 632
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label87: TLabel
        Left = 51
        Top = 51
        Width = 355
        Height = 19
        Caption = 'Average time between initial visit and treatment'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblAverageTimeBetweenInitialVisitAndTreatmentWWDesc: TLabel
        Left = 92
        Top = 133
        Width = 226
        Height = 19
        Caption = 'Grouped by Watchful Waiting:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblAverageTimeBetweenInitialVisitAndTreatmentWWValue: TLabel
        Left = 399
        Top = 133
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblAverageTimeBetweenInitialVisitAndTreatmentSurgeryDesc: TLabel
        Left = 92
        Top = 158
        Width = 161
        Height = 19
        Caption = 'Grouped by Surgery:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblAverageTimeBetweenInitialVisitAndTreatmentSurgeryValue: TLabel
        Left = 399
        Top = 158
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblAverageTimeBetweenInitialVisitAndTreatmentInjectionDesc: TLabel
        Left = 92
        Top = 183
        Width = 249
        Height = 19
        Caption = 'Grouped by Intravitreal injection:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblAverageTimeBetweenInitialVisitAndTreatmentInjectionValue: TLabel
        Left = 399
        Top = 183
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button9: TButton
        Left = 720
        Top = 50
        Width = 75
        Height = 25
        Caption = 'run'
        TabOrder = 0
        OnClick = Button9Click
      end
    end
    object SourceOfReferralPage: TTabSheet
      Caption = 'SourceOfReferralPage'
      ImageIndex = 9
      TabVisible = False
      object Label105: TLabel
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
      object Label106: TLabel
        Left = 175
        Top = 43
        Width = 86
        Height = 13
        Caption = 'new episode Date'
        Visible = False
      end
      object Label109: TLabel
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
      object Label110: TLabel
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
      object Label111: TLabel
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
      object Label112: TLabel
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
      object Label113: TLabel
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
      object Shape19: TShape
        Left = 33
        Top = 76
        Width = 632
        Height = 305
        Pen.Color = 3513907
      end
      object Shape20: TShape
        Left = 33
        Top = 45
        Width = 632
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label114: TLabel
        Left = 51
        Top = 51
        Width = 132
        Height = 19
        Caption = 'Source of referral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblGPDesc: TLabel
        Left = 92
        Top = 133
        Width = 29
        Height = 19
        Caption = 'GP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblGPValue: TLabel
        Left = 354
        Top = 133
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblMedicalRetinalOphthalmologistDesc: TLabel
        Left = 92
        Top = 158
        Width = 249
        Height = 19
        Caption = 'Medical Retinal ophthalmologist:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblMedicalRetinalOphthalmologistValue: TLabel
        Left = 353
        Top = 158
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblOptometristDesc: TLabel
        Left = 92
        Top = 183
        Width = 95
        Height = 19
        Caption = 'Optometrist:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblOptometristValue: TLabel
        Left = 353
        Top = 183
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblOtherDesc: TLabel
        Left = 92
        Top = 208
        Width = 48
        Height = 19
        Caption = 'Other:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblOtherOphthalmologistDesc: TLabel
        Left = 92
        Top = 233
        Width = 176
        Height = 19
        Caption = 'Other ophthalmologist:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblVitreoretinalSurgeonDesc: TLabel
        Left = 92
        Top = 258
        Width = 166
        Height = 19
        Caption = 'Vitreoretinal surgeon:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblOtherValue: TLabel
        Left = 353
        Top = 208
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblOtherOphthalmologistValue: TLabel
        Left = 353
        Top = 233
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblVitreoretinalSurgeonValue: TLabel
        Left = 353
        Top = 258
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button19: TButton
        Left = 720
        Top = 50
        Width = 75
        Height = 25
        Caption = 'run'
        TabOrder = 0
        OnClick = Button19Click
      end
    end
    object ReasonForReferralPage: TTabSheet
      Caption = 'ReasonForReferralPage'
      ImageIndex = 10
      TabVisible = False
      object Label115: TLabel
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
      object Label116: TLabel
        Left = 175
        Top = 43
        Width = 86
        Height = 13
        Caption = 'new episode Date'
        Visible = False
      end
      object Label117: TLabel
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
      object Label118: TLabel
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
      object Label119: TLabel
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
      object Label120: TLabel
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
      object Label121: TLabel
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
      object Shape21: TShape
        Left = 33
        Top = 76
        Width = 632
        Height = 305
        Pen.Color = 3513907
      end
      object Shape22: TShape
        Left = 33
        Top = 45
        Width = 632
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label122: TLabel
        Left = 51
        Top = 51
        Width = 136
        Height = 19
        Caption = 'Reason of referral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSuspectedCataractDesc: TLabel
        Left = 92
        Top = 133
        Width = 153
        Height = 19
        Caption = 'Suspected cataract:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSuspectedCataractValue: TLabel
        Left = 381
        Top = 133
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSuspectedVMTDesc: TLabel
        Left = 92
        Top = 158
        Width = 124
        Height = 19
        Caption = 'Suspected VMT:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSuspectedVMTValue: TLabel
        Left = 380
        Top = 158
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSuspectedWetAMDDesc: TLabel
        Left = 92
        Top = 183
        Width = 158
        Height = 19
        Caption = 'Suspected wet AMD:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSuspectedWetAMDValue: TLabel
        Left = 380
        Top = 183
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSuspectedMHDesc: TLabel
        Left = 92
        Top = 208
        Width = 117
        Height = 19
        Caption = 'Suspected MH:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblUnknownCauseDesc: TLabel
        Left = 92
        Top = 233
        Width = 283
        Height = 19
        Caption = 'Vision symptoms of unknown cause:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblOtherReasonDesc: TLabel
        Left = 92
        Top = 258
        Width = 48
        Height = 19
        Caption = 'Other:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSuspectedMHValue: TLabel
        Left = 380
        Top = 208
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblUnknownCauseValue: TLabel
        Left = 380
        Top = 233
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblOtherReasonValue: TLabel
        Left = 381
        Top = 258
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button21: TButton
        Left = 720
        Top = 50
        Width = 75
        Height = 25
        Caption = 'run'
        TabOrder = 0
        OnClick = Button21Click
      end
    end
    object AffectedEyePage: TTabSheet
      Caption = 'AffectedEyePage'
      ImageIndex = 11
      TabVisible = False
      object Label123: TLabel
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
      object Label124: TLabel
        Left = 175
        Top = 43
        Width = 86
        Height = 13
        Caption = 'new episode Date'
        Visible = False
      end
      object Label125: TLabel
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
      object Label126: TLabel
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
      object Label127: TLabel
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
      object Label128: TLabel
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
      object Label129: TLabel
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
      object Shape23: TShape
        Left = 33
        Top = 76
        Width = 632
        Height = 305
        Pen.Color = 3513907
      end
      object Shape24: TShape
        Left = 33
        Top = 45
        Width = 632
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label130: TLabel
        Left = 51
        Top = 51
        Width = 94
        Height = 19
        Caption = 'Affected eye'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblBothEyeDesc: TLabel
        Left = 92
        Top = 133
        Width = 43
        Height = 19
        Caption = 'Both:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblBothEyeValue: TLabel
        Left = 370
        Top = 133
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblODDesc: TLabel
        Left = 92
        Top = 158
        Width = 97
        Height = 19
        Caption = 'Affected OD:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblODValue: TLabel
        Left = 370
        Top = 158
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblOSDesc: TLabel
        Left = 92
        Top = 183
        Width = 96
        Height = 19
        Caption = 'Affected OS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblOSvalue: TLabel
        Left = 370
        Top = 183
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button23: TButton
        Left = 720
        Top = 50
        Width = 75
        Height = 25
        Caption = 'run'
        TabOrder = 0
        OnClick = Button23Click
      end
    end
    object ComorbiditiesPercentagePage: TTabSheet
      ImageIndex = 12
      TabVisible = False
      object Label131: TLabel
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
      object Label132: TLabel
        Left = 175
        Top = 43
        Width = 86
        Height = 13
        Caption = 'new episode Date'
        Visible = False
      end
      object Label133: TLabel
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
      object Label134: TLabel
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
      object Label135: TLabel
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
      object Label136: TLabel
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
      object Label137: TLabel
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
      object Shape25: TShape
        Left = 33
        Top = 76
        Width = 632
        Height = 437
        Pen.Color = 3513907
      end
      object Shape26: TShape
        Left = 33
        Top = 45
        Width = 632
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label138: TLabel
        Left = 51
        Top = 51
        Width = 197
        Height = 19
        Caption = 'Comorbidities percentage'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblComorbiditiesPercVitreomacularAdhesionDesc: TLabel
        Left = 92
        Top = 133
        Width = 188
        Height = 19
        Caption = 'Vitreomacular Adhesion:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblComorbiditiesPercVitreomacularAdhesionValue: TLabel
        Left = 367
        Top = 133
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblComorbiditiesPercVitreomacularTractionDesc: TLabel
        Left = 92
        Top = 158
        Width = 178
        Height = 19
        Caption = 'Vitreomacular Traction:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblComorbiditiesPercVitreomacularTractionValue: TLabel
        Left = 367
        Top = 158
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblComorbiditiesPercMacularHoleWithVMTDesc: TLabel
        Left = 92
        Top = 183
        Width = 179
        Height = 19
        Caption = 'Macular Hole With VMT:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblComorbiditiesPercMacularHoleWithVMTValue: TLabel
        Left = 367
        Top = 183
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblComorbiditiesPercMacularHoleWithoutVMTDesc: TLabel
        Left = 92
        Top = 208
        Width = 204
        Height = 19
        Caption = 'Macular Hole Without VMT:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblComorbiditiesPercWetAMDDesc: TLabel
        Left = 92
        Top = 233
        Width = 74
        Height = 19
        Caption = 'Wet AMD:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblComorbiditiesPercDryAMDDesc: TLabel
        Left = 92
        Top = 258
        Width = 72
        Height = 19
        Caption = 'Dry AMD:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblComorbiditiesPercMacularHoleWithoutVMTValue: TLabel
        Left = 367
        Top = 208
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblComorbiditiesPercWetAMDValue: TLabel
        Left = 367
        Top = 233
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblComorbiditiesPercDryAMDValue: TLabel
        Left = 367
        Top = 258
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label152: TLabel
        Left = 153
        Top = 365
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
      object Label153: TLabel
        Left = 153
        Top = 390
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
      object Label154: TLabel
        Left = 153
        Top = 415
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
      object lblComorbiditiesPercDMEDesc: TLabel
        Left = 92
        Top = 283
        Width = 42
        Height = 19
        Caption = 'DME:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblComorbiditiesPercDMEValue: TLabel
        Left = 367
        Top = 283
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblComorbiditiesPercProliferativeDiabeticRetinopathyDesc: TLabel
        Left = 92
        Top = 308
        Width = 260
        Height = 19
        Caption = 'Proliferative Diabetic Retinopathy:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblComorbiditiesPercProliferativeDiabeticRetinopathyValue: TLabel
        Left = 367
        Top = 308
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblComorbiditiesPercCataractDesc: TLabel
        Left = 92
        Top = 333
        Width = 70
        Height = 19
        Caption = 'Cataract:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblComorbiditiesPercCataractValue: TLabel
        Left = 367
        Top = 333
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblComorbiditiesPercRetinalVeinOcclusionDesc: TLabel
        Left = 92
        Top = 358
        Width = 177
        Height = 19
        Caption = 'Retinal Vein Occlusion:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblComorbiditiesPercRetinalDetachmentDesc: TLabel
        Left = 92
        Top = 383
        Width = 155
        Height = 19
        Caption = 'Retinal Detachment:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblComorbiditiesPercHighMyopiaDesc: TLabel
        Left = 92
        Top = 408
        Width = 101
        Height = 19
        Caption = 'High Myopia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblComorbiditiesPercRetinalVeinOcclusionValue: TLabel
        Left = 367
        Top = 358
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblComorbiditiesPercRetinalDetachmentValue: TLabel
        Left = 367
        Top = 383
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblComorbiditiesPercHighMyopiaValue: TLabel
        Left = 367
        Top = 408
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label167: TLabel
        Left = 153
        Top = 440
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
      object Label168: TLabel
        Left = 153
        Top = 465
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
      object lblComorbiditiesPercOtherDesc: TLabel
        Left = 92
        Top = 433
        Width = 48
        Height = 19
        Caption = 'Other:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblComorbiditiesPercNotRelevantDesc: TLabel
        Left = 92
        Top = 458
        Width = 104
        Height = 19
        Caption = 'Not Relevant:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblComorbiditiesPercOtherValue: TLabel
        Left = 367
        Top = 433
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblComorbiditiesPercNotRelevantValue: TLabel
        Left = 367
        Top = 458
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button25: TButton
        Left = 720
        Top = 50
        Width = 75
        Height = 25
        Caption = 'run'
        TabOrder = 0
        OnClick = Button25Click
      end
    end
    object OcularSymptomsPercentagePage: TTabSheet
      Caption = 'OcularSymptomsPercentagePage'
      ImageIndex = 13
      TabVisible = False
      object Shape27: TShape
        Left = 33
        Top = 76
        Width = 632
        Height = 369
        Pen.Color = 3513907
      end
      object Shape28: TShape
        Left = 33
        Top = 45
        Width = 632
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object lblSymptomsNotRelevantValue: TLabel
        Left = 379
        Top = 358
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSymptomsNotRelevantDesc: TLabel
        Left = 92
        Top = 358
        Width = 182
        Height = 19
        Caption = 'SymptomsNotRelevant:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSymptomsOtherValue: TLabel
        Left = 379
        Top = 333
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSymptomsOtherDesc: TLabel
        Left = 92
        Top = 333
        Width = 130
        Height = 19
        Caption = 'SymptomsOther:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSymptomsVisualReductionValue: TLabel
        Left = 379
        Top = 308
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSymptomsVisualReductionDesc: TLabel
        Left = 92
        Top = 308
        Width = 214
        Height = 19
        Caption = 'SymptomsVisualReduction:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSymptomsBlurredVisionValue: TLabel
        Left = 379
        Top = 283
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSymptomsBlurredVisionDesc: TLabel
        Left = 92
        Top = 283
        Width = 193
        Height = 19
        Caption = 'SymptomsBlurredVision:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSymptomsDifficultyReadingAtNightValue: TLabel
        Left = 379
        Top = 258
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSymptomsCentralBlackImageValue: TLabel
        Left = 379
        Top = 233
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSymptomsObjectsAppearSmallerValue: TLabel
        Left = 379
        Top = 208
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSymptomsDifficultyReadingAtNightDesc: TLabel
        Left = 92
        Top = 258
        Width = 276
        Height = 19
        Caption = 'SymptomsDifficultyReadingAtNight:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSymptomsCentralBlackImageDesc: TLabel
        Left = 92
        Top = 233
        Width = 232
        Height = 19
        Caption = 'SymptomsCentralBlackImage:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSymptomsObjectsAppearSmallerDesc: TLabel
        Left = 92
        Top = 208
        Width = 258
        Height = 19
        Caption = 'SymptomsObjectsAppearSmaller:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSymptomsDistortedVisionValue: TLabel
        Left = 379
        Top = 183
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSymptomsDistortedVisionDesc: TLabel
        Left = 92
        Top = 183
        Width = 206
        Height = 19
        Caption = 'SymptomsDistortedVision:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSymptomsFlashesOfLightValue: TLabel
        Left = 379
        Top = 158
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSymptomsFlashesOfLightDesc: TLabel
        Left = 92
        Top = 158
        Width = 204
        Height = 19
        Caption = 'SymptomsFlashesOfLight:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSymptomsFloatersValue: TLabel
        Left = 379
        Top = 133
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSymptomsFloatersDesc: TLabel
        Left = 92
        Top = 133
        Width = 150
        Height = 19
        Caption = 'SymptomsFloaters:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object O: TLabel
        Left = 51
        Top = 51
        Width = 134
        Height = 19
        Caption = 'Ocular symptoms'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button27: TButton
        Left = 720
        Top = 50
        Width = 75
        Height = 25
        Caption = 'run'
        TabOrder = 0
        OnClick = Button27Click
      end
    end
    object PreviousInterventionFrequencyPage: TTabSheet
      Caption = 'PreviousInterventionFrequencyPage'
      ImageIndex = 14
      TabVisible = False
      object Shape30: TShape
        Left = 33
        Top = 76
        Width = 632
        Height = 369
        Pen.Color = 3513907
      end
      object lblPrevTreatPeripheralLaserPhotocoagulationDesc: TLabel
        Left = 92
        Top = 233
        Width = 336
        Height = 19
        Caption = 'PrevTreatPeripheralLaserPhotocoagulation:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPrevTreatMacularLaserPhotocoagulationDesc: TLabel
        Left = 92
        Top = 208
        Width = 318
        Height = 19
        Caption = 'PrevTreatMacularLaserPhotocoagulation:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Shape29: TShape
        Left = 33
        Top = 45
        Width = 632
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object lblPrevTreatOtherIntravitrealInjectionValue: TLabel
        Left = 444
        Top = 358
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPrevTreatOtherIntravitrealInjectionDesc: TLabel
        Left = 92
        Top = 358
        Width = 266
        Height = 19
        Caption = 'PrevTreatOtherIntravitrealInjection:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPrevTreatIntravitrealSteroidImplantValue: TLabel
        Left = 444
        Top = 333
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPrevTreatIntravitrealSteroidImplantDesc: TLabel
        Left = 92
        Top = 333
        Width = 270
        Height = 19
        Caption = 'PrevTreatIntravitrealSteroidImplant:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPrevTreatIntravitrealSteroidLiquidValue: TLabel
        Left = 444
        Top = 308
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPrevTreatIntravitrealSteroidLiquidDesc: TLabel
        Left = 92
        Top = 308
        Width = 262
        Height = 19
        Caption = 'PrevTreatIntravitrealSteroidLiquid:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPrevTreatIntravitrealAntiVEGFValue: TLabel
        Left = 444
        Top = 283
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPrevTreatIntravitrealAntiVEGFDesc: TLabel
        Left = 92
        Top = 283
        Width = 233
        Height = 19
        Caption = 'PrevTreatIntravitrealAntiVEGF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPrevTreatOtherSurgeryValue: TLabel
        Left = 444
        Top = 258
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPrevTreatPeripheralLaserPhotocoagulationValue: TLabel
        Left = 444
        Top = 233
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPrevTreatMacularLaserPhotocoagulationValue: TLabel
        Left = 444
        Top = 208
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPrevTreatOtherSurgeryDesc: TLabel
        Left = 92
        Top = 258
        Width = 182
        Height = 19
        Caption = 'PrevTreatOtherSurgery:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPrevTreatVitrectomyValue: TLabel
        Left = 444
        Top = 183
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPrevTreatVitrectomyDesc: TLabel
        Left = 92
        Top = 183
        Width = 161
        Height = 19
        Caption = 'PrevTreatVitrectomy:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPrevTreatGlaucomaFiltrationSurgeryValue: TLabel
        Left = 444
        Top = 158
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPrevTreatGlaucomaFiltrationSurgeryDesc: TLabel
        Left = 92
        Top = 158
        Width = 284
        Height = 19
        Caption = 'PrevTreatGlaucomaFiltrationSurgery:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPrevTreatCataractSurgeryValue: TLabel
        Left = 444
        Top = 133
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPrevTreatCataractSurgeryDesc: TLabel
        Left = 92
        Top = 133
        Width = 204
        Height = 19
        Caption = 'PrevTreatCataractSurgery:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label163: TLabel
        Left = 51
        Top = 51
        Width = 134
        Height = 19
        Caption = 'Ocular symptoms'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPrevTreatNotRelevantDesc: TLabel
        Left = 92
        Top = 383
        Width = 173
        Height = 19
        Caption = 'PrevTreatNotRelevant:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPrevTreatNotRelevantValue: TLabel
        Left = 444
        Top = 383
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button29: TButton
        Left = 720
        Top = 50
        Width = 75
        Height = 25
        Caption = 'run'
        TabOrder = 0
        OnClick = Button29Click
      end
    end
    object MeanIOPPage: TTabSheet
      Caption = 'MeanIOPPage'
      ImageIndex = 15
      TabVisible = False
      object Label32: TLabel
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
      object Label33: TLabel
        Left = 175
        Top = 43
        Width = 86
        Height = 13
        Caption = 'new episode Date'
        Visible = False
      end
      object Label34: TLabel
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
      object Label35: TLabel
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
      object Label36: TLabel
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
      object Label37: TLabel
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
      object Label47: TLabel
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
      object Shape31: TShape
        Left = 33
        Top = 76
        Width = 632
        Height = 305
        Pen.Color = 3513907
      end
      object Shape32: TShape
        Left = 33
        Top = 45
        Width = 632
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label49: TLabel
        Left = 51
        Top = 51
        Width = 324
        Height = 19
        Caption = 'Mean Intraocular Pressure (IOP) - over time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button31: TButton
        Left = 720
        Top = 50
        Width = 75
        Height = 25
        Caption = 'run'
        TabOrder = 0
        OnClick = Button31Click
      end
    end
    object MeanChangeIOPPage: TTabSheet
      Caption = 'MeanChangeIOPPage'
      ImageIndex = 16
      TabVisible = False
      object Label51: TLabel
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
      object Label60: TLabel
        Left = 175
        Top = 43
        Width = 86
        Height = 13
        Caption = 'new episode Date'
        Visible = False
      end
      object Label61: TLabel
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
      object Label62: TLabel
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
      object Label63: TLabel
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
      object Label64: TLabel
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
      object Label65: TLabel
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
      object Shape33: TShape
        Left = 33
        Top = 76
        Width = 632
        Height = 305
        Pen.Color = 3513907
      end
      object Shape34: TShape
        Left = 33
        Top = 45
        Width = 632
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label74: TLabel
        Left = 46
        Top = 51
        Width = 526
        Height = 19
        Caption = 
          'Mean change in intraocular pressure IOP from initial visit to di' +
          'scharge'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblMeanChangeIOPWWDesc: TLabel
        Left = 92
        Top = 133
        Width = 226
        Height = 19
        Caption = 'Grouped by Watchful Waiting:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblMeanChangeIOPWWValue: TLabel
        Left = 443
        Top = 133
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblMeanChangeIOPSurgeryDesc: TLabel
        Left = 92
        Top = 158
        Width = 161
        Height = 19
        Caption = 'Grouped by Surgery:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblMeanChangeIOPSurgeryValue: TLabel
        Left = 443
        Top = 158
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblMeanChangeIOPInjectionDesc: TLabel
        Left = 92
        Top = 183
        Width = 340
        Height = 19
        Caption = 'Grouped byOcriplasmin intravitreal injection:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblMeanChangeIOPInjectionValue: TLabel
        Left = 443
        Top = 183
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button34: TButton
        Left = 720
        Top = 49
        Width = 75
        Height = 25
        Caption = 'run'
        TabOrder = 0
        OnClick = Button34Click
      end
    end
    object MeanVisualAcuityDistancePage: TTabSheet
      Caption = 'MeanVisualAcuityDistancePage'
      ImageIndex = 17
      TabVisible = False
      object Label75: TLabel
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
      object Label76: TLabel
        Left = 175
        Top = 43
        Width = 86
        Height = 13
        Caption = 'new episode Date'
        Visible = False
      end
      object Label77: TLabel
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
      object Label78: TLabel
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
      object Label79: TLabel
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
      object Label139: TLabel
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
      object Label141: TLabel
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
      object Shape35: TShape
        Left = 33
        Top = 76
        Width = 632
        Height = 305
        Pen.Color = 3513907
      end
      object Shape36: TShape
        Left = 33
        Top = 45
        Width = 632
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label142: TLabel
        Left = 51
        Top = 51
        Width = 297
        Height = 19
        Caption = 'Mean Visual Acuity Distance - over time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button35: TButton
        Left = 720
        Top = 50
        Width = 75
        Height = 25
        Caption = 'run'
        TabOrder = 0
        OnClick = Button35Click
      end
    end
    object MeanChangeVisualAcuityDistancePage: TTabSheet
      Caption = 'MeanChangeVisualAcuityDistancePage'
      ImageIndex = 18
      TabVisible = False
      object Label148: TLabel
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
      object Label149: TLabel
        Left = 175
        Top = 43
        Width = 86
        Height = 13
        Caption = 'new episode Date'
        Visible = False
      end
      object Label150: TLabel
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
      object Label151: TLabel
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
      object Label155: TLabel
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
      object Label156: TLabel
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
      object Label157: TLabel
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
      object Shape37: TShape
        Left = 33
        Top = 76
        Width = 632
        Height = 305
        Pen.Color = 3513907
      end
      object Shape38: TShape
        Left = 33
        Top = 45
        Width = 632
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label158: TLabel
        Left = 46
        Top = 51
        Width = 510
        Height = 19
        Caption = 
          'Mean change in Visual Acuity Distance from initial visit to disc' +
          'harge'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblMeanChangeVisualAcuityDistanceWWDesc: TLabel
        Left = 92
        Top = 133
        Width = 226
        Height = 19
        Caption = 'Grouped by Watchful Waiting:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblMeanChangeVisualAcuityDistanceWWValue: TLabel
        Left = 443
        Top = 133
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblMeanChangeVisualAcuityDistanceSurgeryDesc: TLabel
        Left = 92
        Top = 158
        Width = 161
        Height = 19
        Caption = 'Grouped by Surgery:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblMeanChangeVisualAcuityDistanceSurgeryValue: TLabel
        Left = 443
        Top = 158
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblMeanChangeVisualAcuityDistanceInjectionDesc: TLabel
        Left = 92
        Top = 183
        Width = 340
        Height = 19
        Caption = 'Grouped byOcriplasmin intravitreal injection:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblMeanChangeVisualAcuityDistanceInjectionValue: TLabel
        Left = 443
        Top = 183
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button36: TButton
        Left = 720
        Top = 49
        Width = 75
        Height = 25
        Caption = 'run'
        TabOrder = 0
        OnClick = Button36Click
      end
    end
    object MeanVisualAcuityNearPage: TTabSheet
      Caption = 'MeanVisualAcuityNearPage'
      ImageIndex = 19
      TabVisible = False
      object Label159: TLabel
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
      object Label160: TLabel
        Left = 175
        Top = 43
        Width = 86
        Height = 13
        Caption = 'new episode Date'
        Visible = False
      end
      object Label161: TLabel
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
      object Label162: TLabel
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
      object Label171: TLabel
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
      object Label172: TLabel
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
      object Label173: TLabel
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
      object Shape39: TShape
        Left = 33
        Top = 76
        Width = 632
        Height = 305
        Pen.Color = 3513907
      end
      object Shape40: TShape
        Left = 33
        Top = 45
        Width = 632
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label174: TLabel
        Left = 51
        Top = 51
        Width = 266
        Height = 19
        Caption = 'Mean Visual Acuity Near - over time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button39: TButton
        Left = 720
        Top = 50
        Width = 75
        Height = 25
        Caption = 'run'
        TabOrder = 0
        OnClick = Button39Click
      end
    end
    object MeanChangeVisualAcuityNearPage: TTabSheet
      Caption = 'MeanChangeVisualAcuityNearPage'
      ImageIndex = 20
      TabVisible = False
      object Label175: TLabel
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
      object Label176: TLabel
        Left = 175
        Top = 43
        Width = 86
        Height = 13
        Caption = 'new episode Date'
        Visible = False
      end
      object Label177: TLabel
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
      object Label178: TLabel
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
      object Label179: TLabel
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
      object Label180: TLabel
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
      object Label181: TLabel
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
      object Shape41: TShape
        Left = 33
        Top = 76
        Width = 632
        Height = 305
        Pen.Color = 3513907
      end
      object Shape42: TShape
        Left = 33
        Top = 45
        Width = 632
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label182: TLabel
        Left = 46
        Top = 51
        Width = 479
        Height = 19
        Caption = 
          'Mean change in Visual Acuity Near from initial visit to discharg' +
          'e'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblMeanChangeVisualAcuityNearWWDesc: TLabel
        Left = 92
        Top = 133
        Width = 226
        Height = 19
        Caption = 'Grouped by Watchful Waiting:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblMeanChangeVisualAcuityNearWWValue: TLabel
        Left = 443
        Top = 133
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblMeanChangeVisualAcuityNearSurgeryDesc: TLabel
        Left = 92
        Top = 158
        Width = 161
        Height = 19
        Caption = 'Grouped by Surgery:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblMeanChangeVisualAcuityNearSurgeryValue: TLabel
        Left = 443
        Top = 158
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label187: TLabel
        Left = 92
        Top = 183
        Width = 340
        Height = 19
        Caption = 'Grouped byOcriplasmin intravitreal injection:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblMeanChangeVisualAcuityNearInjectionValue: TLabel
        Left = 443
        Top = 183
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button42: TButton
        Left = 720
        Top = 49
        Width = 75
        Height = 25
        Caption = 'run'
        TabOrder = 0
        OnClick = Button42Click
      end
    end
    object ProportionDistortionAndScotomarPage: TTabSheet
      Caption = 'ProportionDistortionAndScotomarPage'
      ImageIndex = 21
      TabVisible = False
      object Label183: TLabel
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
      object Label184: TLabel
        Left = 175
        Top = 43
        Width = 86
        Height = 13
        Caption = 'new episode Date'
        Visible = False
      end
      object Label185: TLabel
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
      object Label186: TLabel
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
      object Label188: TLabel
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
      object Label189: TLabel
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
      object Label190: TLabel
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
      object Shape43: TShape
        Left = 33
        Top = 76
        Width = 632
        Height = 305
        Pen.Color = 3513907
      end
      object Shape44: TShape
        Left = 33
        Top = 45
        Width = 632
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label191: TLabel
        Left = 51
        Top = 51
        Width = 217
        Height = 19
        Caption = 'Scotoma presence over time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button43: TButton
        Left = 720
        Top = 50
        Width = 75
        Height = 25
        Caption = 'run'
        TabOrder = 0
        OnClick = Button43Click
      end
    end
    object OCTPresencePage: TTabSheet
      Caption = 'OCTPresencePage'
      ImageIndex = 22
      TabVisible = False
      object Label192: TLabel
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
      object Label193: TLabel
        Left = 175
        Top = 43
        Width = 86
        Height = 13
        Caption = 'new episode Date'
        Visible = False
      end
      object Label194: TLabel
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
      object Label195: TLabel
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
      object Label196: TLabel
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
      object Label197: TLabel
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
      object Label198: TLabel
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
      object Shape45: TShape
        Left = 33
        Top = 76
        Width = 632
        Height = 305
        Pen.Color = 3513907
      end
      object Shape46: TShape
        Left = 33
        Top = 45
        Width = 632
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label199: TLabel
        Left = 51
        Top = 51
        Width = 183
        Height = 19
        Caption = 'OCT presence over time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button46: TButton
        Left = 720
        Top = 50
        Width = 75
        Height = 25
        Caption = 'run'
        TabOrder = 0
        OnClick = Button46Click
      end
    end
    object VitreomacularAdhesionPage: TTabSheet
      Caption = 'VitreomacularAdhesionPage'
      ImageIndex = 23
      TabVisible = False
      object Label200: TLabel
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
      object Label201: TLabel
        Left = 175
        Top = 43
        Width = 86
        Height = 13
        Caption = 'new episode Date'
        Visible = False
      end
      object Label202: TLabel
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
      object Label203: TLabel
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
      object Label204: TLabel
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
      object Label205: TLabel
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
      object Label206: TLabel
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
      object Shape47: TShape
        Left = 33
        Top = 76
        Width = 632
        Height = 305
        Pen.Color = 3513907
      end
      object Shape48: TShape
        Left = 33
        Top = 45
        Width = 632
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label207: TLabel
        Left = 51
        Top = 51
        Width = 266
        Height = 19
        Caption = 'Vitreomacular Adhesion (VMA) size'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button48: TButton
        Left = 720
        Top = 50
        Width = 75
        Height = 25
        Caption = 'run'
        TabOrder = 0
        OnClick = Button48Click
      end
    end
    object MeanMacularHoleSizePage: TTabSheet
      Caption = 'MeanMacularHoleSizePage'
      ImageIndex = 24
      TabVisible = False
      object Label208: TLabel
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
      object Label209: TLabel
        Left = 175
        Top = 43
        Width = 86
        Height = 13
        Caption = 'new episode Date'
        Visible = False
      end
      object Label210: TLabel
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
      object Label211: TLabel
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
      object Label212: TLabel
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
      object Label213: TLabel
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
      object Label214: TLabel
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
      object Shape49: TShape
        Left = 33
        Top = 76
        Width = 632
        Height = 305
        Pen.Color = 3513907
      end
      object Shape50: TShape
        Left = 33
        Top = 45
        Width = 632
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label215: TLabel
        Left = 51
        Top = 51
        Width = 228
        Height = 19
        Caption = 'Size of macular hole over time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button49: TButton
        Left = 720
        Top = 50
        Width = 75
        Height = 25
        Caption = 'run'
        TabOrder = 0
        OnClick = Button49Click
      end
    end
    object SecondaryCataractPresencePage: TTabSheet
      Caption = 'SecondaryCataractPresencePage'
      ImageIndex = 25
      TabVisible = False
      object Label216: TLabel
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
      object Label217: TLabel
        Left = 175
        Top = 43
        Width = 86
        Height = 13
        Caption = 'new episode Date'
        Visible = False
      end
      object Label218: TLabel
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
      object Label219: TLabel
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
      object Label220: TLabel
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
      object Label221: TLabel
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
      object Label222: TLabel
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
      object Shape51: TShape
        Left = 33
        Top = 76
        Width = 632
        Height = 305
        Pen.Color = 3513907
      end
      object Shape52: TShape
        Left = 33
        Top = 45
        Width = 632
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label223: TLabel
        Left = 51
        Top = 51
        Width = 258
        Height = 19
        Caption = 'Occurence of Secondary cataract '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button51: TButton
        Left = 720
        Top = 50
        Width = 75
        Height = 25
        Caption = 'run'
        TabOrder = 0
        OnClick = Button51Click
      end
    end
    object ProposedTreatmentByRationalePage: TTabSheet
      Caption = 'ProposedTreatmentByRationalePage'
      ImageIndex = 26
      TabVisible = False
      object Label88: TLabel
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
      object Label90: TLabel
        Left = 175
        Top = 43
        Width = 86
        Height = 13
        Caption = 'new episode Date'
        Visible = False
      end
      object Label91: TLabel
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
      object Label92: TLabel
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
      object Label93: TLabel
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
      object Label94: TLabel
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
      object Label224: TLabel
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
      object Shape53: TShape
        Left = 33
        Top = 76
        Width = 632
        Height = 305
        Pen.Color = 3513907
      end
      object Shape54: TShape
        Left = 33
        Top = 45
        Width = 632
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label225: TLabel
        Left = 51
        Top = 51
        Width = 248
        Height = 19
        Caption = 'Proposed Treatment by rationale'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPatientPercRationaleNotApplicableDesc: TLabel
        Left = 92
        Top = 133
        Width = 115
        Height = 19
        Caption = 'Not applicable:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPatientPercRationaleWWDesc: TLabel
        Left = 92
        Top = 158
        Width = 241
        Height = 19
        Caption = 'Watchful waiting / No treatment:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPatientPercRationaleSurgeryDesc: TLabel
        Left = 92
        Top = 183
        Width = 67
        Height = 19
        Caption = 'Surgery:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPatientPercRationaleInjectionDesc: TLabel
        Left = 92
        Top = 208
        Width = 250
        Height = 19
        Caption = 'Ocriplasmin intravitreal injection:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPatientPercRationaleOtherDesc: TLabel
        Left = 92
        Top = 233
        Width = 48
        Height = 19
        Caption = 'Other:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPatientPercRationaleOtherValue: TLabel
        Left = 354
        Top = 233
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPatientPercRationaleInjectionValue: TLabel
        Left = 354
        Top = 208
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPatientPercRationaleSurgeryValue: TLabel
        Left = 354
        Top = 183
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPatientPercRationaleWWValue: TLabel
        Left = 354
        Top = 158
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPatientPercRationaleNotApplicableValue: TLabel
        Left = 354
        Top = 133
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPatientPercRationaleDischargeDesc: TLabel
        Left = 92
        Top = 262
        Width = 84
        Height = 19
        Caption = 'Discharge:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblPatientPercRationaleDischargeValue: TLabel
        Left = 354
        Top = 262
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button55: TButton
        Left = 720
        Top = 50
        Width = 75
        Height = 25
        Caption = 'run'
        TabOrder = 0
        OnClick = Button55Click
      end
    end
    object ChangeToTreatmentPage: TTabSheet
      Caption = 'ChangeToTreatmentPage'
      ImageIndex = 27
      TabVisible = False
      object Label226: TLabel
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
      object Label227: TLabel
        Left = 175
        Top = 43
        Width = 86
        Height = 13
        Caption = 'new episode Date'
        Visible = False
      end
      object Label228: TLabel
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
      object Label229: TLabel
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
      object Label230: TLabel
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
      object Label231: TLabel
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
      object Label232: TLabel
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
      object Shape55: TShape
        Left = 33
        Top = 76
        Width = 632
        Height = 305
        Pen.Color = 3513907
      end
      object Shape56: TShape
        Left = 33
        Top = 45
        Width = 632
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label233: TLabel
        Left = 43
        Top = 51
        Width = 164
        Height = 19
        Caption = 'Changes to treatment'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSwitchDesc: TLabel
        Left = 92
        Top = 133
        Width = 58
        Height = 19
        Caption = 'Switch:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblSwitchValue: TLabel
        Left = 186
        Top = 133
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblNoSwitchDesc: TLabel
        Left = 92
        Top = 158
        Width = 82
        Height = 19
        Caption = 'No switch:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblNoSwitchValue: TLabel
        Left = 186
        Top = 158
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button56: TButton
        Left = 720
        Top = 50
        Width = 75
        Height = 25
        Caption = 'run'
        TabOrder = 0
        OnClick = Button56Click
      end
    end
    object MacularHoleStagePage: TTabSheet
      Caption = 'MacularHoleStagePage'
      ImageIndex = 27
      TabVisible = False
      object Label95: TLabel
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
      object Label96: TLabel
        Left = 175
        Top = 43
        Width = 86
        Height = 13
        Caption = 'new episode Date'
        Visible = False
      end
      object Label97: TLabel
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
      object Label98: TLabel
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
      object Label99: TLabel
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
      object Label100: TLabel
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
      object Label101: TLabel
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
      object Shape17: TShape
        Left = 33
        Top = 76
        Width = 632
        Height = 305
        Pen.Color = 3513907
      end
      object Shape18: TShape
        Left = 33
        Top = 45
        Width = 632
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label102: TLabel
        Left = 51
        Top = 51
        Width = 240
        Height = 19
        Caption = 'Macular hole stage at initial visit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblProportionOfPatientAtSTAGE1Desc: TLabel
        Left = 92
        Top = 133
        Width = 386
        Height = 19
        Caption = 'Proportion of patient with macular hole at STAGE1:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblProportionOfPatientAtSTAGE1Value: TLabel
        Left = 491
        Top = 133
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblProportionOfPatientAtSTAGE2Desc: TLabel
        Left = 92
        Top = 158
        Width = 380
        Height = 19
        Caption = 'Proportion of patient with macular hole at STAGE2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblProportionOfPatientAtSTAGE2Value: TLabel
        Left = 491
        Top = 158
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblProportionOfPatientAtSTAGE3Desc: TLabel
        Left = 92
        Top = 183
        Width = 380
        Height = 19
        Caption = 'Proportion of patient with macular hole at STAGE3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblProportionOfPatientAtSTAGE3Value: TLabel
        Left = 491
        Top = 183
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblProportionOfPatientAtSTAGE4Desc: TLabel
        Left = 92
        Top = 208
        Width = 380
        Height = 19
        Caption = 'Proportion of patient with macular hole at STAGE4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lblProportionOfPatientAtSTAGE4Value: TLabel
        Left = 491
        Top = 208
        Width = 9
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7368816
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button10: TButton
        Left = 720
        Top = 49
        Width = 75
        Height = 25
        Caption = 'run'
        TabOrder = 0
        OnClick = Button10Click
      end
    end
    object ProportionDistortionPage: TTabSheet
      Caption = 'ProportionDistortionPage'
      ImageIndex = 28
      TabVisible = False
      object Label103: TLabel
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
      object Label104: TLabel
        Left = 175
        Top = 43
        Width = 86
        Height = 13
        Caption = 'new episode Date'
        Visible = False
      end
      object Label107: TLabel
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
      object Label108: TLabel
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
      object Label234: TLabel
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
      object Label235: TLabel
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
      object Label236: TLabel
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
      object Shape57: TShape
        Left = 33
        Top = 76
        Width = 632
        Height = 305
        Pen.Color = 3513907
      end
      object Shape58: TShape
        Left = 33
        Top = 45
        Width = 632
        Height = 31
        Brush.Color = 3513907
        Pen.Color = 3513907
      end
      object Label237: TLabel
        Left = 51
        Top = 51
        Width = 224
        Height = 19
        Caption = 'Distortion presence over time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Button57: TButton
        Left = 720
        Top = 50
        Width = 75
        Height = 25
        Caption = 'run'
        TabOrder = 0
        OnClick = Button57Click
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 592
    Width = 948
    Height = 41
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
  end
end
