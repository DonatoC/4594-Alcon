unit uniEpisodeDatePicker;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids, FlashPlayerControl,
  CustomEFlashButtonUnit, Mask, DBCtrls, ADODB, DB;

type
  TfrmEpisodeDatePicker = class(TForm)
    Shape56: TShape;
    Shape57: TShape;
    lab_Prev_PatientID: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button32: TButton;
    DBGrid8: TDBGrid;
    DBEdit_Patient_EnteredBy: TDBEdit;
    Label94: TLabel;
    Label96: TLabel;
    btn_Confirm_Ini: TFlashButtonEx;
    btn_Confirm_FollowUp: TFlashButtonEx;
    DBEdit1: TDBEdit;
    FlashButtonEx1: TFlashButtonEx;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button32Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure btn_Confirm_IniClick(Sender: TObject);
    procedure DBEdit_Patient_EnteredByChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_Confirm_FollowUpClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure FlashButtonEx1Click(Sender: TObject);
    procedure DateTimePicker1Exit(Sender: TObject);
    procedure DateTimePicker1CloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    iniMaxDate : String;
    function getMaxIniDate : String;
  end;

var
  frmEpisodeDatePicker: TfrmEpisodeDatePicker;

implementation

uses unitDBControls, Unit1, uniSectionEnd, uFadeForm, FlashRefunit,
  DataModuleUnit2;

{$R *.dfm}

procedure TfrmEpisodeDatePicker.btn_Confirm_FollowUpClick(Sender: TObject);
var
  Level: Integer;
begin
  if DBEdit_Patient_EnteredBy.Text <> '' then //Force the user to fill this in
    begin
      if mainform.var_In_EDIT_MODE = false then   //Entering a brand new record
        begin
          // start database transaction
          Level := frmDBControls.ALC_Connection_1.BeginTrans;

          try
            frmDBControls.activateDBTables;  //Active all tables including Patients table
            frmDBControls.ALC_TBL_ANSWERS_BASE.fieldByName('patientID').AsInteger := frmDBControls.var_Patient_ID; //insert patient ID from var_New_Patient_ID
            DBEdit1.Text := DateToStr(DateTimePicker1.Date);
            frmDBControls.ALC_TBL_ANSWERS_BASE.fieldByName('EpisodeNumber').AsInteger := Mainform.var_New_EpisodeNum;
            frmDBControls.ALC_TBL_ANSWERS_BASE.fieldByName('episodeSetID').AsInteger := Mainform.var_New_EpiSetNum;
            frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('DateUpdated').AsString := DateTimeToStr(Now);
            frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('AuthorID').AsString := DataModule2.author;
            frmDBControls.ALC_TBL_ANSWERS_BASE.Post;
            Mainform.var_New_AnswerBase_ID := frmDBControls.ALC_TBL_ANSWERS_BASE.fieldByName('AnswerBaseID').AsInteger; //Store the current AnswerBaseID

            // if database operations are successful end transaction and commit data to database
            frmDBControls.ALC_Connection_1.CommitTrans;

            // select next page
            // add next operation(s) code here...
          except
            on E: Exception do
              begin
                frmDBControls.ShowDatabaseError(nil, E, 'AnswersBase Table', 'INSERTING ERROR: the Episode Date details have not been submitted');
                frmDBControls.ALC_Connection_1.RollbackTrans;
              end;
          end; // end try

          // Mainform.ins
           MainForm.NavigateTo_FollowUp(2);
           Close;
        end
      else
        begin
          // start database transaction
          Level := frmDBControls.ALC_Connection_1.BeginTrans;

          try
            //Editing previous record
            frmDBControls.activateDBTables;  //Active all tables including Patients table
            if Not (frmDBControls.ALC_TBL_ANSWERS_BASE.State in [dsEdit, dsInsert]) then
              frmDBControls.ALC_TBL_ANSWERS_BASE.edit;
            DBEdit1.Text := DateToStr(DateTimePicker1.Date);
            frmDBControls.ALC_TBL_ANSWERS_BASE.fieldByName('episodeSetID').AsInteger := Mainform.var_New_EpiSetNum;
            frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('DateUpdated').AsString := DateTimeToStr(Now);
            frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('AuthorID').AsString := DataModule2.author;
            frmDBControls.ALC_TBL_ANSWERS_BASE.Post;

            // if database operations are successful end transaction and commit data to database
            frmDBControls.ALC_Connection_1.CommitTrans;
          except
            on E: Exception do
              begin
                frmDBControls.ShowDatabaseError(nil, E, 'AnswersBase Table', 'UPDATING ERROR: the Episode Date details have not been submitted');
                frmDBControls.ALC_Connection_1.RollbackTrans;
              end;
          end; // end try

          MainForm.NavigateTo_FollowUp(2);
          Close;
        end;
    end
  else
    begin
      frmDBControls.ViewText(Sender,'Please complete the Entered by field', 'information');
    end;
end;

procedure TfrmEpisodeDatePicker.btn_Confirm_IniClick(Sender: TObject);
var
  Level: Integer;
begin
  if DBEdit_Patient_EnteredBy.Text <> '' then //Force the user to fill this in
    begin
      if mainform.var_In_EDIT_MODE = false then   //Entering a brand new record
        begin
          // start database transaction
          Level := frmDBControls.ALC_Connection_1.BeginTrans;

          try
            frmDBControls.activateDBTables;  //Active all tables including Patients table

            frmDBControls.ALC_TBL_ANSWERS_BASE.fieldByName('patientID').AsInteger := frmDBControls.var_Patient_ID; //insert patient ID from var_New_Patient_ID
            frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('DateUpdated').AsString := DateTimeToStr(Now);
            frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('AuthorID').AsString := DataModule2.author;
            DBEdit1.Text := DateToStr(DateTimePicker1.Date);
            frmDBControls.ALC_TBL_ANSWERS_BASE.Post;
            Mainform.var_New_AnswerBase_ID := frmDBControls.ALC_TBL_ANSWERS_BASE.fieldByName('AnswerBaseID').AsInteger; //Store the current AnswerBaseID

            // if database operations are successful end transaction and commit data to database
            frmDBControls.ALC_Connection_1.CommitTrans;
          except
            on E: Exception do
              begin
                frmDBControls.ShowDatabaseError(nil, E, 'AnswersBase Table', 'INSERTING ERROR: the Episode Date details have not been submitted');
                frmDBControls.ALC_Connection_1.RollbackTrans;
              end;
          end; // end try

          MainForm.NavigateTo_ini(2);
          Close;
        end
      else
        begin //Editing previous record
          // start database transaction
          Level := frmDBControls.ALC_Connection_1.BeginTrans;

          try
            frmDBControls.activateDBTables;  //Active all tables including Patients table
            if Not (frmDBControls.ALC_TBL_ANSWERS_BASE.State in [dsEdit, dsInsert]) then
              frmDBControls.ALC_TBL_ANSWERS_BASE.edit;
            DBEdit1.Text := DateToStr(DateTimePicker1.Date);
            frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('DateUpdated').AsString := DateTimeToStr(Now);
            frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('AuthorID').AsString := DataModule2.author;
            frmDBControls.ALC_TBL_ANSWERS_BASE.fieldByName('episodeSetID').AsInteger := Mainform.var_New_EpiSetNum;
            frmDBControls.ALC_TBL_ANSWERS_BASE.Post;


            // if database operations are successful end transaction and commit data to database
            frmDBControls.ALC_Connection_1.CommitTrans;
          except
            on E: Exception do
              begin
                frmDBControls.ShowDatabaseError(nil, E, 'AnswersBase Table', 'UPDATING ERROR: the Episode Date details have not been submitted');
                frmDBControls.ALC_Connection_1.RollbackTrans;
              end;
          end; // end try

          MainForm.NavigateTo_ini(2);
          Close;
        end;
    end
  else
    begin
      frmDBControls.ViewText(Sender,'Please complete the Entered by field', 'Information');
    end;
end;

procedure TfrmEpisodeDatePicker.Button32Click(Sender: TObject);
begin
 // showmessage(frmDBControls.var_AnswerBAse_ID);
  {if frmDBControls.patients_EditMode = false then
    begin
     if frmDBControls.in_FollowUp_Visit = true then
      begin

        frmDBControls.ALC_TBL_Patients.Active := true;
        frmDBControls.ALC_TBL_Patients.Edit;
        frmDBControls.ALC_TBL_Patients.Post;
        frmDBControls.ALC_TBL_ANSWERS_BASE.Edit;
        frmDBControls.DBEdit1.Text := DateToStr(DateTimePicker1.Date);
        frmDBControls.ALC_TBL_ANSWERS_BASE.Post;
        frmDBControls.NavigateTo_FollowUp(1);
      end
    else
      begin

        frmDBControls.ALC_TBL_Patients.Active := true;
        frmDBControls.ALC_TBL_Patients.Edit;
        frmDBControls.ALC_TBL_Patients.Post;
        frmDBControls.ALC_TBL_ANSWERS_BASE.Edit;
        frmDBControls.DBEdit1.Text := DateToStr(DateTimePicker1.Date);
        frmDBControls.ALC_TBL_ANSWERS_BASE.Post;
        frmDBControls.NavigateTo(3);
      end;
    end
  else
    begin
      if frmDBControls.in_FollowUp_Visit = true then
        begin

          frmDBControls.ALC_TBL_ANSWERS_BASE.Edit;
          frmDBControls.DBEdit1.Text := DateToStr(DateTimePicker1.Date);
          frmDBControls.ALC_TBL_ANSWERS_BASE.Post;
          frmDBControls.NavigateTo_FollowUp(1);
        end
      else
        begin

          frmDBControls.ALC_TBL_ANSWERS_BASE.Edit;
          frmDBControls.DBEdit1.Text := DateToStr(DateTimePicker1.Date);
          frmDBControls.ALC_TBL_ANSWERS_BASE.Post;
          //frmDBControls.NavigateTo_Initial(2);
          frmDBControls.NavigateTo(3);
        end;
    end; }
 { if mainform.var_In_EDIT_MODE = false then
    begin
       frmDBControls.ALC_TBL_ANSWERS_BASE.Edit;
       frmDBControls.DBEdit1.Text := DateToStr(DateTimePicker1.Date);
       frmDBControls.ALC_TBL_ANSWERS_BASE.Post;
    end;
  Close;  }
end;

procedure TfrmEpisodeDatePicker.DateTimePicker1Change(Sender: TObject);
begin
 DBEdit1.Text := DateToStr(DateTimePicker1.DateTime);
end;

procedure TfrmEpisodeDatePicker.DateTimePicker1CloseUp(Sender: TObject);
begin
  if iniMaxDate <> '' then
    begin
      if mainform.in_Initial_Visit = true then
        begin
          if DateTimePicker1.Date > strtodate(iniMaxDate) then
            begin
              Label1.Visible := true;
              label2.Visible := true;
              btn_Confirm_Ini.Visible := false;
              btn_Confirm_FollowUp.Visible := false;
              frmDBControls.ViewText(Sender,'Invalid date selected.'+sLineBreak+
                                              'You cannot select a date for the initial visit that is after any follow up visits'+SlineBreak+
                                              'Please edit the follow up visit date(s) first','WARNING!');
            end
          else
            begin
              Label1.Visible := false;
              label2.Visible := false;
              btn_Confirm_Ini.Visible := true;
              btn_Confirm_FollowUp.Visible := true;
            end;
        end;
    end;
end;

procedure TfrmEpisodeDatePicker.DateTimePicker1Exit(Sender: TObject);
begin
  if iniMaxDate <> '' then
    begin
      if mainform.in_Initial_Visit = true then
        begin
          if DateTimePicker1.Date > strtodate(iniMaxDate) then
            begin
              Label1.Visible := true;
              label2.Visible := true;
              btn_Confirm_Ini.Visible := false;
              btn_Confirm_FollowUp.Visible := false;
              frmDBControls.ViewText(Sender,'Invalid date selected.'+sLineBreak+
                                              'You cannot select a date for the initial visit that is after any follow up visits'+SlineBreak+
                                              'Please edit the follow up visit date(s) first','WARNING!');
            end
          else
            begin
              Label1.Visible := false;
              label2.Visible := false;
              btn_Confirm_Ini.Visible := true;
              btn_Confirm_FollowUp.Visible := true;
            end;
        end;
    end;
end;

procedure TfrmEpisodeDatePicker.DBEdit1Change(Sender: TObject);
begin
 { if DBEdit1.Text <> '' then
    begin
      DateTimePicker1.MinDate := strtoDate('10/10/1900');
      DateTimePicker1.Date := StrToDate(DBEdit1.Text);
    end;
                 }
end;

procedure TfrmEpisodeDatePicker.DBEdit_Patient_EnteredByChange(Sender: TObject);
begin
  if DBEdit_Patient_EnteredBy.Text = '' then
    label96.Visible := true
  else
   label96.Visible := false;

end;

procedure TfrmEpisodeDatePicker.FlashButtonEx1Click(Sender: TObject);
begin
 if Mainform.var_In_EDIT_MODE <> true then
  frmDBControls.ALC_TBL_ANSWERS_BASE.Delete;

  Close;
end;

procedure TfrmEpisodeDatePicker.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frmFadeForm.Visible = true then
    frmFadeForm.Close;
end;

procedure TfrmEpisodeDatePicker.FormShow(Sender: TObject);
begin
  // showmessage(getMaxIniDate);
   iniMaxDate := getMaxIniDate;
   DateTimePicker1.MaxDate := strtodate('01/01/2999');
  {FollowUp visit date validation}
    {Query below will return the ini visit date, the min date for the follow up visit should be set to this}
if mainform.in_FollowUpVisit = true then
 begin
  if Mainform.var_In_EDIT_MODE <> true then
    Begin
      if MainForm.FollowUpVisit_ScrollBox.ControlCount > 1 then
        begin
          frmDBControls.ADOQuery5.Parameters.ParamByName('paramEpisodeSetID').Value := mainform.var_New_EpiSetNum;
          frmDBControls.ADOQuery5.Open;
          if frmDBControls.ADOQuery5.FieldByName('episodeDate').AsString <> '' then
            begin
              //Set appointment date picker to this date
              DateTimePicker1.Date := StrToDate(frmDBControls.ADOQuery5.FieldByName('episodeDate').AsString);
              DateTimePicker1.MinDate := StrToDate(frmDBControls.ADOQuery5.FieldByName('episodeDate').AsString);
             { mainform.DateTimePicker5.MinDate := StrToDate(frmDBControls.ADOQuery5.FieldByName('episodeDate').AsString);
              mainform.DateTimePicker6.MinDate := StrToDate(frmDBControls.ADOQuery5.FieldByName('episodeDate').AsString);  }
            end
          else
            begin
              DateTimePicker1.MinDate := StrToDate('01/01/1900');
            end;
          frmDBControls.ADOQuery5.close;
        end
      else
        begin
          frmDBControls.ADOQuery6.Parameters.ParamByName('paramEpisodeSetID').Value := mainform.var_New_EpiSetNum;
          frmDBControls.ADOQuery6.Open;

          if frmDBControls.ADOQuery6.FieldByName('episodeDate').AsString <> '' then
            begin
              //Set appointment date picker to this date
              DateTimePicker1.Date := StrToDate(frmDBControls.ADOQuery6.FieldByName('episodeDate').AsString);
              DateTimePicker1.MinDate := StrToDate((frmDBControls.ADOQuery6.FieldByName('episodeDate').AsString));
             { mainform.DateTimePicker5.MinDate := StrToDate(frmDBControls.ADOQuery6.FieldByName('episodeDate').AsString);
              mainform.DateTimePicker6.MinDate := StrToDate(frmDBControls.ADOQuery6.FieldByName('episodeDate').AsString); }
            end
          else
            begin
              DateTimePicker1.MinDate := StrToDate('01/01/1900');
            end;
          frmDBControls.ADOQuery6.close;
        end;
    end
  else
    begin
      DateTimePicker1.MinDate := StrToDate('01/01/1900');
        if DBEdit1.Text <> '' then
          begin
            DateTimePicker1.Date := StrToDate(DBEdit1.Text);
          end
        else
          begin
            DateTimePicker1.Date := now;
          end;

       DateTimePicker1.MinDate := StrToDate(DBEdit1.Text);
    end;
 end
 else
  begin
    if MainForm.var_In_EDIT_MODE = true then
      begin
        DateTimePicker1.MinDate := StrToDate('01/01/1900');
        if DBEdit1.Text <> '' then
          begin
            DateTimePicker1.Date := StrToDate(DBEdit1.Text);
          end
        else
          begin
            DateTimePicker1.Date := now;
          end;

        if iniMaxDate <> '' then
          begin
            if StrToDate(iniMaxDate) > DateTimePicker1.Date then
              DateTimePicker1.MaxDate := StrToDate(iniMaxDate)
            else
             DateTimePicker1.MaxDate := DateTimePicker1.Date;
          end;
      end;
     DateTimePicker1.MinDate := StrToDate('01/01/1900');
  end;



  DBEdit_Patient_EnteredByChange(nil);
end;

function TfrmEpisodeDatePicker.getMaxIniDate: String;
Var
  I : Integer;
begin
  if mainform.FollowUpVisit_ScrollBox.ControlCount > 1 then
    begin
      for I := 0 to mainform.FollowUpVisit_ScrollBox.ControlCount - 1 do
        begin
          if mainform.FollowUpVisit_ScrollBox.Controls[I].ClassType = TCheckBox then
            begin
              Result := TCheckBox(mainform.FollowUpVisit_ScrollBox.Controls[I]).Caption;
            end;
        end;
    end
  else
    begin
      Result := '';//DateToStr(Now);
    end;
end;

end.
