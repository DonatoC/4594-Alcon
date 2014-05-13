unit SaveOpenUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FlashPlayerControl, StdCtrls;

type
  TfrmSaveOpen = class(TForm)
    FC: TTransparentFlashPlayerControl;
    procedure FormCreate(Sender: TObject);
    procedure FCFSCommand(ASender: TObject; const command,
      args: WideString);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FCClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSaveOpen: TfrmSaveOpen;

implementation

{$R *.DFM}

procedure TfrmSaveOpen.FormCreate(Sender: TObject);
Var AppPath : STring;
begin
  AppPath := ExtractFilePath(Application.ExeName);

  FC.Movie := AppPath +'ADV_PRE_GENERATING.swf';

    if ParamStr(1) = 'save' then
    FC.CallFunction('<invoke name="startClose" returntype="xml"><arguments><string>open</string><string>Saving data...</string></arguments></invoke>');

    if ParamStr(1) = 'open' then
    FC.CallFunction('<invoke name="startClose" returntype="xml"><arguments><string>open</string><string>Opening data...</string></arguments></invoke>');

    if ParamStr(1) = 'reset' then
    FC.CallFunction('<invoke name="startClose" returntype="xml"><arguments><string>open</string><string>Resetting data...</string></arguments></invoke>');

    if ParamStr(1) = 'calc' then
    FC.CallFunction('<invoke name="startClose" returntype="xml"><arguments><string>open</string><string>Calculating...</string></arguments></invoke>');

end;

procedure TfrmSaveOpen.FCFSCommand(ASender: TObject; const command,
  args: WideString);
begin
  if command = 'close' then
    Application.terminate;
end;

procedure TfrmSaveOpen.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := False;
  FC.CallFunction('<invoke name="startClose" returntype="xml"><arguments><string>close</string></arguments></invoke>');
  FC.CallFunction('<invoke name="setPulse" returntype="xml"><arguments><string>off</string></arguments></invoke>');
  CanClose := True;
end;

procedure TfrmSaveOpen.FCClick(Sender: TObject);
begin
close;
end;

procedure TfrmSaveOpen.FormShow(Sender: TObject);
begin
  FC.CallFunction('<invoke name="setPulse" returntype="xml"><arguments><string>on</string></arguments></invoke>');
end;

end.
