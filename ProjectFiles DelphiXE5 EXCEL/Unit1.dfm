object MainForm: TMainForm
  Left = 275
  Top = 102
  BorderStyle = bsNone
  ClientHeight = 770
  ClientWidth = 1016
  Color = clWhite
  Constraints.MinHeight = 768
  Constraints.MinWidth = 1016
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poPrintToFit
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 16
  object Notebook1: TNotebook
    Left = 0
    Top = 0
    Width = 1016
    Height = 770
    Align = alClient
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageIndex = 1
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object TPage
      Left = 0
      Top = 0
      Caption = 'Title'
      object flashTitle: TTransparentFlashPlayerControl
        Left = 0
        Top = 0
        Width = 1016
        Height = 770
        Align = alClient
        OnFSCommand = flashTitleFSCommand
        Movie = 
          '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
          'Setup Source Files DelphiXE5\SET\Animation\ALCON_HOME.swf'
        FrameNum = 0
        Playing = True
        Quality = 1
        ScaleMode = 2
        AlignMode = 0
        BackgroundColor = -1
        Loop = True
        WMode = 'Window'
        Menu = True
        Scale = 'ExactFit'
        DeviceFont = False
        EmbedMovie = False
        Quality2 = 'High'
        AllowFullscreen = False
        ExplicitLeft = 448
        ExplicitWidth = 1025
        ExplicitHeight = 761
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Model'
      object Panel5: TPanel
        Left = 601
        Top = 1
        Width = 401
        Height = 156
        BevelOuter = bvNone
        TabOrder = 0
        Visible = False
        object Image1: TImage
          Left = 0
          Top = 0
          Width = 400
          Height = 155
        end
        object Label3: TLabel
          Left = 16
          Top = 64
          Width = 201
          Height = 15
          AutoSize = False
          Caption = 'Label3'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 14
          Top = 12
          Width = 265
          Height = 15
          AutoSize = False
          Caption = 'Progress monitor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dxfProgressBar1: TProgressBar
          Left = 16
          Top = 116
          Width = 377
          Height = 16
          TabOrder = 0
        end
      end
      object MainFormBackGround: TPanel
        Left = 0
        Top = 0
        Width = 1016
        Height = 770
        Align = alClient
        BevelOuter = bvNone
        Caption = 'MainFormBackGround'
        Color = clWhite
        DoubleBuffered = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 1
        object EFlashButton1: TEFlashButton
          Left = 80
          Top = 376
          Width = 100
          Height = 100
          Movie = 
            '\\abacusint.local\data\Public\AIProjects\Templates\I.T\Setup Sou' +
            'rce Files\Template D2009 EXCEL\Template\Animation\MASTER_BTN.swf'
          FrameNum = -1
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
          MoviePath = 
            '\\abacusint.local\data\Public\AIProjects\Templates\I.T\Setup Sou' +
            'rce Files\Template D2009 EXCEL\Template\Animation\MASTER_BTN.swf'
        end
        object BottomMenu: TTransparentFlashPlayerControl
          Left = 0
          Top = 650
          Width = 1016
          Height = 120
          Align = alBottom
          OnFSCommand = BottomMenuFSCommand
          Movie = 
            '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
            'Setup Source Files DelphiXE5\SET\Animation\ALCON_MENU_BTM.swf'
          FrameNum = 0
          Playing = True
          Quality = 1
          ScaleMode = 2
          AlignMode = 0
          BackgroundColor = -1
          Loop = True
          WMode = 'Window'
          Menu = True
          Scale = 'ExactFit'
          DeviceFont = False
          EmbedMovie = False
          Quality2 = 'High'
          AllowFullscreen = False
          ExplicitTop = 651
        end
        object TopMenu: TTransparentFlashPlayerControl
          Left = 0
          Top = 0
          Width = 1016
          Height = 79
          Align = alTop
          OnFSCommand = TopMenuFSCommand
          Movie = 
            '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
            'Setup Source Files DelphiXE5\SET\Animation\ALCON_MENU_TOP.swf'
          FrameNum = 0
          Playing = True
          Quality = 1
          ScaleMode = 2
          AlignMode = 4
          BackgroundColor = -1
          Loop = True
          WMode = 'Window'
          SAlign = 'T'
          Menu = True
          Scale = 'ExactFit'
          DeviceFont = False
          EmbedMovie = False
          Quality2 = 'High'
          AllowFullscreen = False
        end
        object Panel4: TPanel
          Left = 104
          Top = 27
          Width = 329
          Height = 56
          BevelOuter = bvNone
          Color = 5361587
          ParentBackground = False
          TabOrder = 1
          Visible = False
          object Title: TLabel
            Left = 11
            Top = 3
            Width = 328
            Height = 45
            AutoSize = False
            Caption = 'Title'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Title2: TLabel
            Left = 69
            Top = 11
            Width = 328
            Height = 45
            AutoSize = False
            Caption = 'Title'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
        end
        object PageControl1: TPageControl
          Left = 0
          Top = 86
          Width = 1017
          Height = 559
          ActivePage = pg_Ini_Visit
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          OwnerDraw = True
          ParentFont = False
          Style = tsFlatButtons
          TabOrder = 0
          object PG_SECTION_SELECT: TTabSheet
            Caption = 'PG_SECTION_SELECT'
            ImageIndex = 2
            TabVisible = False
            object TFP_SECTION_SELECT: TTransparentFlashPlayerControl
              Left = 0
              Top = 0
              Width = 1009
              Height = 549
              Align = alClient
              OnFSCommand = TFP_SECTION_SELECTFSCommand
              OnFlashCall = TFP_SECTION_SELECTFlashCall
              OnClick = TFP_SECTION_SELECTClick
              OnDblClick = TFP_SECTION_SELECTDblClick
              Movie = 
                '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                'Setup Source Files DelphiXE5\SET\Animation\Cpanel.swf'
              FrameNum = 0
              Playing = False
              Quality = 1
              ScaleMode = 2
              AlignMode = 4
              BackgroundColor = -1
              Loop = True
              WMode = 'Transparent'
              SAlign = 'T'
              Menu = True
              Scale = 'ExactFit'
              DeviceFont = False
              EmbedMovie = False
              Quality2 = 'High'
              AllowFullscreen = False
              ExplicitTop = -3
              ExplicitHeight = 557
            end
            object TFP_REPORTING_CLICK_AREA: TTransparentFlashPlayerControl
              Left = 968
              Top = 28
              Width = 257
              Height = 233
              Visible = False
              OnClick = TFP_REPORTING_CLICK_AREAClick
              Movie = 
                '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                'Setup Source Files DelphiXE5\SET\Animation\ALC_MASK_FULL.swf'
              FrameNum = 0
              Playing = False
              Quality = 1
              ScaleMode = 2
              AlignMode = 5
              BackgroundColor = -1
              Loop = True
              WMode = 'Transparent'
              SAlign = 'LT'
              Menu = True
              Scale = 'ExactFit'
              DeviceFont = False
              EmbedMovie = False
              Quality2 = 'High'
              AllowFullscreen = False
            end
            object TFP_CENTRE_CLICK: TTransparentFlashPlayerControl
              Left = -184
              Top = 287
              Width = 226
              Height = 233
              Visible = False
              OnClick = TFP_CENTRE_CLICKClick
              Movie = 
                '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                'Setup Source Files DelphiXE5\SET\Animation\ALC_MASK_FULL.swf'
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
            object TFP_INPUT_CLICK: TTransparentFlashPlayerControl
              Left = 968
              Top = 267
              Width = 249
              Height = 233
              Visible = False
              OnClick = TFP_INPUT_CLICKClick
              Movie = 
                '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                'Setup Source Files DelphiXE5\SET\Animation\ALC_MASK_FULL.swf'
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
            object Button3: TButton
              Left = 120
              Top = 393
              Width = 75
              Height = 25
              Caption = 'Button2'
              TabOrder = 0
              Visible = False
              OnClick = Button3Click
            end
          end
          object pg_CentreDetails: TTabSheet
            Caption = 'pg_CentreDetails'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ImageIndex = 3
            ParentFont = False
            TabVisible = False
            object EFlashTable2: TEFlashTable
              Left = 363
              Top = 71
              Width = 282
              Height = 298
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
              rowNum = 3
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
            object Label140: TLabel
              Left = 375
              Top = 103
              Width = 105
              Height = 19
              Caption = 'Centre details'
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
            object Label1: TLabel
              Left = 395
              Top = 141
              Width = 250
              Height = 18
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
            object Label5: TLabel
              Left = 395
              Top = 222
              Width = 250
              Height = 18
              AutoSize = False
              Caption = 'Catchment area population size'
              FocusControl = DBEdit_Centre_Pop
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label2: TLabel
              Left = 395
              Top = 304
              Width = 250
              Height = 18
              AutoSize = False
              Caption = 'Number of OCT machines'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object lblCentreRequired3: TLabel
              Left = 599
              Top = 328
              Width = 7
              Height = 22
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 234
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              Visible = False
            end
            object lblCentreRequired2: TLabel
              Left = 599
              Top = 246
              Width = 7
              Height = 22
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 234
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              Visible = False
            end
            object lblCentreRequired1: TLabel
              Left = 599
              Top = 165
              Width = 7
              Height = 22
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 234
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              Visible = False
            end
            object button_Confirm_Centre: TFlashButtonEx
              Left = 420
              Top = 412
              Width = 225
              Height = 41
              OnClick = button_Confirm_CentreClick
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
              FlashVars = 'btnTxt=Confirm centre details'
              AllowFullscreen = False
              ButtonCaption = 'Confirm centre details'
              MoviePath = 
                '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
            end
            object lblCentreRequiredWarning: TLabel
              Left = 363
              Top = 375
              Width = 101
              Height = 16
              Caption = '* required fields'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 234
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              Visible = False
            end
            object DBComboBox_Centre_NearScaleID: TDBLookupComboBox
              Left = -951
              Top = 1598
              Width = 326
              Height = 26
              DataField = 'NearVisualAcuityScaleID'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'NearVisualAcuityScaleID'
              ListField = 'NearVisualAcuityScaleDesc'
              ParentFont = False
              TabOrder = 0
            end
            object DBComboBox_Centre_DistanceScaleID: TDBLookupComboBox
              Left = 393
              Top = 165
              Width = 200
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
              TabOrder = 1
            end
            object DBEdit_Centre_Pop: TDBEdit
              Left = 393
              Top = 246
              Width = 200
              Height = 26
              DataField = 'Population'
              DataSource = frmDBControls.ALC_DATASOURCE_CENTRES
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit_Centre_Machines: TDBEdit
              Left = 395
              Top = 328
              Width = 200
              Height = 26
              DataField = 'NumberOfOCTMachines'
              DataSource = frmDBControls.ALC_DATASOURCE_CENTRES
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object Button1: TButton
              Left = 375
              Top = 556
              Width = 75
              Height = 27
              Caption = 'Button1'
              TabOrder = 4
            end
          end
          object pg_Patient_Options: TTabSheet
            Caption = 'pg_Patient_Options'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ImageIndex = 4
            ParentFont = False
            TabVisible = False
            object Panel2: TPanel
              Left = 265
              Top = 159
              Width = 478
              Height = 239
              BevelOuter = bvNone
              Caption = 'panel_PatientOptions'
              Color = clWhite
              ParentBackground = False
              TabOrder = 0
              object EFlashTable3: TEFlashTable
                Left = 6
                Top = 8
                Width = 467
                Height = 225
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
              object Label144: TLabel
                Left = 23
                Top = 23
                Width = 121
                Height = 19
                AutoSize = False
                Caption = 'Patient options:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -16
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object btn_CreateNew: TFlashButtonEx
                Left = 79
                Top = 79
                Width = 314
                Height = 41
                OnClick = btn_CreateNewClick
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
                FlashVars = 'btnTxt=Create new patient record'
                AllowFullscreen = False
                ButtonCaption = 'Create new patient record'
                MoviePath = 
                  '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                  'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
              end
              object btn_Review: TFlashButtonEx
                Left = 79
                Top = 168
                Width = 314
                Height = 41
                OnClick = btn_ReviewClick
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
                FlashVars = 'btnTxt=Review previous patient records'
                AllowFullscreen = False
                ButtonCaption = 'Review previous patient records'
                MoviePath = 
                  '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                  'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
              end
            end
          end
          object pg_Previous_Patients_Overview: TTabSheet
            Caption = 'pg_Previous_Patients_Overview'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ImageIndex = 5
            ParentFont = False
            TabVisible = False
            object EFlashTable4: TEFlashTable
              Left = 214
              Top = 145
              Width = 580
              Height = 266
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
            object Label6: TLabel
              Left = 233
              Top = 161
              Width = 232
              Height = 19
              AutoSize = False
              Caption = 'Previously entered SET IDs'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label19: TLabel
              Left = 233
              Top = 423
              Width = 175
              Height = 18
              AutoSize = False
              Caption = 'Jump to record - SET ID'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 7368816
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object FlashButtonEx8: TFlashButtonEx
              Left = 472
              Top = 417
              Width = 42
              Height = 35
              OnClick = FlashButtonEx8Click
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
              FlashVars = 'btnTxt=Go'
              AllowFullscreen = False
              ButtonCaption = 'Go'
              MoviePath = 
                '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
            end
            object ScrollBox_previous_audits: TScrollBox
              Left = 225
              Top = 205
              Width = 558
              Height = 196
              BevelInner = bvNone
              BevelOuter = bvNone
              BorderStyle = bsNone
              Color = 14414563
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object editJumpTo: TEdit
              Left = 409
              Top = 422
              Width = 57
              Height = 24
              Alignment = taCenter
              NumbersOnly = True
              TabOrder = 1
              Text = '27'
            end
          end
          object pg_Patient_Details: TTabSheet
            Caption = 'pg_Patient_Details'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ImageIndex = 8
            ParentFont = False
            TabVisible = False
            object EFlashTable5: TEFlashTable
              Left = 319
              Top = 167
              Width = 371
              Height = 215
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
            object lab_PatientID: TLabel
              Left = 347
              Top = 184
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
            object Label13: TLabel
              Left = 365
              Top = 235
              Width = 123
              Height = 19
              AutoSize = False
              Caption = 'Gender'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object btn_Confirm_Patient: TFlashButtonEx
              Left = 465
              Top = 418
              Width = 225
              Height = 41
              OnClick = btn_Confirm_PatientClick
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
              FlashVars = 'btnTxt=Save patient details'
              AllowFullscreen = False
              ButtonCaption = 'Save patient details'
              MoviePath = 
                '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
            end
            object Label14: TLabel
              Left = 365
              Top = 321
              Width = 115
              Height = 23
              AutoSize = False
              Caption = 'Age (years)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object lblPatientRequiredWarning: TLabel
              Left = 319
              Top = 388
              Width = 101
              Height = 16
              Caption = '* required fields'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 234
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              Visible = False
            end
            object lblPatientRequired2: TLabel
              Left = 663
              Top = 342
              Width = 7
              Height = 22
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 234
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              Visible = False
            end
            object lblPatientRequired1: TLabel
              Left = 663
              Top = 255
              Width = 7
              Height = 22
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 234
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              Visible = False
            end
            object DBLookupComboBox_Patient_Gender: TDBLookupComboBox
              Left = 365
              Top = 255
              Width = 292
              Height = 26
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'genderID'
              ListField = 'gender'
              ListSource = frmDBControls.ALC_DS_GENDER
              ParentFont = False
              TabOrder = 0
            end
            object DBComboBox_Patient_Age: TDBLookupComboBox
              Left = 365
              Top = 342
              Width = 292
              Height = 26
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'ageID'
              ListField = 'ageRangeDesc'
              ListSource = frmDBControls.ALC_DS_AGE
              ParentFont = False
              TabOrder = 1
            end
          end
          object pg_Medical_History: TTabSheet
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ImageIndex = 9
            ParentFont = False
            TabVisible = False
            object EFlashTable17: TEFlashTable
              Left = 3
              Top = 39
              Width = 490
              Height = 143
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
              topBorderHeight = 45
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
            object FlashButtonEx3: TFlashButtonEx
              Left = 781
              Top = 470
              Width = 225
              Height = 41
              OnClick = FlashButtonEx3Click
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
              FlashVars = 'btnTxt=Save medical history'
              AllowFullscreen = False
              ButtonCaption = 'Save medical history'
              MoviePath = 
                '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
            end
            object Label156: TLabel
              Left = 23
              Top = 56
              Width = 164
              Height = 20
              AutoSize = False
              Caption = 'Medical history'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label60: TLabel
              Left = 23
              Top = 148
              Width = 138
              Height = 18
              AutoSize = False
              Caption = 'Reason for referral'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label61: TLabel
              Left = 23
              Top = 100
              Width = 176
              Height = 18
              AutoSize = False
              Caption = 'Source of initial referral'
              Color = 14414563
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object EFlashTable19: TEFlashTable
              Left = 516
              Top = 39
              Width = 490
              Height = 425
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
              topBorderHeight = 45
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
              rowNum = 10
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
            object Label105: TLabel
              Left = 536
              Top = 45
              Width = 362
              Height = 38
              AutoSize = False
              Caption = 
                'Ocular pathologies currently present or present in past 3 years ' +
                '(multiple selections allowed)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object Label66: TLabel
              Left = 887
              Top = 64
              Width = 52
              Height = 19
              Alignment = taCenter
              AutoSize = False
              Caption = 'OD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object Label67: TLabel
              Left = 945
              Top = 64
              Width = 41
              Height = 19
              Alignment = taCenter
              AutoSize = False
              Caption = 'OS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object Label72: TLabel
              Left = 536
              Top = 171
              Width = 350
              Height = 18
              AutoSize = False
              Caption = 'Wet AMD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label73: TLabel
              Left = 536
              Top = 133
              Width = 350
              Height = 18
              AutoSize = False
              Caption = 'Dry AMD'
              Color = 14414563
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label74: TLabel
              Left = 536
              Top = 246
              Width = 350
              Height = 18
              AutoSize = False
              Caption = 'DME'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label75: TLabel
              Left = 536
              Top = 284
              Width = 350
              Height = 18
              AutoSize = False
              Caption = 'Proliferative diabetic retinopathy'
              Color = 14414563
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label77: TLabel
              Left = 536
              Top = 208
              Width = 350
              Height = 18
              AutoSize = False
              Caption = 'Retinal vein occlusion'
              Color = 14414563
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object Label78: TLabel
              Left = 536
              Top = 360
              Width = 350
              Height = 18
              AutoSize = False
              Caption = 'Retinal detachment'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label80: TLabel
              Left = 536
              Top = 397
              Width = 350
              Height = 18
              AutoSize = False
              Caption = 'Other'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label81: TLabel
              Left = 536
              Top = 435
              Width = 350
              Height = 18
              AutoSize = False
              Caption = 'Not relevant'
              Color = 14414563
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object Label179: TLabel
              Left = 536
              Top = 322
              Width = 350
              Height = 18
              AutoSize = False
              Caption = 'Non-Proliferative diabetic retinopathy'
              Color = 14414563
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = True
            end
            object Label65: TLabel
              Left = 536
              Top = 95
              Width = 350
              Height = 18
              AutoSize = False
              Caption = 'Glaucoma'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object EFlashTable18: TEFlashTable
              Left = 3
              Top = 202
              Width = 490
              Height = 94
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
              topBorderHeight = 45
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
            object Label76: TLabel
              Left = 217
              Top = 217
              Width = 41
              Height = 19
              Alignment = taCenter
              AutoSize = False
              Caption = 'OD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object Label79: TLabel
              Left = 388
              Top = 217
              Width = 41
              Height = 19
              Alignment = taCenter
              AutoSize = False
              Caption = 'OS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object Label71: TLabel
              Left = 23
              Top = 263
              Width = 143
              Height = 18
              AutoSize = False
              Caption = 'Current lens status'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              WordWrap = True
            end
            object Label25: TLabel
              Left = 516
              Top = 470
              Width = 101
              Height = 16
              Caption = '* required fields'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 234
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              Visible = False
            end
            object Label50: TLabel
              Left = 471
              Top = 97
              Width = 7
              Height = 22
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 234
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              Visible = False
            end
            object Label17: TLabel
              Left = 471
              Top = 145
              Width = 7
              Height = 22
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 234
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              Visible = False
            end
            object Label104: TLabel
              Left = 932
              Top = 62
              Width = 19
              Height = 22
              AutoSize = False
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 234
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              Visible = False
            end
            object Label112: TLabel
              Left = 985
              Top = 62
              Width = 19
              Height = 22
              AutoSize = False
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 234
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              Visible = False
            end
            object DBLookupComboBox_Medical_ReasonForReferalID: TDBLookupComboBox
              Left = 200
              Top = 141
              Width = 265
              Height = 26
              DataField = 'ReasonForReferalID'
              DataSource = frmDBControls.ALC_DATASOURCE_MEDICAL
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'ReasonForReferalID'
              ListField = 'ReasonForReferalDesc'
              ListSource = frmDBControls.ALC_DS_MED_REF_REASON
              ParentFont = False
              TabOrder = 0
              OnCloseUp = DBLookupComboBox_Medical_ReasonForReferalIDCloseUp
            end
            object DBLookupComboBox_Medical_SourceOfReferalID: TDBLookupComboBox
              Left = 200
              Top = 96
              Width = 265
              Height = 26
              DataField = 'SourceOfReferalID'
              DataSource = frmDBControls.ALC_DATASOURCE_MEDICAL
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'SourceOfReferralID'
              ListField = 'SourceOfReferralDesc'
              ListSource = frmDBControls.ALC_DS_MED_REF_SOURCE
              ParentFont = False
              TabOrder = 1
              OnCloseUp = DBLookupComboBox_Medical_SourceOfReferalIDCloseUp
            end
            object DBCheckBox_Medical_WetAMD_OD: TDBCheckBox
              Tag = 2
              Left = 911
              Top = 173
              Width = 28
              Height = 17
              DataField = 'WetAMD_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_MEDICAL
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = DBCheckBox_Medical_WetAMD_ODClick
            end
            object DBCheckBox_Medical_WetAMD_OS: TDBCheckBox
              Tag = 3
              Left = 962
              Top = 173
              Width = 28
              Height = 17
              DataField = 'WetAMD_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_MEDICAL
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnClick = DBCheckBox_Medical_WetAMD_OSClick
            end
            object DBCheckBox_Medical_DryAMD_OD: TDBCheckBox
              Tag = 2
              Left = 911
              Top = 135
              Width = 28
              Height = 17
              Color = 14414563
              DataField = 'DryAMD_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_MEDICAL
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 4
              OnClick = DBCheckBox_Medical_DryAMD_ODClick
            end
            object DBCheckBox_Medical_DryAMD_OS: TDBCheckBox
              Tag = 3
              Left = 962
              Top = 135
              Width = 28
              Height = 17
              Color = 14414563
              DataField = 'DryAMD_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_MEDICAL
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 5
              OnClick = DBCheckBox_Medical_DryAMD_OSClick
            end
            object DBCheckBox_Medical_DME_OD: TDBCheckBox
              Tag = 2
              Left = 911
              Top = 248
              Width = 28
              Height = 17
              DataField = 'DME_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_MEDICAL
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              OnClick = DBCheckBox_Medical_DME_ODClick
            end
            object DBCheckBox_Medical_DME_OS: TDBCheckBox
              Tag = 3
              Left = 962
              Top = 248
              Width = 28
              Height = 17
              DataField = 'DME_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_MEDICAL
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              OnClick = DBCheckBox_Medical_DME_OSClick
            end
            object DBCheckBox_Medical_RetinalVeinOcclusion_OD: TDBCheckBox
              Tag = 2
              Left = 911
              Top = 210
              Width = 28
              Height = 17
              Color = 14414563
              DataField = 'RetinalVeinOcclusion_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_MEDICAL
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 8
              OnClick = DBCheckBox_Medical_RetinalVeinOcclusion_ODClick
            end
            object DBCheckBox_Medical_RetinalVeinOcclusion_OS: TDBCheckBox
              Tag = 3
              Left = 962
              Top = 210
              Width = 28
              Height = 17
              Color = 14414563
              DataField = 'RetinalVeinOcclusion_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_MEDICAL
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 9
              OnClick = DBCheckBox_Medical_RetinalVeinOcclusion_OSClick
            end
            object DBCheckBox_Medical_RetinalDetachment_OD: TDBCheckBox
              Tag = 2
              Left = 911
              Top = 362
              Width = 28
              Height = 17
              Color = 14414563
              DataField = 'RetinalDetachment_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_MEDICAL
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 10
              OnClick = DBCheckBox_Medical_RetinalDetachment_ODClick
            end
            object DBCheckBox_Medical_RetinalDetachment_OS: TDBCheckBox
              Tag = 3
              Left = 962
              Top = 362
              Width = 28
              Height = 17
              Color = 14414563
              DataField = 'RetinalDetachment_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_MEDICAL
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 11
              OnClick = DBCheckBox_Medical_RetinalDetachment_OSClick
            end
            object DBCheckBox_Medical_Other_OD: TDBCheckBox
              Tag = 2
              Left = 911
              Top = 399
              Width = 28
              Height = 17
              Color = clWhite
              DataField = 'Other_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_MEDICAL
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 12
              OnClick = DBCheckBox_Medical_Other_ODClick
            end
            object DBCheckBox_Medical_Other_OS: TDBCheckBox
              Tag = 3
              Left = 962
              Top = 399
              Width = 28
              Height = 17
              Color = clWhite
              DataField = 'Other_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_MEDICAL
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 13
              OnClick = DBCheckBox_Medical_Other_OSClick
            end
            object DBCheckBox_Medical_NotRelevant_OD: TDBCheckBox
              Tag = 2
              Left = 911
              Top = 437
              Width = 28
              Height = 17
              Color = 14414563
              DataField = 'NotRelevant_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_MEDICAL
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 14
              OnClick = DBCheckBox_Medical_NotRelevant_ODClick
            end
            object DBCheckBox_Medical_NotRelevant_OS: TDBCheckBox
              Tag = 3
              Left = 962
              Top = 437
              Width = 28
              Height = 17
              Color = 14414563
              DataField = 'NotRelevant_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_MEDICAL
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 15
              OnClick = DBCheckBox_Medical_NotRelevant_OSClick
            end
            object DBCheckBox1: TDBCheckBox
              Tag = 2
              Left = 911
              Top = 324
              Width = 28
              Height = 17
              DataField = 'Non-ProliferativeDiabeticRetinopathy_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_MEDICAL
              TabOrder = 16
              OnClick = DBCheckBox1Click
            end
            object DBCheckBox5: TDBCheckBox
              Tag = 3
              Left = 962
              Top = 324
              Width = 28
              Height = 17
              DataField = 'Non-ProliferativeDiabeticRetinopathy_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_MEDICAL
              TabOrder = 17
              OnClick = DBCheckBox5Click
            end
            object DBCheckBox6: TDBCheckBox
              Tag = 2
              Left = 911
              Top = 286
              Width = 28
              Height = 17
              Color = 14414563
              DataField = 'ProliferativeDiabeticRetinopathy_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_MEDICAL
              ParentColor = False
              TabOrder = 18
              OnClick = DBCheckBox6Click
            end
            object DBCheckBox7: TDBCheckBox
              Tag = 3
              Left = 962
              Top = 286
              Width = 28
              Height = 17
              Color = 14414563
              DataField = 'ProliferativeDiabeticRetinopathy_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_MEDICAL
              ParentColor = False
              TabOrder = 19
              OnClick = DBCheckBox7Click
            end
            object DBCheckBox_Medical_Glaucoma_OD: TDBCheckBox
              Tag = 2
              Left = 911
              Top = 97
              Width = 28
              Height = 17
              DataField = 'Glaucoma_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_MEDICAL
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 20
              OnClick = DBCheckBox_Medical_Glaucoma_ODClick
            end
            object DBCheckBox_Medical_Glaucoma_OS: TDBCheckBox
              Tag = 3
              Left = 962
              Top = 97
              Width = 28
              Height = 17
              DataField = 'Glaucoma_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_MEDICAL
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 21
              OnClick = DBCheckBox_Medical_Glaucoma_OSClick
            end
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 167
              Top = 259
              Width = 153
              Height = 26
              DataField = 'CurrentLensStatus_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_MEDICAL
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'LensStatusID'
              ListField = 'LensStatusDescription'
              ListSource = frmDBControls.ALC_DS_CURRENT_LENS_STATUS
              ParentFont = False
              TabOrder = 22
            end
            object DBLookupComboBox2: TDBLookupComboBox
              Left = 326
              Top = 259
              Width = 153
              Height = 26
              DataField = 'CurrentLensStatus_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_MEDICAL
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'LensStatusID'
              ListField = 'LensStatusDescription'
              ListSource = frmDBControls.ALC_DS_CURRENT_LENS_STATUS
              ParentFont = False
              TabOrder = 23
            end
          end
          object pg_Ini_Visit: TTabSheet
            Caption = 'pg_Ini_Visit'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ImageIndex = 10
            ParentFont = False
            TabVisible = False
            object FlashButtonEx4: TFlashButtonEx
              Left = 809
              Top = 493
              Width = 197
              Height = 41
              OnClick = FlashButtonEx4Click
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
              FlashVars = 'btnTxt=Save visit details'
              AllowFullscreen = False
              ButtonCaption = 'Save visit details'
              MoviePath = 
                '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
            end
            object EFlashTable20: TEFlashTable
              Left = 14
              Top = 26
              Width = 475
              Height = 461
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
              topBorderHeight = 45
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
              rowNum = 10
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
              markersColor = 8388863
              showDrawTableCounter = False
              reportDrawTable = False
            end
            object EFlashTable21: TEFlashTable
              Left = 518
              Top = 26
              Width = 475
              Height = 420
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
              topBorderHeight = 45
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
              rowNum = 9
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
              markersColor = 8388863
              showDrawTableCounter = False
              reportDrawTable = False
            end
            object Label83: TLabel
              Left = 38
              Top = 31
              Width = 235
              Height = 19
              AutoSize = False
              Caption = 'Ocular symptoms present'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label108: TLabel
              Left = 410
              Top = 50
              Width = 14
              Height = 17
              Alignment = taCenter
              AutoSize = False
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 234
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label84: TLabel
              Left = 38
              Top = 208
              Width = 275
              Height = 18
              AutoSize = False
              Caption = 'Floaters'
              Color = 14414563
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label85: TLabel
              Left = 38
              Top = 249
              Width = 275
              Height = 18
              AutoSize = False
              Caption = 'Flashes of light'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label86: TLabel
              Left = 38
              Top = 167
              Width = 275
              Height = 18
              AutoSize = False
              Caption = 'Objects appear smaller'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label89: TLabel
              Left = 38
              Top = 291
              Width = 275
              Height = 18
              AutoSize = False
              Caption = 'Difficulty reading at night'
              Color = 14414563
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label90: TLabel
              Left = 38
              Top = 125
              Width = 275
              Height = 18
              AutoSize = False
              Caption = 'Blurred vision'
              Color = 14414563
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label91: TLabel
              Left = 38
              Top = 374
              Width = 275
              Height = 18
              AutoSize = False
              Caption = 'Visual reduction'
              Color = 14414563
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label92: TLabel
              Left = 38
              Top = 456
              Width = 275
              Height = 18
              AutoSize = False
              Caption = 'Not relevant'
              Color = 14414563
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label93: TLabel
              Left = 38
              Top = 415
              Width = 275
              Height = 18
              AutoSize = False
              Caption = 'Other'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label94: TLabel
              Left = 538
              Top = 84
              Width = 275
              Height = 18
              AutoSize = False
              Caption = 'Cataract surgery'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label95: TLabel
              Left = 538
              Top = 125
              Width = 275
              Height = 18
              AutoSize = False
              Caption = 'Glaucoma filtration surgery'
              Color = 14414563
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label96: TLabel
              Left = 538
              Top = 374
              Width = 275
              Height = 18
              AutoSize = False
              Caption = 'Vitrectomy in the fellow eye'
              Color = 14414563
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label97: TLabel
              Left = 538
              Top = 208
              Width = 275
              Height = 18
              AutoSize = False
              Caption = 'Macular laser photocoagulation'
              Color = 14414563
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label100: TLabel
              Left = 538
              Top = 167
              Width = 275
              Height = 18
              AutoSize = False
              Caption = 'Other surgery'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label101: TLabel
              Left = 538
              Top = 291
              Width = 275
              Height = 18
              AutoSize = False
              Caption = 'Intravitreal anti-VEGF'
              Color = 14414563
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label110: TLabel
              Left = 538
              Top = 332
              Width = 275
              Height = 18
              AutoSize = False
              Caption = 'Intravitreal steroid (liquid/implant)'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label115: TLabel
              Left = 538
              Top = 31
              Width = 349
              Height = 38
              Caption = 
                'Previous treatment received in the last 5 years (multiple select' +
                'ions allowed)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object Label117: TLabel
              Left = 38
              Top = 47
              Width = 218
              Height = 19
              AutoSize = False
              Caption = '(multiple selections allowed)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label118: TLabel
              Left = 922
              Top = 50
              Width = 15
              Height = 17
              Alignment = taCenter
              AutoSize = False
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 234
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label119: TLabel
              Left = 977
              Top = 50
              Width = 15
              Height = 17
              Alignment = taCenter
              AutoSize = False
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 234
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label121: TLabel
              Left = 886
              Top = 49
              Width = 41
              Height = 19
              Alignment = taCenter
              AutoSize = False
              Caption = 'OD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object Label122: TLabel
              Left = 942
              Top = 49
              Width = 41
              Height = 19
              Alignment = taCenter
              AutoSize = False
              Caption = 'OS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object Label123: TLabel
              Left = 376
              Top = 49
              Width = 41
              Height = 19
              Alignment = taCenter
              AutoSize = False
              Caption = 'OD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object Label125: TLabel
              Left = 434
              Top = 49
              Width = 41
              Height = 19
              Alignment = taCenter
              AutoSize = False
              Caption = 'OS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object Label114: TLabel
              Left = 538
              Top = 415
              Width = 275
              Height = 18
              AutoSize = False
              Caption = 'Not relevant'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label102: TLabel
              Left = 38
              Top = 84
              Width = 275
              Height = 18
              AutoSize = False
              Caption = 'Metamorphopsia / Distorted Vision*'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label68: TLabel
              Left = 38
              Top = 332
              Width = 275
              Height = 18
              AutoSize = False
              Caption = 'Scotoma / Central black image'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label69: TLabel
              Left = 538
              Top = 249
              Width = 275
              Height = 18
              AutoSize = False
              Caption = 'Peripheral laser photocoagulation'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label70: TLabel
              Left = 14
              Top = 493
              Width = 475
              Height = 44
              AutoSize = False
              Caption = 
                '*Distorted vision may include any of the following, Amsler grid ' +
                'abnormality, patient reports seeing wavy lines or stretched imag' +
                'es'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              Visible = False
              WordWrap = True
            end
            object Label82: TLabel
              Left = 518
              Top = 457
              Width = 101
              Height = 16
              Caption = '* required fields'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 234
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              Visible = False
            end
            object Label54: TLabel
              Left = 470
              Top = 47
              Width = 7
              Height = 22
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 234
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              Visible = False
            end
            object Metamorphopsia_OS: TDBCheckBox
              Tag = 2
              Left = 450
              Top = 85
              Width = 12
              Height = 17
              DataField = 'SymptomsMetamorphopsia_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 17
              OnClick = Metamorphopsia_OSClick
            end
            object DBCheckBox_AnsIni_SymptomsFloaters_OD: TDBCheckBox
              Tag = 1
              Left = 389
              Top = 209
              Width = 35
              Height = 17
              Color = 14414563
              DataField = 'SymptomsFloaters_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
              OnClick = DBCheckBox_AnsIni_SymptomsFloaters_ODClick
            end
            object DBCheckBox_AnsIni_SymptomsFloaters_OS: TDBCheckBox
              Tag = 2
              Left = 450
              Top = 209
              Width = 35
              Height = 17
              Color = 14414563
              DataField = 'SymptomsFloaters_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 1
              OnClick = DBCheckBox_AnsIni_SymptomsFloaters_OSClick
            end
            object DBCheckBox_AnsIni_SymptomsFlashesOfLight_OD: TDBCheckBox
              Tag = 1
              Left = 389
              Top = 250
              Width = 35
              Height = 17
              Color = clWhite
              DataField = 'SymptomsFlashesOfLight_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 2
              OnClick = DBCheckBox_AnsIni_SymptomsFlashesOfLight_ODClick
            end
            object DBCheckBox_AnsIni_SymptomsFlashesOfLight_OS: TDBCheckBox
              Tag = 2
              Left = 450
              Top = 250
              Width = 35
              Height = 17
              Color = clWhite
              DataField = 'SymptomsFlashesOfLight_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 3
              OnClick = DBCheckBox_AnsIni_SymptomsFlashesOfLight_OSClick
            end
            object DBCheckBox_AnsIni_SymptomsObjectsAppearSmaller_OD: TDBCheckBox
              Tag = 1
              Left = 389
              Top = 168
              Width = 35
              Height = 17
              Color = clWhite
              DataField = 'SymptomsObjectsAppearSmaller_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 4
              OnClick = DBCheckBox_AnsIni_SymptomsObjectsAppearSmaller_ODClick
            end
            object DBCheckBox_AnsIni_SymptomsObjectsAppearSmaller_OS: TDBCheckBox
              Tag = 2
              Left = 450
              Top = 168
              Width = 35
              Height = 17
              Color = clWhite
              DataField = 'SymptomsObjectsAppearSmaller_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 5
              OnClick = DBCheckBox_AnsIni_SymptomsObjectsAppearSmaller_OSClick
            end
            object DBCheckBox_AnsIni_SymptomsDifficultyReadingAtNight_OD: TDBCheckBox
              Tag = 1
              Left = 389
              Top = 292
              Width = 35
              Height = 17
              Color = 14414563
              DataField = 'SymptomsDifficultyReadingAtNight_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 6
              OnClick = DBCheckBox_AnsIni_SymptomsDifficultyReadingAtNight_ODClick
            end
            object DBCheckBox_AnsIni_SymptomsDifficultyReadingAtNight_OS: TDBCheckBox
              Tag = 2
              Left = 450
              Top = 292
              Width = 35
              Height = 17
              Color = 14414563
              DataField = 'SymptomsDifficultyReadingAtNight_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 7
              OnClick = DBCheckBox_AnsIni_SymptomsDifficultyReadingAtNight_OSClick
            end
            object DBCheckBox_AnsIni_SymptomsBlurredVision_OD: TDBCheckBox
              Tag = 1
              Left = 389
              Top = 126
              Width = 35
              Height = 17
              Color = 14414563
              DataField = 'SymptomsBlurredVision_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 8
              OnClick = DBCheckBox_AnsIni_SymptomsBlurredVision_ODClick
            end
            object DBCheckBox_AnsIni_SymptomsBlurredVision_OS: TDBCheckBox
              Tag = 2
              Left = 450
              Top = 126
              Width = 35
              Height = 17
              Color = 14414563
              DataField = 'SymptomsBlurredVision_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 9
              OnClick = DBCheckBox_AnsIni_SymptomsBlurredVision_OSClick
            end
            object DBCheckBox_AnsIni_SymptomsVisualReduction_OD: TDBCheckBox
              Tag = 1
              Left = 389
              Top = 375
              Width = 35
              Height = 17
              Color = 14414563
              DataField = 'SymptomsVisualReduction_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 10
              OnClick = DBCheckBox_AnsIni_SymptomsVisualReduction_ODClick
            end
            object DBCheckBox_AnsIni_SymptomsVisualReduction_OS: TDBCheckBox
              Tag = 2
              Left = 450
              Top = 375
              Width = 35
              Height = 17
              Color = 14414563
              DataField = 'SymptomsVisualReduction_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 11
              OnClick = DBCheckBox_AnsIni_SymptomsVisualReduction_OSClick
            end
            object DBCheckBox_AnsIni_SymptomsOther_OD: TDBCheckBox
              Tag = 1
              Left = 389
              Top = 416
              Width = 35
              Height = 17
              DataField = 'SymptomsOther_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 12
              OnClick = DBCheckBox_AnsIni_SymptomsOther_ODClick
            end
            object DBCheckBox_AnsIni_SymptomsOther_OS: TDBCheckBox
              Tag = 2
              Left = 450
              Top = 416
              Width = 35
              Height = 17
              DataField = 'SymptomsOther_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 13
              OnClick = DBCheckBox_AnsIni_SymptomsOther_OSClick
            end
            object DBCheckBox_AnsIni_SymptomsNotRelevant_OD: TDBCheckBox
              Tag = 1
              Left = 389
              Top = 457
              Width = 35
              Height = 17
              Color = 14414563
              DataField = 'SymptomsNotRelevant_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 14
              OnClick = DBCheckBox_AnsIni_SymptomsNotRelevant_ODClick
            end
            object DBCheckBox_AnsIni_SymptomsNotRelevant_OS: TDBCheckBox
              Tag = 2
              Left = 450
              Top = 457
              Width = 35
              Height = 17
              Color = 14414563
              DataField = 'SymptomsNotRelevant_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 15
              OnClick = DBCheckBox_AnsIni_SymptomsNotRelevant_OSClick
            end
            object Metamorphopsia_OD: TDBCheckBox
              Tag = 1
              Left = 389
              Top = 85
              Width = 35
              Height = 17
              DataField = 'SymptomsMetamorphopsia_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 16
              OnClick = Metamorphopsia_ODClick
            end
            object Scotoma_OD: TDBCheckBox
              Tag = 1
              Left = 389
              Top = 333
              Width = 35
              Height = 17
              DataField = 'SymptomsScotoma_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 18
              OnClick = Scotoma_ODClick
            end
            object Scotoma_OS: TDBCheckBox
              Tag = 2
              Left = 450
              Top = 333
              Width = 35
              Height = 17
              DataField = 'SymptomsScotoma_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 19
            end
            object Cataract_surgery_OD: TDBCheckBox
              Tag = 3
              Left = 886
              Top = 85
              Width = 35
              Height = 17
              DataField = 'PrevTreatCataractSurgery_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 20
              OnClick = Cataract_surgery_ODClick
            end
            object Cataract_surgery_OS: TDBCheckBox
              Tag = 4
              Left = 942
              Top = 85
              Width = 35
              Height = 17
              DataField = 'PrevTreatCataractSurgery_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 21
              OnClick = Cataract_surgery_OSClick
            end
            object Glaucoma_filtration_surgery_OD: TDBCheckBox
              Tag = 3
              Left = 886
              Top = 126
              Width = 35
              Height = 17
              Color = 14414563
              DataField = 'PrevTreatGlaucomaFiltrationSurgery_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 22
              OnClick = Glaucoma_filtration_surgery_ODClick
            end
            object Glaucoma_filtration_surgery_OS: TDBCheckBox
              Tag = 4
              Left = 942
              Top = 126
              Width = 35
              Height = 17
              Color = 14414563
              DataField = 'PrevTreatGlaucomaFiltrationSurgery_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 23
              OnClick = Glaucoma_filtration_surgery_OSClick
            end
            object Other_surgery_OD: TDBCheckBox
              Tag = 3
              Left = 886
              Top = 168
              Width = 35
              Height = 17
              DataField = 'PrevTreatOtherSurgery_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 24
              OnClick = Other_surgery_ODClick
            end
            object Other_surgery_OS: TDBCheckBox
              Tag = 4
              Left = 942
              Top = 168
              Width = 35
              Height = 17
              DataField = 'PrevTreatOtherSurgery_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 25
              OnClick = Other_surgery_OSClick
            end
            object Macula_lase_photocoagulation_OD: TDBCheckBox
              Tag = 3
              Left = 886
              Top = 209
              Width = 35
              Height = 17
              Color = 14414563
              DataField = 'PrevTreatMacularLaserPhotocoagulation_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 26
              OnClick = Macula_lase_photocoagulation_ODClick
            end
            object Macula_lase_photocoagulation_OS: TDBCheckBox
              Tag = 4
              Left = 942
              Top = 209
              Width = 35
              Height = 17
              Color = 14414563
              DataField = 'PrevTreatMacularLaserPhotocoagulation_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 27
              OnClick = Macula_lase_photocoagulation_OSClick
            end
            object Peripheral_laser_photocoagulation_OD: TDBCheckBox
              Tag = 3
              Left = 886
              Top = 250
              Width = 35
              Height = 17
              DataField = 'PrevTreatPeripheralLaserPhotocoagulation_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 28
              OnClick = Peripheral_laser_photocoagulation_ODClick
            end
            object Peripheral_laser_photocoagulation_OS: TDBCheckBox
              Tag = 4
              Left = 942
              Top = 250
              Width = 35
              Height = 17
              DataField = 'PrevTreatPeripheralLaserPhotocoagulation_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 29
              OnClick = Peripheral_laser_photocoagulation_OSClick
            end
            object Intravitreal_anti_VEGF_OD: TDBCheckBox
              Tag = 3
              Left = 886
              Top = 286
              Width = 35
              Height = 17
              Color = 14414563
              DataField = 'PrevTreatIntravitrealAntiVEGF_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 30
              OnClick = Intravitreal_anti_VEGF_ODClick
            end
            object Intravitreal_anti_VEGF_OS: TDBCheckBox
              Tag = 4
              Left = 942
              Top = 286
              Width = 35
              Height = 17
              Color = 14414563
              DataField = 'PrevTreatIntravitrealAntiVEGF_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 31
              OnClick = Intravitreal_anti_VEGF_OSClick
            end
            object Intravitreal_steroid_liquid_implant_OD: TDBCheckBox
              Tag = 3
              Left = 886
              Top = 333
              Width = 35
              Height = 17
              DataField = 'PrevTreatIntravitrealSteroid_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 32
              OnClick = Intravitreal_steroid_liquid_implant_ODClick
            end
            object Intravitreal_steroid_liquid_implant_OS: TDBCheckBox
              Tag = 4
              Left = 942
              Top = 333
              Width = 35
              Height = 17
              DataField = 'PrevTreatIntravitrealSteroid_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 33
              OnClick = Intravitreal_steroid_liquid_implant_OSClick
            end
            object not_relevant_OD: TDBCheckBox
              Tag = 3
              Left = 886
              Top = 416
              Width = 35
              Height = 17
              Color = clWhite
              DataField = 'PrevTreatNotRelevant_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 34
              OnClick = not_relevant_ODClick
            end
            object not_relevant_OS: TDBCheckBox
              Tag = 4
              Left = 942
              Top = 416
              Width = 35
              Height = 17
              Color = clWhite
              DataField = 'PrevTreatNotRelevant_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 35
              OnClick = not_relevant_OSClick
            end
            object Vitrectomy_in_the_fellow_eye_OD: TDBCheckBox
              Tag = 3
              Left = 886
              Top = 375
              Width = 35
              Height = 17
              Color = 14414563
              DataField = 'PrevTreatVitrectomy_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 36
              OnClick = Vitrectomy_in_the_fellow_eye_ODClick
            end
            object Vitrectomy_in_the_fellow_eye_OS: TDBCheckBox
              Tag = 4
              Left = 942
              Top = 375
              Width = 35
              Height = 17
              Color = 14414563
              DataField = 'PrevTreatVitrectomy_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 37
              OnClick = Vitrectomy_in_the_fellow_eye_OSClick
            end
          end
          object pg_Ini_FollowUp_Visit: TTabSheet
            Caption = 'pg_Ini_FollowUp_Visit'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ImageIndex = 11
            ParentFont = False
            TabVisible = False
            object PageControl2: TPageControl
              Left = 7
              Top = -17
              Width = 997
              Height = 570
              ActivePage = pg_Ini_FollowUp_2
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Style = tsFlatButtons
              TabOrder = 0
              object pg_Ini_FollowUp_3: TTabSheet
                Caption = 'pg_Ini_FollowUp_3'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ImageIndex = 1
                ParentFont = False
                TabVisible = False
                object EFlashTable13: TEFlashTable
                  Left = 73
                  Top = 140
                  Width = 835
                  Height = 173
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
                  startColourAtRowOne = True
                  alternateRowColours = True
                  showAnchorCoordinates = False
                  markersColor = 8388863
                  showDrawTableCounter = False
                  reportDrawTable = False
                end
                object Label44: TLabel
                  Left = 100
                  Top = 154
                  Width = 173
                  Height = 19
                  AutoSize = False
                  Caption = 'Proposed Treatment'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
                object Label26: TLabel
                  Left = 412
                  Top = 154
                  Width = 158
                  Height = 19
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'OD'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
                object Label27: TLabel
                  Left = 682
                  Top = 154
                  Width = 158
                  Height = 19
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'OS'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
                object Label29: TLabel
                  Left = 100
                  Top = 212
                  Width = 83
                  Height = 18
                  AutoSize = False
                  Caption = 'Treatments'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 2960685
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                end
                object Label30: TLabel
                  Left = 100
                  Top = 270
                  Width = 196
                  Height = 18
                  AutoSize = False
                  Caption = 'Proposed treatment date'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 2960685
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                end
                object FlashButtonEx5: TFlashButtonEx
                  Left = 695
                  Top = 396
                  Width = 221
                  Height = 41
                  OnClick = FlashButtonEx5Click
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
                  FlashVars = 'btnTxt=Save visit details'
                  AllowFullscreen = False
                  ButtonCaption = 'Save visit details'
                  MoviePath = 
                    '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                    'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
                end
                object Label178: TLabel
                  Left = 73
                  Top = 84
                  Width = 834
                  Height = 26
                  AutoSize = False
                  Caption = 
                    'Please note: By setting the proposed treatment to discharge, thi' +
                    's record will be set to read-only'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 2960685
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                  Visible = False
                  WordWrap = True
                end
                object Label56: TLabel
                  Left = 82
                  Top = 356
                  Width = 101
                  Height = 16
                  Caption = '* required fields'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 33023
                  Font.Height = -13
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                  Visible = False
                end
                object Label57: TLabel
                  Left = 318
                  Top = 309
                  Width = 7
                  Height = 22
                  Caption = '*'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 33023
                  Font.Height = -19
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                  Visible = False
                end
                object Label58: TLabel
                  Left = 73
                  Top = 378
                  Width = 101
                  Height = 16
                  Caption = '* required fields'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 234
                  Font.Height = -13
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                  Visible = False
                end
                object Label59: TLabel
                  Left = 582
                  Top = 405
                  Width = 7
                  Height = 22
                  Caption = '*'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 234
                  Font.Height = -19
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                  Visible = False
                end
                object DateTimePicker5: TDateTimePicker
                  Left = 435
                  Top = 266
                  Width = 108
                  Height = 26
                  Date = 41549.612807314810000000
                  Time = 41549.612807314810000000
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  OnChange = DateTimePicker5Change
                end
                object DateTimePicker6: TDateTimePicker
                  Left = 710
                  Top = 266
                  Width = 107
                  Height = 26
                  Date = 41549.612807314810000000
                  Time = 41549.612807314810000000
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  OnChange = DateTimePicker6Change
                end
                object panel_Rationale_Holder: TPanel
                  Left = 73
                  Top = 308
                  Width = 835
                  Height = 66
                  BevelOuter = bvNone
                  Caption = 'panel_Rationale_Holder'
                  Color = clWhite
                  ParentBackground = False
                  TabOrder = 2
                  object EFlashTable14: TEFlashTable
                    Left = 0
                    Top = 0
                    Width = 835
                    Height = 66
                    Align = alClient
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
                    topBorderHeight = 0
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
                    startColourAtRowOne = True
                    alternateRowColours = True
                    showAnchorCoordinates = False
                    markersColor = 8388863
                    showDrawTableCounter = False
                    reportDrawTable = False
                    ExplicitLeft = -12
                    ExplicitTop = 32
                    ExplicitWidth = 765
                  end
                  object Label31: TLabel
                    Left = 27
                    Top = 24
                    Width = 246
                    Height = 18
                    AutoSize = False
                    Caption = 'Rationale for proposed treatment'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = 2960685
                    Font.Height = -16
                    Font.Name = 'Arial'
                    Font.Style = []
                    ParentFont = False
                    Transparent = True
                  end
                  object DBLookupComboBox7: TDBLookupComboBox
                    Left = 291
                    Top = 26
                    Width = 250
                    Height = 24
                    DataField = 'ProposedTreatmentRationaleID_OD'
                    DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
                    KeyField = 'ProposedTreatmentRationalDesc'
                    ListField = 'ProposedTreatmentRationalDesc'
                    ListSource = frmDBControls.ALC_DS_RATION_TREAT
                    TabOrder = 0
                    OnCloseUp = DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_ODCloseUp
                  end
                  object DBLookupComboBox8: TDBLookupComboBox
                    Left = 565
                    Top = 26
                    Width = 250
                    Height = 24
                    DataField = 'ProposedTreatmentRationaleID_OS'
                    DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
                    KeyField = 'ProposedTreatmentRationalDesc'
                    ListField = 'ProposedTreatmentRationalDesc'
                    ListSource = frmDBControls.ALC_DS_RATION_TREAT
                    TabOrder = 1
                    OnCloseUp = DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OSCloseUp
                  end
                end
                object DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OD: TDBLookupComboBox
                  Left = 364
                  Top = 212
                  Width = 250
                  Height = 24
                  DataField = 'ProposedTreatmentID_OD'
                  DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
                  KeyField = 'ProposedTreatmentID'
                  ListField = 'ProposedTreatmentDesc'
                  ListSource = frmDBControls.ALC_DS_PROPOSED_TREAT
                  TabOrder = 3
                  OnCloseUp = DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_ODCloseUp
                end
                object DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OS: TDBLookupComboBox
                  Left = 638
                  Top = 212
                  Width = 250
                  Height = 24
                  DataField = 'ProposedTreatmentID_OS'
                  DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
                  KeyField = 'ProposedTreatmentID'
                  ListField = 'ProposedTreatmentDesc'
                  ListSource = frmDBControls.ALC_DS_PROPOSED_TREAT
                  TabOrder = 4
                  OnCloseUp = DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OSCloseUp
                end
                object DBEdit_INI_FOLLOW_ProposedTreatmentDate_OS: TDBEdit
                  Left = 7
                  Top = 413
                  Width = 289
                  Height = 24
                  DataField = 'ProposedTreatmentDate_OS'
                  DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
                  TabOrder = 5
                  Visible = False
                end
                object DBEdit_INI_FOLLOW_ProposedTreatmentDate_OD: TDBEdit
                  Left = 7
                  Top = 466
                  Width = 289
                  Height = 24
                  DataField = 'ProposedTreatmentDate_OD'
                  DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
                  TabOrder = 6
                  Visible = False
                end
              end
              object pg_Ini_FollowUp_2: TTabSheet
                Caption = 'pg_Ini_FollowUp_32'
                DoubleBuffered = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ImageIndex = 2
                ParentDoubleBuffered = False
                ParentFont = False
                TabVisible = False
                object EFlashTable15: TEFlashTable
                  Left = 38
                  Top = 16
                  Width = 911
                  Height = 145
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
                  topBorderHeight = 35
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
                  rowNum = 3
                  headerGradientStartColour = 16246979
                  headerGradientEndColour = 16246979
                  gradientAngle = 0
                  alternateRowColour = 14414563
                  showDropShadow = False
                  showBevel = False
                  hideColsOverTobBorder = True
                  hiderowsOverlhBorder = False
                  headerGradient = True
                  startColourAtRowOne = True
                  alternateRowColours = True
                  showAnchorCoordinates = False
                  markersColor = 8388863
                  showDrawTableCounter = False
                  reportDrawTable = False
                end
                object Label116: TLabel
                  Left = 52
                  Top = 23
                  Width = 403
                  Height = 19
                  AutoSize = False
                  Caption = 'Ocular Coherence Tomography'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
                object Label157: TLabel
                  Left = 52
                  Top = 61
                  Width = 366
                  Height = 18
                  AutoSize = False
                  Caption = 'Vitreomacular traction  (VMT) present'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 2960685
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                  WordWrap = True
                end
                object EFlashTable16: TEFlashTable
                  Left = 38
                  Top = 177
                  Width = 911
                  Height = 112
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
                  topBorderHeight = 0
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
                  rowNum = 3
                  headerGradientStartColour = 16246979
                  headerGradientEndColour = 16246979
                  gradientAngle = 0
                  alternateRowColour = 14414563
                  showDropShadow = False
                  showBevel = False
                  hideColsOverTobBorder = True
                  hiderowsOverlhBorder = False
                  headerGradient = True
                  startColourAtRowOne = True
                  alternateRowColours = True
                  showAnchorCoordinates = False
                  markersColor = 8388863
                  showDrawTableCounter = False
                  reportDrawTable = False
                end
                object FlashButtonEx10: TFlashButtonEx
                  Left = 602
                  Top = 517
                  Width = 348
                  Height = 41
                  OnClick = FlashButtonEx10Click
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
                  FlashVars = 'btnTxt=Continue to proposed treatment'
                  AllowFullscreen = False
                  ButtonCaption = 'Continue to proposed treatment'
                  MoviePath = 
                    '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                    'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
                end
                object Label51: TLabel
                  Left = 553
                  Top = 23
                  Width = 188
                  Height = 19
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'OD'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
                object Label52: TLabel
                  Left = 747
                  Top = 23
                  Width = 197
                  Height = 19
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'OS'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
                object EFlashTable24: TEFlashTable
                  Left = 38
                  Top = 322
                  Width = 911
                  Height = 73
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
                  topBorderHeight = 35
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
                  startColourAtRowOne = True
                  alternateRowColours = True
                  showAnchorCoordinates = False
                  markersColor = 8388863
                  showDrawTableCounter = False
                  reportDrawTable = False
                end
                object EFlashTable26: TEFlashTable
                  Left = 38
                  Top = 434
                  Width = 911
                  Height = 73
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
                  topBorderHeight = 35
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
                  startColourAtRowOne = True
                  alternateRowColours = True
                  showAnchorCoordinates = False
                  markersColor = 8388863
                  showDrawTableCounter = False
                  reportDrawTable = False
                end
                object Label23: TLabel
                  Left = 52
                  Top = 97
                  Width = 366
                  Height = 18
                  AutoSize = False
                  Caption = 'Macular hole (MH) present'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 2960685
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                  WordWrap = True
                end
                object Label36: TLabel
                  Left = 52
                  Top = 133
                  Width = 366
                  Height = 18
                  AutoSize = False
                  Caption = 'Size of MH (if present) in microns'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 2960685
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                  WordWrap = True
                end
                object Label37: TLabel
                  Left = 52
                  Top = 187
                  Width = 366
                  Height = 18
                  AutoSize = False
                  Caption = 'Vitreomacular adhesion  (VMA) present'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 2960685
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                  WordWrap = True
                end
                object Label45: TLabel
                  Left = 52
                  Top = 224
                  Width = 366
                  Height = 18
                  AutoSize = False
                  Caption = 'Size of VMA (if present) in microns'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 2960685
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                  WordWrap = True
                end
                object Label46: TLabel
                  Left = 52
                  Top = 261
                  Width = 366
                  Height = 18
                  AutoSize = False
                  Caption = 'Epiretinal membrane present'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 2960685
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                  WordWrap = True
                end
                object Label47: TLabel
                  Left = 52
                  Top = 367
                  Width = 366
                  Height = 18
                  AutoSize = False
                  Caption = 'Scale - Snellen'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 2960685
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                  WordWrap = True
                end
                object Label48: TLabel
                  Left = 52
                  Top = 479
                  Width = 366
                  Height = 18
                  AutoSize = False
                  Caption = 'Previous occurance'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 2960685
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                  WordWrap = True
                end
                object Label32: TLabel
                  Left = 52
                  Top = 330
                  Width = 403
                  Height = 19
                  AutoSize = False
                  Caption = 'Best corrected visual acuity (distance)'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
                object Label33: TLabel
                  Left = 52
                  Top = 443
                  Width = 403
                  Height = 19
                  AutoSize = False
                  Caption = 'Previous occurance of VMT or MH'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                end
                object Label34: TLabel
                  Left = 546
                  Top = 367
                  Width = 22
                  Height = 18
                  Caption = '20/'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                  WordWrap = True
                end
                object Label49: TLabel
                  Left = 744
                  Top = 367
                  Width = 22
                  Height = 18
                  Caption = '20/'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                  WordWrap = True
                end
                object Label87: TLabel
                  Left = 38
                  Top = 513
                  Width = 101
                  Height = 16
                  Caption = '* required fields'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 234
                  Font.Height = -13
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                  Visible = False
                end
                object Label88: TLabel
                  Left = 402
                  Top = 219
                  Width = 7
                  Height = 22
                  Caption = '*'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 234
                  Font.Height = -19
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                  Visible = False
                end
                object DBCheckBox29: TDBCheckBox
                  Left = 639
                  Top = 62
                  Width = 17
                  Height = 17
                  Color = 14414563
                  DataField = 'OCTVMTPresent_OD'
                  DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
                  ParentColor = False
                  TabOrder = 0
                end
                object DBCheckBox30: TDBCheckBox
                  Left = 837
                  Top = 62
                  Width = 17
                  Height = 17
                  Color = 14414563
                  DataField = 'OCTVMTPresent_OS'
                  DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
                  ParentColor = False
                  TabOrder = 1
                end
                object DBCheckBox31: TDBCheckBox
                  Left = 639
                  Top = 98
                  Width = 17
                  Height = 17
                  DataField = 'OCTMacularHole_OD'
                  DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
                  TabOrder = 2
                end
                object DBCheckBox32: TDBCheckBox
                  Left = 837
                  Top = 98
                  Width = 17
                  Height = 17
                  DataField = 'OCTMacularHole_OS'
                  DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
                  TabOrder = 3
                end
                object DBEdit1: TDBEdit
                  Left = 565
                  Top = 130
                  Width = 164
                  Height = 24
                  DataField = 'OCTMacularHoleSize_OD'
                  DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
                  TabOrder = 4
                end
                object DBEdit2: TDBEdit
                  Left = 763
                  Top = 130
                  Width = 164
                  Height = 24
                  DataField = 'OCTMacularHoleSize_OS'
                  DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
                  TabOrder = 5
                end
                object DBCheckBox33: TDBCheckBox
                  Left = 639
                  Top = 188
                  Width = 17
                  Height = 17
                  Color = 14414563
                  DataField = 'OCTVitreomacularAdhesion_OD'
                  DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
                  ParentColor = False
                  TabOrder = 6
                end
                object DBCheckBox34: TDBCheckBox
                  Left = 837
                  Top = 188
                  Width = 17
                  Height = 17
                  Color = 14414563
                  DataField = 'OCTVitreomacularAdhesion_OS'
                  DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
                  ParentColor = False
                  TabOrder = 7
                end
                object DBEdit3: TDBEdit
                  Left = 565
                  Top = 221
                  Width = 164
                  Height = 24
                  DataField = 'OCTVMASize_OD'
                  DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
                  TabOrder = 8
                end
                object DBEdit4: TDBEdit
                  Left = 763
                  Top = 221
                  Width = 164
                  Height = 24
                  DataField = 'OCTVMASize_OS'
                  DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
                  TabOrder = 9
                end
                object DBCheckBox35: TDBCheckBox
                  Left = 639
                  Top = 262
                  Width = 17
                  Height = 17
                  Color = 14414563
                  DataField = 'OCTEpiretinalMembrane_OD'
                  DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
                  ParentColor = False
                  TabOrder = 10
                end
                object DBCheckBox36: TDBCheckBox
                  Left = 837
                  Top = 262
                  Width = 17
                  Height = 17
                  Color = 14414563
                  DataField = 'OCTEpiretinalMembrane_OS'
                  DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
                  ParentColor = False
                  TabOrder = 11
                end
                object DBLookupComboBox3: TDBLookupComboBox
                  Left = 574
                  Top = 363
                  Width = 147
                  Height = 26
                  DataField = 'VisualAcuityDistance_OD'
                  DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  KeyField = 'LogMar'
                  ListField = 'SnellenFeet_20'
                  ListSource = frmDBControls.ALC_DS_VISUAL_ACUITY_MATRIX
                  ParentFont = False
                  TabOrder = 12
                end
                object DBLookupComboBox4: TDBLookupComboBox
                  Left = 772
                  Top = 363
                  Width = 146
                  Height = 26
                  DataField = 'VisualAcuityDistance_OS'
                  DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  KeyField = 'SnellenMeter_6'
                  ListField = 'SnellenFeet_20'
                  ListSource = frmDBControls.ALC_DS_VISUAL_ACUITY_MATRIX
                  ParentFont = False
                  TabOrder = 13
                end
                object DBLookupComboBox5: TDBLookupComboBox
                  Left = 772
                  Top = 475
                  Width = 146
                  Height = 26
                  DataField = 'PreviousOccurance_OS'
                  DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  KeyField = 'PreviousOccuranceID'
                  ListField = 'PreviousOccuranceDescription'
                  ListSource = frmDBControls.ALC_DS_PREVIOUS_OCCURANCE
                  ParentFont = False
                  TabOrder = 14
                end
                object DBLookupComboBox6: TDBLookupComboBox
                  Left = 574
                  Top = 475
                  Width = 147
                  Height = 26
                  DataField = 'PreviousOccurance_OD'
                  DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  KeyField = 'PreviousOccuranceID'
                  ListField = 'PreviousOccuranceDescription'
                  ListSource = frmDBControls.ALC_DS_PREVIOUS_OCCURANCE
                  ParentFont = False
                  TabOrder = 15
                end
              end
            end
          end
          object pg_FollowUp_Visit: TTabSheet
            Caption = 'pg_FollowUp_Visit'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ImageIndex = 12
            ParentFont = False
            TabVisible = False
            object EFlashTable11: TEFlashTable
              Left = 46
              Top = 442
              Width = 911
              Height = 73
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
              topBorderHeight = 35
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
              startColourAtRowOne = True
              alternateRowColours = True
              showAnchorCoordinates = False
              markersColor = 8388863
              showDrawTableCounter = False
              reportDrawTable = False
            end
            object EFlashTable10: TEFlashTable
              Left = 46
              Top = 185
              Width = 911
              Height = 112
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
              topBorderHeight = 0
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
              rowNum = 3
              headerGradientStartColour = 16246979
              headerGradientEndColour = 16246979
              gradientAngle = 0
              alternateRowColour = 14414563
              showDropShadow = False
              showBevel = False
              hideColsOverTobBorder = True
              hiderowsOverlhBorder = False
              headerGradient = True
              startColourAtRowOne = True
              alternateRowColours = True
              showAnchorCoordinates = False
              markersColor = 8388863
              showDrawTableCounter = False
              reportDrawTable = False
            end
            object EFlashTable8: TEFlashTable
              Left = 46
              Top = 330
              Width = 911
              Height = 73
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
              topBorderHeight = 35
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
              startColourAtRowOne = True
              alternateRowColours = True
              showAnchorCoordinates = False
              markersColor = 8388863
              showDrawTableCounter = False
              reportDrawTable = False
            end
            object EFlashTable9: TEFlashTable
              Left = 46
              Top = 24
              Width = 911
              Height = 145
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
              topBorderHeight = 35
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
              rowNum = 3
              headerGradientStartColour = 16246979
              headerGradientEndColour = 16246979
              gradientAngle = 0
              alternateRowColour = 14414563
              showDropShadow = False
              showBevel = False
              hideColsOverTobBorder = True
              hiderowsOverlhBorder = False
              headerGradient = True
              startColourAtRowOne = True
              alternateRowColours = True
              showAnchorCoordinates = False
              markersColor = 8388863
              showDrawTableCounter = False
              reportDrawTable = False
            end
            object btn_followUp_Visit_Post: TFlashButtonEx
              Left = 755
              Top = 505
              Width = 209
              Height = 41
              OnClick = btn_followUp_Visit_PostClick
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
              FlashVars = 'btnTxt=Save visit details'
              AllowFullscreen = False
              ButtonCaption = 'Save visit details'
              MoviePath = 
                '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
            end
            object Label15: TLabel
              Left = 60
              Top = 31
              Width = 403
              Height = 19
              AutoSize = False
              Caption = 'Ocular Coherence Tomography'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label16: TLabel
              Left = 46
              Top = 521
              Width = 101
              Height = 16
              Caption = '* required fields'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 234
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              Visible = False
            end
            object Label18: TLabel
              Left = 60
              Top = 487
              Width = 366
              Height = 18
              AutoSize = False
              Caption = 'Previous occurance'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object Label20: TLabel
              Left = 60
              Top = 451
              Width = 403
              Height = 19
              AutoSize = False
              Caption = 'Previous occurance of VMT or MH'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label21: TLabel
              Left = 752
              Top = 375
              Width = 22
              Height = 18
              Caption = '20/'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object Label22: TLabel
              Left = 554
              Top = 375
              Width = 22
              Height = 18
              Caption = '20/'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object Label24: TLabel
              Left = 60
              Top = 375
              Width = 366
              Height = 18
              AutoSize = False
              Caption = 'Scale - Snellen'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object Label28: TLabel
              Left = 60
              Top = 338
              Width = 403
              Height = 19
              AutoSize = False
              Caption = 'Best corrected visual acuity (distance)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label35: TLabel
              Left = 60
              Top = 269
              Width = 366
              Height = 18
              AutoSize = False
              Caption = 'Epiretinal membrane present'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object Label38: TLabel
              Left = 60
              Top = 232
              Width = 366
              Height = 18
              AutoSize = False
              Caption = 'Size of VMA (if present) in microns'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object Label39: TLabel
              Left = 60
              Top = 195
              Width = 366
              Height = 18
              AutoSize = False
              Caption = 'Vitreomacular adhesion  (VMA) present'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object Label40: TLabel
              Left = 60
              Top = 141
              Width = 366
              Height = 18
              AutoSize = False
              Caption = 'Size of MH (if present) in microns'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object Label41: TLabel
              Left = 60
              Top = 105
              Width = 366
              Height = 18
              AutoSize = False
              Caption = 'Macular hole (MH) present'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object Label42: TLabel
              Left = 60
              Top = 69
              Width = 366
              Height = 18
              AutoSize = False
              Caption = 'Vitreomacular traction  (VMT) present'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
            end
            object Label43: TLabel
              Left = 755
              Top = 31
              Width = 197
              Height = 19
              Alignment = taCenter
              AutoSize = False
              Caption = 'OS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label53: TLabel
              Left = 561
              Top = 31
              Width = 188
              Height = 19
              Alignment = taCenter
              AutoSize = False
              Caption = 'OD'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object DBLookupComboBox9: TDBLookupComboBox
              Left = 780
              Top = 483
              Width = 146
              Height = 26
              DataField = 'PreviousOccurance_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'PreviousOccuranceID'
              ListField = 'PreviousOccuranceDescription'
              ListSource = frmDBControls.ALC_DS_PREVIOUS_OCCURANCE
              ParentFont = False
              TabOrder = 0
            end
            object DBLookupComboBox10: TDBLookupComboBox
              Left = 582
              Top = 483
              Width = 147
              Height = 26
              DataField = 'PreviousOccurance_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_ANSWERS_INI_VISIT
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'PreviousOccuranceID'
              ListField = 'PreviousOccuranceDescription'
              ListSource = frmDBControls.ALC_DS_PREVIOUS_OCCURANCE
              ParentFont = False
              TabOrder = 1
            end
            object DBLookupComboBox11: TDBLookupComboBox
              Left = 780
              Top = 371
              Width = 146
              Height = 26
              DataField = 'VisualAcuityDistance_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'SnellenMeter_6'
              ListField = 'SnellenFeet_20'
              ListSource = frmDBControls.ALC_DS_VISUAL_ACUITY_MATRIX
              ParentFont = False
              TabOrder = 2
            end
            object DBLookupComboBox12: TDBLookupComboBox
              Left = 582
              Top = 371
              Width = 147
              Height = 26
              DataField = 'VisualAcuityDistance_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'LogMar'
              ListField = 'SnellenFeet_20'
              ListSource = frmDBControls.ALC_DS_VISUAL_ACUITY_MATRIX
              ParentFont = False
              TabOrder = 3
            end
            object DBCheckBox37: TDBCheckBox
              Left = 845
              Top = 106
              Width = 17
              Height = 17
              DataField = 'OCTMacularHole_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
              TabOrder = 4
            end
            object DBCheckBox38: TDBCheckBox
              Left = 845
              Top = 70
              Width = 17
              Height = 17
              Color = 14414563
              DataField = 'OCTVMTPresent_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
              ParentColor = False
              TabOrder = 5
            end
            object DBCheckBox39: TDBCheckBox
              Left = 647
              Top = 70
              Width = 17
              Height = 17
              Color = 14414563
              DataField = 'OCTVMTPresent_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
              ParentColor = False
              TabOrder = 6
            end
            object DBCheckBox40: TDBCheckBox
              Left = 647
              Top = 106
              Width = 17
              Height = 17
              DataField = 'OCTMacularHole_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
              TabOrder = 7
            end
            object DBEdit5: TDBEdit
              Left = 573
              Top = 138
              Width = 164
              Height = 24
              DataField = 'OCTMacularHoleSize_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
              TabOrder = 8
            end
            object DBEdit6: TDBEdit
              Left = 771
              Top = 138
              Width = 164
              Height = 24
              DataField = 'OCTMacularHoleSize_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
              TabOrder = 9
            end
            object DBCheckBox41: TDBCheckBox
              Left = 845
              Top = 196
              Width = 17
              Height = 17
              Color = 14414563
              DataField = 'OCTVitreomacularAdhesion_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
              ParentColor = False
              TabOrder = 10
            end
            object DBCheckBox42: TDBCheckBox
              Left = 647
              Top = 196
              Width = 17
              Height = 17
              Color = 14414563
              DataField = 'OCTVitreomacularAdhesion_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
              ParentColor = False
              TabOrder = 11
            end
            object DBEdit7: TDBEdit
              Left = 573
              Top = 229
              Width = 164
              Height = 24
              DataField = 'OCTVMASize_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
              TabOrder = 12
            end
            object DBEdit8: TDBEdit
              Left = 771
              Top = 229
              Width = 164
              Height = 24
              DataField = 'OCTVMASize_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
              TabOrder = 13
            end
            object DBCheckBox43: TDBCheckBox
              Left = 845
              Top = 270
              Width = 17
              Height = 17
              Color = 14414563
              DataField = 'OCTEpiretinalMembrane_OS'
              DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
              ParentColor = False
              TabOrder = 14
            end
            object DBCheckBox44: TDBCheckBox
              Left = 647
              Top = 270
              Width = 17
              Height = 17
              Color = 14414563
              DataField = 'OCTEpiretinalMembrane_OD'
              DataSource = frmDBControls.ALC_DATASOURCE_INI_FOLLOWUP
              ParentColor = False
              TabOrder = 15
            end
          end
          object Poppage: TTabSheet
            Caption = 'Poppage'
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabVisible = False
            object EFlashTable25: TEFlashTable
              Left = 14
              Top = 167
              Width = 982
              Height = 131
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
              topBorderHeight = 40
              topBorderFill = 12099708
              topBorderStroke = 12099708
              topLeftCornerRadius = 0
              topRightCornerRadius = 0
              bottomRightCornerRadius = 0
              bottomLeftCornerRadius = 0
              lhColumnWidth = 0
              lhColumnFill = clWhite
              mainFill = clWhite
              colNum = 3
              rowNum = 1
              headerGradientStartColour = 16246979
              headerGradientEndColour = 16246979
              gradientAngle = 0
              alternateRowColour = clWhite
              showDropShadow = False
              showBevel = False
              hideColsOverTobBorder = True
              hiderowsOverlhBorder = False
              headerGradient = True
              startColourAtRowOne = False
              alternateRowColours = False
              showAnchorCoordinates = False
              markersColor = clBlack
              showDrawTableCounter = False
              reportDrawTable = False
            end
            object EFlashTable1: TEFlashTable
              Left = 142
              Top = 335
              Width = 696
              Height = 145
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
              alternateRowColour = clWhite
              showDropShadow = False
              showBevel = False
              hideColsOverTobBorder = True
              hiderowsOverlhBorder = False
              headerGradient = True
              startColourAtRowOne = False
              alternateRowColours = False
              showAnchorCoordinates = False
              markersColor = clBlack
              showDrawTableCounter = False
              reportDrawTable = False
            end
            object RefButton: TTransparentFlashPlayerControl
              Left = 918
              Top = 231
              Width = 20
              Height = 20
              Movie = 
                '\\abacusint.local\data\Public\AIProjects\Templates\I.T\Setup Sou' +
                'rce Files\Template D2009 EXCEL\Template\Animation\BTN_REF.swf'
              FrameNum = -1
              Playing = True
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
              AllowFullscreen = False
            end
            object InfoButton1: TTransparentFlashPlayerControl
              Tag = 1
              Left = 918
              Top = 263
              Width = 20
              Height = 20
              Movie = 
                '\\abacusint.local\data\Public\AIProjects\Templates\I.T\Setup Sou' +
                'rce Files\Template D2009 EXCEL\Template\Animation\BTN_Info.swf'
              FrameNum = -1
              Playing = True
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
              AllowFullscreen = False
            end
            object TransparentFlashPlayerControl1: TTransparentFlashPlayerControl
              Left = 926
              Top = 215
              Width = 20
              Height = 20
              Movie = 
                '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                'Setup Source Files DelphiXE5\SET\Animation\REF.swf'
              FrameNum = -1
              Playing = True
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
              AllowFullscreen = False
            end
            object TransparentFlashPlayerControl2: TTransparentFlashPlayerControl
              Tag = 1
              Left = 926
              Top = 239
              Width = 20
              Height = 20
              Movie = 
                '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                'Setup Source Files DelphiXE5\SET\Animation\BTN_Info.swf'
              FrameNum = -1
              Playing = True
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
              AllowFullscreen = False
            end
            object SpFormatLabel1: TSpFormatLabel
              Tag = 1
              Left = 158
              Top = 351
              Width = 339
              Height = 26
              AutoSize = False
              Caption = 'POPULATION SELECTED'
              Color = 8210219
              Font.Charset = ANSI_CHARSET
              Font.Color = 8210219
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = True
              WordWrap = True
              ActivateHighLighting = False
              highLightedColor = clBlue
              spEnabled = False
              recNo = 0
              sheetNo = 2
              colNo = 10
              rowNo = 2
              labelFormat = 'Spreadsheet'
              percentageFactor = False
              negativeColor = clBlack
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
            object lblUserPopName: TLabel
              Left = 158
              Top = 399
              Width = 117
              Height = 18
              Caption = 'Population name'
              Font.Charset = ANSI_CHARSET
              Font.Color = 8210219
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object lblUserPopSize: TLabel
              Left = 158
              Top = 447
              Width = 106
              Height = 18
              Caption = 'Population size'
              Font.Charset = ANSI_CHARSET
              Font.Color = 8210219
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object ESpLabel13: TESpLabel
              Tag = 1
              Left = 44
              Top = 181
              Width = 934
              Height = 19
              Alignment = taCenter
              AutoSize = False
              Caption = 
                'Use the dropdown boxes to select a population for Region, Health' +
                ' Authority / NHS Board or PCO / CHP'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              ActivateHighLighting = False
              highLightedColor = clBlue
              spEnabled = True
              recNo = 0
              sheetNo = 1
              colNo = 1
              rowNo = 1
              labelFormat = 'Spreadsheet'
              percentageFactor = False
              negativeColor = clBlack
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
            object lblSelectRegion: TESpLabel
              Tag = 2
              Left = 30
              Top = 223
              Width = 300
              Height = 19
              Alignment = taCenter
              AutoSize = False
              Caption = 'Select Region'
              Font.Charset = ANSI_CHARSET
              Font.Color = 6645093
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              ActivateHighLighting = False
              highLightedColor = clBlue
              spEnabled = True
              spComponent = DataModule2.Population
              recNo = 0
              sheetNo = 2
              colNo = 2
              rowNo = 2
              labelFormat = 'Spreadsheet'
              percentageFactor = False
              negativeColor = clBlack
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
            object lblSelectCBSHA: TESpLabel
              Tag = 2
              Left = 358
              Top = 223
              Width = 300
              Height = 19
              Alignment = taCenter
              AutoSize = False
              Caption = 'Select StHA'
              Font.Charset = ANSI_CHARSET
              Font.Color = 6645093
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              ActivateHighLighting = False
              highLightedColor = clBlue
              spEnabled = True
              spComponent = DataModule2.Population
              recNo = 0
              sheetNo = 2
              colNo = 6
              rowNo = 2
              labelFormat = 'Spreadsheet'
              percentageFactor = False
              negativeColor = clBlack
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
            object lblSelectCBPCT: TESpLabel
              Tag = 2
              Left = 678
              Top = 223
              Width = 300
              Height = 19
              Alignment = taCenter
              AutoSize = False
              Caption = 'Select PCO'
              Font.Charset = ANSI_CHARSET
              Font.Color = 6645093
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              ActivateHighLighting = False
              highLightedColor = clBlue
              spEnabled = True
              spComponent = DataModule2.Population
              recNo = 0
              sheetNo = 2
              colNo = 10
              rowNo = 2
              labelFormat = 'Spreadsheet'
              percentageFactor = False
              negativeColor = clBlack
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
            object EFlashButton2: TEFlashButton
              Left = 798
              Top = 347
              Width = 30
              Height = 30
              OnClick = EFlashButton2Click
              Movie = 
                '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
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
              FlashVars = 'btnTxt=+'
              AllowFullscreen = False
              ButtonCaption = '+'
              MoviePath = 
                '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
            end
            object TransparentFlashPlayerControl45: TTransparentFlashPlayerControl
              Left = 270
              Top = 447
              Width = 15
              Height = 15
              Movie = 
                '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                'Setup Source Files DelphiXE5\SET\Animation\BTN_REF.swf'
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
              AllowFullscreen = False
            end
            object editPopName: TESpEditStd
              Left = 294
              Top = 399
              Width = 524
              Height = 24
              Alignment = taLeftJustify
              Color = clWhite
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = 10773763
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              OnChange = editPopNameChange
              padding = 6
              Decimals = 0
              saveOpenBuilder = DataModule2.ESaveOpen1
              spComponent = DataModule2.DefaultSp
              sheetNo = 9
              colNo = 6
              rowNo = 10
              editFormat = 'Text'
              onChangeColor = clBlack
              onChangeFontColor = clBlack
              percentageFactor = False
              spEnabled = True
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
            object editPopSize: TESpEditStd
              Left = 294
              Top = 447
              Width = 524
              Height = 24
              Alignment = taLeftJustify
              Color = clWhite
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = 10773763
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              padding = 6
              Decimals = 0
              saveOpenBuilder = DataModule2.ESaveOpen1
              spComponent = DataModule2.DefaultSp
              sheetNo = 9
              colNo = 6
              rowNo = 11
              editFormat = '#,##0;-#,##0'
              onChangeColor = clBlack
              onChangeFontColor = clBlack
              percentageFactor = False
              spEnabled = True
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
            object SpCBSHA: TESpComboBox
              Left = 358
              Top = 255
              Width = 300
              Height = 26
              BevelEdges = []
              BevelInner = bvNone
              BevelKind = bkFlat
              BevelOuter = bvNone
              Style = csDropDownList
              BiDiMode = bdLeftToRight
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = 8210219
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
              OnChange = SpCBSHAChange
              spEnabled = True
              spComponent = DataModule2.Population
              sheetNo = 2
              firstCol = 7
              lastCol = 7
              firstRow = 58
              lastRow = 58
              targetSheetNo = 2
              targetCol = 6
              targetRow = 51
              selectedTextColor = clWhite
              selectedItemColor = 10773763
              textColor = 7282296
              itemColor = clWhite
              Tag2 = 0
              addBlankItem = False
              offSet = 0
              excludeFromSave = False
              enableSubSup = False
              BorderColor = 12366492
              ArrowColor = 8210219
              ButtonColor = 16246979
            end
            object SpCBPCT: TESpComboBox
              Left = 678
              Top = 255
              Width = 300
              Height = 26
              BevelEdges = []
              BevelInner = bvNone
              BevelKind = bkFlat
              BevelOuter = bvNone
              Style = csDropDownList
              BiDiMode = bdLeftToRight
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = 8210219
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 3
              OnChange = SpCBPCTChange
              spEnabled = True
              spComponent = DataModule2.Population
              sheetNo = 2
              firstCol = 12
              lastCol = 12
              firstRow = 58
              lastRow = 58
              targetSheetNo = 2
              targetCol = 11
              targetRow = 51
              selectedTextColor = clWhite
              selectedItemColor = 10773763
              textColor = 7282296
              itemColor = clWhite
              Tag2 = 0
              addBlankItem = False
              offSet = 0
              excludeFromSave = False
              enableSubSup = False
              BorderColor = 12366492
              ArrowColor = 8210219
              ButtonColor = 16246979
            end
            object SpCBRegions: TESpComboBox
              Left = 30
              Top = 255
              Width = 300
              Height = 26
              BevelEdges = []
              BevelInner = bvNone
              BevelKind = bkFlat
              BevelOuter = bvNone
              Style = csDropDownList
              BiDiMode = bdLeftToRight
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = 8210219
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 4
              OnChange = SpCBRegionsChange
              Items.Strings = (
                'uno'
                'due'
                'tre'
                'quattro')
              spEnabled = True
              spComponent = DataModule2.Population
              sheetNo = 2
              firstCol = 2
              lastCol = 2
              firstRow = 58
              lastRow = 62
              targetSheetNo = 2
              targetCol = 2
              targetRow = 51
              selectedTextColor = clWhite
              selectedItemColor = 10773763
              textColor = 7282296
              itemColor = clWhite
              Tag2 = 0
              addBlankItem = False
              offSet = 0
              excludeFromSave = False
              enableSubSup = False
              BorderColor = 12366492
              ArrowColor = 8210219
              ButtonColor = 16246979
            end
          end
          object SPPage: TTabSheet
            Caption = 'SPPage'
            ImageIndex = 1
            TabVisible = False
            object data: TMemo
              Left = 248
              Top = 310
              Width = 473
              Height = 177
              ScrollBars = ssBoth
              TabOrder = 0
            end
          end
          object pg_Discharge: TTabSheet
            Caption = 'pg_Discharge'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ImageIndex = 11
            ParentFont = False
            TabVisible = False
            object EFlashTable23: TEFlashTable
              Left = 259
              Top = 122
              Width = 582
              Height = 156
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
              topBorderHeight = 45
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
              rowNum = 3
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
            object FlashButtonEx7: TFlashButtonEx
              Left = 511
              Top = 399
              Width = 245
              Height = 41
              OnClick = FlashButtonEx7Click
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
              FlashVars = 'btnTxt=Save discharge details'
              AllowFullscreen = False
              ButtonCaption = 'Save discharge details'
              MoviePath = 
                '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
            end
            object Label167: TLabel
              Left = 279
              Top = 177
              Width = 202
              Height = 18
              AutoSize = False
              Caption = 'Planned discharge date'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label169: TLabel
              Left = 279
              Top = 250
              Width = 139
              Height = 18
              AutoSize = False
              Caption = 'Discharge Reason'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label170: TLabel
              Left = 279
              Top = 136
              Width = 218
              Height = 19
              AutoSize = False
              Caption = 'Discharge of patients'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label171: TLabel
              Left = 279
              Top = 214
              Width = 282
              Height = 18
              AutoSize = False
              Caption = 'Lost to follow up. If yes, check this box'
              Color = 14414563
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label106: TLabel
              Left = 259
              Top = 284
              Width = 101
              Height = 16
              Caption = '* required fields'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 234
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              Visible = False
            end
            object Label111: TLabel
              Left = 462
              Top = 174
              Width = 7
              Height = 22
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 234
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              Visible = False
            end
            object DBCheckBox_DISCHARGE_LostToFollowup: TDBCheckBox
              Left = 713
              Top = 215
              Width = 43
              Height = 17
              Color = 14414563
              DataField = 'LostToFollowup'
              DataSource = frmDBControls.ALC_DATASOURCE_DISCHARGE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object DBLookupComboBox_DISCHARGE_DischargeReasonID: TDBLookupComboBox
              Left = 432
              Top = 246
              Width = 401
              Height = 26
              DataField = 'DischargeReasonID'
              DataSource = frmDBControls.ALC_DATASOURCE_DISCHARGE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              KeyField = 'DischargeReasonID'
              ListField = 'DischargeReasonDesc'
              ListSource = frmDBControls.ALC_DS_REASON_DISCHARGE
              ParentFont = False
              TabOrder = 1
              OnCloseUp = DBLookupComboBox_Medical_SourceOfReferalIDCloseUp
            end
            object DateTimePicker1: TDateTimePicker
              Left = 661
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
              TabOrder = 2
            end
            object DBEdit_DISCHARGE_DischargeDate: TDBEdit
              Left = 424
              Top = 43
              Width = 306
              Height = 24
              DataField = 'DischargeDate'
              DataSource = frmDBControls.ALC_DATASOURCE_DISCHARGE
              TabOrder = 3
              Visible = False
            end
          end
          object pg_VisitsOverview: TTabSheet
            Caption = 'pg_VisitsOverview'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ImageIndex = 12
            ParentFont = False
            TabVisible = False
            object EFlashTable6: TEFlashTable
              Left = 223
              Top = 70
              Width = 596
              Height = 391
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
            object prev_Visits_Lab: TLabel
              Left = 240
              Top = 83
              Width = 549
              Height = 19
              AutoSize = False
              Caption = 'Previous visits:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label8: TLabel
              Left = 255
              Top = 138
              Width = 70
              Height = 18
              Caption = 'Initial visit:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label9: TLabel
              Left = 255
              Top = 290
              Width = 123
              Height = 18
              Caption = 'Follow up visit(s) :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object btn_edit_FollowUp: TFlashButtonEx
              Left = 498
              Top = 369
              Width = 299
              Height = 41
              OnClick = btn_edit_FollowUpClick
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
              FlashVars = 'btnTxt=edit selected follow up visit'
              AllowFullscreen = False
              ButtonCaption = 'edit selected follow up visit'
              MoviePath = 
                '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
            end
            object btn_Add_New_FollowUp: TFlashButtonEx
              Left = 497
              Top = 322
              Width = 299
              Height = 41
              OnClick = btn_Add_New_FollowUpClick
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
              FlashVars = 'btnTxt=add new follow up visit'
              AllowFullscreen = False
              ButtonCaption = 'add new follow up visit'
              MoviePath = 
                '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
            end
            object TransparentFlashPlayerControl3: TTransparentFlashPlayerControl
              Left = 786
              Top = 67
              Width = 33
              Height = 28
              Movie = 
                '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN_INFO.swf'
              FrameNum = 0
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
              AllowFullscreen = False
            end
            object pan_InitialVisit_Holder: TPanel
              Left = 253
              Top = 162
              Width = 219
              Height = 100
              BevelOuter = bvNone
              TabOrder = 0
              object iniVisit_ScrollBox: TScrollBox
                Left = 0
                Top = 0
                Width = 219
                Height = 100
                Align = alClient
                BevelInner = bvNone
                BevelOuter = bvNone
                BorderStyle = bsNone
                Color = 14414563
                ParentColor = False
                TabOrder = 0
                object no_Ini_Visit_Found_Lab: TESpLabel
                  Left = 3
                  Top = 40
                  Width = 213
                  Height = 18
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'No initial visits found'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 2960685
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  ActivateHighLighting = False
                  highLightedColor = clBlue
                  spEnabled = True
                  recNo = 0
                  sheetNo = 1
                  colNo = 1
                  rowNo = 1
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
              end
            end
            object pan_FollowUpVisit_Holder: TPanel
              Left = 255
              Top = 316
              Width = 217
              Height = 100
              BevelOuter = bvNone
              TabOrder = 1
              object FollowUpVisit_ScrollBox: TScrollBox
                Left = 0
                Top = 0
                Width = 217
                Height = 100
                HorzScrollBar.Visible = False
                Align = alClient
                BevelInner = bvNone
                BevelOuter = bvNone
                BorderStyle = bsNone
                Color = 14414563
                ParentColor = False
                TabOrder = 0
                object no_follow_Visit_Found_Lab: TESpLabel
                  Left = 3
                  Top = 42
                  Width = 211
                  Height = 18
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'No follow up visits found'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 2960685
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  ActivateHighLighting = False
                  highLightedColor = clBlue
                  spEnabled = True
                  recNo = 0
                  sheetNo = 1
                  colNo = 1
                  rowNo = 1
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
              end
            end
            object edit_btns_holder: TPanel
              Left = 497
              Top = 170
              Width = 300
              Height = 100
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 2
              object btn_Ini_Edit: TFlashButtonEx
                Left = 1
                Top = 14
                Width = 299
                Height = 41
                OnClick = btn_Ini_EditClick
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
                FlashVars = 'btnTxt=edit initial visit'
                AllowFullscreen = False
                ButtonCaption = 'edit initial visit'
                MoviePath = 
                  '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                  'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
              end
              object btn_edit_patient_details: TFlashButtonEx
                Left = 1
                Top = 59
                Width = 299
                Height = 41
                OnClick = btn_edit_patient_detailsClick
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
                FlashVars = 'btnTxt=edit patient details'
                AllowFullscreen = False
                ButtonCaption = 'edit patient details'
                MoviePath = 
                  '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                  'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
              end
            end
            object add_Btn_holder: TPanel
              Left = 498
              Top = 132
              Width = 300
              Height = 50
              BevelOuter = bvNone
              Color = clWhite
              DoubleBuffered = True
              ParentBackground = False
              ParentDoubleBuffered = False
              TabOrder = 3
              object btn_Ini_Add: TFlashButtonEx
                Left = 1
                Top = 3
                Width = 299
                Height = 43
                OnClick = btn_Ini_AddClick
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
                FlashVars = 'btnTxt=add new initial visit'
                AllowFullscreen = False
                ButtonCaption = 'add new initial visit'
                MoviePath = 
                  '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                  'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
              end
            end
            object pan_mangeSets_holder: TPanel
              Left = 472
              Top = 132
              Width = 343
              Height = 310
              BevelOuter = bvNone
              Color = clWhite
              ParentBackground = False
              TabOrder = 4
              Visible = False
              object Label10: TLabel
                Left = 2
                Top = 36
                Width = 333
                Height = 68
                Alignment = taCenter
                AutoSize = False
                Caption = 
                  'The SET ID has been discharged. Please add a new episode group f' +
                  'or this SET ID if they have re-entered the system.'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 2960685
                Font.Height = -16
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
                WordWrap = True
              end
              object FlashButtonEx6: TFlashButtonEx
                Left = 23
                Top = 113
                Width = 296
                Height = 41
                OnClick = FlashButtonEx6Click
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
                FlashVars = 'btnTxt=Manage episode groups'
                AllowFullscreen = False
                ButtonCaption = 'Manage episode groups'
                MoviePath = 
                  '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                  'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
              end
              object FlashButtonEx12: TFlashButtonEx
                Left = 23
                Top = 181
                Width = 296
                Height = 41
                OnClick = FlashButtonEx12Click
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
                FlashVars = 'btnTxt=Review initial visit details'
                AllowFullscreen = False
                ButtonCaption = 'Review initial visit details'
                MoviePath = 
                  '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                  'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
              end
              object FlashButtonEx14: TFlashButtonEx
                Left = 23
                Top = 250
                Width = 296
                Height = 41
                OnClick = FlashButtonEx14Click
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
                FlashVars = 'btnTxt=Review selected follow up visit'
                AllowFullscreen = False
                ButtonCaption = 'Review selected follow up visit'
                MoviePath = 
                  '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                  'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
              end
            end
            object ini_Visit_Complete: TCheckBox
              Left = 28
              Top = 86
              Width = 97
              Height = 17
              Caption = 'ini_Visit_Complete'
              Checked = True
              State = cbChecked
              TabOrder = 5
              Visible = False
            end
          end
          object pg_EpisodeSets: TTabSheet
            Caption = 'pg_EpisodeSets'
            ImageIndex = 13
            TabVisible = False
            object EFlashTable7: TEFlashTable
              Left = 207
              Top = 146
              Width = 596
              Height = 264
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
            object Label7: TLabel
              Left = 219
              Top = 165
              Width = 278
              Height = 19
              AutoSize = False
              Caption = 'Audit ID: #'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object FlashButtonEx1: TFlashButtonEx
              Left = 492
              Top = 296
              Width = 299
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
              FlashVars = 'btnTxt=edit episode group'
              AllowFullscreen = False
              ButtonCaption = 'edit episode group'
              MoviePath = 
                '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
            end
            object FlashButtonEx2: TFlashButtonEx
              Left = 492
              Top = 247
              Width = 299
              Height = 43
              OnClick = FlashButtonEx2Click
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
              FlashVars = 'btnTxt=add new episode group'
              AllowFullscreen = False
              ButtonCaption = 'add new episode group'
              MoviePath = 
                '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
            end
            object Label12: TLabel
              Left = 216
              Top = 220
              Width = 169
              Height = 18
              AutoSize = False
              Caption = 'Episode group(s):'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 2960685
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object FlashButtonEx9: TFlashButtonEx
              Left = 492
              Top = 346
              Width = 299
              Height = 43
              OnClick = FlashButtonEx9Click
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
              FlashVars = 'btnTxt=edit patient details'
              AllowFullscreen = False
              ButtonCaption = 'edit patient details'
              MoviePath = 
                '\\vmware-host\Shared Folders\Documents\AbacusWorkingFiles\Alcon\' +
                'Setup Source Files DelphiXE5\SET\Animation\ALC_BTN.swf'
            end
            object Panel7: TPanel
              Left = 218
              Top = 245
              Width = 268
              Height = 148
              BevelOuter = bvNone
              TabOrder = 0
              object ScrollBox_EpisodeSets: TScrollBox
                Left = 0
                Top = 0
                Width = 268
                Height = 148
                Align = alClient
                BevelInner = bvNone
                BevelOuter = bvNone
                BorderStyle = bsNone
                Color = 14414563
                ParentColor = False
                TabOrder = 0
                object Label11: TESpLabel
                  Left = 3
                  Top = 65
                  Width = 262
                  Height = 18
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'No episode group found'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 2960685
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  ActivateHighLighting = False
                  highLightedColor = clBlue
                  spEnabled = True
                  recNo = 0
                  sheetNo = 1
                  colNo = 1
                  rowNo = 1
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
              end
            end
          end
        end
        object Edit1: TEdit
          Left = 173
          Top = 13
          Width = 716
          Height = 24
          TabOrder = 2
          Text = 'Edit1'
          Visible = False
        end
      end
    end
  end
  object Utilities: TButton
    Left = 936
    Top = 728
    Width = 81
    Height = 25
    Caption = 'Utilities'
    TabOrder = 1
    Visible = False
    OnClick = UtilitiesClick
  end
  object DBGrid1: TDBGrid
    Left = 472
    Top = 616
    Width = 529
    Height = 146
    DataSource = frmDBControls.ALC_DATASOURCE_MEDICAL
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 4
    Top = 521
    Width = 240
    Height = 25
    DataSource = frmDBControls.ALC_DATASOURCE_PATIENTS
    TabOrder = 3
    Visible = False
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 688
    Top = 704
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 876
    Top = 726
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 584
    Top = 704
  end
  object Timer3: TTimer
    Left = 920
    Top = 648
  end
end
