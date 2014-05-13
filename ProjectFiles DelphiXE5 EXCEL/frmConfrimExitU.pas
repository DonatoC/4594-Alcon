unit frmConfrimExitU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FlashPlayerControl;

type
  TfrmConfirmExit = class(TForm)

    FlashPlayerControl1: TTransparentFlashPlayerControl;

    procedure FlashPlayerControl1FSCommand(ASender: TObject; const command,
      args: WideString);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
  sizeset : boolean;
    { Public declarations }
  end;

var
  frmConfirmExit: TfrmConfirmExit;

implementation

uses DataModuleUnit2, Unit1, newAboutUnit;

{$R *.DFM}

procedure TfrmConfirmExit.FlashPlayerControl1FSCommand(ASender: TObject;
  const command, args: WideString);
begin
showmessage(command);
  if command = 'yes' then
    begin
    //  DataModule2.SaveFile;
      mainform.canICloseNow := true;
    //  frmConfirmExit.FlashPlayerControl1.CallFunction('<invoke name="callClose" returntype="xml"><arguments><string>close</string></arguments></invoke>');
       close;
      MAINFORM.CLOSE

    end;

  if command = 'no' then
    begin
      mainform.canICloseNow := true;
    //  frmConfirmExit.FlashPlayerControl1.CallFunction('<invoke name="callClose" returntype="xml"><arguments><string>close</string></arguments></invoke>');
       close;
       MAINFORM.CLOSE;
    end;

  if command = 'close' then
    begin
       close;
       mainform.canICloseNow := true;
       MAINFORM.CLOSE
    end;

  if command = 'return' then
    BEGIN
      mainform.canICloseNow := false;
      close;
    END;

    frmConfirmExit.Close;
end;

procedure TfrmConfirmExit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//action:= caFree;
end;

procedure TfrmConfirmExit.FormPaint(Sender: TObject);
begin
if sizeset = false then
begin


FlashPlayerControl1.Movie := DataModule2.AppPath + 'Animation\ALC_CLOSE.swf';

frmConfirmExit.width := mainform.Width;
frmConfirmExit.height := mainform.height;
frmConfirmExit.top := mainform.top;
frmConfirmExit.left := mainform.left;
sizeset := true;
end;

end;

procedure TfrmConfirmExit.FormShow(Sender: TObject);
begin
//frmConfirmExit.FlashPlayerControl1.CallFunction('<invoke name="callClose" returntype="xml"><arguments><string>open</string><string>no</string></arguments></invoke>');
end;

end.
