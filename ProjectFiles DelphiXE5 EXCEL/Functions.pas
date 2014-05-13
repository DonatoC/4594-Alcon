unit functions;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  ExtCtrls, StdCtrls, buttons, CustomESpEditUnit, CustomSpreadsheetUnit,
  DateUtils, Dialogs;

  procedure ShowMsgSwitched(msg: string);

  function SpToFloatTP(workname :TSpreadsheet;sheetno, colno, Rowno : integer):string;

  procedure StrtoSpF(workname :TSpreadsheet;sheetno, colno, Rowno : integer; thestring:string);

  procedure MoverRef(Ownerlab, ChildLab : Tlabel;Abit : integer);

  function SpNotoStrFormat(workname :TSpreadsheet;sheetno, colno, Rowno : integer; decplaces:string): string;

  procedure StrtoSp(workname :TSpreadsheet;sheetno, colno, Rowno : integer; thestring:string);

  function SptoStr(workname :TSpreadsheet;sheetno, colno, Rowno : integer):string;

  function SptoStrP(workname :TSpreadsheet;sheetno, colno, Rowno : integer): string;

  procedure EdtoSPt(EDname : Tedit; workname :TSpreadsheet;sheetno, colno, Rowno : integer);

  procedure FloattoSp(workname :TSpreadsheet;sheetno, colno, Rowno : integer; Number:Real);

  function SpToFloat(workname :TSpreadsheet;sheetno, colno, Rowno : integer):real;

  procedure SPtoLabDate(Labname : Tlabel; workname :TSpreadsheet;sheetno, colno, Rowno : integer);

  procedure SPtoMemoN(Memname : TMemo; workname :TSpreadsheet;sheetno, colno, Rowno : integer;Line:integer);

  procedure MemoNtoSP(Memname : TMemo; workname :TSpreadsheet;sheetno, colno, Rowno : integer;Line:integer);

  procedure MemoTtoSP(Memname : TMemo; workname :TSpreadsheet;sheetno, colno, Rowno : integer;Line:integer);

  procedure SPtoMemoT(Memname : TMemo; workname :TSpreadsheet;sheetno, colno, Rowno : integer;Line:integer);

  procedure IntToSP(workname :TSpreadsheet;sheetno, colno, Rowno : integer; Assignnum:Integer);

  procedure SPtoPan(Panname : TPanel; workname :TSpreadsheet;sheetno, colno, Rowno : integer;decplaces:string);

  procedure SPtoPanHint(Panname : TPanel; workname :TSpreadsheet;sheetno, colno, Rowno : integer);

  procedure SPtoEdHint(Edname : TEdit; workname :TSpreadsheet;sheetno, colno, Rowno : integer);

  procedure SPtoLABHint(labname : TLabel; workname :TSpreadsheet;sheetno, colno, Rowno : integer);

  procedure SPtoradHint(radname : TRadioButton; workname :TSpreadsheet;sheetno, colno, Rowno : integer);

  procedure SPtoSButtonHint(SButtname : TSpeedButton; workname :TSpreadsheet;sheetno, colno, Rowno : integer);

  procedure SPtoPanT(Panname : TPanel; workname :TSpreadsheet;sheetno, colno, Rowno : integer);

  procedure SPtoLab(labname : Tlabel; workname :TSpreadsheet;sheetno, colno, Rowno : integer;decplaces:string);

  procedure SPtoLabx(labname : Tlabel; workname :TSpreadsheet;sheetno, colno, Rowno : integer;decplaces:string);

  procedure SPtoLabp(labname : Tlabel; workname :TSpreadsheet;sheetno, colno, Rowno : integer;decplaces:string);

  procedure SPtoLabT(Labname : Tlabel; workname :TSpreadsheet;sheetno, colno, Rowno : integer);

  procedure SptoEd(EDname : Tedit; workname :TSpreadsheet;sheetno, colno, Rowno : integer); overload;

  procedure SptoEdp(EDname : Tedit; workname :TSpreadsheet;sheetno, colno, Rowno : integer);

  procedure EdtoSP(EDname : Tedit; workname :TSpreadsheet;sheetno, colno, Rowno : integer); overload;
  procedure EdtoSP(EDname : TESpEdit; workname :TSpreadsheet;sheetno, colno, Rowno : integer); overload;

  procedure spindown(Edboxnam : Tedit; inc: Real; min : real); overload;
  procedure spindown(Edboxnam : TESpEdit; inc: Real; min : real); overload;

  procedure SPinUp (Edboxnam : TEdit; inc: Real; max : real); overload;
  procedure SPinUp (Edboxnam : TESpEdit; inc: Real; max : real); overload;

  procedure EdtoSPDef(EDname : Tedit; workname :TSpreadsheet;sheetno, colno, Rowno : integer); overload;
  procedure EdtoSPDef(EDname : TESpEdit; workname :TSpreadsheet;sheetno, colno, Rowno : integer); overload;

  procedure EdtoSPDefP(EDname : Tedit; workname :TSpreadsheet;sheetno, colno, Rowno : integer); overload;
  procedure EdtoSPDefP(EDname : TESpEdit; workname :TSpreadsheet;sheetno, colno, Rowno : integer); overload;

  function ReplaceSpave(Sourcestring:string; ReplaceChar, FindChar: Char): string;

  function SpToFloatT(workname :TSpreadsheet;sheetno, colno, Rowno : integer):string;

  function SpToInt(workname :TSpreadsheet;sheetno, colno, Rowno : integer):integer;

  function SpToIntP(workname :TSpreadsheet;sheetno, colno, Rowno : integer):string;

  function SptoStrf(workname :TSpreadsheet;sheetno, colno, Rowno : integer): string;

  type TStopWatch = class
    private
      fFrequency : TLargeInteger;
      fIsRunning: boolean;
      fIsHighResolution: boolean;
      fStartCount, fStopCount : TLargeInteger;
      procedure SetTickStamp(var lInt : TLargeInteger) ;
      function GetElapsedTicks: TLargeInteger;
      function GetElapsedMiliseconds: TLargeInteger;
      function GetElapsed: string;
    public
      constructor Create(const startOnCreate : boolean = false) ;
      procedure Start;
      procedure Stop;
      property IsHighResolution : boolean read fIsHighResolution;
      property ElapsedTicks : TLargeInteger read GetElapsedTicks;
      property ElapsedMiliseconds : TLargeInteger read GetElapsedMiliseconds;
      property Elapsed : string read GetElapsed;
      property IsRunning : boolean read fIsRunning;
    end;

implementation

uses Unit1, DataModuleUnit2;

procedure ShowMsgSwitched(msg: string);
begin
  //comment out below line to hide messages  or remove the Utilities param
  //showmessage(MainForm.paramsString);
  if mainform <> nil then
    begin
      if (Pos('Utilities',Datamodule2.paramsString) <> 0) then
        showmessage(msg);
    end;
end;

function SpToInt(workname :TSpreadsheet;sheetno, colno, Rowno : integer):integer;
begin
  result := StrToInt(formatfloat('0',workname.GetNumberF(Sheetno, colno,rowno)));
end;

function SpToIntP(workname :TSpreadsheet;sheetno, colno, Rowno : integer):string;
begin
  result := formatfloat('0',workname.GetNumberF(Sheetno, colno,rowno)*100);
end;

function SpToFloatTP(workname :TSpreadsheet;sheetno, colno, Rowno : integer):string;
begin
  result := formatfloat('0.00',workname.GetNumberF(Sheetno, colno,rowno)*100);
end;

procedure StrtoSpF(workname :TSpreadsheet;sheetno, colno, Rowno : integer; thestring:string);
begin
  workname.SetFormulaF(Sheetno, colno, rowno, thestring);
end;

function SptoStr(workname :TSpreadsheet;sheetno, colno, Rowno : integer): string;
begin
  result := workname.GetformattedTextF(Sheetno, colno, rowno);
end;

procedure StrtoSp(workname :TSpreadsheet;sheetno, colno, Rowno : integer; thestring:string);
begin
  workname.SetTextF(Sheetno, colno,rowno,thestring);
end;

procedure MoverRef(Ownerlab, ChildLab : Tlabel;Abit : integer);
begin
  if Screen.width = 1024 then
   begin
    ChildLab.left := (ownerlab.left + OwnerLab.width - Abit);
    ChildLab.top := Ownerlab.top -10;
   end;
end;

function SpNotoStrFormat(workname :TSpreadsheet;sheetno, colno, Rowno : integer; decplaces:string): string;
begin
  result := FormatFloat(Decplaces, workname.GetNumberF(Sheetno, colno,rowno));
end;

function ReplaceSpave(Sourcestring:string; ReplaceChar, FindChar: Char): string;
  var strLength, CharIndex : integer;
begin
  strLength :=  Length(Sourcestring);

  for CharIndex := 0 to strLength do
    begin
      if  Sourcestring[CharIndex] =FindChar then
      Sourcestring[CharIndex] := ReplaceChar;
    end;
  Result := Sourcestring;
end;

procedure EdtoSPt(EDname : Tedit; workname :TSpreadsheet;sheetno, colno, Rowno : integer);
begin
  workname.SetTextF(Sheetno, colno,rowno,EDname.text);
end;

procedure FloattoSp(workname :TSpreadsheet;sheetno, colno, Rowno : integer; Number:Real);
begin
  workname.SetNumberF(Sheetno,colno,rowno,Number);
end;

function SpToFloat(workname :TSpreadsheet;sheetno, colno, Rowno : integer):real;
begin
  result := workname.GetNumberF(Sheetno, colno,rowno)
end;

procedure SPtoMemoN(Memname : TMemo; workname :TSpreadsheet;sheetno, colno, Rowno : integer;Line:integer);
begin
  Memname.Lines[line] := formatfloat('0',Workname.GetNumberF(sheetno,Colno,Rowno));
end;


procedure MemoNtoSP(Memname : TMemo; workname :TSpreadsheet;sheetno, colno, Rowno : integer;Line:integer);
begin
  Workname.SetNumberF(sheetno,Colno,Rowno,strtofloat(Memname.Lines[line]));
end;

procedure MemoTtoSP(Memname : TMemo; workname :TSpreadsheet;sheetno, colno, Rowno : integer;Line:integer);
begin
  Workname.SetTextF(sheetno,Colno,Rowno,Memname.Lines[line]);
end;

procedure SPtoMemoT(Memname : TMemo; workname :TSpreadsheet;sheetno, colno, Rowno : integer;Line:integer);
begin
  Memname.Lines[line] := (Workname.GetformattedTextF(sheetno,Colno,Rowno));
end;

procedure IntToSP(workname :TSpreadsheet;sheetno, colno, Rowno : integer; Assignnum:Integer);
  begin
    workname.SetNumberF(Sheetno,colno,rowno,Assignnum);
  end;

procedure SPtoPan(Panname : TPanel; workname :TSpreadsheet;sheetno, colno, Rowno : integer;decplaces:string);
  begin
    Panname.caption := FormatFloat(Decplaces, Workname.GetNumberF(sheetno,Colno,Rowno));
  end;

procedure SPtoPanHint(Panname : TPanel; workname :TSpreadsheet;sheetno, colno, Rowno : integer);
  begin
    Panname.ShowHint := true;
    Panname.Hint := Workname.GetformattedTextF(sheetno,Colno,Rowno);
  end;

procedure SPtoEdHint(Edname : TEdit; workname :TSpreadsheet;sheetno, colno, Rowno : integer);
  begin
    Edname.ShowHint := true;
    Edname.Hint := Workname.GetformattedTextF(sheetno,Colno,Rowno);
  end;

procedure SPtoLABHint(labname : TLabel; workname :TSpreadsheet;sheetno, colno, Rowno : integer);
  begin
    labname.ShowHint := true;
    labname.Hint := Workname.GetformattedTextF(sheetno,Colno,Rowno);
  end;

procedure SPtoradHint(radname : TRadioButton; workname :TSpreadsheet;sheetno, colno, Rowno : integer);
  begin
    radname.ShowHint := true;
    radname.Hint := Workname.GetformattedTextF(sheetno,Colno,Rowno);
  end;

procedure SPtoSButtonHint(SButtname : TSpeedButton; workname :TSpreadsheet;sheetno, colno, Rowno : integer);
  begin
    SButtname.ShowHint := true;
    SButtname.Hint := Workname.GetformattedTextF(sheetno,Colno,Rowno);
  end;


procedure SPtoPanT(Panname : TPanel; workname :TSpreadsheet;sheetno, colno, Rowno : integer);
  begin
    Panname.caption := Workname.GetformattedTextF(sheetno,Colno,Rowno);
  end;

procedure SPtoLab(labname : Tlabel; workname :TSpreadsheet;sheetno, colno, Rowno : integer;decplaces:string);
  begin
    labname.caption := FormatFloat(Decplaces, workname.GetNumberF(Sheetno, colno,rowno));
  end;

procedure SPtoLabx(labname : Tlabel; workname :TSpreadsheet;sheetno, colno, Rowno : integer;decplaces:string);
begin
  labname.caption := FormatFloat(Decplaces, Workname.GetNumberF(sheetno,Colno,Rowno));
  if Workname.number <0 then
    labname.Font.Color := clred
  else
    labname.Font.Color := clblack;
  if Workname.number > 99 then
    labname.caption :='XX'
end;

procedure SPtoLabp(labname : Tlabel; workname :TSpreadsheet;sheetno, colno, Rowno : integer;decplaces:string);
begin
  labname.caption := FormatFloat(Decplaces, Workname.GetNumberF(sheetno,Colno,Rowno)*100);
end;

procedure SPtoLabT(Labname : Tlabel; workname :TSpreadsheet;sheetno, colno, Rowno : integer);
begin
  Labname.caption := workname.GetFormattedTextF(Sheetno,colno,rowno);
end;

procedure SPtoLabDate(Labname : Tlabel; workname :TSpreadsheet;sheetno, colno, Rowno : integer);
var
  date1 : tdatetime;
begin
  date1 := workname.GetNumberF(sheetno,Colno,Rowno);
  Labname.caption := datetostr(date1);
end;

procedure SptoEd(EDname : Tedit; workname :TSpreadsheet;sheetno, colno, Rowno : integer);
begin
  EDname.text := workname.GetFormattedTextF(Sheetno,colno,rowno) ;
end;

procedure SptoSpFormatEdit(EDname : TESpEdit; workname :TSpreadsheet;sheetno, colno, Rowno : integer);
begin
  EDname.text := workname.GetFormattedTextF(Sheetno,colno,rowno) ;
end;

procedure SptoEdp(EDname : Tedit; workname :TSpreadsheet;sheetno, colno, Rowno : integer);
begin
  EDname.text := floattostr(strtofloat(workname.GetformattedTextF(sheetno,Colno,Rowno))*100);
end;

procedure EdtoSP(EDname : Tedit; workname :TSpreadsheet;sheetno, colno, Rowno: integer);
begin
  Workname.sheet :=sheetno;
  Workname.Col :=Colno;
  workname.row :=Rowno;
  workname.Number := StrToFloat(EDname.Text);
end;

procedure EdtoSP(EDname : TESpEdit; workname :TSpreadsheet;sheetno, colno, Rowno : integer); overload;
begin
  Workname.sheet :=sheetno;
  Workname.Col :=Colno;
  workname.row :=Rowno;
  workname.Number := StrToFloat(EDname.text);
end;

procedure spindown(Edboxnam : Tedit; inc: Real; min : real); overload;
begin
  if Strtofloat (edboxnam.text) <= (min + inc) then
    edboxnam.text := '0'
  else
    edboxnam.text := floattostr(strtofloat (edboxnam.text) - inc);
end;

procedure spindown(Edboxnam : TESpEdit; inc: Real; min : real);  overload;
begin
  Edboxnam.Unformat;
  
  if Strtofloat (edboxnam.text) <= (min + inc) then
    edboxnam.text := '0'
  else
    edboxnam.text := floattostr(strtofloat(edboxnam.text) - inc);
end;

procedure SPinUp (Edboxnam : Tedit; inc: Real; max : real); overload;
begin
  if Strtofloat (edboxnam.text) > max then
    exit
  else
    edboxnam.text := floattostr(strtofloat(edboxnam.text) +inc);
end;

procedure SPinUp (Edboxnam : TESpEdit; inc: Real; max : real); overload;
begin
  Edboxnam.Unformat;

  if Strtofloat (edboxnam.text) > max then
    exit
  else
    edboxnam.text := floattostr(strtofloat(edboxnam.text) +inc);
end;

procedure EdtoSPDef(EDname : Tedit; workname :TSpreadsheet;sheetno, colno, Rowno : integer); overload;
begin
  if EDname.Text <> '' then
    begin
      Workname.sheet :=sheetno;
      Workname.Col :=Colno;
      workname.row :=Rowno;
      workname.Number := StrToFloat(EDname.text);
    end
  else
    begin
      Workname.sheet :=sheetno;
      Workname.Col :=Colno;
      workname.row :=Rowno;
      workname.text := (EDname.text);
    end;
end;

procedure EdtoSPDef(EDname : TESpEdit; workname :TSpreadsheet;sheetno, colno, Rowno : integer); overload;
begin
  if EDname.Text <> '' then
    begin
      Workname.sheet :=sheetno;
      Workname.Col :=Colno;
      workname.row :=Rowno;
      workname.Number := StrToFloat(EDname.text);
    end
  else
    begin
      Workname.sheet :=sheetno;
      Workname.Col :=Colno;
      workname.row :=Rowno;
      workname.text := (EDname.text);
    end;
end;

procedure EdtoSPDefP(EDname : TEdit; workname :TSpreadsheet;sheetno, colno, Rowno : integer);
begin
  if EDname.Text <> '' then
    begin
      Workname.sheet :=sheetno;
      Workname.Col :=Colno;
      workname.row :=Rowno;
      workname.Number := StrToFloat(EDname.text)/100;
    end
  else
    begin
      Workname.sheet :=sheetno;
      Workname.Col :=Colno;
      workname.row :=Rowno;
      workname.text := (EDname.text);
    end;
end;

procedure EdtoSPDefP(EDname : TESpEdit; workname :TSpreadsheet;sheetno, colno, Rowno : integer);
begin
  if EDname.Text <> '' then
    begin
      Workname.sheet :=sheetno;
      Workname.Col :=Colno;
      workname.row :=Rowno;
      workname.Number := StrToFloat(EDname.text)/100;
    end
  else
    begin
      Workname.sheet :=sheetno;
      Workname.Col :=Colno;
      workname.row :=Rowno;
      workname.text := (EDname.text);
    end;
end;

function SptoStrf(workname :TSpreadsheet;sheetno, colno, Rowno : integer): string;
begin
  result := workname.GetFormattedTextF(Sheetno,colno,rowno) ;
end;

function SpToFloatT(workname :TSpreadsheet;sheetno, colno, Rowno : integer):string;
begin
  result := formatfloat('0.00',workname.GetNumberF(Sheetno,colno,rowno));
end;

function SptoStrP(workname :TSpreadsheet;sheetno, colno, Rowno : integer): string;
begin
  result := workname.GetformattedTextF(Sheetno,colno,rowno);
end;

{ TStopWatch }

constructor TStopWatch.Create(const startOnCreate: boolean);
begin
  inherited Create;

  fIsRunning := false;

  fIsHighResolution := QueryPerformanceFrequency(fFrequency) ;
  if NOT fIsHighResolution then fFrequency := MSecsPerSec;

  if startOnCreate then Start;
end;



function TStopWatch.GetElapsed: string;
var
  dt : TDateTime;
begin
  dt := ElapsedMiliseconds / MSecsPerSec / SecsPerDay;
  result := Format('%d days, %s', [Trunc(dt), FormatDateTime('hh:nn:ss.z', Frac(dt))]) ;
end;


function TStopWatch.GetElapsedMiliseconds: TLargeInteger;
begin
  result := (MSecsPerSec * (fStopCount - fStartCount)) div fFrequency;
end;


function TStopWatch.GetElapsedTicks: TLargeInteger;
begin
  result := fStopCount - fStartCount;
end;


procedure TStopWatch.SetTickStamp(var lInt: TLargeInteger);
begin
  if fIsHighResolution then
    QueryPerformanceCounter(lInt)
  else
    lInt := MilliSecondOf(Now) ;
end;


procedure TStopWatch.Start;
begin
  SetTickStamp(fStartCount) ;
  fIsRunning := true;
end;


procedure TStopWatch.Stop;
begin
  SetTickStamp(fStopCount) ;
  fIsRunning := false;
end;


end.







