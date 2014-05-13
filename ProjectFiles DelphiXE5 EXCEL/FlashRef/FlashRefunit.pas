unit FlashRefunit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  OleCtrls, StdCtrls, ExtCtrls,Httpapp, DataModuleUnit2, Functions,
  FlashPlayerControl, ShellApi, jpeg;

type
  TReffrm = class(TForm)
    Button1: TButton;
    FlashRefInfo: TTransparentFlashPlayerControl;
    procedure aFSCommand(Sender: TObject; const command,
      args: WideString);
    procedure FormResize(Sender: TObject);
    procedure FlashRefInfoxFSCommand(ASender: TObject; const command,
      args: WideString);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FlashRefInfoxMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FlashRefInfoxMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FlashRefInfoxMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FlashRefInfoxClick(Sender: TObject);
    procedure FlashRefInfoFSCommand(ASender: TObject; const command,
      args: WideString);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
    infoOrRef : string;
  public
   sizeset : boolean;
    { Public declarations }
   function getRefNum(aSheet, aCol, aRow: integer): integer;
   function GetRefText(RefNumber: Integer): String;
   procedure ViewText(Sender: TObject; HTMLText: string; NoPdfs: Integer);
   procedure viewAllRefs(Sender: TObject; totalRefs : integer);
   procedure Split(const Delimiter: Char;Input: string; const Strings: TStrings);
   procedure CustomHeaderText(Sender: TObject; Header : string; Text : string);
  end;

var
  Reffrm: TReffrm;
    AreWeDragging : Boolean;
  StartPosX, StartPosY : integer;
  mainformstate : boolean;
implementation

uses Unit1;

{$R *.DFM}

procedure TReffrm.aFSCommand(Sender: TObject;
  const command, args: WideString);
begin
//mainform.Memo2.lines.append(command);

   IF Pos('w',RawByteString(command)) <> 0 then
   BEGIN
   Width := strtoint(Copy(command,Pos('=',command)+1,Length(command)-1));
   Reffrm.left := Mainform.left + round((Mainform.width - Reffrm.width)/2);
   END;

   IF Pos('h',RawByteString(command)) <> 0 then
   begin
   Height := strtoint(Copy(command,Pos('=',command)+1,Length(command)-1));
   Reffrm.top := Mainform.top + round((Mainform.height - Reffrm.height)/2);
   end;

   if command = 'exit' then
   close;

end;

procedure TReffrm.FormPaint(Sender: TObject);
begin
if sizeset = false then
begin
Reffrm.width := mainform.Width;
Reffrm.height := mainform.height;
Reffrm.top := mainform.top;
Reffrm.left := mainform.left;
sizeset := true;
end;
end;

procedure TReffrm.FormResize(Sender: TObject);
begin
{  if  Reffrm.visible then
    begin
      Button1.setfocus;
      FlashRefInfo.setfocus(true);
    end;  }
end;

procedure TReffrm.FlashRefInfoxFSCommand(ASender: TObject;
  const command, args: WideString);
begin
//showmessage(command);
// if command =

   {  if  Pos('w',command) <> 0 then
   begin
   Width := strtoint(Copy(command,Pos('=',command)+1,Length(command)-1));
   Reffrm.left := Mainform.left + round((Mainform.width - Reffrm.width)/2);
   end;

   IF Pos('h',command) <> 0 then
   begin
   Height := strtoint(Copy(command,Pos('=',command)+1,Length(command)-1));
   Reffrm.top := Mainform.top + round((Mainform.height - Reffrm.height)/2);
   Width := strtoint(FlashRefInfo.GetVariable('one'));
   Reffrm.left := Mainform.left + round((Mainform.width - Reffrm.width)/2);
   end;   }


   if command = 'quit' then
   close;

    {  if command = 'pdf1' then
      ShellExecute(Handle, 'open', PChar(MainForm.PDFPAth1), nil, nil, SW_SHOW);

      if command = 'pdf2' then
      ShellExecute(Handle, 'open', PChar(MainForm.PDFPAth2), nil, nil, SW_SHOW);

      if command = 'pdf3' then
      ShellExecute(Handle, 'open', PChar(MainForm.PDFPAth3), nil, nil, SW_SHOW);

      if command = 'pdf4' then
      ShellExecute(Handle, 'open', PChar(MainForm.PDFPAth4), nil, nil, SW_SHOW);
            }

   end;

   
procedure TReffrm.Image1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
IF AreWeDragging then
begin
Reffrm.left := Reffrm.left + (X - StartposX);
Reffrm.Top := Reffrm.Top + (Y - StartposY);
//Reffrm.left := Reffrm.left;
//Reffrm.top := (Reffrm.top+Form1.height)-form2.height;
end;
end;

procedure TReffrm.Image1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
AreWeDragging := False;
end;


procedure TReffrm.FormShow(Sender: TObject);
begin
{if Mainform.enabled = true then
mainformstate := true
else
mainformstate := false; }

//Mainform.enabled := false;

{FlashRefInfo.width := Reffrm.width;
FlashRefInfo.height := Reffrm.height;
FlashRefInfo.Refresh;
FlashRefInfo.Repaint;  }
 
end;

procedure TReffrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//Mainform.enabled := mainformstate;
end;

procedure TReffrm.FlashRefInfoxMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
{StartPosX := X;
StartPosY := Y;
AreWeDragging := false;  }
end;

procedure TReffrm.FlashRefInfoxMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
{IF AreWeDragging then
begin
Reffrm.left := Reffrm.left + (X - StartposX);
Reffrm.Top := Reffrm.Top + (Y - StartposY);
end; }
end;

procedure TReffrm.FlashRefInfoxMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//StartPosX := X;
//StartPosY := Y;
//AreWeDragging := True;
end;

procedure TReffrm.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
StartPosX := X;
StartPosY := Y;
AreWeDragging := True;
end;

procedure TReffrm.FlashRefInfoxClick(Sender: TObject);
begin
showmessage('xx');
end;

procedure TReffrm.CustomHeaderText(Sender: TObject; Header, Text: string);
begin
  Reffrm.FlashRefInfo.movie := DataModule2.AppPath + 'Animation\DEG_REF.swf';
  Reffrm.FormPaint(Sender);
  Reffrm.Show;

  // Displays Text with a custom heading.
  Reffrm.FlashRefInfo.CallFunction('<invoke name="setRef" returntype="xml"><arguments><string>open</string><string>yes</string><string>' + Text + '</string><string>' + Header + '</string></arguments></invoke>')
end;

procedure TReffrm.FlashRefInfoFSCommand(ASender: TObject; const command,
  args: WideString);
begin
   if command = 'close' then
    begin
      if Mainform.canTerminate = true then
        begin
          close;
          Application.Terminate;
        end;
    end;

    {  if command = 'pdf1' then
      ShellExecute(Handle, 'open', PChar(MainForm.PDFPAth1), nil, nil, SW_SHOW);

      if command = 'pdf2' then
      ShellExecute(Handle, 'open', PChar(MainForm.PDFPAth2), nil, nil, SW_SHOW);

      if command = 'pdf3' then
      ShellExecute(Handle, 'open', PChar(MainForm.PDFPAth3), nil, nil, SW_SHOW);

      if command = 'pdf4' then
      ShellExecute(Handle, 'open', PChar(MainForm.PDFPAth4), nil, nil, SW_SHOW);
            }
end;

function TReffrm.getRefNum(aSheet, aCol, aRow: integer): integer;
var tempString : string;
begin
  // Reads in cell with reference or information number.
  tempString := sptostr(DataModule2.DefaultSP,aSheet,aCol,aRow);

  // Determins whether button is either information or a reference.
  if pos('INFO',tempString) <> 0 then
    infoOrRef := 'info'
  else
    infoOrRef := 'ref';

  // ShowMessage(tempString);

  tempString := Copy(tempString,(pos('_',tempString)+1),length(tempString));

  // ShowMessage(tempString);

  result := strtoint(tempString);
  //showmessage(IntToStr(result));
end;

function TReffrm.GetRefText(RefNumber: Integer): String;
var
  a, col, i: integer;
  ReturnedReftext, temp, referencesNeeded, theRefNum: String;
  SL : TStringList;
begin
  // Creates StringList to store all reference numbers.
  SL := TStringList.Create;

  ReturnedReftext := '';

  // Sends reference button number to the spreadsheet to retrieve references for that button.
  IntToSP(DataModule2.DefaultSP,3,1,1,RefNumber);

  theRefNum := '';

  // Collects reference numbers associated with the reference button.
  referencesNeeded := sptostr(DataModule2.DefaultSP,3,2,1);

  //showmessage(referencesneeded);

  // Splits the string of numbers into seperate numbers and stores them in an array of type string (StringList).
  Split(',',referencesNeeded,SL);

  // Loops through StringList.
  for I := 0 to SL.Count - 1 do
  begin
    RefNumber := strtoint(SL[i]);
    for a := 3 to 55 do
    begin
      DataModule2.DefaultSP.sheet := 3;
      DataModule2.DefaultSP.Col := 6;
      DataModule2.DEfaultsp.Row := a;
      application.ProcessMessages;

      if sptoint(DataModule2.DEfaultsp,DataModule2.DefaultSP.sheet,DataModule2.DefaultSP.Col,DataModule2.DEfaultsp.Row) = RefNumber then
      begin
        // Loops through colums 8 to 11 in the reference page.
        for col := 8 to 11 do
        begin
          // Checks current column's cell for content.
          if sptostr(DataModule2.DEfaultsp,DataModule2.DefaultSP.sheet,Col,DataModule2.DEfaultsp.Row) <> '' then
          begin
            // Adds text to the current reference text if the cell contains content.
            ReturnedReftext := ReturnedReftext + sptostr(DataModule2.DEfaultsp,DataModule2.DefaultSP.sheet,Col,DataModule2.DEfaultsp.Row) + ' ';
          end
        end;
      end;
    end;
    if ((SL.Count - I) > 1) then
    begin
      // Adds a line break (will be StringReplaced below due to hyperlink
      // function causing issues) if there are more than one references to display.
      ReturnedReftext := ReturnedReftext + 'lineBreakGoesHere';
    end;
  end;

  // Replaces unwanted symbols.
  ReturnedReftext := StringReplace( ReturnedReftext, '%' , '%25', [rfReplaceAll, rfIgnoreCase]);
  ReturnedReftext := StringReplace(ReturnedReftext, '<' , '&lt;', [rfReplaceAll, rfIgnoreCase]);
  ReturnedReftext := StringReplace(ReturnedReftext, '>' , '&gt;', [rfReplaceAll, rfIgnoreCase]);
  ReturnedReftext := StringReplace(ReturnedReftext, '&' , '%26', [rfReplaceAll, rfIgnoreCase]);
  // Replaces placeholder text with a HTML line break '<br>' that
  // would have otherwise been disallowed by the string replaces above.
  ReturnedReftext := StringReplace(ReturnedReftext, 'lineBreakGoesHere' , '&#60;br&#62;&#60;br&#62;', [rfReplaceAll, rfIgnoreCase]);
  ReturnedReftext := StringReplace(ReturnedReftext, '%2520' , '%20', [rfReplaceAll, rfIgnoreCase]);


  ReturnedReftext := DataModule2.buildHiperlink(ReturnedReftext);

  if  ReturnedReftext = '' then
    result := 'No Reference found with number ' + inttostr(RefNumber)
  else
    result := ReturnedReftext;

  sl.Free;
end;

procedure TReffrm.ViewText(Sender: TObject; HTMLText: string;
  NoPdfs: Integer);
var
  titleText : String;
begin
  Reffrm.FlashRefInfo.movie := DataModule2.AppPath + 'Animation\REF.swf';
  Reffrm.FormPaint(Sender);
  Reffrm.Show;
  if infoOrRef = 'info' then
  begin
    // Displays HTMLText with the title Information.
    Reffrm.FlashRefInfo.CallFunction('<invoke name="setRef" returntype="xml"><arguments><string>open</string><string>yes</string><string>'+HTMLText+'</string><string>Information</string></arguments></invoke>')
  end
  else
  begin
    // Displays HTMLText with the title Reference(s).
    Reffrm.FlashRefInfo.CallFunction('<invoke name="setRef" returntype="xml"><arguments><string>open</string><string>yes</string><string>'+HTMLText+'</string><string>Reference(s)</string></arguments></invoke>');
  end;
end;

procedure TReffrm.Split(const Delimiter: Char; Input: string;
  const Strings: TStrings);
begin
  Assert(Assigned(Strings)) ;
  Strings.Clear;
  Strings.Delimiter := Delimiter;
  Strings.DelimitedText := Input;
end;

procedure TReffrm.viewAllRefs(Sender: TObject; totalRefs: integer);
var
  startingRef : integer; // For the first reference in the loop.
  AllRefs : string; // Will hold all of the references that will be collected.
begin
  for startingRef := 1 to totalRefs do
  begin
    // Adds reference to the list.
    AllRefs := AllRefs + GetRefText(startingRef)+'&#60;br&#62;&#60;br&#62;';
  end;
  // Sends the references to be displayed.
  ViewText(Sender,AllRefs,0);
end;

end.
