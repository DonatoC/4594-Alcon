unit uniGen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, FlashPlayerControl, StdCtrls;

type
  TfrmGen = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    lab_percentageComplete: TLabel;
    Label2: TLabel;
    lab_CurrentTask: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure updateLabels(taskLabTxt, percentTxt : String);
  end;

var
  frmGen: TfrmGen;

implementation

uses uFadeForm, Unit1;

{$R *.dfm}

procedure TfrmGen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if frmFadeForm <> nil then
    frmFadeForm.Close;

    MainForm.Enabled := true;
end;

procedure TfrmGen.FormShow(Sender: TObject);
begin

{  Self.Width := Screen.Width;
  Self.Height := Screen.height;

  panel1.Top := round((Self.Height - panel1.Height)/2);
  panel1.Left := round((Self.Width - panel1.Width)/2);   }
end;

procedure TfrmGen.updateLabels(taskLabTxt, percentTxt: String);
begin
  //Percent label
  lab_percentageComplete.Caption := percentTxt;
  lab_percentageComplete.Repaint;
  lab_percentageComplete.Refresh;
  lab_percentageComplete.Update;

  //Task label
  lab_CurrentTask.Caption := taskLabTxt;
  lab_CurrentTask.Repaint;
  lab_CurrentTask.Refresh;
  lab_CurrentTask.Update;
  application.ProcessMessages;
end;

end.
