unit unitReportUserOptions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CustomEFlashTableUnit, DBCtrls, FlashPlayerControl,
  CustomEFlashButtonUnit, ExtCtrls;

type
  TfrmReportUserOptions = class(TForm)
    lab_Prev_PatientID: TLabel;
    Shape57: TShape;
    Shape56: TShape;
    btn_Confirm_FollowUp: TFlashButtonEx;
    FlashButtonEx1: TFlashButtonEx;
    DBComboBox_Centre_DistanceScaleID: TDBLookupComboBox;
    Label1: TLabel;
    EFlashTable2: TEFlashTable;
    Label140: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EFlashTable1: TEFlashTable;
    Label4: TLabel;
    ComboBox1: TComboBox;
    procedure btn_Confirm_FollowUpClick(Sender: TObject);
    procedure FlashButtonEx1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    centreDetails_NearVA , centreDetails_DistanceVA : integer;
    procedure getCentreVA_Scales;
    procedure setCentreVA_Scales;
  end;

var
  frmReportUserOptions: TfrmReportUserOptions;

implementation

uses uniImagesToCapture, uFadeForm, unitDBControls;

{$R *.dfm}

procedure TfrmReportUserOptions.btn_Confirm_FollowUpClick(Sender: TObject);
begin
 Close;
 frmImagesToCapture.CreatePPTReport;  //Start ppt reporting process
end;

procedure TfrmReportUserOptions.FlashButtonEx1Click(Sender: TObject);
begin
  Close;
if frmFadeForm.Visible = true then
    begin
      frmFadeForm.Close;
    end;
end;

procedure TfrmReportUserOptions.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 { if frmFadeForm.Visible = true then
    begin
      frmFadeForm.Close;
    end;  }
 setCentreVA_Scales;
end;

procedure TfrmReportUserOptions.FormShow(Sender: TObject);
begin
getCentreVA_Scales;
end;

procedure TfrmReportUserOptions.getCentreVA_Scales;
begin
  //Set global vars to original values of centre details VA scales
  frmDBControls.activateDBTables;
  frmDBControls.ALC_TBL_Centres.Active;
  if not ((frmDBControls.ALC_TBL_Centres.Bof = true) and (frmDBControls.ALC_TBL_Centres.Eof = true)) then
    begin
      centreDetails_DistanceVA := frmDBControls.ALC_TBL_Centres.FieldByName('DistanceVisualAcuityScaleID').AsInteger;
     // centreDetails_NearVA := frmDBControls.ALC_TBL_Centres.FieldByName('NearVisualAcuityScaleID').AsInteger;
    end;
end;

procedure TfrmReportUserOptions.setCentreVA_Scales;
begin
   //Set centre details back to original values after reports have run

  frmDBControls.ALC_TBL_Centres.Active;
  frmDBControls.ALC_TBL_Centres.Edit;
  if not ((frmDBControls.ALC_TBL_Centres.Bof = true) and (frmDBControls.ALC_TBL_Centres.Eof = true)) then
    begin
      frmDBControls.ALC_TBL_Centres.FieldByName('DistanceVisualAcuityScaleID').AsInteger := centreDetails_DistanceVA;
     // frmDBControls.ALC_TBL_Centres.FieldByName('NearVisualAcuityScaleID').AsInteger := centreDetails_NearVA;
    end;
end;

end.
