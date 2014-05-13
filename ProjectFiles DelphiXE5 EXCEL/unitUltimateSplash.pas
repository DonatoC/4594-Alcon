unit unitUltimateSplash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, pngimage, StdCtrls, ComCtrls;

type
  TfrmUltimateSplash = class(TForm)
    Image1: TImage;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    Label1: TLabel;
    Label3: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    progresValue : integer;
    procedure updateProgress(aStatusCaption : String; currentProcess, totalProcess : Integer);
  end;

var
  frmUltimateSplash: TfrmUltimateSplash;

implementation

uses Unit1, uFadeForm;

{$R *.dfm}

{ TfrmUltimateSplash }



{ TfrmUltimateSplash }

procedure TfrmUltimateSplash.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frmFadeForm <> nil then
    frmFadeForm.Close;

    MainForm.Enabled := true;
end;

procedure TfrmUltimateSplash.Timer1Timer(Sender: TObject);
begin
  ProgressBar1.StepIt;
end;

procedure TfrmUltimateSplash.updateProgress(aStatusCaption: String;
  currentProcess, totalProcess: Integer);
Var
  valueCaption : Integer;
begin
  //Description label - describes the current task being performed
  label1.Caption := aStatusCaption;
  label1.Repaint;

  //Work out percent complete
  valueCaption := round((currentProcess / totalProcess) * 100);

  //update percentage label
  label3.Caption := inttostr(valueCaption) + '%';
end;

end.
