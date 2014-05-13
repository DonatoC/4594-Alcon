unit unitDBControls;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, DB, Mask, ADODB, ComCtrls,
  ExtCtrls,ComObj, ActiveX, FlashPlayerControl;


type
  TfrmDBControls = class(TForm)
    Panel2: TPanel;
    ALC_Connection_1: TADOConnection;
  private
    { Private declarations }
  public
    { Public declarations }
     function IDGen: string;
  end;

var
  frmDBControls: TfrmDBControls;

implementation

uses Report;

{$R *.dfm}

function TfrmDBControls.IDGen: string;
const
  Chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890';
{var
  S: string;
  i, A, N, D: integer;
  id_String: string;
  id_Char_Count, charIndex : integer;
begin
{
  ************************************************************************
  * FUNCTION VERSION NO: 1.0.0;                                          *
  * ------------------------------------------------------------------   *
  * DESCRIPTION: The IDGen function is used to produce a GUID;           *
  * ------------------------------------------------------------------   *
  * PARAMS: None;                                                        *
  * ------------------------------------------------------------------   *
  * RESULT: GUID (String);                                               *
  * ------------------------------------------------------------------   *
  * NOTES:  ""                                                           *
  * ------------------------------------------------------------------   *
  * ABOUT: | DATE:      || AUTHOR: ||  ACTION:                           *
  *        | 30/09/2013 || DanS;   ||  Created;                          *
  ************************************************************************
}

{  D := 0;
  //Loop controls GUID length
  for id_Char_Count := 1 to 36 do
    begin
      //Get a random character from Chars
      Randomize;
      charIndex := Random(Length(Chars)) + 1;
      //Every 4th char (D), place a hyphen
      if D < 4 then
        begin
          //Check to last char is different to the next char to be added to avoid duplicates.
          if ((pos(Chars[charIndex],id_String) <> Length(id_String)) or (id_String = '')) Then
            begin
              id_String := id_String + Chars[charIndex];
              D := D + 1;
            end
          else
            begin
              Randomize;
              charIndex := Random(Length(Chars)) + 1;
              id_String := id_String + Chars[charIndex];
              D := D + 1;
            end;
        end
      else
        begin
          //Add hyphen every 4th char unless at the end of the string
          if id_Char_Count < 36 then
            begin
              id_String :=  id_String + '-';
              D := 0;
            end;
        end;
    end;
    Result := id_String; {GUID as String}
var
  ID: TGUID;
  idStr : String;
begin
  Result := '';
  if CoCreateGuid(ID) = S_OK then
    idStr := GUIDToString(ID);
    idStr := copy(idStr,2,length(idStr)-2);
    Result := idStr;
end;



end.
