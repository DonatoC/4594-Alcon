unit RegistrationUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, FlashPlayerControl, ExtCtrls, Functions, CustomEFlashButtonUnit,
  CustomESpLabelUnit, CustomESpEditStdUnit;

type
  TfrmRegistration = class(TForm)
    Shape2: TShape;
    Shape1: TShape;
    Title: TSpFormatLabel;
    CloseButton: TFlashButtonEx;
    spLabel20: TSpFormatLabel;
    SpFormatLabel1: TSpFormatLabel;
    SpFormatLabel2: TSpFormatLabel;
    SpFormatLabel3: TSpFormatLabel;
    OKButton: TFlashButtonEx;
    Memo1: TMemo;
    SpFormatLabel4: TSpFormatLabel;
    Shape3: TShape;
    SpFormatLabel5: TSpFormatLabel;
    CheckBox1: TCheckBox;
    SpFormatLabel6: TSpFormatLabel;
    edName: TESpEditStd;
    edSurname: TESpEditStd;
    edEmail: TESpEditStd;
    edJobTitle: TESpEditStd;
    procedure btnDisagreeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure edNameKeyPress(Sender: TObject; var Key: Char);
    procedure edSurnameKeyPress(Sender: TObject; var Key: Char);
    procedure edJobTitleKeyPress(Sender: TObject; var Key: Char);
    procedure edEmailKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    AppPath :String;
    VersionNo: string;
    State: string;
    procedure SplitStrings(Input: string; const Delimiter: Char; const Strings: TStringList);
    function IsValidEmail(const Value: string): boolean;
    function CheckAllowed(const s: string): boolean;
    function Occurs(const str: string; c: char): integer;
  end;

var
  frmRegistration: TfrmRegistration;
  AreWeDragging : Boolean;
  StartPosX, StartPosY : integer;
  FlashCodeStream: TFileStream;

implementation

uses DataModuleUnit2, Unit1;

{$R *.DFM}
procedure TfrmRegistration.btnDisagreeClick(Sender: TObject);
begin
  ModalResult := mrAbort;
end;

function TfrmRegistration.CheckAllowed(const s: string): boolean;
var
  i: integer;
begin
  Result:= false;
  for i:= 1 to Length(s) do
  begin
    // illegal char in s -> no valid address
    if not (s[i] in ['a'..'z','A'..'Z','0'..'9','_','-','.']) then
      Exit;
  end;
  Result:= true;
end;


procedure TfrmRegistration.edEmailKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['a'..'z','A'..'Z','0'..'9','_','-','.', '@', #8]) then
    Key := #0;
end;

procedure TfrmRegistration.edJobTitleKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['A'..'Z', 'a'..'z', '''', '-', '/', '%', #8, ' '] then
  else
    Key := #0;
end;

procedure TfrmRegistration.edNameKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['A'..'Z', 'a'..'z', '''', '-', #8, ' ']) then
    Key := #0;
end;

procedure TfrmRegistration.edSurnameKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['A'..'Z', 'a'..'z', '''', '-', #8, ' ']) then
    Key := #0;
end;

procedure TfrmRegistration.FormCreate(Sender: TObject);
var
  CompanyName: string;
begin
  DataModule2.setupcomponents(Self, False);
  DataModule2.DefaultSP.Sheet := 1;
  DataModule2.DefaultSP.Col := 3;
  DataModule2.DefaultSP.Row := 2;
  CompanyName := DataModule2.DefaultSP.Text;
  SpFormatLabel5.Caption := StringReplace(SpFormatLabel5.Caption, 'xxxxxx', CompanyName, [rfReplaceAll, rfIgnoreCase]);
end;

procedure TfrmRegistration.FormShow(Sender: TObject);
begin
  AppPath := ExtractFilePath(Application.ExeName);

  //btnDisagree.CallFunction('<invoke name="drawBTN" returntype="xml"><arguments><string>I disagree</string></arguments></invoke>');
  //btnAgree.CallFunction('<invoke name="drawBTN" returntype="xml"><arguments><string>I agree</string></arguments></invoke>');
  //btnClose.CallFunction('<invoke name="drawBTN" returntype="xml"><arguments><string>Close</string></arguments></invoke>');
end;

procedure TfrmRegistration.CloseButtonClick(Sender: TObject);
begin
  if CloseButton.ButtonCaption = 'Exit the model' then
    if MessageDlg('Are you sure you want to exit the model?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      Application.Terminate
    else
      Exit
  else
    Close;
end;

procedure TfrmRegistration.OKButtonClick(Sender: TObject);
var
  aFile: TextFile;
begin
  if not(DirectoryExists(DataModule2.AppDataPath + '\Abacus\System')) then
    CreateDir(PWideChar(DataModule2.AppDataPath + '\Abacus\System'));

  if not(FileExists(DataModule2.AppDataPath + '\Abacus\System\lgndtl')) then
    begin
      AssignFile(aFile, DataModule2.AppDataPath + '\Abacus\System\lgndtl'); {Assigns the Filename}
      ReWrite(aFile); {Create a new file named lgndtl}
      Closefile(aFile); {Closes file F}
    end;

  edName.Text := trim(edName.Text);
  edEmail.Text := trim(edEmail.Text);
  edJobTitle.Text := trim(edJobTitle.Text);
  edSurname.Text := trim(edSurname.Text);

  if (edName.Text = '') or (edEmail.Text = '') or (edJobTitle.Text = '') or (edSurname.Text = '') then
    begin
      MessageDlg('Please complete all fields.', mtError, [mbOK], 0);
      Exit;
    end
  else
    begin
      if (Length(edName.Text) < 2) then
        begin
          MessageDlg('The name cannot be less than two characters.', mtError, [mbOK], 0);
          Exit;
        end;

      if (Length(edName.Text) > 50) then
        begin
          MessageDlg('The name cannot be more than fifty characters.', mtError, [mbOK], 0);
          Exit;
        end;

      if Occurs(edName.Text,'''') > 1 then
        begin
          MessageDlg('Invalid name. Only one apostrophe allowed.', mtError, [mbOK], 0);
          Exit;
        end;

      if Occurs(edName.Text, '-') > 1 then
        begin
          MessageDlg('Invalid character in the name.', mtError, [mbOK], 0);
          Exit;
        end;

      if Occurs(edSurname.Text,'''') > 1 then
        begin
          MessageDlg('Invalid surname. Only one apostrophe allowed.', mtError, [mbOK], 0);
          Exit;
        end;

      if Occurs(edSurname.Text, '-') > 1 then
        begin
          MessageDlg('Invalid character in the surname.', mtError, [mbOK], 0);
          Exit;
        end;

      if Length(edSurname.Text) < 2 then
        begin
          MessageDlg('The surname cannot be less than two characters.', mtError, [mbOK], 0);
          Exit;
        end;

      if Length(edSurname.Text) > 50 then
        begin
          MessageDlg('The surname cannot be more than fifty characters.', mtError, [mbOK], 0);
          Exit;
        end;

      if not(IsValidEmail(edEmail.Text)) then
        begin
          MessageDlg('Please enter a valid e-mail address.', mtError, [mbOK], 0);
          Exit;
        end;

      if Length(edEmail.Text) > 50 then
        begin
          MessageDlg('The e-mail cannot be more than fifty characters.', mtError, [mbOK], 0);
          Exit;
        end;

      if Length(edJobTitle.Text) < 2 then
        begin
          MessageDlg('The job title cannot be less than two characters.', mtError, [mbOK], 0);
          Exit;
        end;

      if Length(edJobTitle.Text) > 50 then
        begin
          MessageDlg('The job title cannot be less than fifty characters.', mtError, [mbOK], 0);
          Exit;
        end;

      if not(CheckBox1.Checked) then
        begin
          MessageDlg('Please tick the check box to confirm that you have read the terms and conditions.', mtError, [mbOK], 0);
          Exit;
        end;

      if OKButton.ButtonCaption = 'Update' then
        begin
          DataModule2.UserManagementTool1.presentationScreenOrder := 101;
          DataModule2.RecordCurrentScreen('EXITING');
        end;

      Memo1.Clear;
      DataModule2.UserManagementTool1.UserName := Trim(frmRegistration.edName.Text);
      DataModule2.UserManagementTool1.Surname := Trim(frmRegistration.edSurname.Text);
      Memo1.Lines.Add(DataModule2.UserManagementTool1.UserName);
      Memo1.Lines.Add(DataModule2.UserManagementTool1.Surname);
      DataModule2.UserManagementTool1.EMail := Trim(frmRegistration.edEmail.Text);
      Memo1.Lines.Add(DataModule2.UserManagementTool1.EMail);
      DataModule2.UserManagementTool1.jobTitle := Trim(frmRegistration.edJobTitle.Text);
      Memo1.Lines.Add(DataModule2.UserManagementTool1.jobTitle);
      DataModule2.UserManagementTool1.versionNo := Trim(frmRegistration.VersionNo);
      Memo1.Lines.Add(DataModule2.UserManagementTool1.versionNo);
      Memo1.Lines.SaveToFile(DataModule2.AppDataPath + '\Abacus\System\lgndtl');

      if OKButton.ButtonCaption = 'Update' then
        begin
          DataModule2.UserManagementTool1.PresentationGroupID := GUIDToString(DataModule2.UserManagementTool1.GetNewGUID);
          DataModule2.UserManagementTool1.UpdateUserDetails;
        end;

      Close;
    end;
end;

procedure TfrmRegistration.Image1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  StartPosX := X;
  StartPosY := Y;
  AreWeDragging := True;
end;

procedure TfrmRegistration.Image1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if AreWeDragging then
    begin
      Self.Left := Self.Left + (X - StartposX);
      Self.Top := Self.Top + (Y - StartposY);
    end;
end;

procedure TfrmRegistration.Image1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  AreWeDragging := False;
end;

function TfrmRegistration.IsValidEmail(const Value: string): boolean;
var
  i: integer;
  namePart, serverPart: string;
begin // of IsValidEmail
  Result:= false;
  i:= Pos('@', Value);
  if (i = 0) or (pos('..', Value) > 0) then
    Exit;
  namePart:= Copy(Value, 1, i - 1);
  serverPart:= Copy(Value, i + 1, Length(Value));
  if (Length(namePart) = 0)         // @ or name missing
    or ((Length(serverPart) < 4))   // name or server missing or
    then Exit;                      // too short
  i:= Pos('.', serverPart);
  // must have dot and at least 3 places from end
  if (i < 2) or (i > (Length(serverPart) - 2)) then
    Exit;
  Result:= CheckAllowed(namePart) and CheckAllowed(serverPart);
end;


function TfrmRegistration.Occurs(const str: string; c: char): integer;
// Returns the number of times a character occurs in a string
var
  p: PChar;
begin
  Result := 0;
  p := PChar(Pointer(str));
  while p <> nil do begin
    p := StrScan(p, c);
    if p <> nil then begin
      inc(Result);
      inc(p);
    end;
  end;
end;

procedure TfrmRegistration.SplitStrings(Input: string; const Delimiter: Char;
  const Strings: TStringList);
var
    n: integer;
    currentString: string;
    item: string;
begin
  Strings.Sorted := True;
  Strings.Duplicates := dupIgnore;

  Strings.Clear;
  currentString := '';

  for n := 0 to length(Input) do
    begin
      if Input[n] <> Delimiter then
        begin
          currentString := currentString + Input[n];
        end
      else
        begin
          if Trim(currentString) <> '' then
            Strings.Add(Trim(currentString));
          currentString := '';
        end;
    end;

  if Trim(currentString) <> '' then
    Strings.Add(Trim(currentString));
end;

procedure TfrmRegistration.Timer1Timer(Sender: TObject);
begin
  Self.BringToFront;
end;

procedure TfrmRegistration.btnCloseClick(Sender: TObject);
begin
  Close;
end;

initialization
  FlashCodeStream := TFileStream.Create(ExtractFilePath(Application.ExeName)+'System\Flash9b.ocx', fmOpenRead or fmShareDenyNone);
  FlashPlayerControl.LoadFlashOCXCodeFromStream(FlashCodeStream);
  FlashCodeStream.Free;
end.
