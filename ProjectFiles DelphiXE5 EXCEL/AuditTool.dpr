program AuditTool;

uses
  Forms,
  FlashPlayerControl,
  Dialogs,
  shellapi,
  shlobj,
  About in 'About\About.pas' {Aboutbox},
  Splash in 'Splash\Splash.pas' {Splashscreen},
  windows,
  sysutils,
  Functions in 'Functions.pas',
  ref in 'References\ref.pas' {References},
  PI in 'PI.pas' {PrescInfo},
  DataModuleUnit2 in 'DataModuleUnit2.pas' {DataModule2: TDataModule},
  Unit1 in 'Unit1.pas' {MainForm},
  UtilitiesUnit in 'UtilitiesUnit.pas' {frmUtilities},
  newAboutUnit in 'AboutNew\newAboutUnit.pas' {frmNewAbout},
  FlashRefunit in 'FlashRef\FlashRefunit.pas' {Reffrm},
  frmConfrimExitU in 'frmConfrimExitU.pas' {frmConfirmExit},
  RegistrationUnit in 'RegistrationUnit.pas' {frmRegistration},
  UserDefPop in 'D9EXL\UserDefPop.pas' {frmUserDefPop},
  uFadeForm in 'Fade\uFadeForm.pas' {frmFadeForm},
  frm_frmSpreadsheetUnit in 'frm_frmSpreadsheetUnit.pas' {frmSpreadsheet},
  unitDBControls in 'unitDBControls.pas' {frmDBControls},
  uniSectionEnd in 'uniSectionEnd.pas' {frmEndSection},
  uniEpisodeDatePicker in 'uniEpisodeDatePicker.pas' {frmEpisodeDatePicker},
  Report in 'Report.pas' {frmReport},
  unitDBControlsForReport in 'unitDBControlsForReport.pas' {frmDBControlsForReport},
  unitWindowCapture in 'unitWindowCapture.pas' {frmWindowCapture},
  uniImagesToCapture in 'uniImagesToCapture.pas' {frmImagesToCapture},
  uniGen in 'uniGen.pas' {frmGen},
  uniNewID in 'uniNewID.pas' {frmNewID},
  unitReportUserOptions in 'unitReportUserOptions.pas' {frmReportUserOptions},
  unitUltimateSplash in 'unitUltimateSplash.pas' {frmUltimateSplash},
  uConfirmDelete in 'uConfirmDelete.pas' {frmConfirmDelete};

{$R *.RES}
var SplashScreen : TSplashScreen;
var parentDirectory :string;
var itemCounter,I :Integer;
var F: TextFile;
var canProceed: boolean;
var trackingDatabasePath: string;
var trackingIsActive: Boolean;
var AppPath, AppDataPath, ComDocPath: string;
var AppDataPathAbacus, ComDocPathAbacus: string;
var NoAdminPaths: string;
var messageToDisplay: string;
var workbooksCounter: Integer;
var Level: Integer;
var failedConnection: Boolean;
var anError: Exception;

function getparentDirectory: string;
var
  tempString: string;
  lastCharPos: integer;
begin
  tempString := Copy(AppPath,0,Length(AppPath) - 1);
  lastCharPos := LastDelimiter('\',tempString);
  tempString := Copy(tempString,0,lastCharPos - 1);
  Result := tempString;
end;

function GetEnviromentVariable(EnVar : String): string;
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

begin
  Application.Initialize;

  try
    //Program Files folder
    AppPath := ExtractFilePath(Application.ExeName);

    //C:\Documents and Settings\All Users\Application Data folder
    AppDataPath := GetEnviromentVariable('AppData') + '\';

    //C:\Documents and Settings\All Users\Documents\Abacus folder
    ComDocPath := GetEnviromentVariable('ComDoc') + '\';

    //C:\Documents and Settings\All Users\Documents folder
    ComDocPathAbacus := ComDocPath + 'Abacus\';

    //C:\Documents and Settings\All Users\Application Data\Abacus
    AppDataPathAbacus := AppDataPath + 'Abacus\';

    try
      // Check files attributes
      AssignFile(F, AppPath + 'Test.txt');
      Rewrite(F);
      WriteLn(F, 'File created to check admin rights');
      CloseFile(F);

      if FileExists(AppPath + 'Test.txt') then
        DeleteFile(AppPath + 'Test.txt');
    except
      noAdminPaths := AppPath;
    end;

    noAdminPaths := Trim(noAdminPaths);

    try
      // Check files attributes
      AssignFile(F, AppDataPath + 'Test.txt');
      Rewrite(F);
      WriteLn(F, 'File created to check admin rights');
      CloseFile(F);

      if FileExists(AppDataPath + 'Test.txt') then
        DeleteFile(AppDataPath + 'Test.txt');
    except
      if NoAdminPaths = '' then
        noAdminPaths := AppDataPath
      else
        noAdminPaths := noAdminPaths + ',' + AppDataPath;
    end;

    noAdminPaths := Trim(noAdminPaths);

    try
      // Check files attributes
      AssignFile(F, AppDataPathAbacus + 'Test.txt');
      Rewrite(F);
      WriteLn(F, 'File created to check admin rights');
      CloseFile(F);

      if FileExists(AppDataPathAbacus + 'Test.txt') then
        DeleteFile(AppDataPathAbacus + 'Test.txt');
    except
      if NoAdminPaths = '' then
        noAdminPaths := AppDataPathAbacus
      else
        noAdminPaths := noAdminPaths + ',' + AppDataPathAbacus;
    end;

    noAdminPaths := Trim(noAdminPaths);

    try
      // Check files attributes
      AssignFile(F, ComDocPath + 'Test.txt');
      Rewrite(F);
      WriteLn(F, 'File created to check admin rights');
      CloseFile(F);

      if FileExists(ComDocPath + 'Test.txt') then
        DeleteFile(ComDocPath + 'Test.txt');
    except
      if NoAdminPaths = '' then
        noAdminPaths := ComDocPath
      else
        noAdminPaths := noAdminPaths + ',' + ComDocPath;
    end;

    noAdminPaths := Trim(noAdminPaths);

    try
      // Check files attributes
      AssignFile(F, ComDocPathAbacus + 'Test.txt');
      Rewrite(F);
      WriteLn(F, 'File created to check admin rights');
      CloseFile(F);

      if FileExists(ComDocPathAbacus + 'Test.txt') then
        DeleteFile(ComDocPathAbacus + 'Test.txt');
    except
      if NoAdminPaths = '' then
        noAdminPaths := ComDocPathAbacus
      else
        noAdminPaths := noAdminPaths + ',' + ComDocPathAbacus;
    end;

    noAdminPaths := Trim(noAdminPaths);

    if (noAdminPaths <> '') then
      begin
        messageToDisplay := 'You do not have enough admin privileges to run this application properly.' + #13#13#10;
        if Pos(AppPath,noAdminPaths) <> 0 then
          begin
            messageToDisplay := messageToDisplay + 'Specifically you do not have read/write access to the working directory of this application:' + #13;
            messageToDisplay := messageToDisplay + #09 + 'path: ' + AppPath + #13#13#10;
          end;
        if Pos(AppDataPath,noAdminPaths) <> 0 then
          begin
            messageToDisplay := messageToDisplay + 'Specifically you do not have read/write access to the common application data folder used by this application:' + #13;
            messageToDisplay := messageToDisplay + #09 + 'path: ' + AppDataPath + #13#13#10;
          end;
        if Pos(AppDataPathAbacus,noAdminPaths) <> 0 then
          begin
            messageToDisplay := messageToDisplay + 'Specifically you do not have read/write access to the common application data folder used by this application:' + #13;
            messageToDisplay := messageToDisplay + #09 + 'path: ' + AppDataPathAbacus + #13#13#10;
          end;
        if Pos(ComDocPath,noAdminPaths) <> 0 then
          begin
            messageToDisplay := messageToDisplay + 'Specifically you do not have read/write access to the common documents folder used by this application:' + #13;
            messageToDisplay := messageToDisplay + #09 + 'path: ' + ComDocPath + #13#13#10;
          end;
        if Pos(ComDocPathAbacus,noAdminPaths) <> 0 then
          begin
            messageToDisplay := messageToDisplay + 'Specifically you do not have read/write access to the common documents folder used by this application:' + #13;
            messageToDisplay := messageToDisplay + #09 + 'path: ' + ComDocPathAbacus;
          end;

       // showmessage(messageToDisplay);
      end;

    FlashPlayerControl.SetContext('f78aaa5d-0001-4074-8100-7153a55e9d23');

    ShowMsgSwitched('Message S: Activate following line if tracker is installed');

    trackingIsActive := False;

    if trackingIsActive then
      trackingDatabasePath := AppDataPath + 'Abacus\Data\local.mdb';

    if (trackingIsActive) and (not(FileExists(trackingDatabasePath))) then
      begin
        ShowMessage('Report module have not been installed.');
      end
    else
      begin
        {code below to run splash screen. Before doing so make sure you open the splash screen
         project files and make sure the splash screen compiles to the right place also
         load in correct movie for your project. Any questions see DS.}
        ShellExecute(application.handle, Pchar('open'), PChar(AppPath+'System\Splash.exe'), pchar(AppPath+'Animation\ALC_SPLASH.swf||||no'), nil, SW_SHOWNORMAL);

        Application.Title := 'SET';
        Application.CreateForm(TDataModule2, DataModule2);
  //
        DataModule2.isLoading := True;
        DataModule2.fromMainModule := True;
        DataModule2.trackingIsActive := trackingIsActive;
        DataModule2.UserManagementTool1.canConnect := trackingIsActive;
        DataModule2.AppPath := AppPath;
        DataModule2.AppDataPath := AppDataPath;
        DataModule2.ComDocPath := ComDocPath;
        //     showmessage('Dan_1');
        parentDirectory := DataModule2.GetParentDirectory;
        DataModule2.parentDirectory := DataModule2.GetParentDirectory;

        if not (DataModule2.DefaultSp.Filename = '') then
        begin
          ShowMessage('The DefaultSP file path needs to be cleared!');
        end;

        if not (DataModule2.Population.Filename = '') then
        begin
          ShowMessage('The Population file path needs to be cleared!');
        end;

        ShowMsgSwitched('Message B: Please assign model spreadsheet. You do not need to downgrade it to Excel95');

        DataModule2.DefaultSP.AutoRecalc := False;
        DataModule2.Population.AutoRecalc := False;
        DataModule2.DefaultSP.Visible := False;
        DataModule2.Population.Visible := False;
        DataModule2.ESaveOpen1.WriteToSp := True;
     //   showmessage('Dan_2');
        Application.CreateForm(TMainForm, MainForm);
        Application.CreateForm(TfrmDBControls, frmDBControls);
        //Forms creation
        Application.CreateForm(TfrmSpreadsheet, frmSpreadsheet);

        //Create parent form to host Excel
        DataModule2.DefaultSP.parentForm := frmSpreadsheet;
    //    showmessage('Dan_3');
   {     if FileExists(parentDirectory + '\AbacusP.aba') then
          DataModule2.Population.Filename := parentDirectory + '\AbacusP.aba'
        else
          MessageDlg('The Population.Filename property has not been assigned' + #10#13 + 'or it has been assigned to a non-existent file.', mtError, [mbOK], 0);

        if FileExists(AppPath + 'System\yourSP.xls') then
          DataModule2.DefaultSp.Filename := AppPath + 'System\yourSP.xls'
        else
          MessageDlg('The DefaultSp.Filename property has not been assigned' + #10#13 + 'or it has been assigned to a non-existent file.', mtError, [mbOK], 0);

        for workbooksCounter := 1 to DataModule2.ExcelServer1.Excel.Workbooks.Count do
          begin
            DataModule2.ExcelServer1.Excel.Workbooks[workbooksCounter].Activate;
            DataModule2.ExcelServer1.Excel.Visible := False;
            DataModule2.WorkbookAutoRecover := False;
          end;
                }

        {if DataModule2.IsTaskBarautoHideOn = False then
          begin
            DataModule2.ABData.cbSize := sizeof(tappbardata);
            DataModule2.ABData.hWnd := FindWindow('SHELL_TRAYWND', nil);
            DataModule2.ABData.lParam := LParam(ABS_ALWAYSONTOP or ABS_AUTOHIDE);
            SHAppBarMessage($0000000a, DataModule2.ABData);
            DataModule2.hasAutoHideChanged := True;
          end;}

        DataModule2.paramsString := '';

        for I := 0 to system.ParamCount do
          DataModule2.paramsString := DataModule2.paramsString +' '+System.ParamStr(I);

        if (Pos('Utilities',DataModule2.paramsString) <> 0) then
          MainForm.Utilities.Visible := true
        else
          MainForm.Utilities.Visible := False;

        ShowMsgSwitched('Message D: Please assign splash screen picture');

        //Forms creation
        Application.CreateForm(TfrmUtilities, frmUtilities);
        Application.CreateForm(TfrmNewAbout, frmNewAbout);
        Application.CreateForm(TReffrm, Reffrm);
        Application.CreateForm(TfrmConfirmExit, frmConfirmExit);
        Application.CreateForm(TPrescInfo, PrescInfo);
        Application.CreateForm(TReferences, References);
        Application.CreateForm(TfrmRegistration, frmRegistration);
        Application.CreateForm(TPrescInfo, PrescInfo);
        Application.CreateForm(TfrmUserDefPop, frmUserDefPop);
        Application.CreateForm(TfrmFadeForm, frmFadeForm);
        Application.CreateForm(TfrmEpisodeDatePicker, frmEpisodeDatePicker);
        Application.CreateForm(TfrmEndSection, frmEndSection);
        Application.CreateForm(TfrmReport, frmReport);
        Application.CreateForm(TfrmDBControlsForReport, frmDBControlsForReport);
        Application.CreateForm(TfrmWindowCapture, frmWindowCapture);
        Application.CreateForm(TfrmImagesToCapture, frmImagesToCapture);
        Application.CreateForm(TfrmGen, frmGen);
        Application.CreateForm(TfrmNewID, frmNewID);
        Application.CreateForm(TfrmReportUserOptions, frmReportUserOptions);
        Application.CreateForm(TfrmUltimateSplash, frmUltimateSplash);
        Application.CreateForm(TfrmConfirmDelete, frmConfirmDelete);
        frmConfirmExit.Visible := False;

        frmDBControls.ALC_Connection_1.Connected := False;

       // showmessage('Dan_4');
        if ((Screen.Width <> 1024) or (Screen.Height <> 768)) then
          mainform.setupComps(MainForm, True)
        else
           mainform.setupComps(MainForm, False);
      //  showmessage('Dan_4a');
        DataModule2.setupcomponents(frmUserDefPop, False);
     //   showmessage('Dan_4b');
        DataModule2.setupcomponents(frmEpisodeDatePicker, False);
      //  showmessage('Dan_4c');
        DataModule2.setupcomponents(frmWindowCapture, False);
     //   showmessage('Dan_4d');
        DataModule2.setupcomponents(frmImagesToCapture, False);
     //   showmessage('Dan_4e');
        DataModule2.setupcomponents(frmGen, False);
      //  showmessage('Dan_4f');
        DataModule2.setupcomponents(frmNewID, False);
      //
        DataModule2.setupcomponents(frmReportUserOptions, False);
        DataModule2.setupcomponents(frmConfirmDelete, False);
     //   showmessage('Dan_4g');
        DataModule2.languageID := '044';

        ShowMsgSwitched('Message E: Activate following code if application is multilanguage');
     //   showmessage('Dan_5');
        { TODO : Activate following code if application is multilanguage }

        {if (Pos('UK',MainForm.paramsString) <> 0) then
          begin
            CopyFile(PChar(MainForm.AppPath + 'System\DefaultUK'),PChar(MainForm.AppPath + 'Saves\Default'),False);
            MainForm.languageID := '044';
          end;

        if (Pos('France',MainForm.paramsString) <> 0) then
          begin
            CopyFile(PChar(MainForm.AppPath + 'System\DefaultUK'),PChar(MainForm.AppPath + 'Saves\Default'),False);
            MainForm.languageID := '033';
          end;

        if (Pos('France',MainForm.paramsString) <> 0) then
          begin
            CopyFile(PChar(MainForm.AppPath + 'System\DefaultUK'),PChar(MainForm.AppPath + 'Saves\Default'),False);
            MainForm.languageID := '039';
          end;}

        DataModule2.SetSaveOpenBuilderProperties;
        MainForm.Notebook1.PageIndex := 0;
        MainForm.PageControl1.ActivePageIndex := 1;
        ShowMsgSwitched('Message O: Create Default file and activate following code');
        //DataModule2.LoadFile(True);
        DataModule2.isLoading := False;
        DataModule2.fromMainModule := False;
        DataModule2.DefaultSP.AutoRecalc := True;
        DataModule2.Population.AutoRecalc := True;
        DataModule2.CloseApp('Loading');
        ShowMsgSwitched('Message J: Add code to perform actions in the procedure called WMActivateApp if application is active or not. If not needed, just comment out this message. ');
        DataModule2.UserManagementTool1.PresentationGroupID := GUIDToString(DataModule2.UserManagementTool1.GetNewGUID);
        if DataModule2.GetMSOfficeVersion = 'Microsoft Office 2010' then
          DataModule2.IsOffice2010Installed := True
        else
          DataModule2.IsOffice2010Installed := False;

        failedConnection := False;

        // start database connection
        DataModule2.fromMainModule := False;
        frmDBControls.centreFound := False;
        frmDBControls.patientsFound := False;
        frmDBControls.patientSaved := False;

        if FileExists(AppPath+'\System\db.mdb') then
          begin
            //Need to password protect database and pass password through the connection string (See SelfFit project)
            frmDBControls.ALC_Connection_1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+AppPath+'\System\db.mdb'+';Persist Security Info=False';
            Mainform.canTerminate := false;
            // if database operations are successful set username and password for input tool
            Mainform.inputTool_UserName := 'admin';
            Mainform.inputTool_Password := 'qwerty123!';
          end
        else
          begin
            frmDBControls.ViewText(Mainform,'The database could not be located.%0dThe application must now terminate.%0dPlease call the Abacus development team on %2B44(0)1869 241281', 'Warning:');
            anError := Exception.Create('no database connection established');
            frmDBControls.ShowDatabaseError(nil, anError, 'database connection','CONNECTION ERROR: it was not possible to establish a database connection');
            Mainform.canTerminate := true;
          end;

        MainForm.flashTitle.FlashVars := 'versionInfo=' + 'JUNE 2014 | VERSION 2.0.0' ;
        MainForm.flashTitle.Repaint;
        frmReport.FormActivate(nil);
        MainForm.lastHighlightedLab := nil;

        //get centre details or initialise a new one
        frmDBControls.ALC_TBL_Centres.Open;
        if frmDBControls.ALC_TBL_Centres.RecordCount = 0 then
          begin
            frmDBControls.centreFound := False;
          end
        else
          begin
            frmDBControls.centreFound := True;
          end;

        if not(frmDBControls.centreFound) then
          begin
            frmDBControls.IntialiseNewCentre;
          end
        else
          begin
            frmDBControls.getCentresDetails;
          end;

        Application.Run;
      end;
  except
    on E: Exception do
      begin
        ShowMessage('Template Interactive Model failed to load: ' + E.Message);
        Mainform.canTerminate := true;
        Application.Terminate;
      end;
  end;
end.
