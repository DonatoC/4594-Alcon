unit DataModuleUnit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, AppEvnts, shlobj,
  ImgList, StdCtrls, Math, ComCtrls, OleServer, VCIF1Lib_TLB, Variants,
  Excel2000, Word2000, shellapi, CustomESaveOpenUnit, CustomEVariableUnit,
  CustomSpreadsheetUnit, CustomESpAFontBoxUnit, CustomExcelServerUnit, HTTPApp,
  CustomESpLabelUnit, AppUsageReportUnit, FlashGraphSimpleUnit, FlashPlayerControl, CustomESpEditUnit, CustomESpEditStdUnit, CustomESpComboBoxUnit,
  UserManagementToolUnit, Registry, ComObj, CustomEFlashButtonUnit,
  CustomEFlashTableUnit, DB, ADODB, ExtCtrls, IniFiles, System.Actions;

type
  TMyHintWindow = Class (THintWindow)
    Constructor Create (AOwner: TComponent) ; override ;
  end;

  TWordReplaceFlags = set of (wrfReplaceAll, wrfMatchCase, wrfMatchWildcards);

  TDataModule2 = class(TDataModule)
    ApplicationEvents1: TApplicationEvents;
    ActionList1: TActionList;
    RefreshBar: TAction;
    PrintDialog1: TPrintDialog;
    wa: TWordApplication;
    ExcelApplication1: TExcelApplication;
    ImageList1: TImageList;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    ExcelServer1: TExcelServer;
    SpAFontBox3: TESpAFontBox;
    SpAFontBox2: TESpAFontBox;
    SpAFontBox1: TESpAFontBox;
    SpAFontBox0: TESpAFontBox;
    Population: TSpreadsheet;
    DefaultSp: TSpreadsheet;
    ESaveOpen1: TESaveOpen;
    Report: TSpreadsheet;
    UserManagementTool1: TUserManagementTool;
    ADOConnection1: TADOConnection;
    tblPresentation: TADOTable;
    tblPresentationprimaryKeyField: TAutoIncField;
    tblPresentationmodelID: TIntegerField;
    tblPresentationrepFirstname: TWideStringField;
    tblPresentationrepSurname: TWideStringField;
    tblPresentationrepEmail: TWideStringField;
    tblPresentationrepJobTitle: TWideStringField;
    tblPresentationpresentingTo: TWideStringField;
    tblPresentationpresentationScreenOrder: TIntegerField;
    tblPresentationpresentationScreenName: TWideStringField;
    tblPresentationpresentationScreenTime: TDateTimeField;
    tblPresentationpresentationGroupGUID: TWideStringField;
    tblPresentationversionNumber: TWideStringField;
    tblSysInfo: TADOTable;
    tblSysInfosysInfoID: TAutoIncField;
    tblSysInfomodelID: TIntegerField;
    tblSysInforepFirstname: TWideStringField;
    tblSysInforepSurname: TWideStringField;
    tblSysInfodateStamp: TDateTimeField;
    tblSysInfosysInfoLanguage: TWideStringField;
    tblSysInfosysInfoCountry: TWideStringField;
    tblSysInfosysInfoCurrency: TWideStringField;
    tblSysInfosysInfoWindowsVersion: TWideStringField;
    tblSysInfosysInfoMachineRes: TWideStringField;
    tblSysInfosysInfoUsername: TWideStringField;
    tblSysInfosysInfoEmailAddress: TWideStringField;
    tblSysInfosysInfoOfficeVersion: TWideStringField;
    tblSysInfoneedsUploading: TBooleanField;
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    windowsUserName: AnsiString;
    windowsComputerName: AnsiString;
    author: AnsiString;
    ABData : TAppBarData;
    hasAutoHideChanged: Boolean;
    AppDataPath, ComDocPath, ProgramFilesPath: string;
    fromMainModule: boolean;
    fromResetButton: boolean;
    FontSizeFacter: Real;
    GlobalWidthFactor : real;
    GlobalHeightFactor : Real;
    AppPath : String;
    replaceVar, reportLineReplaceStr : String;
    reportAsStringList : TStringList;
    reportSearchFor, reportReplaceWith : OleVariant;
    numberOfSHA: Integer;
    numberOfPCT: Integer;
    isLoading: Boolean;
    populationIsACombinationOfMultipleValues: Boolean;
    populationNameInUse: string;
    populationSizeInUse: integer;
    populationNameSheet, populationNameCol, populationNameRow: integer;
    populationSizeSheet, populationSizeCol, populationSizeRow: integer;
    parentDirectory: string;
    fromNavigation: Boolean;
    paramsString: string;
    languageID: string;
    canTrackApp: Boolean;
    trackingIsActive: Boolean;
    FontColor1: TColor;
    FontColor2: TColor;
    FontColor3: TColor;
    FontColor1Negative: TColor;
    FontColor2Negative: TColor;
    FontColor3Negative: TColor;
    IsOffice2010Installed: boolean;
    rangeArraysAlreadyStored : boolean;
    canShowFadeForm : boolean;
    NumOfTablesStored : integer;
    rangeStarts, rangeEnd, bookMarkNames : array of string;
    ExcelcopyFrom, ExcelPasteTo : Variant;
    ExcelAutoRecover, WorkbookAutoRecover: Boolean;

    // Label colour vars
  LabelMainFontColour, LabelMainFontColourNegative, LabelHeaderFontColour,
  LabelHeaderFontColourNegative, LabelTertiaryFontColour,
  LabelTertiaryFontColourNegative,

  // Edit colour vars
  EditFontColour, EditOnChangeFontColour, EditColour, EditBorderColour,
  EditOnChangeColour,

  // Table colour vars
  TableAltRowColour, TableTopBorderFillColour, TableTopBorderStrokeColour,
  TableMainFillColour, TableHeaderGradientStartColour, TableHeaderGradientEndColour,

  // Popup colour vars
  PopupColour, PopupBGColour,

  // ComboBox colour vars
  CBArrowColour, CBBorderColour, CBButtonColour, CBColour, CBTextColour,
  CBSelectedTextColour, CBItemColour, CBSelectedItemColour

  : TColor;

  // Other setting vars
  TableHeaderGradient, TableAltRowColours : Boolean;

  TableTLBorderRadius, TableTRBorderRadius, TableBLBorderRadius,
  TableBRBorderRadius : Integer;

  CBStyle : TComboBoxStyle;
  CBCursor, EditCursor : TCursor;


    function FindWindowByTitle(WindowTitle: string): Hwnd;
    procedure FindWindowByTitleAndMaximize(WindowTitle: string);
    procedure FindWindowByTitleAndMinimize(WindowTitle: string);
    function GetMSOfficeVersion: String;
    //procedure ViewReference(RefNumber:integer);
    procedure restoreSavedFormsState;
    procedure SaveFormsState;
    procedure LoadFile(IsDefault: Boolean);
    procedure SaveFile;
    procedure SetMode(Sender: TObject);
    procedure MakeNavigationMenuItems;
    procedure SetSaveopenBuilderProperties;
    procedure UpdatePageTitle(titleString: string);
    procedure updateTabSheet(aTabSheet: TTabSheet);
    procedure updateForm(aForm: TForm);
    function UnFormat(AFormattedString: string): string;
    procedure ShellExecute_AndWait(FileName: string; Params: string);
    procedure CheckRes(Awidth, AHeight : Integer);
    function GetParentDirectory: string;
    procedure NavigateTo(ScreenID: Integer);
    function BackorNextScreen(CurrentScreenID : Integer;NextorBack:String):integer;
    function makePathLocal(ComponentObj: Tcomponent; serverPath: String): String;
    function RGBToDelphiColor(RGBCode: string): TColor;
    function hasLargeFonts : Boolean;
    procedure WMActivateApp(var Msg: TMessage); message WM_ACTIVATEAPP; //procedure that checks if application is active or in background
    procedure CloseExcelReportSheets(WorkbooktoClose : String);
    procedure GenerateReportWithMailMerge;
    procedure GenerateReportWithSearchAndReplace;
    procedure AutomaticDataEntry(AForm: TForm);
    function buildHiperlink(aLink: string): string;
    procedure CloseApp(const sCapt: PChar);
    procedure SetupComponents(aForm: TForm; ScaleUp : boolean);
    procedure RecordCurrentScreen(pageName: string);
    function GetEnviromentVariable(EnVar : String): string;
    function IsTaskbarAutoHideOn: boolean;
    procedure LoadDesignSettings;
    function Word_StringReplace(MWord : Variant; SearchString, ReplaceString: string; Flags: TWordReplaceFlags): Boolean;
    procedure GenerateHTMLReport;
    function isReplaceableVar (stringListLineNo : integer) : boolean;
    function returnReplaceableVarArrayNum(lookForVar: string): integer;
    function GetWindowsComputerName: AnsiString;
    Function GetWindowsUserName: AnsiString;
  end;

var
  DataModule2: TDataModule2;

implementation

uses Unit1, Functions, ref, Splash, UsrDefPopulation, FlashRefunit,
  frmConfrimExitU, unitDBControlsForReport, Report;

{$R *.DFM}

{ TDataModule2 }

procedure TDataModule2.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
{  if ExcelAutoRecover then
    ExcelServer1.Excel.AutoRecover.Enabled := True
  else
    ExcelServer1.Excel.AutoRecover.Enabled := False;

  if WorkbookAutoRecover then
    ExcelServer1.Excel.ActiveWorkbook.EnableAutoRecover := True
  else
    ExcelServer1.Excel.ActiveWorkbook.EnableAutoRecover := False;

  if not VarIsEmpty(DataModule2.DefaultSP.Sheets) then
    begin
      DataModule2.DefaultSP.Sheets := Unassigned;
    end;

  if not VarIsEmpty(DataModule2.Population.Sheets) then
    begin
      DataModule2.Population.Sheets := Unassigned;
    end;

  if not VarIsEmpty(DataModule2.ExcelServer1.Excel) then
    begin
      DataModule2.ExcelServer1.Quit;
    end;

  DataModule2.UserManagementTool1.presentationScreenOrder := 100;
  DataModule2.RecordCurrentScreen('MODEL CRASHED: ' + E.Message);

        }

  if DataModule2.hasAutoHideChanged = True then
    begin
      DataModule2.ABData.cbSize := sizeof(tappbardata);
      DataModule2.ABData.hWnd := FindWindow('SHELL_TRAYWND', nil);
      DataModule2.ABData.lParam := LParam(ABS_ALWAYSONTOP);
      SHAppBarMessage($0000000a, DataModule2.ABData);
    end;

  FreeAndNil(frmReport);
end;

procedure TDataModule2.AutomaticDataEntry(AForm: TForm);
var
  n: Integer;
  randomNo: Integer;
  randomChar: Char;
begin
  //Randomize;
  {for n := 0 to AForm.ComponentCount - 1 do
    begin
      if not ((AForm.Components[n].InheritsFrom(TCustomControl)) or (AForm.Components[n].InheritsFrom(TScrollingWinControl)) or (AForm.Components[n].InheritsFrom(TCustomTabControl))) then
        begin
          if (AForm.Components[n].ClassType = TSpFormatEditEx) then
            begin
              //Generate a random no between 20 and 100
              repeat
                randomNo := Random(100);
              until
                randomNo >= 20;

              repeat
                randomChar := char(Random(122))
              until
                (((randomChar >= char(65)) and (randomChar <= char(90))) or ((randomChar >= char(97)) and (randomChar <= char(122))));

              if TSpFormatEditEx(AForm.Components[n]).editFormat <> 'Text' then
                begin
                  TSpFormatEditEx(AForm.Components[n]).spEnabled := True;
                  TSpFormatEditEx(AForm.Components[n]).onChangeRunning := True;
                  TSpFormatEditEx(AForm.Components[n]).Text := IntToStr(randomNo);
                  TSpFormatEditEx(AForm.Components[n]).FormatValue;
                end
              else
                begin
                  TSpFormatEditEx(AForm.Components[n]).spEnabled := True;
                  TSpFormatEditEx(AForm.Components[n]).onChangeRunning := True;
                  TSpFormatEditEx(AForm.Components[n]).Text := randomChar;
                  TSpFormatEditEx(AForm.Components[n]).FormatValue;
                end;
            end;

          if (AForm.Components[n].ClassType = TSpComboBoxConnector) then
            begin
              //Generate a random no between 0 and the max itemIndex
              randomNo := Random(TSpComboBoxConnector(AForm.Components[n]).Items.Count);

              TSpComboBoxConnector(AForm.Components[n]).ItemIndex := randomNo;
            end;
        end
      else
        AutomaticDataEntry(Tform(AForm.Components[n]));
    end; }
end;

function TDataModule2.BackorNextScreen(CurrentScreenID: Integer;
  NextorBack: String): integer;
begin
  // NextorBack can be back for next//
  if LowerCase(NextorBack)= 'next' then
    begin
      CurrentScreenID := CurrentScreenID + 1;
    end;

  if LowerCase(NextorBack)= 'back' then
    begin
      CurrentScreenID := CurrentScreenID - 1;
    end;

  Result := CurrentScreenID;
end;

// Will replace a text web address with a hyperlink saying "(View source)" which
// when clicked on will open a web browser and navigate to the link's destination.
// Will only parse a URL until a space appears in which the function will stop
// parsing said link.

function TDataModule2.buildHiperlink(aLink: string): string;
var
  tempString, anthertempstring: string;
  urlString: string;
  HTTPEncodeStr : string;
  charCounter: Integer;
  startPosOfURL: Integer;
  aChar: Char;
begin
  startPosOfURL := 0;

  anthertempstring := aLink;

  // Keeps looping through the text until every url has been converted into a hyperlink.
  while (Pos('http://',anthertempstring) <> 0) or (Pos('www.',anthertempstring) <> 0) or (Pos('https://',anthertempstring) <> 0) do
    begin
      if (Pos('http://',anthertempstring) <> 0) then
        startPosOfURL := Pos('http://',anthertempstring)

        else if (Pos('https://',anthertempstring) <> 0) then
        startPosOfURL := Pos('https://',anthertempstring)


        else if (Pos('www.',anthertempstring) <> 0) then
        startPosOfURL := Pos('www.',anthertempstring);

     { if (Pos('http://',anthertempstring) = 0) and (Pos('www.',anthertempstring) <> 0) then
        startPosOfURL := Pos('www.',anthertempstring);

     if (Pos('https://',anthertempstring) = 0) and (Pos('www.',anthertempstring) <> 0) then
        startPosOfURL := Pos('www.',anthertempstring);
                                                         }
      if startPosOfURL = 0 then
        begin
          Result := anthertempstring;
          Exit;
        end
      else
        aChar := anthertempstring[startPosOfURL];

      urlString := '';

      while (aChar <> ' ') and (aChar <> '')  do
        begin
          urlString := urlString + aChar;
          aChar := anthertempstring[startPosOfURL + Length(urlString)];
        end;

      //HTTPEncodeStr := Httpencode('<a href=''' + urlString + '''><font color=''#000099''>' + urlString +'</font></a>');
      HTTPEncodeStr := Httpencode('&nbsp;<a href=''' + urlString + '''><font color=''#652C8A''>(View source)</font></a>');
      tempstring := tempstring + Copy(anthertempstring,0,startPosOfURL - 1) + HTTPEncodeStr{+ '<a href=''' + urlString + '''><font color=''#000099''>' + urlString +'</font></a>'};
      anthertempstring := Copy(anthertempstring,startPosOfURL + Length(urlString),length(anthertempstring)- 1);
    end;

  tempstring := tempstring + anthertempstring{Copy(anthertempstring,startPosOfURL + Length(urlString),length(anthertempstring))};
  Result := tempstring;
end;

procedure TDataModule2.CheckRes(Awidth, AHeight: Integer);
begin
  if (Screen.Width <> Awidth) or (Screen.Height <> AHeight)  then
    begin
      showmessage('This model has been designed to run at a screen resolution of '+inttostr(AWidth) +'x' +inttostr(AHeight) +'. You are running it at a resolution of '+inttostr(screen.Width) +'x' +inttostr(Screen.Height)+'. Please contact your IT department to resolve this issue.');
    end;
end;

procedure TDataModule2.CloseApp(const sCapt: PChar);
var
  AppHandle:THandle;
begin
  AppHandle:=FindWindow(Nil, sCapt) ;
  if AppHandle <> 0 then
    begin
      PostMessage(AppHandle, WM_CLOSE, 0, 0) ;
    end;
end;

procedure TDataModule2.CloseExcelReportSheets(WorkbooktoClose: String);
Var a : integer;
begin

ExcelApplication1.Connect;

For a := 1 to ExcelApplication1.Workbooks.Count do
begin
  if ExcelApplication1.Workbooks.Item[a].Name =  WorkbooktoClose then
  begin
  ExcelApplication1.Workbooks.Item[a].Close(0,0,0,0);
  //needs exit to prevent crash, because when wb closed count goes down instantly so there is one less
  //would like to inc(a) exiting the loop naturally but you cannot in a loop.
  exit;
  end;
end;

ExcelApplication1.disConnect;

end;

procedure TDataModule2.DataModuleCreate(Sender: TObject);
begin
  windowsUserName := GetWindowsUserName;
  windowsComputerName := GetWindowsComputerName;
  author := windowsUserName + '|' + windowsComputerName;
end;

function TDataModule2.FindWindowByTitle(WindowTitle: string): Hwnd;
var
  NextHandle: Hwnd;
  NextTitle: array[0..260] of char;
begin
  // Get the first window
  NextHandle := GetWindow(Application.Handle, GW_HWNDFIRST);

  while NextHandle > 0 do
    begin
      // retrieve its text
      GetWindowText(NextHandle, NextTitle, 255);
      if Pos(WindowTitle, StrPas(NextTitle)) <> 0 then
        begin
          Result := NextHandle;
          Exit;
        end
      else
        // Get the next window
        NextHandle := GetWindow(NextHandle, GW_HWNDNEXT);
    end;

  Result := 0;
end;

procedure TDataModule2.FindWindowByTitleAndMaximize(WindowTitle: string);
var
  NextHandle, Result: Hwnd;
  NextTitle: array[0..260] of char;
begin
  // Get the first window
  NextHandle := GetWindow(Application.Handle, GW_HWNDFIRST);

  while NextHandle > 0 do
    begin
      // retrieve its text
      GetWindowText(NextHandle, NextTitle, 255);
      if Pos(WindowTitle, StrPas(NextTitle)) <> 0 then
        begin
          Result := NextHandle;
          Break;
        end
      else
        // Get the next window
        NextHandle := GetWindow(NextHandle, GW_HWNDNEXT);
    end;

  if Result <> 0 then
    begin
      ShowWindow(Result, SW_RESTORE);
      ShowWindow(Result, SW_MAXIMIZE);
      SetForegroundWindow(Result);
    end;
end;

procedure TDataModule2.FindWindowByTitleAndMinimize(WindowTitle: string);
var
  NextHandle, Result: Hwnd;
  NextTitle: array[0..260] of char;
begin
  // Get the first window
  NextHandle := GetWindow(Application.Handle, GW_HWNDFIRST);

  while NextHandle > 0 do
    begin
      // retrieve its text
      GetWindowText(NextHandle, NextTitle, 255);
      if Pos(WindowTitle, StrPas(NextTitle)) <> 0 then
        begin
          Result := NextHandle;
          Break;
        end
      else
        // Get the next window
        NextHandle := GetWindow(NextHandle, GW_HWNDNEXT);
    end;

  if Result <> 0 then
    begin
      ShowWindow(Result, SW_HIDE);
    end;
end;

procedure TDataModule2.GenerateHTMLReport;
var
  AnOleVariant, vWhat, vBookmark, WrdMMFilename, ExcelFilename, wrdDoc: OleVariant;
  rowCounter, firstRow, lastRow, colNumba, SearchForStringCol, ReplaceWithStringCol, SheetNo: Integer;
  SearchForString, ReplaceWithString : string;
  WordApplication, Sheets, SheetsCopy, myTable: variant;
  LCID, tableCounter: integer;
  Hwnd : THandle;
  Row, NumOfTables, I, N, bookCol, startRangeCol, endRangeCol, NumOfTablesStored : integer;
  rangeArraysAlreadyStored : boolean;
begin
  replaceVar := ''; //replaceVar IS A STRING VARIABLE THAT WILL STORE THE VAR TO SEARCH FOR IN THE REPORT E>G *A*
  Hwnd := DataModule2.FindWindowByTitle('Report.doc');
  BringWindowToTop(Hwnd);
  Screen.Cursor := crHourglass;

  //IF AN INSTANCE OF THE REPORT IS ALREADY IN USE, SHOW IT
  if Hwnd <> 0 then
    begin
      Showmessage('You already have a business case open');
      Hwnd := DataModule2.FindWindowByTitle('Report.doc'); //ENSURE THAT THE REPORT NAMED PASSED TO findWindowByTitle MATCHES THE REPORT DOC NAME
      BringWindowToTop(Hwnd);
      ShowWindow(Hwnd,3);
      exit;
    end
  else
    begin
      reportAsStringList := TStringList.Create; //CREATE reportAsStringList TO LOAD THE HTML REPORT DOC
      reportSearchFor := DefaultSp.Sheets.Item['IT_Report'].Range['AXX','AXXX'].Value;  //LOAD THE VARS (*A*|*B*|*C*....) TO SEARCH FOR IN THE REPORT INTO
      reportReplaceWith := DefaultSp.Sheets.Item['IT_Report'].Range['BXX','BXXX'].Value; //LOAD THE VALUES (POP NAME|100,000|75 eligible patients...) THAT WILL REPLACE THE SEARCH FOR VARS IN THE REPORT

      reportAsStringList.LoadFromFile(GetEnviromentVariable('ComDoc') + '\Abacus\XXXX\Report\Report.html');  //LOAD THE REPORT HTML DOC INTO reportAsStringList

     //LOOP THROGH THE HTML REPORT (STRINGLIST).
     //IF THE CURRENT LINE HAS AN * DETERMINE WHETHER THIS IS A REPLACEABLE VAR
     //IF THE LINE HAS A REPLACEABLE VAR, REPLACE THE STRING FROM THE POINT OF THE VAR WITH THE CORRECT VALUE
     for Row := 0 to  reportAsStringList.Count -1  do
      begin
        if ((pos('*', reportAsStringList[Row]) <> 0)) then
          begin
            if isReplaceableVar(Row) = true then
              begin
                reportAsStringList[Row] := reportLineReplaceStr;//copy(frmReportBuilder.Memo1.Lines[Row],0,pos('*',frmReportBuilder.Memo1.Lines[Row])-1) + NewString + copy(frmReportBuilder.Memo1.Lines[Row],varEnd,length(frmReportBuilder.Memo1.Lines[Row]));
              end;
          end;
      end;

      reportAsStringList.SaveToFile(GetEnviromentVariable('ComDoc') + '\Abacus\XXXX\Report\Report.doc'); //SAVE THE REPORT WITH REPLACED VARS AS A WORD DOC
      reportAsStringList.Free;
      reportSearchFor := '';
      reportReplaceWith := '';

      Screen.Cursor := crDefault;
      // Opening the newly generated .doc file.
      ShellExecute(application.handle, Pchar('open'), PChar(GetEnviromentVariable('ComDoc') + '\Abacus\XXXX\Report\Report.doc'), nil, nil, SW_SHOWNORMAL);

      // Closes the splash screen.
      DataModule2.CloseApp('Loading');
    end;
end;

procedure TDataModule2.GenerateReportWithMailMerge;
begin

end;

procedure TDataModule2.GenerateReportWithSearchAndReplace;
var
  AnOleVariant, vWhat, vBookmark, WrdMMFilename, ExcelFilename, wrdDoc: OleVariant;
  rowCounter, firstRow, lastRow, colNumba, SearchForStringCol, ReplaceWithStringCol, SheetNo: Integer;
  SearchForString, ReplaceWithString : string;
  WordApplication, Sheets, SheetsCopy, myTable: variant;
  LCID, tableCounter: integer;
  Hwnd : THandle;
  NumOfTables, I, N, bookCol, startRangeCol, endRangeCol, NumOfTablesStored : integer;
  rangeArraysAlreadyStored : boolean;
begin
  Screen.Cursor := crHourglass;
  Hwnd := DataModule2.FindWindowByTitle('Report.doc');
  BringWindowToTop(Hwnd);
  Screen.Cursor := crHourglass;
  rangeArraysAlreadyStored := false;

  // Checks to see if there is already a business case open. If there is a
  // business case open in the background then it will bring it to the front
  // of the screen and skip the generation step.
  if Hwnd <> 0 then
  begin
    Showmessage('You already have a business case open');
    FindWindowByTitleAndMaximize('Report');
    Screen.Cursor := crDefault;
    exit;
  end
  else
    begin
      ShellExecute(application.handle, Pchar('open'), PChar(AppPath+'System\Splash.exe'), pchar(AppPath+'Animation\SPLASH.swf|YOUR PROJECT NAME HERE|Generating business case...|Please wait|yes'), nil, SW_SHOWNORMAL);

      WrdMMFilename := AppPath + 'Report\Report.doc';
      LCID := GetUserDefaultLCID ;
      AnOleVariant := WrdMMFilename;

      wordapplication := createoleobject('Word.Application');

      {try
        wordapplication := getactiveoleobject('Word.Application');
      except
        wordapplication := createoleobject('Word.Application');
      end;}

      WordApplication.Visible := False;

      wordapplication.Documents.Open( AnOleVariant,
                                          EmptyParam, EmptyParam, EmptyParam,
                                          EmptyParam, EmptyParam, EmptyParam,
                                          EmptyParam, EmptyParam, EmptyParam);

      //define range from where to retrieve the variable to replace
      SheetNo := 2;
      SearchForStringCol := 1;
      ReplaceWithStringCol := 2;
      firstRow := 11;
      lastRow := SpToInt(DefaultSp, SheetNo, 2, 9);

      NumOfTables := SpToInt(DefaultSp, SheetNo, 6, 9) - 10;

      vwhat := wdGoToBookmark;

      //Example code: delete a bookmark
      {WordApplication.Selection.GoTo(vWhat,emptyParam,emptyParam,'type_2');
      WordApplication.Selection.Delete(1, 1);}

      N := 11; // The starting row of the table information.
      bookCol := 5; // Column containing table reference text to find in the report.
      StartRangeCol := 6; // Column containing the starting cell of the range.
      EndRangeCol := 7; // Column containing the ending cell of the range.
      NumOfTablesStored := NumOfTables;
      SetLength(rangeStarts,NumOfTables);
      SetLength(rangeEnd,NumOfTables);
      SetLength(bookMarkNames,NumOfTables);

      // Collects and stores all table information ready for when the tables are
      // to be copied across from the Excel spreadsheet to the Word document.
      for I := 0 to NumOfTables -1 do
      begin
        bookMarkNames[I] := SptoStr(DefaultSp,SheetNo,bookCol,N);
        rangeStarts[I] := SptoStr(DefaultSp,SheetNo,startRangeCol,N);
        rangeEnd[I] := SptoStr(DefaultSp,SheetNo,EndRangeCol,N);

        // Moves onto the next row down.
        N := N + 1;
      end;

      // Loops through the rows in the SP and pastes the information over the corresponding referenced space.
      for rowCounter := firstRow to lastRow do
        begin
          // Gets the reference string.
          SearchForString := SptoStr(DefaultSp,SheetNo,SearchForStringCol,rowCounter);
          // Gets the data.
          ReplaceWithString := SptoStr(DefaultSp,SheetNo,ReplaceWithStringCol,rowCounter);
          // Replaces the reference string with the actual data.
          Word_StringReplace(WordApplication,SearchForString,ReplaceWithString,[wrfReplaceAll]);
        end;

      // Inserts data into the tables on the report from the spreadsheet.
      for I := 0 to NumOfTables -1 do
        begin
          SheetsCopy := DefaultSp.Sheets;
          SheetsCopy.Item['IT_Report'].Activate;
          SheetsCopy.Item['IT_Report'].Range[rangeStarts[I],rangeEnd[I]].copy;
          vBookmark := bookMarkNames[I];
          Application.ProcessMessages;
          WordApplication.Selection.GoTo(vWhat,emptyParam,emptyParam,vBookmark);

          sleep(100);

          WordApplication.Selection.Paste;
        end;

      if not VarIsEmpty(ExcelcopyFrom) then
        begin
          ExcelcopyFrom.quit;
          ExcelcopyFrom := Unassigned;
        end;

      for tableCounter := 1 to wordapplication.ActiveDocument.Tables.count  do
        begin
          myTable := WordApplication.ActiveDocument.Tables.item(tableCounter);
          myTable.AutoFitBehavior(wdAutoFitWindow);
        end;

      vBookmark:='start';
      WordApplication.Selection.GoTo(vWhat,emptyParam,emptyParam,vBookmark);

      WordApplication.Visible := True;
      WordApplication.WindowState := 1;
      FindWindowByTitleAndMaximize('Report');
    end;

    Screen.Cursor := crDefault;
    DataModule2.CloseApp('Loading');
end;

function TDataModule2.GetEnviromentVariable(EnVar: String): string;
var
  r: Bool;
  path: array[0..Max_Path] of Char;
begin
  if EnVar = 'AppData' then
    begin
      r := ShGetSpecialFolderPath(0, path, CSIDL_COMMON_APPDATA, False);
      if not r then
        raise Exception.Create('Could not find CSIDL_COMMON_APPDATA folder location.') ;
    end
  else if EnVar = 'ProgramFiles' then
    begin
      r := ShGetSpecialFolderPath(0, path, CSIDL_PROGRAM_FILES, False);
      if not r then
        raise Exception.Create('Could not find CSIDL_PROGRAM_FILES folder location.') ;
    end
  else if EnVar = 'ComDoc' then
    begin
      r := ShGetSpecialFolderPath(0, path, CSIDL_COMMON_DOCUMENTS, False);
      if not r then
        raise Exception.Create('Could not find CSIDL_COMMON_DOCUMENTS folder location.') ;
    end;

  Result := Path;
end;

function TDataModule2.GetMSOfficeVersion: String;
var
  Reg: TRegistry;
begin
  Result := 'Office Version Not Found';

  // create the registry object
  Reg := TRegistry.Create;

  try
  // set the root key
  Reg.RootKey := HKEY_LOCAL_MACHINE;

  // check for Office2010
  if Reg.OpenKey('\SOFTWARE\Microsoft\Office\14.0\Registration', False) then
  begin
    Result := 'Microsoft Office 2010';
  end
  // check for Office2007
  else if Reg.OpenKey('\SOFTWARE\Microsoft\Office\12.0\Registration', False) then
  begin
    Result := 'Microsoft Office 2007';
  end
  // check for Office2003
  else if Reg.OpenKey('\SOFTWARE\Microsoft\Office\11.0\Registration', False) then
  begin
    Result := 'Microsoft Office 2003';
  end
  // check for OfficeXP
  else if Reg.OpenKey('\SOFTWARE\Microsoft\Office\10.0\Registration', False) then
  begin
    Result := 'Microsoft Office XP';
  end
  // check for Office2000
  else if Reg.OpenKey('\SOFTWARE\Microsoft\Office\9.0\Registration', False) then
  begin
    Result := 'Microsoft Office 2000';
  end
  // check for Office97
  else if Reg.OpenKey('\SOFTWARE\Microsoft\Office\8.0\Registration', False) then
  begin
    Result := 'Microsoft Office 97';
  end;

  finally
    // make sure we free the object we created
    Reg.Free;
  end;
end;

function TDataModule2.GetParentDirectory: string;
var
  tempString: string;
  lastCharPos: integer;
begin
  tempString := Copy(DataModule2.AppPath,0,Length(DataModule2.AppPath) - 1);
  lastCharPos := LastDelimiter('\',tempString);
  tempString := Copy(tempString,0,lastCharPos - 1);
  Result := tempString;
end;

function TDataModule2.GetWindowsComputerName: AnsiString;
var
  buffer: array[0..255] of char;
  size: dword;
begin
  size := 256;
  if Windows.GetComputerName(buffer, size) then
    Result := 'COMPUTER:' + buffer
  else
    Result := 'COMPUTER:Unknown';
end;

function TDataModule2.GetWindowsUserName: AnsiString;
var
   UserName : string;
   UserNameLen : Dword;
Begin
   UserNameLen := 255;
   SetLength(userName, UserNameLen) ;
   If Windows.GetUserName(PChar(UserName), UserNameLen) Then
     Result := 'USER:' + Copy(UserName,1,UserNameLen - 1)
   Else
     Result := 'USER:Unknown';
End;

function TDataModule2.hasLargeFonts: Boolean;
{ --------------------------------------------------------
    Returns a boolean indicating whether or not the user has
    Large Fonts enabled in Display Properties.
    -------------------------------------------------------- }
var
  liPPI   : longInt;  // holds pixels per inch for canvas
  hCanvas : HDC;      // device context for current canvas

const
  LGFPPI = 120;       // PPI when LgFonts active
begin

  hCanvas := getDC( 0 );         // get current canvas
  try
    liPPI := getDeviceCaps( hCanvas, LOGPIXELSX );
  finally
    releaseDC( 0, hCanvas );    // prevent leaks
  end;
  result := ( liPPI = LGFPPI );  // compare and return

end;

function TDataModule2.isReplaceableVar(stringListLineNo: integer): boolean;
var
workingString, workingString2, workingString3, replaceVarString, valueString  : String;
arrayNumOfReplaceVar, replaceVarStartPos, replaceVarEndPos : Integer;
begin
  //FUNCTION RETURNS TRUE IF THE LINE PASSED HAS A REPLACEABLE VAR EG *A*
  //THE FUNCTION ALSO BUILDS THE NEW STRING WITH THE VARs REPLACED

  workingString :=  reportAsStringList[stringListLineNo];

   if Pos('*',workingString) <> 0 then
    begin
      workingString2 := copy(workingString,pos('*',workingString),length(workingString));
      workingString3 := copy(workingString,pos('*',workingString)+1,3);
      if pos('*',workingString3) <> 0 then
        begin
          if pos('*',workingString3) = 2 then
            begin
              replaceVar := '*' + copy(workingString3,0,length(workingString3)-1);
              arrayNumOfReplaceVar := returnReplaceableVarArrayNum(replaceVar);
              replaceVarStartPos := pos(replaceVar,workingString);
              replaceVarEndPos := replaceVarStartPos + 3;

              replaceVarString := String(reportSearchFor[arrayNumOfReplaceVar, 1]);
              valueString := String((reportReplaceWith[arrayNumOfReplaceVar, 1]));
              reportLineReplaceStr := copy(reportAsStringList[stringListLineNo],0,pos('*', reportAsStringList[stringListLineNo])-1) + valueString + copy(reportAsStringList[stringListLineNo],replaceVarEndPos,length(reportAsStringList[stringListLineNo]));
            end
          else
            begin
              replaceVar := '*' + workingString3;
              replaceVarStartPos := pos(replaceVar,workingString);
              replaceVarEndPos := replaceVarStartPos + 4;
              replaceVarString := String(reportSearchFor[arrayNumOfReplaceVar, 1]);
              valueString := String((reportReplaceWith[arrayNumOfReplaceVar, 1]));
              reportLineReplaceStr := copy( reportAsStringList[stringListLineNo],0,pos('*', reportAsStringList[stringListLineNo])-1) + valueString + copy(reportAsStringList[stringListLineNo],replaceVarEndPos,length(reportAsStringList[stringListLineNo]));
            end;
          Result := true;
        end
      else
        begin
          Result := false;
        end;
    end;
end;

function TDataModule2.IsTaskbarAutoHideOn: boolean;
begin
  ABData.cbSize := sizeof(ABData) ;
  Result := (SHAppBarMessage(ABM_GETSTATE, ABData)and ABS_AUTOHIDE) > 0;
end;

// hasLargeFonts

procedure TDataModule2.LoadDesignSettings;
var
  DesignSettingsFile : TIniFile;
begin
  // Open .ini file.
  DesignSettingsFile := TIniFile.Create('System\DesignSettings.ini');

  //Reading and setting all design settings variables.

  // Setting label configuration.
  LabelMainFontColour := StringToColor(DesignSettingsFile.ReadString('LabelColours', 'LabelMainFontColour', 'clBlack'));
  LabelMainFontColourNegative := StringToColor(DesignSettingsFile.ReadString('LabelColours', 'LabelMainFontColourNegative', 'clBlack'));
  LabelHeaderFontColour := StringToColor(DesignSettingsFile.ReadString('LabelColours', 'LabelHeaderFontColour', 'clBlack'));
  LabelHeaderFontColourNegative := StringToColor(DesignSettingsFile.ReadString('LabelColours', 'LabelHeaderFontColourNegative', 'clBlack'));
  LabelTertiaryFontColour := StringToColor(DesignSettingsFile.ReadString('LabelColours', 'LabelTertiaryFontColour', 'clBlack'));
  LabelTertiaryFontColourNegative := StringToColor(DesignSettingsFile.ReadString('LabelColours', 'LabelTertiaryFontColourNegative', 'clBlack'));

  // Setting edit configuration.
  EditFontColour := StringToColor(DesignSettingsFile.ReadString('EditSettings', 'EditFontColour', 'clBlack'));
  EditOnChangeFontColour := StringToColor(DesignSettingsFile.ReadString('EditSettings', 'EditOnChangeFontColour', 'clBlack'));
  EditColour := StringToColor(DesignSettingsFile.ReadString('EditSettings', 'EditColour', 'clWhite'));
  EditBorderColour := StringToColor(DesignSettingsFile.ReadString('EditSettings', 'EditBorderColour', 'clBlack'));
  EditOnChangeColour := StringToColor(DesignSettingsFile.ReadString('EditSettings', 'EditOnChangeColour', 'clWhite'));
  EditCursor := StringToCursor(DesignSettingsFile.ReadString('EditSettings', 'EditCursor', 'crHandPoint'));

  // Configuring all table settings.
  TableAltRowColours := DesignSettingsFile.ReadBool('TableSettings', 'TableAltRowColours', True);
  TableAltRowColour := StringToColor(DesignSettingsFile.ReadString('TableSettings', 'TableAltRowColour', 'clBlack'));
  TableTopBorderFillColour := StringToColor(DesignSettingsFile.ReadString('TableSettings', 'TableTopBorderFillColour', 'clWhite'));
  TableTopBorderStrokeColour := StringToColor(DesignSettingsFile.ReadString('TableSettings', 'TableTopBorderStrokeColour', 'clBlack'));
  TableMainFillColour := StringToColor(DesignSettingsFile.ReadString('TableSettings', 'TableMainFillColour', 'clWhite'));

  TableHeaderGradient := DesignSettingsFile.ReadBool('TableHeaderGradient', 'TableHeaderGradient', False);
  TableHeaderGradientStartColour := StringToColor(DesignSettingsFile.ReadString('TableHeaderGradient', 'TableHeaderGradientStartColour', 'clBlack'));
  TableHeaderGradientEndColour := StringToColor(DesignSettingsFile.ReadString('TableHeaderGradient', 'TableHeaderGradientEndColour', 'crHandPoint'));

  TableTLBorderRadius := DesignSettingsFile.ReadInteger('TableBorderRadius', 'TableTLBorderRadius', 0);
  TableTRBorderRadius := DesignSettingsFile.ReadInteger('TableBorderRadius', 'TableTRBorderRadius', 0);
  TableBLBorderRadius := DesignSettingsFile.ReadInteger('TableBorderRadius', 'TableBLBorderRadius', 0);
  TableBRBorderRadius := DesignSettingsFile.ReadInteger('TableBorderRadius', 'TableBRBorderRadius', 0);

  // Getting all ComboBox settings.
  CBArrowColour := StringToColor(DesignSettingsFile.ReadString('ComboBoxSettings', 'CBArrowColour', '$00F5F3E0'));
  CBBorderColour := StringToColor(DesignSettingsFile.ReadString('ComboBoxSettings', 'CBBorderColour', '$0033CCFF'));
  CBButtonColour := StringToColor(DesignSettingsFile.ReadString('ComboBoxSettings', 'CBButtonColour', '$0033CCFF'));
  CBColour := StringToColor(DesignSettingsFile.ReadString('ComboBoxSettings', 'CBColour', 'clWhite'));
  CBTextColour := StringToColor(DesignSettingsFile.ReadString('ComboBoxSettings', 'CBTextColour', '$0033CCFF'));
  CBSelectedTextColour := StringToColor(DesignSettingsFile.ReadString('ComboBoxSettings', 'CBSelectedTextColour', '$0033CCFF'));
  CBItemColour := StringToColor(DesignSettingsFile.ReadString('ComboBoxSettings', 'CBItemColour', 'clWhite'));
  CBSelectedItemColour := StringToColor(DesignSettingsFile.ReadString('ComboBoxSettings', 'CBSelectedItemColour', 'clWhite'));
  CBCursor := StringToCursor(DesignSettingsFile.ReadString('ComboBoxSettings', 'CBCursor', 'crHandPoint'));

  // Getting Popup settings.
  PopupColour := StringToColor(DesignSettingsFile.ReadString('PopupColourSettings', 'PopupColour', 'clBlue'));
  PopupBGColour := StringToColor(DesignSettingsFile.ReadString('PopupColourSettings', 'PopupColour', 'clWhite'));

  // Getting all misc settings.
  FontColor1 := StringToColor(DesignSettingsFile.ReadString('OtherControls', 'FontColor1', 'clBlack'));
  FontColor2 := StringToColor(DesignSettingsFile.ReadString('OtherControls', 'FontColor2', 'clBlack'));
  FontColor3 := StringToColor(DesignSettingsFile.ReadString('OtherControls', 'FontColor3', 'clBlack'));
  FontColor1Negative := StringToColor(DesignSettingsFile.ReadString('OtherControls', 'FontColor1Negative', 'clBlack'));
  FontColor2Negative := StringToColor(DesignSettingsFile.ReadString('OtherControls', 'FontColor2Negative', 'clBlack'));
  FontColor3Negative := StringToColor(DesignSettingsFile.ReadString('OtherControls', 'FontColor3Negative', 'clBlack'));

  // Close .ini file.
  DesignSettingsFile.Free;
end;

procedure TDataModule2.LoadFile(IsDefault: Boolean);
begin
  if IsDefault then
  begin
    if not(DataModule2.fromMainModule) then
      ShellExecute(application.handle, Pchar('open'), PChar(AppPath+'System\Splash.exe'), pchar(AppPath+'Animation\ABA_SPLASH.swf|text1|text2|text3|yes'), nil, SW_SHOWNORMAL);

    DataModule2.ESaveOpen1.ReadFromDefaultFile;
    restoreSavedFormsState;
    sleep(1000);

    if not(DataModule2.fromMainModule) then
      DataModule2.CloseApp('Loading');
  end
  else
  begin
    if DataModule2.OpenDialog1.Execute then
    begin
      if FileExists(OpenDialog1.FileName) then
      begin
        MainForm.update;
        ShellExecute(application.handle, Pchar('open'), PChar(AppPath+'System\Splash.exe'), pchar(AppPath+'Animation\ABA_SPLASH.swf|text1|text2|text3|no'), nil, SW_SHOWNORMAL);
        DataModule2.ESaveOpen1.ReadFromFile(OpenDialog1.FileName);
        restoreSavedFormsState;
      end
      else
        showmessage('File: ' + OpenDialog1.FileName + ' does not exist.');
    end;
  end;
end;


procedure TDataModule2.MakeNavigationMenuItems;
begin

end;

function TDataModule2.makePathLocal(ComponentObj: Tcomponent;
  serverPath: String): String;
var
  appPathMinusLastSlash, slashProNameSlash, SearchString : string;
  a, currentPos, TotalPos : integer;
begin
  //code below takes appPath (e.g C:\Abacus\ITB\) and removes the last backslash (e.g C:\Abacus\ITB)
  appPathMinusLastSlash := copy(DataModule2.Apppath,0,length(DataModule2.Apppath)-1);
  //loop from the end of appPathMinusLastSlash
  for a := length(appPathMinusLastSlash) downto -1 do
    begin
      //the loop will come across the first \ from the end (C:\Abacus'\'ITB). This is why the last \ was removed from appPath
      if appPathMinusLastSlash[a] = '\' then
        begin
          //Inside slashProNameSlash the program name will be stored inbetween \\ (e.g \ITB\). This is so the position of last occurrence  of this can be found.
          slashProNameSlash := (copy(appPathMinusLastSlash,a,length(appPathMinusLastSlash))+'\');
          break;
        end;
    end;

  TotalPos := 0;
  //the serverPath is the movie or image path of the component that is passed to the function
  SearchString := serverPath;
  //while slashProNameSlash (\ITB\) is present in our serverPath (there may be more than one occurrence) do the below.

  while   pos(slashProNameSlash,SearchString) <> 0 do
    begin
      //the code below will be run until the last occurrence of slashProNameSlash is found.
      currentPos := pos(slashProNameSlash,SearchString);
      TotalPos := TotalPos + currentPos;
      // the SearchString will then equal everything after slashProNameSlash. This being the file name of the swf, image etc.
      SearchString := Copy(SearchString,currentPos+length(slashProNameSlash), length(SearchString));
      TotalPos := totalPos + length(slashProNameSlash)-1;
    end ;

  TotalPos := TotalPos +1;

  if FileExists(DataModule2.AppPath + copy(serverPath,TotalPos,length(serverPath))) then
    begin
      //The result will equal appPath + the end of the serverPath (e.g (this is appPath(C:\Abacus\ITB\)(this is what is added(Animation\flash.swf)))).
      Result := DataModule2.appPath + copy(serverPath,TotalPos,length(serverPath));
    end
  else
    begin
   //  ShowMessage(ComponentObj.name +':local copy of file '+ serverPath+ ' does not exist');
      Result := serverPath;
    end;
end;

procedure TDataModule2.NavigateTo(ScreenID: Integer);
var
  TitleSheetNo, TitleColNo, TitleRowNo: Integer;
  pageTotal : string;
  pageTitle: string;
  doUpdate: boolean;
begin
  fromNavigation := True;

  ShowMsgSwitched('Message C: set title spreadsheet properties and activate lines that update title.');
  //Titles location on pages
  TitleColNo := 2;
  TitleRowNo := 1;

  ShowMsgSwitched('Message S: set max no of pages.');
  pageTotal := '/10';

  ShowMsgSwitched('Message T: set max no of pages.');
  //Disable next button on last page
  if (ScreenID = 1) then
    begin
      MainForm.BottomMenu.CallFunction('<invoke name="disableBtn" returntype="xml"><arguments><string>next</string><string>hide</string></arguments></invoke>');

      //use for sidebar
      //FlashPlayerControl3.CallFunction('<invoke name="disableBtn" returntype="xml"><arguments><string>next</string><string>hide</string></arguments></invoke>');

    end
  else
    begin
      MainForm.BottomMenu.CallFunction('<invoke name="disableBtn" returntype="xml"><arguments><string>next</string><string>show</string></arguments></invoke>');

      //use for sidebar
      //FlashPlayerControl3.CallFunction('<invoke name="disableBtn" returntype="xml"><arguments><string>next</string><string>show</string></arguments></invoke>');

    end;

  DataModule2.UserManagementTool1.presentationScreenOrder := ScreenID;

  case ScreenID of
    0 : begin
          //Title screen
          MainForm.Notebook1.ActivePage := 'Title';
        end;

    1 : begin
          //Your page description here
          titleSheetNo := 2;
          PageTitle := 'PAGE TITLE NOT FOUND: check DataModule2.NavigateTo procedure';
          MainForm.TopMenu.CallFunction('<invoke name="setFlashTitle" returntype="xml"><arguments><string>'+ pageTitle +'</string></arguments></invoke>');
          MainForm.BottomMenu.FlashVars := 'pgNum=' + IntToStr(screenID) + pageTotal ;
          DataModule2.RecordCurrentScreen(PageTitle);
          Mainform.TFP_SECTION_SELECT.GotoFrame(1);   {MAKE SURE THE SECTION SELECTOR FLASH IS IT AT FRAME 1 - THE CIRCULAR SELECTOR MENU}
          MainForm.PageControl1.activepage := MainForm.PG_SECTION_SELECT;
          MainForm.Notebook1.ActivePage := 'Model';
        end;


  end;

  MainForm.CurrentScreen := ScreenID;
  fromNavigation := False;
end;

procedure TDataModule2.RecordCurrentScreen(pageName: string);
begin
  if (DataModule2.trackingIsActive) then
    begin
      if not(isLoading) then
        begin
          DataModule2.UserManagementTool1.ScreenName := Trim(pageName);
          DataModule2.UserManagementTool1.WritePresentationDataIntoLocalDB;
        end;
    end;
end;

procedure TDataModule2.restoreSavedFormsState;
var
  n: integer;
begin
  if not(fromMainModule) then
    DefaultSp.AutoRecalc := False;

  ShowMsgSwitched('Message R: Please read comments underneath this message.');
  {Your code here: if you need to perform calculations make sure you set
   DefaultSp.AutoRecalc to True before the lines that require spreadsheet
   computation and then set DefaultSp.AutoRecalc as soon calculation are
   done. DefaultSp.AutoRecalc left to True at all time slows down performances}

  if not(fromMainModule) then
    DefaultSp.AutoRecalc :=  True;
end;

function TDataModule2.returnReplaceableVarArrayNum(lookForVar: string): integer;
var I : integer;
begin
  //FUNCTION RETURNS THE ARRAY NUMBER OF THE lookForVar STRING IN THE reportSearchFor varient
   for I := VarArrayLowBound(reportSearchFor, 1) to VarArrayHighBound(reportSearchFor, 1) do
    begin
      if reportSearchFor[I,1] = lookForVar then
        begin
          Result := I;
          Exit;
        end;
    end;
end;

// Delphi's colour codes are reversed order HEX colour codes (with alpha).
// Where red in HEX is FF0000 (RGB), in Delphi the code would be $000000FF (ABGR).
function TDataModule2.RGBToDelphiColor(RGBCode: string): TColor;
var
  colorAsString: string;
begin
  colorAsString := '$00';
  {Add Blue Code}
  colorAsString := colorAsString + RGBCode[5] + RGBCode[6];
  {Add Green Code}
  colorAsString := colorAsString + RGBCode[3] + RGBCode[4];
  {Add Red Code}
  colorAsString := colorAsString + RGBCode[1] + RGBCode[2];

  {Convert string to Color}
  Result :=  StringToColor(colorAsString);
end;

procedure TDataModule2.SaveFile;
begin
  if SaveDialog1.Execute then
    begin
      if SaveDialog1.FileName = ESaveOpen1.DefaultFileName then
        begin
          MessageDlg('Illegal operation: the user cannot overwrite the default file!'+#13+#10+'        Please contact the vendor for more information', mtError, [mbOK], 0);
          Exit;
        end;

      ShellExecute(application.handle, Pchar('open'), PChar(AppPath+'System\Splash.exe'), pchar(AppPath+'Animation\ABA_SPLASH.swf|text1|text2|text3|yes'), nil, SW_SHOWNORMAL);

      DataModule2.SaveFormsState;
      ESaveOpen1.SaveToFile(SaveDialog1.filename);
      sleep(1000);
      DataModule2.CloseApp('Loading');
    end;
end;

procedure TDataModule2.SaveFormsState;
begin

end;

procedure TDataModule2.SetMode(Sender: TObject);
begin

end;

procedure TDataModule2.SetSaveopenBuilderProperties;
var FileExt, YourApp : string;
begin
  ShowMsgSwitched('Message A: Set SaveOpenBuilder / save / open dialog properties');
  { TODO : The below code sets out the SaveOpenBuilder please specify own details }
  FileExt := 'tmp';
  YourApp := 'My App';
  DataModule2.ESaveOpen1.defaultfilename :=  DataModule2.AppPath + 'Saves\Default.tmp';
  DataModule2.ESaveOpen1.FileExtention := FileExt;
  DataModule2.SaveDialog1.DefaultExt := FileExt;
  DataModule2.OpenDialog1.DefaultExt := FileExt;

  //DataModule2.SaveDialog1.FileName := '*.'+ DataModule2.SaveDialog1.DefaultExt;

  DataModule2.SaveDialog1.Filter := YourApp + ' files (*.'+FileExt+')|*.'+uppercase(FileExt);
  DataModule2.OpenDialog1.Filter := YourApp + ' files (*.'+FileExt+')|*.'+uppercase(FileExt);


  DataModule2.SaveDialog1.InitialDir := DataModule2.AppPath + 'Saves\';
  DataModule2.OpenDialog1.InitialDir := DataModule2.AppPath + 'Saves\';

  DataModule2.OpenDialog1.Title := 'Open '+ YourApp +' File';
  DataModule2.SaveDialog1.Title := 'Save '+ YourApp +' File';

  DataModule2.ESaveOpen1.spComponent := DataModule2.DefaultSP;
  DataModule2.ESaveOpen1.spPopulation := DataModule2.population;
end;

// Changes the file paths to point to the same directory that the application was installed to.
// Can be used to set component properties (E.g. All label text set to red).
procedure TDataModule2.SetupComponents(aForm: TForm; ScaleUp: boolean);
var
  aFormComponentCounter: Integer;
  TempStr : STring;

  {
  // Label colour vars
  LabelMainFontColour, LabelMainFontColourNegative, LabelHeaderFontColour,
  LabelHeaderFontColourNegative, LabelTertiaryFontColour,
  LabelTertiaryFontColourNegative,

  // Edit colour vars
  EditFontColour, EditOnChangeFontColour, EditColour, EditBorderColour,
  EditOnChangeColour,

  // Table colour vars
  TableAltRowColour, TableTopBorderFillColour, TableTopBorderStrokeColour,
  TableMainFillColour, TableHeaderGradientStartColour, TableHeaderGradientEndColour,

  // Popup colour vars
  PopupColour, PopupBGColour,

  // ComboBox colour vars
  CBArrowColour, CBBorderColour, CBButtonColour, CBColour, CBTextColour,
  CBSelectedTextColour, CBItemColour, CBSelectedItemColour

  : TColor;

  // Other setting vars
  TableHeaderGradient, TableAltRowColours : Boolean;

  TableTLBorderRadius, TableTRBorderRadius, TableBLBorderRadius,
  TableBRBorderRadius : Integer;

  CBStyle : TComboBoxStyle;
  CBCursor, EditCursor : TCursor;
  }



begin
  ShowMsgSwitched('Message K: Define font color for labels and table path in these procedure');
  //This procedure sets needs to be run before load procedure

  // Label Settings.
  // Tag = 0
  LabelMainFontColour := $002D2D2D;
  LabelMainFontColourNegative := $002D2D2D;

  // Tag = 1
  LabelHeaderFontColour := $002D2D2D;
  LabelHeaderFontColourNegative := $002D2D2D;

  // Tag = 2
  LabelTertiaryFontColour := $002D2D2D;
  LabelTertiaryFontColourNegative := $002D2D2D;

  // Edit Settings.
  EditFontColour := $002D2D2D; // Font colour.
  EditOnChangeFontColour := $002D2D2D; // Font colour when entering data.
  EditColour := $00FDF8ED; // Background colour.
  EditBorderColour := $0033CCFF;
  EditOnChangeColour := $00FDF8ED;
  EditCursor := crHandPoint; // Sets the cursor icon on mouse over.

  // Table Settings.
  TableAltRowColours := False; // When set to true, will give alternate rows another colour.
  TableAltRowColour := $00333333; // Sets the colour of the alternate rows.
  TableTopBorderFillColour := $0033CCFF; // Table header colour.
  TableTopBorderStrokeColour := $0033CCFF; // Table header border colour.
  TableMainFillColour := clWhite; // Table background colour.

  // Table Header Gradient.
  TableHeaderGradient := True; // Setting to true will replace the table header colour with a gradient.
  TableHeaderGradientStartColour := $0033CCFF; // Starts at the left of the table.
  TableHeaderGradientEndColour := $000099CC; // Starts from the right of the table.

  // Table Border Radius.
  TableTLBorderRadius := 0; // Top Left Corner
  TableTRBorderRadius := 0; // Top Right Corner
  TableBLBorderRadius := 0; // Bottom Left Corner
  TableBRBorderRadius := 0; // Bottom Right Corner

  // Popup Colour Settings.
  PopupColour := $000099CC;
  PopupBGColour := clWhite; // Sets the brush colour of th TShape with a tag 0
                            // meaning that the top bar tag must be set to 1.

  // ComboBox Settings.
  CBArrowColour := $00F5F3E0;
  CBBorderColour := $0033CCFF;
  CBButtonColour := $0033CCFF;
  CBColour := clWhite;
  CBTextColour := $0033CCFF;
  CBSelectedTextColour := $0033CCFF;
  CBItemColour := clWhite;
  CBSelectedItemColour:= clWhite;
  CBStyle := csDropDownList; // Sets how the combobox acts.
  CBCursor := crHandPoint; // Sets the cursor icon on mouse over.

  // Shouldn't be needed for the main components/controls but left here just in case.
  FontColor1 := $00C08000;
  FontColor2 := $00898584;
  FontColor3 := clWhite;
  FontColor1Negative := $00C08000;
  FontColor2Negative := $00898584;
  FontColor3Negative := clWhite;

  for aFormComponentCounter := 0 to aForm.ComponentCount -1 do
    begin
      if (aForm.Components[aFormComponentCounter].InheritsFrom(Tcontrol) or (aForm.Components[aFormComponentCounter].ClassType = TFlashGraphSimple))  then
        begin
          // If the component is any type of Tcontrol, panel button etc rezise it only
          //only resize if main form. Pass true or false to this procedure to enable/disbale resizing of components
          if  ((ScaleUp = True) and (not(aForm.Components[aFormComponentCounter].ClassType = TFlashGraphSimple))) then
            begin
              Tcontrol(aForm.Components[aFormComponentCounter]).width := math.floor(Tcontrol(aForm.Components[aFormComponentCounter]).width * GlobalWidthFactor);
              Tcontrol(aForm.Components[aFormComponentCounter]).Height := math.floor(Tcontrol(aForm.Components[aFormComponentCounter]).Height * GlobalHeightFactor);
              Tcontrol(aForm.Components[aFormComponentCounter]).Left := math.floor(Tcontrol(aForm.Components[aFormComponentCounter]).Left * GlobalWidthFactor);
              Tcontrol(aForm.Components[aFormComponentCounter]).Top := math.floor(Tcontrol(aForm.Components[aFormComponentCounter]).Top * GlobalHeightFactor);
            end;

          TempStr := aForm.Components[aFormComponentCounter].name;
          //****************** File paths load in from local path *************************************************************

          if (aForm.Components[aFormComponentCounter].classtype = TFlashGraphSimple)  then
            begin
              TFlashGraphSimple(aForm.Components[aFormComponentCounter]).Moviepath :=  DataModule2.Makepathlocal(TFlashplayercontrol(aForm.Components[aFormComponentCounter]),TFlashGraphSimple(aForm.Components[aFormComponentCounter]).Moviepath);
            end;

          if aForm.Components[aFormComponentCounter].InheritsFrom(TFlashplayercontrol) then
            begin
              TFlashplayercontrol(aForm.Components[aFormComponentCounter]).Movie :=  DataModule2.Makepathlocal(TFlashplayercontrol(aForm.Components[aFormComponentCounter]),TFlashplayercontrol(aForm.Components[aFormComponentCounter]).Movie);
                if ScaleUp = True then
                  begin
                    //TFlashplayercontrol(aForm.Components[aFormComponentCounter]).width := math.floor(TFlashplayercontrol(aForm.Components[aFormComponentCounter]).width * GlobalWidthFactor);
                    //TFlashplayercontrol(aForm.Components[aFormComponentCounter]).height := math.floor(TFlashplayercontrol(aForm.Components[aFormComponentCounter]).height * GlobalheightFactor);
                  end;
            end;

          if aForm.Components[aFormComponentCounter].InheritsFrom(TTransparentFlashplayercontrol) then
            begin
              if ((pos('REF',RawByteString(TTransparentFlashplayercontrol(aForm.Components[aFormComponentCounter]).Movie)) <> 0) or (pos('INFO',RawByteString(TTransparentFlashplayercontrol(aForm.Components[aFormComponentCounter]).Movie)) <> 0)) then
                begin
                  //showmessage(TTransparentFlashplayercontrol(aForm.Components[aFormComponentCounter]).name);
                    TTransparentFlashplayercontrol(aForm.Components[aFormComponentCounter]).ScaleMode := 0;
                    TTransparentFlashplayercontrol(aForm.Components[aFormComponentCounter]).movie := TTransparentFlashplayercontrol(aForm.Components[aFormComponentCounter]).movie;
                end;

                TTransparentFlashplayercontrol(aForm.Components[aFormComponentCounter]).movie :=  DataModule2.Makepathlocal(TTransparentFlashplayercontrol(aForm.Components[aFormComponentCounter]),TTransparentFlashplayercontrol(aForm.Components[aFormComponentCounter]).movie);

              if ScaleUp = True then
                begin
                 // TTransparentFlashplayercontrol(aForm.Components[aFormComponentCounter]).width := math.floor(TTransparentFlashplayercontrol(aForm.Components[aFormComponentCounter]).width * GlobalWidthFactor);
                //  TTransparentFlashplayercontrol(aForm.Components[aFormComponentCounter]).height := math.floor(TTransparentFlashplayercontrol(aForm.Components[aFormComponentCounter]).height * GlobalHeightFactor);
                end;
            end ;

          if (aForm.Components[aFormComponentCounter].classtype = TFlashButtonEX)  then
            begin
              TFlashButtonEX(aForm.Components[aFormComponentCounter]).Moviepath :=  DataModule2.Makepathlocal(TEFlashButton(aForm.Components[aFormComponentCounter]),TEFlashButton(aForm.Components[aFormComponentCounter]).Moviepath);
              if ScaleUp = True then
                Begin
                  //TFlashButton(aForm.Components[aFormComponentCounter]).width := math.floor(TFlashButton(aForm.Components[aFormComponentCounter]).width * GlobalWidthFactor);
                  //TFlashButton(aForm.Components[aFormComponentCounter]).height := math.floor(TFlashButton(aForm.Components[aFormComponentCounter]).height * GlobalHeightFactor);
                end;
            end;


          if (aForm.Components[aFormComponentCounter].classtype = TEFlashTable) then
            begin
              //TEFlashTable(aForm.Components[aFormComponentCounter]).Moviepath :=  DataModule2.Makepathlocal(TEFlashTable(aForm.Components[aFormComponentCounter]),TEFlashTable(aForm.Components[aFormComponentCounter]).Moviepath);
                 TEFlashTable(aForm.Components[aFormComponentCounter]).Moviepath := DataModule2.AppPath + '\Animation\ALC_Table.swf';
                if ScaleUp = True then
                  Begin
                    TEFlashTable(aForm.Components[aFormComponentCounter]).lhColumnWidth := math.floor(TEFlashTable(aForm.Components[aFormComponentCounter]).lhColumnWidth * GlobalWidthFactor);
                    TEFlashTable(aForm.Components[aFormComponentCounter]).topBorderHeight := math.Ceil(TEFlashTable(aForm.Components[aFormComponentCounter]).topBorderHeight * GlobalHeightFactor);
                    TEFlashTable(aForm.Components[aFormComponentCounter]).bottomMargin := math.Ceil(TEFlashTable(aForm.Components[aFormComponentCounter]).bottomMargin * GlobalHeightFactor);
                    TEFlashTable(aForm.Components[aFormComponentCounter]).topMargin := math.Ceil(TEFlashTable(aForm.Components[aFormComponentCounter]).topMargin * GlobalHeightFactor);
                    TEFlashTable(aForm.Components[aFormComponentCounter]).leftMargin := math.Ceil(TEFlashTable(aForm.Components[aFormComponentCounter]).leftMargin * GlobalWidthFactor);
                    TEFlashTable(aForm.Components[aFormComponentCounter]).rightMargin := math.Ceil(TEFlashTable(aForm.Components[aFormComponentCounter]).rightMargin * GlobalWidthFactor);
                  end;

              TEFlashTable(aForm.Components[aFormComponentCounter]).topBorderFill := TableTopBorderFillColour;
              TEFlashTable(aForm.Components[aFormComponentCounter]).topBorderStroke := TableTopBorderStrokeColour;

              TEFlashTable(aForm.Components[aFormComponentCounter]).mainFill := TableMainFillColour;
              TEFlashTable(aForm.Components[aFormComponentCounter]).alternateRowColours := TableAltRowColours;
              TEFlashTable(aForm.Components[aFormComponentCounter]).alternateRowColour := TableAltRowColour;

              TEFlashTable(aForm.Components[aFormComponentCounter]).headerGradient := TableHeaderGradient;
              TEFlashTable(aForm.Components[aFormComponentCounter]).headerGradientStartColour := TableHeaderGradientStartColour;
              TEFlashTable(aForm.Components[aFormComponentCounter]).headerGradientEndColour := TableHeaderGradientEndColour;

              TEFlashTable(aForm.Components[aFormComponentCounter]).topLeftCornerRadius := TableTLBorderRadius;
              TEFlashTable(aForm.Components[aFormComponentCounter]).topRightCornerRadius := TableTRBorderRadius;
              TEFlashTable(aForm.Components[aFormComponentCounter]).bottomLeftCornerRadius := TableBLBorderRadius;
              TEFlashTable(aForm.Components[aFormComponentCounter]).bottomRightCornerRadius := TableBRBorderRadius;

              TEFlashTable(aForm.Components[aFormComponentCounter]).CallFunction('<invoke name="drawTable" returntype="xml"><arguments><string>Introduction</string></arguments></invoke>');
            end;

//******* TESpEditStd  START*************************************************************************************************************8
          if (aForm.Components[aFormComponentCounter].ClassType = TESpEditStd) then
            begin
              // size : only resize if main form. Pass true or false to this procedure to enable/disbale resizing of components
              if ScaleUp = True then
                TESpEditStd(aForm.Components[aFormComponentCounter]).Font.Size := math.floor(TESpEditStd(aForm.Components[aFormComponentCounter]).Font.Size * FontSizeFacter);

                TESpEditStd(aForm.Components[aFormComponentCounter]).Color := EditColour;
                TESpEditStd(aForm.Components[aFormComponentCounter]).Font.Color := EditFontColour;
                TESpEditStd(aForm.Components[aFormComponentCounter]).onChangeColor := EditOnChangeColour;
                TESpEditStd(aForm.Components[aFormComponentCounter]).onChangeFontColor := EditOnChangeFontColour;
                TESpEditStd(aForm.Components[aFormComponentCounter]).borderColour := EditBorderColour;
            end;
//******* TESpEditStd END *************************************************************************************************************8

//******* TESpLabel *************************************************************************************************************8
          if (aForm.Components[aFormComponentCounter].ClassType = (TESpLabel)) then
            begin
              { TODO : Define font color for labels and table path }
                if TESpLabel(aForm.Components[aFormComponentCounter]).Tag = 0 then
                  begin
                    TESpLabel(aForm.Components[aFormComponentCounter]).Font.Color := LabelMainFontColour;
                    TESpLabel(aForm.Components[aFormComponentCounter]).SetOriginalColour(LabelMainFontColour);
                    TESpLabel(aForm.Components[aFormComponentCounter]).negativeColor := LabelMainFontColourNegative;
                    TESpLabel(aForm.Components[aFormComponentCounter]).Font.Style := [fsBold];
                  end
                else if TESpLabel(aForm.Components[aFormComponentCounter]).Tag = 1  then
                  begin
                    TESpLabel(aForm.Components[aFormComponentCounter]).Font.Color := LabelHeaderFontColour;
                    TESpLabel(aForm.Components[aFormComponentCounter]).SetOriginalColour(LabelHeaderFontColour);
                    TESpLabel(aForm.Components[aFormComponentCounter]).negativeColor := LabelHeaderFontColourNegative;
                    TESpLabel(aForm.Components[aFormComponentCounter]).Font.Style := [fsBold];
                  end
                else if TESpLabel(aForm.Components[aFormComponentCounter]).Tag = 2  then
                  begin
                    TESpLabel(aForm.Components[aFormComponentCounter]).Font.Color := LabelTertiaryFontColour;
                    TESpLabel(aForm.Components[aFormComponentCounter]).SetOriginalColour(LabelTertiaryFontColour);
                    TESpLabel(aForm.Components[aFormComponentCounter]).negativeColor := LabelTertiaryFontColourNegative;
                    TESpLabel(aForm.Components[aFormComponentCounter]).Font.Style := [fsBold];
                  end;

              if ScaleUp = True then
                TESpLabel(aForm.Components[aFormComponentCounter]).Font.Size := math.floor(TSpFormatLabel(aForm.Components[aFormComponentCounter]).Font.Size * FontSizeFacter);

              if MainForm.Height = 800 then
                TESpLabel(aForm.Components[aFormComponentCounter]).Font.Size := TESpLabel(aForm.Components[aFormComponentCounter]).Font.Size + 1;
            end ;
//******* TESpLabel END *************************************************************************************************************8

//********TShape START****************************************************************
  if (aForm.Components[aFormComponentCounter].ClassType = (TShape)) then
  begin
   // TShape(aForm.Components[aFormComponentCounter]).Pen.Color := PopupColour;

    if (TShape(aForm.Components[aFormComponentCounter]).Tag = 1) then
    begin
     // TShape(aForm.Components[aFormComponentCounter]).Brush.Color := PopupColour;
    end
    else
    begin
     // TShape(aForm.Components[aFormComponentCounter]).Brush.Color := PopupBGColour;
    end;
  end;
//********TShape END******************************************************************

          if (aForm.Components[aFormComponentCounter].ClassType = (TLabel)) then
            begin
              { TODO : Define font color for labels and table path }
              //TLabel(aForm.Components[aFormComponentCounter]).Font.Size := math.floor(TSpFormatLabel(aForm.Components[aFormComponentCounter]).Font.Size * FontSizeFacter);
            end ;



          if aForm.Components[aFormComponentCounter].ClassType = TESpComboBox then
          begin
            TESpComboBox(aForm.Components[aFormComponentCounter]).Color := CBColour;
            TESpComboBox(aForm.Components[aFormComponentCounter]).Font.Color := CBTextColour;
            TESpComboBox(aForm.Components[aFormComponentCounter]).itemColor := CBItemColour;
            TESpComboBox(aForm.Components[aFormComponentCounter]).selectedItemColor := CBSelectedItemColour;
            TESpComboBox(aForm.Components[aFormComponentCounter]).selectedTextColor := CBSelectedTextColour;
            TESpComboBox(aForm.Components[aFormComponentCounter]).textColor := CBTextColour;
            TESpComboBox(aForm.Components[aFormComponentCounter]).ArrowColor := CBArrowColour;
            TESpComboBox(aForm.Components[aFormComponentCounter]).BorderColor := CBBorderColour;
            TESpComboBox(aForm.Components[aFormComponentCounter]).ButtonColor := CBButtonColour;
            TESpComboBox(aForm.Components[aFormComponentCounter]).Cursor := CBCursor;
            TESpComboBox(aForm.Components[aFormComponentCounter]).Style := CBStyle;
          end;

          if aForm.Components[aFormComponentCounter].ClassType = TSpComboBoxConnector then
          begin
            TSpComboBoxConnector(aForm.Components[aFormComponentCounter]).Color := CBColour;
            TSpComboBoxConnector(aForm.Components[aFormComponentCounter]).Font.Color := CBTextColour;
            TSpComboBoxConnector(aForm.Components[aFormComponentCounter]).itemColor := CBItemColour;
            TSpComboBoxConnector(aForm.Components[aFormComponentCounter]).selectedItemColor := CBSelectedItemColour;
            TSpComboBoxConnector(aForm.Components[aFormComponentCounter]).selectedTextColor := CBSelectedTextColour;
            TSpComboBoxConnector(aForm.Components[aFormComponentCounter]).textColor := CBTextColour;
            TSpComboBoxConnector(aForm.Components[aFormComponentCounter]).ArrowColor := CBArrowColour;
            TSpComboBoxConnector(aForm.Components[aFormComponentCounter]).BorderColor := CBBorderColour;
            TSpComboBoxConnector(aForm.Components[aFormComponentCounter]).ButtonColor := CBButtonColour;
            TSpComboBoxConnector(aForm.Components[aFormComponentCounter]).Cursor := CBCursor;
            TSpComboBoxConnector(aForm.Components[aFormComponentCounter]).Style := CBStyle;
          end;

          if ScaleUp = True then
            Begin
              if aForm.Components[aFormComponentCounter].ClassType = TComboBox then
                begin
                  TComboBox(aForm.Components[aFormComponentCounter]).Font.Size := math.floor(TComboBox(aForm.Components[aFormComponentCounter]).Font.Size * FontSizeFacter);
                end ;



              if aForm.Components[aFormComponentCounter].ClassType = TListBox then
                begin
                  TListBox(aForm.Components[aFormComponentCounter]).Font.Size := math.floor(TListBox(aForm.Components[aFormComponentCounter]).Font.Size * FontSizeFacter);
                  TListBox(aForm.Components[aFormComponentCounter]).Font.Color := FontColor1;
                end;

              if aForm.Components[aFormComponentCounter].ClassType = TLabel then
                begin
                  TLabel(aForm.Components[aFormComponentCounter]).Font.Size := math.floor(TLabel(aForm.Components[aFormComponentCounter]).Font.Size * FontSizeFacter);
                end ;

              if aForm.Components[aFormComponentCounter].ClassType = TEdit then
                begin
                  TEdit(aForm.Components[aFormComponentCounter]).Font.Size := math.floor(TEdit(aForm.Components[aFormComponentCounter]).Font.Size * FontSizeFacter);
                end;

              if aForm.Components[aFormComponentCounter].ClassType = TESpComboBox then
                begin
                  TESpComboBox(aForm.Components[aFormComponentCounter]).Font.Size := math.floor(TESpComboBox(aForm.Components[aFormComponentCounter]).Font.Size * FontSizeFacter);
                end;

              if aForm.Components[aFormComponentCounter].ClassType = TSpComboBoxConnector then
                begin
                  TSpComboBoxConnector(aForm.Components[aFormComponentCounter]).Font.Size := math.floor(TSpComboBoxConnector(aForm.Components[aFormComponentCounter]).Font.Size * FontSizeFacter);
                end;
            end;
      end;
    end;
end;

procedure TDataModule2.ShellExecute_AndWait(FileName, Params: string);
var
  exInfo: TShellExecuteInfo;
  Ph: DWORD;
begin
  FillChar(exInfo, SizeOf(exInfo), 0);
  with exInfo do
  begin
    cbSize := SizeOf(exInfo);
    fMask := SEE_MASK_NOCLOSEPROCESS or SEE_MASK_FLAG_DDEWAIT;
    Wnd := GetActiveWindow();
    ExInfo.lpVerb := 'open';
    ExInfo.lpParameters := PChar(Params);
    lpFile := PChar(FileName);
    nShow := SW_SHOWNORMAL;
  end;
  if ShellExecuteEx(@exInfo) then
    Ph := exInfo.HProcess
  else
  begin
    ShowMessage(SysErrorMessage(GetLastError));
    Exit;
  end;
  while WaitForSingleObject(ExInfo.hProcess, 50) <> WAIT_OBJECT_0 do
    Application.ProcessMessages;
  CloseHandle(Ph);
end;

function TDataModule2.UnFormat(AFormattedString: string): string;
var
PositionCounter: Integer;
AnUnFormattedString:  String;
begin
  PositionCounter := Length(AFormattedString);
  AnUnFormattedString := '';

  while PositionCounter > 0 do
    begin
      case AFormattedString[PositionCounter] of
        '0' .. '9': AnUnFormattedString := AFormattedString[PositionCounter] + AnUnFormattedString ;
        ',':  begin
                if FormatSettings.DecimalSeparator = ',' then
                  AnUnFormattedString := AFormattedString[PositionCounter] + AnUnFormattedString ;
              end;
        '.':  begin
              if FormatSettings.DecimalSeparator = '.' then
                  AnUnFormattedString := AFormattedString[PositionCounter] + AnUnFormattedString ;
              end;
        ' ':  begin
              if FormatSettings.DecimalSeparator = ' ' then
                  AnUnFormattedString := AFormattedString[PositionCounter] + AnUnFormattedString ;
              end;
        '-': AnUnFormattedString := AFormattedString[PositionCounter] + AnUnFormattedString ;
      end;

      PositionCounter := PositionCounter - 1;
    end;

  if (AnUnFormattedString = '') then
    AnUnFormattedString := '0';

  Result := AnUnFormattedString;
end;

procedure TDataModule2.updateForm(aForm: TForm);
var
  n: Integer;
begin
  with aForm do
    begin
      for n := 0 to componentcount -1 do
        begin
          if not ((components[n].InheritsFrom(TCustomControl)) or (components[n].InheritsFrom(TScrollingWinControl)) or (components[n].InheritsFrom(TCustomTabControl))) then
            begin
              if (components[n].ClassType = TeSpLabel) then
                TSpFormatLabel(components[n]).Read;
            end
          else
            updateForm(TForm(components[n]));
        end;
    end;
end;


// Updates the page title that appears in the top flash bar.
procedure TDataModule2.UpdatePageTitle(titleString: string);
begin
  MainForm.TopMenu.FlashVars := 'PageTitle=' + titleString;
  MainForm.TopMenu.FlashVars := 'begin=' + 'yes';
end;

// Uses recursion to loop through all TESpLabel controls on a specified TabSheet
// and updates their captions. Stops when all labels have been updated.
procedure TDataModule2.updateTabSheet(aTabSheet: TTabSheet);
var
  n: Integer;
begin
  if not(isLoading) then
  begin
    with aTabSheet do
    begin
      for n := 0 to ControlCount -1 do
      begin
        if not ((Controls[n].InheritsFrom(TCustomControl)) or (Controls[n].InheritsFrom(TScrollingWinControl)) or (Controls[n].InheritsFrom(TCustomTabControl))) then
        begin
          if (Controls[n].ClassType = TESpLabel) then
            TESpLabel(Controls[n]).Read;
        end
        else
        begin
          updateTabSheet(TTabSheet(Controls[n]));
        end;
      end;
    end;
  end;
end;

{
procedure TDataModule2.ViewReference(RefNumber: integer);
begin
  MainForm.refer := 'REF'+inttostr(RefNumber);
  References.Panel1Click(nil);
  if RefNumber <> 99 then
    begin
      References.Height := (20*References.RichEdit1.Lines.Count+28);
      References.RichEdit1.ScrollBars := ssNone;
      References.Panel4.Visible := True;
    end
  else
    begin
      References.Height := MainForm.Height;
      References.RichEdit1.ScrollBars := ssVertical;
      References.Panel4.Visible := False;
    end;
  References.RichEdit1.Height := References.Height;
  References.RichEdit1.SelStart := 0;
  References.Position := poScreenCenter;
  References.visible := true;
end;
}

procedure TDataModule2.WMActivateApp(var Msg: TMessage);
begin
  {if Msg.wParam = 0 then
    //Add code to run if application is not active
  else
    //Add code to run if application is active}

  inherited;
end;

function TDataModule2.Word_StringReplace(MWord: Variant; SearchString,
  ReplaceString: string; Flags: TWordReplaceFlags): Boolean;
const
  wdFindContinue = 1;
  wdReplaceOne = 1;
  wdReplaceAll = 2;
  wdDoNotSaveChanges = 0;
var
  WordApp: OLEVariant;
begin
  Result := False;
  { Initialize parameters}
  MWord.Selection.Find.ClearFormatting;
  MWord.Selection.Find.Text := SearchString;
  MWord.Selection.Find.Replacement.Text := ReplaceString;
  MWord.Selection.Find.Forward := True;
  MWord.Selection.Find.Wrap := wdFindContinue;
  MWord.Selection.Find.Format := False;
  MWord.Selection.Find.MatchCase := wrfMatchCase in Flags;
  MWord.Selection.Find.MatchWholeWord := False;
  MWord.Selection.Find.MatchWildcards := wrfMatchWildcards in Flags;
  MWord.Selection.Find.MatchSoundsLike := False;
  MWord.Selection.Find.MatchAllWordForms := False;

  { Perform the search}

  if wrfReplaceAll in Flags then
    MWord.Selection.Find.Execute(Replace := wdReplaceAll)
  else
    MWord.Selection.Find.Execute(Replace := wdReplaceOne);
  { Save word }

  { Assume that successful }
  Result := True;
end;

{ TMyHintWindow }

constructor TMyHintWindow.Create(AOwner: TComponent);
begin
  Inherited Create (AOwner) ;
  ShowMsgSwitched('Message Q: Modify following code to change hints font and size');
  Canvas.Font.Name := 'Arial' ;
  Canvas.Font.Size := 12;
end;

end.
