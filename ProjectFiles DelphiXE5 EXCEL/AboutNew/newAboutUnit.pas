unit newAboutUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Dialogs,
  FlashPlayerControl, StdCtrls, Forms;

type
  TfrmNewAbout = class(TForm)
    FlashPlayerControl1: TTransparentFlashPlayerControl;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FlashPlayerControl1FSCommand(ASender: TObject; const command,
      args: WideString);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
  sizeset : boolean;
    { Public declarations }
  end;

var
  frmNewAbout: TfrmNewAbout;

implementation

uses Unit1, About, DataModuleUnit2, RegistrationUnit, Functions;

{$R *.DFM}

procedure TfrmNewAbout.FormShow(Sender: TObject);
VAR functionText : string;
begin
  // Collects the about information ready to be passed to the flash player control.
  functionText := '<invoke name="callSplash" returntype="xml"><arguments><string>open</string><string>yes</string><string>About this model</string><string>';
  // Retrieves the project name from the spreadsheet.
  functionText := functionText + 'Project Name: ' + functions.sptostr(DataModule2.DefaultSp,1,3,3);
  // Retrieves the version number from the spreadsheet.
  functionText := functionText + '&lt;br&gt;' + 'Version Number: ' + functions.sptostr(DataModule2.DefaultSp,1,3,9);
  // Retrieves the release date from the spreadsheet.
  functionText := functionText + '&lt;br&gt;' + 'release date: ' + functions.sptostr(DataModule2.DefaultSp,1,3,8);
  // Retrieves the client name from the spreadsheet.
  functionText := functionText + '&lt;br&gt;' + '&lt;br&gt;' + 'This tool was developed by Abacus International and sponsored by ' + functions.sptostr(DataModule2.DefaultSp,1,3,2);
  // Informs the flash player control that the information passed to it has ended.
  functionText := functionText +'</string></arguments></invoke>';

  // Sends the information gathered from the spreadsheet and sends it to the flash player control to be displayed.
  FlashPlayerControl1.CallFunction(functiontext);
end;

procedure TfrmNewAbout.FormPaint(Sender: TObject);
begin
if sizeset = false then
begin
FlashPlayerControl1.Movie := DataModule2.AppPath + 'Animation\ABOUT.swf';
//showmessage(FlashPlayerControl1.Movie);
frmNewAbout.width := mainform.Width;
frmNewAbout.height := mainform.height;
frmNewAbout.top := mainform.top;
frmNewAbout.left := mainform.left;
sizeset := true;
end;
end;

procedure TfrmNewAbout.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//action:= caFree;
end;

procedure TfrmNewAbout.Button1Click(Sender: TObject);
begin
  FlashPlayerControl1.Movie := DataModule2.AppPath + 'Animation\ABOUT.swf';
  //showmessage(FlashPlayerControl1.Movie);
  frmNewAbout.width := mainform.Width;
  frmNewAbout.height := mainform.height;
  frmNewAbout.top := mainform.top;
  frmNewAbout.left := mainform.left;
end;

procedure TfrmNewAbout.Button2Click(Sender: TObject);
VAR functionText : string;
begin
  {functionText := '<invoke name="callSplash" returntype="xml"><arguments><string>open</string><string>yes</string><string>Test</string><string>About this model</string>';
  functionText := functionText +'</arguments></invoke>';
  FlashPlayerControl1.CallFunction(functiontext); }
  // FlashPlayerControl1.CallFunction('<invoke name="callSplash" returntype="xml"><arguments><string>open</string><string>yes</string><string>About this model</string><string>SPMSD</string></arguments></invoke>');
end;

procedure TfrmNewAbout.FlashPlayerControl1FSCommand(ASender: TObject;
  const command, args: WideString);
begin
  if command = 'close' then
    begin
       close;
    end;

  if command = 'update' then
    begin
      frmRegistration.edName.Text := frmRegistration.Memo1.Lines[0];
      frmRegistration.edSurname.Text := frmRegistration.Memo1.Lines[1];
      frmRegistration.edEmail.Text := frmRegistration.Memo1.Lines[2];
      frmRegistration.edJobTitle.Text := frmRegistration.Memo1.Lines[3];
      frmRegistration.OKButton.ButtonCaption := 'Update';
      frmRegistration.CloseButton.ButtonCaption := 'Cancel';
      frmRegistration.edName.Text := DataModule2.UserManagementTool1.UserName;
      frmRegistration.edSurname.Text := DataModule2.UserManagementTool1.Surname;
      frmRegistration.edEmail.Text := DataModule2.UserManagementTool1.EMail;
      frmRegistration.edJobTitle.Text := DataModule2.UserManagementTool1.jobTitle;
      frmRegistration.Visible := True;
    end;
end;

end.
