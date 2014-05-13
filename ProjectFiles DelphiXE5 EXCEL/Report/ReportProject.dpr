program ReportProject;

uses
  Forms,
  Report in 'Report.pas' {frmReport},
  unitDBControls in 'unitDBControls.pas' {frmDBControls},
  unitDBControlsForReport in 'unitDBControlsForReport.pas' {frmDBControlsForReport};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmReport, frmReport);
  Application.CreateForm(TfrmDBControls, frmDBControls);
  Application.CreateForm(TfrmDBControlsForReport, frmDBControlsForReport);
  frmReport.PageControl1.ActivePage := frmReport.GenderReportPage;
  Application.Run;
end.
