unit uniNewID;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FlashPlayerControl, CustomEFlashButtonUnit, StdCtrls, ExtCtrls;

type
  TfrmNewID = class(TForm)
    Shape56: TShape;
    Shape57: TShape;
    lab_Prev_PatientID: TLabel;
    btn_Confirm_FollowUp: TFlashButtonEx;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_Confirm_FollowUpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNewID: TfrmNewID;

implementation

uses uFadeForm;

{$R *.dfm}

procedure TfrmNewID.btn_Confirm_FollowUpClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmNewID.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if frmFadeForm.Visible = true then
    frmFadeForm.Close;
end;

end.
