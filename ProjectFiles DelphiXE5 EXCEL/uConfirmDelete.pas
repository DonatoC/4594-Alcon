unit uConfirmDelete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FlashPlayerControl, CustomEFlashButtonUnit, StdCtrls, ExtCtrls;

type
  TfrmConfirmDelete = class(TForm)
    Shape57: TShape;
    Shape56: TShape;
    lab_Prev_PatientID: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    btn_Confirm_FollowUp: TFlashButtonEx;
    FlashButtonEx1: TFlashButtonEx;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FlashButtonEx1Click(Sender: TObject);
    procedure btn_Confirm_FollowUpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfirmDelete: TfrmConfirmDelete;

implementation

uses uFadeForm, Unit1;

{$R *.dfm}

procedure TfrmConfirmDelete.btn_Confirm_FollowUpClick(Sender: TObject);
Var
  recordIDString : String;
begin

  recordIDString := copy(Label2.Caption,pos('#',Label2.Caption) + 1,length(Label2.Caption));
  trim(recordIDString);
  Close;
  mainform.deleteSelectedRecord(StrToInt(recordIDString));
end;

procedure TfrmConfirmDelete.FlashButtonEx1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmConfirmDelete.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frmFadeForm.Visible = true then
    frmFadeForm.Close;
end;

end.
