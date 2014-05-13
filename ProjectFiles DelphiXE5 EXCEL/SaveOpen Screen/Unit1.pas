unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FlashPlayerControl, StdCtrls;

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
    { Public declarations }
  end;

var
  FrmPreLoader: TFrmPreLoader;

implementation

{$R *.DFM}

procedure TFrmPreLoader.FormCreate(Sender: TObject);
Var AppPath : STring;
begin
  AppPath := ExtractFilePath(Application.ExeName);
  FC.Movie := AppPath +'CAD_PRELOADER_LOADING.swf';
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
  FC.CallFunction('<invoke name="startClose" returntype="xml"><arguments><string>close</string></arguments></invoke>');
  CanClose := True;
end;

procedure TFrmPreLoader.FormShow(Sender: TObject);
begin
  FC.CallFunction('<invoke name="startClose" returntype="xml"><arguments><string>open</string></arguments></invoke>');
end;

end.
