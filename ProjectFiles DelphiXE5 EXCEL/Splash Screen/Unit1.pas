unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FlashPlayerControl, StdCtrls, syncobjs;

type
  TFrmPreLoader = class(TForm)
    FC: TTransparentFlashPlayerControl;
    procedure FormCreate(Sender: TObject);
    procedure FCFSCommand(ASender: TObject; const command,
      args: WideString);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
  function SplitStrings(const str: string; const separator: string = ','; Strings: TStrings = nil): TStrings;
    { Public declarations }
  end;

var
  FrmPreLoader: TFrmPreLoader;
  paramsString : String;
  ParamTxt2, ParamTxt3, ParamTxt4, ParamTxt5 : STring;
  FlashCodeStream: TFileStream;

implementation

{$R *.DFM}

procedure TFrmPreLoader.FormCreate(Sender: TObject);
Var AppPath, moviepath : STring;
ParamsStringList : TStrings;
I : integer;
Begin

FrmPreLoader.Left := round((screen.Width/2) - (FrmPreLoader.Width/2));
FrmPreLoader.top  := round((screen.height/2) - (FrmPreLoader.height/2));

//AppPath := ExtractFilePath(Application.ExeName);

  paramsString := '';

  for I := 1 to ParamCount do
  paramsString := paramsString +' '+ParamStr(I);



  ParamsStringList := TStringList.Create;

        if ParamsStringList <> nil then
        begin
              ParamsStringList.Clear;
              ParamsStringList := SplitStrings(paramsString,'|',ParamsStringList);
        end;


  moviepath := trim(ParamsStringList[0]);
  ParamTxt2 := trim(ParamsStringList[1]);
  ParamTxt3 := trim(ParamsStringList[2]);
  ParamTxt4 := trim(ParamsStringList[3]);
  ParamTxt5 := trim(ParamsStringList[4]);
  
  if ParamTxt5 = 'yes' then FrmPreLoader.WindowState := wsMaximized;


  {showmessage(moviepath);
  showmessage(ParamTxt2);
  showmessage(ParamTxt3);
  showmessage(ParamTxt4);}


  if paramsString <> '' then
    begin
    FC.Movie := trim(moviepath);
    END;


end;

procedure TFrmPreLoader.FCFSCommand(ASender: TObject; const command,
  args: WideString);
begin

if command = 'close' then
Application.terminate;
end;

procedure TFrmPreLoader.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
        CanClose := False;
        //FC.CallFunction('<invoke name="startClose" returntype="xml"><arguments><string>close</string></arguments></invoke>')
        FC.CallFunction('<invoke name="callSplash" returntype="xml"><arguments><string>close</string></arguments></invoke>');

end;

procedure TFrmPreLoader.FormShow(Sender: TObject);
Var MyEvent:TEvent;
begin

//FC.CallFunction('<invoke name="startClose" returntype="xml"><arguments><string>open</string></arguments></invoke>');
FC.CallFunction('<invoke name="callSplash" returntype="xml"><arguments><string>open</string><string>'+ParamTxt5+'</string><string>'+ParamTxt2+'</string><string>'+ParamTxt3+'</string><string>'+ParamTxt4+'</string></arguments></invoke>');

Application.ProcessMessages;
//FC.visible := true;
//SetEvent(
//showmessage('close');
//FC.callSplash("close");


 //setevent(Application.Handle);

 //createevent(NIL,false,false,'MyEventName');
 
 //MyEvent.SetEvent;  //is used to signal the event
 //MyEvent.ResetEvent;  // manual reset

// MyEvent.WaitFor;  // waits for the event to signal

end;


function TFrmPreLoader.SplitStrings(const str, separator: string;
  Strings: TStrings): TStrings;
var
    n: integer;
    p, q, s: PChar;
    item: string;
begin
  if Strings = nil then
    Result := TStringList.Create
  else
    Result := Strings;

  try
    p := PChar(str);
    s := PChar(separator);
    n := Length(separator);
    repeat
      q := StrPos(p, s);
      if q = nil then q := StrScan(p, #0);
      SetString(item, p, q - p);
      Result.Add(item);
      p := q + n;
    until q^ = #0;
  except
    item := '';
    if Strings = nil then Result.Free;
    raise;
  end;
end;

initialization
   FlashCodeStream := TFileStream.Create(ExtractFilePath(Application.ExeName)+'Flash9b.ocx', fmOpenRead or fmShareDenyNone);
   //showmessage(ExtractFilePath(Application.ExeName)+'\System\Flash9b.ocx');
   FlashPlayerControl.LoadFlashOCXCodeFromStream(FlashCodeStream);
   FlashCodeStream.Free;


end.
