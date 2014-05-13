unit uniImagesToCapture;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FlashPlayerControl, StdCtrls, CustomEFlashTableUnit, ComCtrls,
  ExtCtrls, OleServer, MSPpt2000, comobj, Clipbrd;

type
  TfrmImagesToCapture = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    TabSheet13: TTabSheet;
    TabSheet14: TTabSheet;
    TabSheet15: TTabSheet;
    TabSheet16: TTabSheet;
    TabSheet17: TTabSheet;
    TabSheet18: TTabSheet;
    TabSheet19: TTabSheet;
    TabSheet20: TTabSheet;
    TabSheet21: TTabSheet;
    TabSheet22: TTabSheet;
    TabSheet23: TTabSheet;
    TabSheet24: TTabSheet;
    TabSheet25: TTabSheet;
    TabSheet26: TTabSheet;
    TabSheet27: TTabSheet;
    TabSheet28: TTabSheet;
    TabSheet29: TTabSheet;
    TabSheet30: TTabSheet;
    FlashPlayerControl1: TFlashPlayerControl;
    Button1: TButton;
    Timer1: TTimer;
    PowerPointApplication1: TPowerPointApplication;
    Button2: TButton;
    EFlashTable4: TEFlashTable;
    Label7: TLabel;
    lblMaleDesc: TLabel;
    lblMaleValue: TLabel;
    lblFemaleDesc: TLabel;
    lblFemaleValue: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Shape3: TShape;
    Shape4: TShape;
    Label15: TLabel;
    lblPatientslAgeUnder45Desc: TLabel;
    lblPatientslAgeUnder45Value: TLabel;
    lblPatientsAgeBetween45And64Desc: TLabel;
    lblPatientsAgeBetween45And64Value: TLabel;
    lblPatientsAgeOver64Desc: TLabel;
    lblPatientsAgeOver64Value: TLabel;
    Button3: TButton;
    FlashPlayerControl2: TFlashPlayerControl;
    Button5: TButton;
    Button7: TButton;
    FlashPlayerControl3: TFlashPlayerControl;
    Label18: TLabel;
    lblMHWithoutVMTDesc: TLabel;
    lblMHWithoutVMTValue: TLabel;
    lblVMTwithMHDesc: TLabel;
    lblVMTwithMHValue: TLabel;
    lblVMTwithoutMHDesc: TLabel;
    lblVMTwithoutMHValue: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label40: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    FlashPlayerControl4: TFlashPlayerControl;
    FlashPlayerControl5: TFlashPlayerControl;
    Label53: TLabel;
    Shape14: TShape;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label67: TLabel;
    Shape16: TShape;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Shape12: TShape;
    Label87: TLabel;
    Label88: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label96: TLabel;
    Shape18: TShape;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label106: TLabel;
    Shape20: TShape;
    Label114: TLabel;
    lblGPDesc: TLabel;
    lblGPValue: TLabel;
    lblMedicalRetinalOphthalmologistDesc: TLabel;
    lblMedicalRetinalOphthalmologistValue: TLabel;
    lblOptometristDesc: TLabel;
    lblOptometristValue: TLabel;
    lblOtherDesc: TLabel;
    lblOtherOphthalmologistDesc: TLabel;
    lblVitreoretinalSurgeonDesc: TLabel;
    lblOtherValue: TLabel;
    lblOtherOphthalmologistValue: TLabel;
    lblVitreoretinalSurgeonValue: TLabel;
    Label116: TLabel;
    Shape22: TShape;
    Label122: TLabel;
    lblSuspectedCataractDesc: TLabel;
    lblSuspectedCataractValue: TLabel;
    lblSuspectedVMTDesc: TLabel;
    lblSuspectedVMTValue: TLabel;
    lblSuspectedWetAMDDesc: TLabel;
    lblSuspectedWetAMDValue: TLabel;
    lblSuspectedMHDesc: TLabel;
    lblUnknownCauseDesc: TLabel;
    lblOtherReasonDesc: TLabel;
    lblSuspectedMHValue: TLabel;
    lblUnknownCauseValue: TLabel;
    lblOtherReasonValue: TLabel;
    Label124: TLabel;
    Shape24: TShape;
    Label130: TLabel;
    lblBothEyeDesc: TLabel;
    lblBothEyeValue: TLabel;
    lblODDesc: TLabel;
    lblODValue: TLabel;
    lblOSDesc: TLabel;
    lblOSvalue: TLabel;
    Label132: TLabel;
    Shape26: TShape;
    Label138: TLabel;
    lblComorbiditiesPercVitreomacularAdhesionDesc: TLabel;
    lblComorbiditiesPercVitreomacularAdhesionValue: TLabel;
    lblComorbiditiesPercVitreomacularTractionDesc: TLabel;
    lblComorbiditiesPercVitreomacularTractionValue: TLabel;
    lblComorbiditiesPercMacularHoleWithVMTDesc: TLabel;
    lblComorbiditiesPercMacularHoleWithVMTValue: TLabel;
    lblComorbiditiesPercMacularHoleWithoutVMTDesc: TLabel;
    lblComorbiditiesPercWetAMDDesc: TLabel;
    lblComorbiditiesPercDryAMDDesc: TLabel;
    lblComorbiditiesPercMacularHoleWithoutVMTValue: TLabel;
    lblComorbiditiesPercWetAMDValue: TLabel;
    lblComorbiditiesPercDryAMDValue: TLabel;
    lblComorbiditiesPercDMEDesc: TLabel;
    lblComorbiditiesPercDMEValue: TLabel;
    lblComorbiditiesPercProliferativeDiabeticRetinopathyDesc: TLabel;
    lblComorbiditiesPercProliferativeDiabeticRetinopathyValue: TLabel;
    lblComorbiditiesPercCataractDesc: TLabel;
    lblComorbiditiesPercCataractValue: TLabel;
    lblComorbiditiesPercRetinalVeinOcclusionDesc: TLabel;
    lblComorbiditiesPercRetinalDetachmentDesc: TLabel;
    lblComorbiditiesPercHighMyopiaDesc: TLabel;
    lblComorbiditiesPercRetinalVeinOcclusionValue: TLabel;
    lblComorbiditiesPercRetinalDetachmentValue: TLabel;
    lblComorbiditiesPercHighMyopiaValue: TLabel;
    lblComorbiditiesPercOtherDesc: TLabel;
    lblComorbiditiesPercNotRelevantDesc: TLabel;
    lblComorbiditiesPercOtherValue: TLabel;
    lblComorbiditiesPercNotRelevantValue: TLabel;
    Shape28: TShape;
    lblSymptomsNotRelevantValue: TLabel;
    lblSymptomsNotRelevantDesc: TLabel;
    lblSymptomsOtherValue: TLabel;
    lblSymptomsOtherDesc: TLabel;
    lblSymptomsVisualReductionValue: TLabel;
    lblSymptomsVisualReductionDesc: TLabel;
    lblSymptomsBlurredVisionValue: TLabel;
    lblSymptomsBlurredVisionDesc: TLabel;
    lblSymptomsDifficultyReadingAtNightValue: TLabel;
    lblSymptomsCentralBlackImageValue: TLabel;
    lblSymptomsObjectsAppearSmallerValue: TLabel;
    lblSymptomsDifficultyReadingAtNightDesc: TLabel;
    lblSymptomsCentralBlackImageDesc: TLabel;
    lblSymptomsObjectsAppearSmallerDesc: TLabel;
    lblSymptomsDistortedVisionValue: TLabel;
    lblSymptomsDistortedVisionDesc: TLabel;
    lblSymptomsFlashesOfLightValue: TLabel;
    lblSymptomsFlashesOfLightDesc: TLabel;
    lblSymptomsFloatersValue: TLabel;
    lblSymptomsFloatersDesc: TLabel;
    O: TLabel;
    lblPrevTreatPeripheralLaserPhotocoagulationDesc: TLabel;
    lblPrevTreatMacularLaserPhotocoagulationDesc: TLabel;
    Shape29: TShape;
    lblPrevTreatOtherIntravitrealInjectionValue: TLabel;
    lblPrevTreatOtherIntravitrealInjectionDesc: TLabel;
    lblPrevTreatIntravitrealSteroidImplantValue: TLabel;
    lblPrevTreatIntravitrealSteroidImplantDesc: TLabel;
    lblPrevTreatIntravitrealSteroidLiquidValue: TLabel;
    lblPrevTreatIntravitrealSteroidLiquidDesc: TLabel;
    lblPrevTreatIntravitrealAntiVEGFValue: TLabel;
    lblPrevTreatIntravitrealAntiVEGFDesc: TLabel;
    lblPrevTreatOtherSurgeryValue: TLabel;
    lblPrevTreatPeripheralLaserPhotocoagulationValue: TLabel;
    lblPrevTreatMacularLaserPhotocoagulationValue: TLabel;
    lblPrevTreatOtherSurgeryDesc: TLabel;
    lblPrevTreatVitrectomyValue: TLabel;
    lblPrevTreatVitrectomyDesc: TLabel;
    lblPrevTreatGlaucomaFiltrationSurgeryValue: TLabel;
    lblPrevTreatGlaucomaFiltrationSurgeryDesc: TLabel;
    lblPrevTreatCataractSurgeryValue: TLabel;
    lblPrevTreatCataractSurgeryDesc: TLabel;
    Label163: TLabel;
    lblPrevTreatNotRelevantDesc: TLabel;
    lblPrevTreatNotRelevantValue: TLabel;
    FlashPlayerControl6: TFlashPlayerControl;
    FlashPlayerControl7: TFlashPlayerControl;
    FlashPlayerControl8: TFlashPlayerControl;
    FlashPlayerControl9: TFlashPlayerControl;
    FlashPlayerControl10: TFlashPlayerControl;
    FlashPlayerControl11: TFlashPlayerControl;
    FlashPlayerControl12: TFlashPlayerControl;
    FlashPlayerControl13: TFlashPlayerControl;
    FlashPlayerControl14: TFlashPlayerControl;
    FlashPlayerControl15: TFlashPlayerControl;
    Button4: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    FlashPlayerControl16: TFlashPlayerControl;
    FlashPlayerControl17: TFlashPlayerControl;
    FlashPlayerControl18: TFlashPlayerControl;
    FlashPlayerControl19: TFlashPlayerControl;
    FlashPlayerControl20: TFlashPlayerControl;
    FlashPlayerControl21: TFlashPlayerControl;
    FlashPlayerControl22: TFlashPlayerControl;
    FlashPlayerControl23: TFlashPlayerControl;
    FlashPlayerControl24: TFlashPlayerControl;
    FlashPlayerControl25: TFlashPlayerControl;
    FlashPlayerControl26: TFlashPlayerControl;
    FlashPlayerControl27: TFlashPlayerControl;
    FlashPlayerControl28: TFlashPlayerControl;
    FlashPlayerControl29: TFlashPlayerControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    TabSheet31: TTabSheet;
    FlashPlayerControl30: TFlashPlayerControl;
    Panel14: TPanel;
    Panel15: TPanel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label17: TLabel;
    Panel16: TPanel;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FlashPlayerControl1FSCommand(ASender: TObject; const command,
      args: WideString);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    canCapture : boolean;
    reportChartCount : Integer;
    captureDelay : integer;
    procedure generateCharts (aChartNum: Integer; aTransFlashPlayerName : TFlashPlayerControl);
    function getDataStr(anID, maxTagNum, loopPos : integer; aTabSheet : TTabSheet; aQueryBTN : TButton) : String;
    function WindowSnap(windowHandle: HWND; bmp: TBitmap): boolean;
    procedure captureScreens(aChartNum: Integer);
    procedure CreatePPTReport;
    procedure SaveTheWindow(Control: tcontrol; filename: string);
    procedure captureclient( Control: TControl; var bmp: tbitmap );
  end;

const
 msoFalse=2;
 msoTrue=1;

var
  frmImagesToCapture: TfrmImagesToCapture;

implementation

uses DataModuleUnit2, Report, unitWindowCapture, uniGen, uFadeForm,
  unitDBControls, Unit1, unitDBControlsForReport, unitReportUserOptions,
  unitUltimateSplash;

{$R *.dfm}

{ TfrmImagesToCapture }

procedure TfrmImagesToCapture.Button1Click(Sender: TObject);
begin
  frmReport.Button1Click(nil);
end;

procedure TfrmImagesToCapture.Button2Click(Sender: TObject);
Var
 // PowerPointApplication1 : OLEVariant;
  Hwnd : THandle;
begin


     {    Hwnd := DataModule2.FindWindowByTitle('Temp.ppt');
         if Hwnd <> 0 then
          begin
            frmDBControls.viewText(Sender,'You already have a report presentation open','Information');
            Hwnd := DataModule2.FindWindowByTitle('Temp.ppt');
            BringWindowToTop(Hwnd);
            ShowWindow(Hwnd,3);
            exit;
          end
         else
          begin
            frmGen.updateLabels('Preparing powerPoint','85%');
            PowerPointApplication1 := CreateOleObject('PowerPoint.Application');
            frmGen.updateLabels('Connecting to powerPoint','90%');
          //  PowerPointApplication1.Connect;
            PowerPointApplication1.Visible := 1;
            PowerPointApplication1.Presentations.Open(dataModule2.AppPath + 'Reports\Template\Temp.ppt',True,False,True);
            frmGen.updateLabels('Loading powerPoint file','95%');
            frmImagesToCapture.Close;
            frmGen.updateLabels('Reports complete','100%');
            frmGen.Close;
            if frmFadeForm.Visible = true then
              frmFadeForm.Close;
              ShowWindow(Application.Handle, SW_SHOWMINIMIZED);
          end;     }

end;

procedure TfrmImagesToCapture.Button4Click(Sender: TObject);
var
  Bitmap : TBitmap;
  s : string;
  Icon: TIcon;
begin
 Bitmap := TBitMap.Create;
 try
   frmWindowCapture.Image1.Picture.RegisterClipboardFormat(cf_BitMap,TIcon);
   Bitmap.LoadFromClipBoardFormat(
     cf_BitMap,ClipBoard.GetAsHandle(cf_Bitmap),0);
   Canvas.draw(0,0,Bitmap);
 finally
   Bitmap.free;
   Clipboard.Clear;
 end;

end;



procedure TfrmImagesToCapture.Button5Click(Sender: TObject);
begin
//  SHOWMESSAGE(IntToStr(frmImagesToCapture.FlashPlayerControl1.FrameNum));
 //frmImagesToCapture.generateCharts(1,frmReport.FlashPlayerControl1);
end;

procedure TfrmImagesToCapture.Button6Click(Sender: TObject);
begin
          frmImagesToCapture.FlashPlayerControl1.FrameNum := (2);
          frmImagesToCapture.FlashPlayerControl1.Refresh;
          frmImagesToCapture.FlashPlayerControl1.Repaint;
          frmImagesToCapture.FlashPlayerControl1.Update;
          Application.ProcessMessages;
end;

procedure TfrmImagesToCapture.Button7Click(Sender: TObject);
begin
  PageControl1.ActivePage := tabsheet1;
end;

procedure TfrmImagesToCapture.Button8Click(Sender: TObject);
begin
  showmessage(intToStr(FlashPlayerControl1.FrameNum));
end;

procedure TfrmImagesToCapture.Button9Click(Sender: TObject);
begin
 //frmImagesToCapture.generateCharts(1,frmImagesToCapture.FlashPlayerControl1);
 pageControl1.ActivePage := TabSheet2;
end;

procedure TfrmImagesToCapture.captureclient(Control: TControl;
  var bmp: tbitmap);
var
 screendc: HDC;
 arect: trect;
begin
  if Control.Name = 'MainForm' then
    begin
      with control, control.clientorigin do
        begin
          //arect:=bounds(0,0,control.width,control.height);
          arect:=bounds(control.Left,control.Top,control.width,control.height);
          with bmp, arect do
            begin
              width:=right-Left;
              height:=bottom-top;
              screendc:=getdc(0);
              try
                bitblt(canvas.handle,0,0,width,height,screendc,left,top,SRCCOPY);
              finally
                releasedc(0,Screendc);
              end;
            end;
        end;
    end
  else
    begin
      with control, control.clientorigin do
        begin
          arect:=bounds(control.Left,control.Top,control.width,control.height);
          with bmp, arect do
            begin
              width:=control.width;
              height:=control.height;
              screendc:=getdc(0);
              try
                bitblt(canvas.handle,0,0,width,height,screendc,left,top,SRCCOPY);
              finally
                releasedc(0,Screendc);
              end;
           end;
        end;
    end;

end;

procedure TfrmImagesToCapture.captureScreens(aChartNum: Integer);
var
  h: TBitmap;
  r: TRect;
  delayCapture : Integer;
  MyFormat : Word;
  Bitmap : TBitMap;
  AData : THandle;
  APalette : HPALETTE;

begin
  delayCapture := 0;



      {  while frmImagesToCapture.FlashPlayerControl1.Playing = false do
          begin
            delayCapture := delayCapture + 1;
            if delayCapture = 100 then
              Break
            else
              Application.ProcessMessages;
          end;    }


   case aChartNum of
      0 : begin  //Home
           PageControl1.ActivePage := TabSheet31;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
            frmDBControls.ALC_TBL_Centres.Active := true;
            frmDBControls.ALC_TBL_Centres.Open;
            frmDBControls.ALC_TBL_Patients.Active := true;
            frmDBControls.ALC_TBL_Patients.Open;
            frmDBControls.ALC_TBL_Patients.Refresh;

            frmImagesToCapture.Label17.Caption := 'Report date: ' + DateToStr(now);
            frmImagesToCapture.Label8.Caption := 'Centre population: ' + frmDBControls.ALC_TBL_Centres.FieldByName('Population').AsString;
            frmImagesToCapture.Label9.Caption := 'SET record count: ' + inttostr(frmDBControls.ALC_TBL_Patients.RecordCount);

            frmImagesToCapture.Label17.Repaint;
            frmImagesToCapture.Label8.Repaint;
            frmImagesToCapture.Label9.Repaint;
            frmImagesToCapture.Repaint;


           application.ProcessMessages;
           reportChartCount := 1;
      end;



      1 : begin  //Gender
           PageControl1.ActivePage := TabSheet1;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
           application.ProcessMessages;
           reportChartCount := 1;
            frmGen.updateLabels('Exporting reports','31%');
      end;
      2 : begin  //age
           PageControl1.ActivePage := TabSheet2;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
           application.ProcessMessages;
           reportChartCount := 2;
           frmGen.updateLabels('Exporting reports','32%');
      end;
      3 : begin  //vmt
           PageControl1.ActivePage := TabSheet3;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
           application.ProcessMessages;
           reportChartCount := 3;
           frmGen.updateLabels('Exporting reports','33%');
      end;

      4 : begin  //Source of ref
           PageControl1.ActivePage := TabSheet4;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
           application.ProcessMessages;
           reportChartCount := 24;
           frmGen.updateLabels('Exporting reports','34%');
      end;

      5 : begin  //reason for ref
           PageControl1.ActivePage := TabSheet5;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
           application.ProcessMessages;
           reportChartCount := 25;
           frmGen.updateLabels('Exporting reports','35%');
      end;

      6 : begin  //Prime eye
           PageControl1.ActivePage := TabSheet6;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
           application.ProcessMessages;
           reportChartCount := 26;
           frmGen.updateLabels('Exporting reports','36%');
      end;

      7 : begin  //Como freq
           PageControl1.ActivePage := TabSheet7;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
           application.ProcessMessages;
           reportChartCount := 27;
           frmGen.updateLabels('Exporting reports','37%');
      end;

       8 : begin  ///Ocular syms freq
           PageControl1.ActivePage := TabSheet8;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
           application.ProcessMessages;
           reportChartCount := 28;
           frmGen.updateLabels('Exporting reports','38%');
      end;

      9 : begin  //Previous intervention freq
           PageControl1.ActivePage := TabSheet9;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
           application.ProcessMessages;
           reportChartCount := 29;
           frmGen.updateLabels('Exporting reports','39%');
      end;

      10 : begin  //Proposed treatment by rationale
           PageControl1.ActivePage := TabSheet10;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
           application.ProcessMessages;
           reportChartCount := 4;
           frmGen.updateLabels('Exporting reports','40%');
      end;


      11 : begin   //Mean intraocular pressure
           PageControl1.ActivePage := TabSheet11;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
           application.ProcessMessages;
           reportChartCount := 5;
           frmGen.updateLabels('Exporting reports','41%');
      end;

      12 : begin //Mean change in intraocular pressure (IOP) from initial visit to discharge
           PageControl1.ActivePage := TabSheet12;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
           application.ProcessMessages;
           reportChartCount := 6;
           frmGen.updateLabels('Exporting reports','42%');
      end;

      13 : begin //Visual Acuity (Distance) – Over-time
           PageControl1.ActivePage := TabSheet13;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
           application.ProcessMessages;
           reportChartCount := 7;
           frmGen.updateLabels('Exporting reports','43%');
      end;

      14 : begin //Mean change in Visual Acuity (Distance) – from initial visit to discharge
           PageControl1.ActivePage := TabSheet14;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
           application.ProcessMessages;
           reportChartCount := 8;
           frmGen.updateLabels('Exporting reports','44%');
      end;

      15 : begin //Visual Acuity (Near) – Over-time
           PageControl1.ActivePage := TabSheet15;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
           application.ProcessMessages;
           reportChartCount := 9;
           frmGen.updateLabels('Exporting reports','46%');
      end;

      16 : begin //Mean change in Visual Acuity (Near) – from initial visit to discharge
           PageControl1.ActivePage := TabSheet16;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
           application.ProcessMessages;
           reportChartCount := 1;
            frmGen.updateLabels('Exporting reports','48%');
      end;
      17 : begin //Distortion presence over time
           PageControl1.ActivePage := TabSheet17;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
           application.ProcessMessages;
           reportChartCount := 2;
           frmGen.updateLabels('Exporting reports','50%');
      end;
      18 : begin //Scotoma presence over time
           PageControl1.ActivePage := TabSheet18;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
           application.ProcessMessages;
           reportChartCount := 3;
           frmGen.updateLabels('Exporting reports','52%');
      end;

      19 : begin // Presence of … over time.
           PageControl1.ActivePage := TabSheet19;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
           application.ProcessMessages;
           reportChartCount := 24;
           frmGen.updateLabels('Exporting reports','54%');
      end;

      20 : begin  //Vitreomacular adhesion (VMA) size over time
           PageControl1.ActivePage := TabSheet20;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
           application.ProcessMessages;
           reportChartCount := 25;
           frmGen.updateLabels('Exporting reports','56%');
      end;

      21 : begin //Macular hole stage  at initial visit
           PageControl1.ActivePage := TabSheet21;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
           application.ProcessMessages;
           reportChartCount := 26;
           frmGen.updateLabels('Exporting reports','58%');
      end;

      22 : begin //Size of macular hole over time
           PageControl1.ActivePage := TabSheet22;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
           application.ProcessMessages;
           reportChartCount := 27;
           frmGen.updateLabels('Exporting reports','60%');
      end;

       23 : begin //Occurrence of Secondary cataract
           PageControl1.ActivePage := TabSheet23;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
           application.ProcessMessages;
           reportChartCount := 28;
           frmGen.updateLabels('Exporting reports','62%');
      end;

      24 : begin //Avg visits between initial and discharge
           PageControl1.ActivePage := TabSheet24;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
           application.ProcessMessages;
           reportChartCount := 29;
           frmGen.updateLabels('Exporting reports','64%');
      end;

      25 : begin  //Reason for discharge
           PageControl1.ActivePage := TabSheet25;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
           application.ProcessMessages;
           reportChartCount := 4;
           frmGen.updateLabels('Exporting reports','66%');
      end;


      26 : begin  //Average time between initial visit and discharge
           PageControl1.ActivePage := TabSheet26;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
           application.ProcessMessages;
           reportChartCount := 5;
           frmGen.updateLabels('Exporting reports','68%');
      end;

      27 : begin //Average duration between visits
           PageControl1.ActivePage := TabSheet27;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
           application.ProcessMessages;
           reportChartCount := 6;
           frmGen.updateLabels('Exporting reports','70%');
      end;

      28 : begin //Average time between initial visit and treatment
           PageControl1.ActivePage := TabSheet28;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
           application.ProcessMessages;
           reportChartCount := 7;
           frmGen.updateLabels('Exporting reports','73%');
      end;

      29 : begin  //Changes to treatment
           PageControl1.ActivePage := TabSheet29;
            PageControl1.Repaint;
            PageControl1.Refresh;
            PageControl1.Update;
           application.ProcessMessages;
           reportChartCount := 8;
           frmGen.updateLabels('Exporting reports','75%');
      end;
   end;






        //Capture image
        frmImagesToCapture.WindowSnap(frmImagesToCapture.Handle,frmWindowCapture.Image1.Picture.Bitmap);
        //Assign to clipboard ready to paste into ppt slide
        Clipboard.Assign(frmWindowCapture.Image1.Picture.Graphic);


end;

procedure TfrmImagesToCapture.CreatePPTReport;
var
    Hwnd : THandle;
    I : integer;
    processValue, totalProcesses, currentProcess : Integer;
begin
         Hwnd := DataModule2.FindWindowByTitle('SET_Report'); //Set HWND to name of report ppt

         if Hwnd <> 0 then  //if Hwnd not equal to nothing, then the user already has a presentation open.
          begin
            frmDBControls.viewText(self,'You already have a report presentation open','Information');
            Hwnd := DataModule2.FindWindowByTitle('SET_Reports');
            BringWindowToTop(Hwnd);
            ShowWindow(Hwnd,3);

            //if the fadeform is still open. then close it.
            if frmFadeForm.Visible = true then
             frmFadeForm.close;

            exit;
          end
         else
          begin  //New report ppt
             frmImagesToCapture.Left := -100000;  //set the left of the form to crazy left {user will not see the screen}
             frmImagesToCapture.Show; //Show the form so we can take a snap shot

             {totalProcesses := 60;
             processValue := 0;
             frmUltimateSplash.ProgressBar1.Position := 0;
             currentProcess := 0;
             frmUltimateSplash.label3.Caption := '0%';
             DataModule2.canShowFadeForm := true;
             Mainform.showPopUp(frmUltimateSplash);

             frmUltimateSplash.Update;}

             frmGen.updateLabels('Preparing report data','0%');
             DataModule2.canShowFadeForm := false;
             Mainform.showPopUp(frmGen);

             frmGen.updateLabels('Gathering report data','1%');
             frmImagesToCapture.generateCharts(1,frmImagesToCapture.FlashPlayerControl1); //feed the chart some data
             frmGen.updateLabels('Gathering report data','2%');
             frmImagesToCapture.generateCharts(2,frmImagesToCapture.FlashPlayerControl2);
             frmGen.updateLabels('Gathering report data','3%');
             frmImagesToCapture.generateCharts(3,frmImagesToCapture.FlashPlayerControl3);
             frmGen.updateLabels('Gathering report data','4%');
             frmImagesToCapture.generateCharts(4,frmImagesToCapture.FlashPlayerControl4);
             frmGen.updateLabels('Gathering report data','5%');
             frmImagesToCapture.generateCharts(5,frmImagesToCapture.FlashPlayerControl5);
             frmGen.updateLabels('Gathering report data','6%');
             frmImagesToCapture.generateCharts(6,frmImagesToCapture.FlashPlayerControl6);
             frmGen.updateLabels('Gathering report data','7%');
             frmImagesToCapture.generateCharts(7,frmImagesToCapture.FlashPlayerControl7);
             frmGen.updateLabels('Gathering report data','8%');
             frmImagesToCapture.generateCharts(8,frmImagesToCapture.FlashPlayerControl8);
             frmGen.updateLabels('Gathering report data','9%');
             frmImagesToCapture.generateCharts(9,frmImagesToCapture.FlashPlayerControl9);
             frmGen.updateLabels('Gathering report data','10%');
             frmImagesToCapture.generateCharts(10,frmImagesToCapture.FlashPlayerControl10);
             frmGen.updateLabels('Gathering report data','11%');
             frmImagesToCapture.generateCharts(11,frmImagesToCapture.FlashPlayerControl11);
             frmGen.updateLabels('Gathering report data','12%');
             frmImagesToCapture.generateCharts(12,frmImagesToCapture.FlashPlayerControl12);
             frmGen.updateLabels('Gathering report data','13%');
             frmImagesToCapture.generateCharts(13,frmImagesToCapture.FlashPlayerControl13);
             frmGen.updateLabels('Gathering report data','14%');
             frmImagesToCapture.generateCharts(14,frmImagesToCapture.FlashPlayerControl14);
             frmGen.updateLabels('Gathering report data','15%');
             frmImagesToCapture.generateCharts(15,frmImagesToCapture.FlashPlayerControl15);
             frmGen.updateLabels('Gathering report data','16%');
             frmImagesToCapture.generateCharts(16,frmImagesToCapture.FlashPlayerControl16);
             frmGen.updateLabels('Gathering report data','17%');
             frmImagesToCapture.generateCharts(17,frmImagesToCapture.FlashPlayerControl17);
             frmGen.updateLabels('Gathering report data','18%');
             frmImagesToCapture.generateCharts(18,frmImagesToCapture.FlashPlayerControl18);
             frmGen.updateLabels('Gathering report data','19%');
             frmImagesToCapture.generateCharts(19,frmImagesToCapture.FlashPlayerControl19);
             frmGen.updateLabels('Gathering report data','20%');
             frmImagesToCapture.generateCharts(20,frmImagesToCapture.FlashPlayerControl20);
             frmGen.updateLabels('Gathering report data','21%');
             frmImagesToCapture.generateCharts(21,frmImagesToCapture.FlashPlayerControl21);
             frmGen.updateLabels('Gathering report data','22%');
             frmImagesToCapture.generateCharts(22,frmImagesToCapture.FlashPlayerControl22);
             frmGen.updateLabels('Gathering report data','23%');
             frmImagesToCapture.generateCharts(23,frmImagesToCapture.FlashPlayerControl23);
             frmGen.updateLabels('Gathering report data','24%');
             frmImagesToCapture.generateCharts(24,frmImagesToCapture.FlashPlayerControl24);
             frmGen.updateLabels('Gathering report data','25%');
             frmImagesToCapture.generateCharts(25,frmImagesToCapture.FlashPlayerControl25);
             frmGen.updateLabels('Gathering report data','26%');
             frmImagesToCapture.generateCharts(26,frmImagesToCapture.FlashPlayerControl26);
             frmGen.updateLabels('Gathering report data','27%');
             frmImagesToCapture.generateCharts(27,frmImagesToCapture.FlashPlayerControl27);
             frmGen.updateLabels('Gathering report data','28%');
             frmImagesToCapture.generateCharts(28,frmImagesToCapture.FlashPlayerControl28);
             frmGen.updateLabels('Gathering report data','29%');
             frmImagesToCapture.generateCharts(29,frmImagesToCapture.FlashPlayerControl29);
              frmGen.updateLabels('Generating report data','30%');
             //frmImagesToCapture.generateCharts(5,frmImagesToCapture.FlashPlayerControl5);
             application.ProcessMessages;

            I := 1;


            PowerPointApplication1.Connect;
            PowerPointApplication1.Visible := 1;
            PowerPointApplication1.WindowState := 1;

           PowerPointApplication1.Presentations.Add(1);

           //Capture and paste intro slide
           captureScreens(0);
           PowerPointApplication1.ActiveWindow.View.GotoSlide(PowerPointApplication1.ActivePresentation.Slides.Add(PowerPointApplication1.ActivePresentation.Slides.Count+1, ppLayoutBlank).SlideIndex );
           PowerPointApplication1.ActiveWindow.View.Paste;

           for I := 1 to 29 do
              begin
                //if I <> 18 then
                  begin
                    captureScreens(I);
                    application.ProcessMessages;
                    PowerPointApplication1.ActiveWindow.View.GotoSlide(PowerPointApplication1.ActivePresentation.Slides.Add(PowerPointApplication1.ActivePresentation.Slides.Count+1, ppLayoutBlank).SlideIndex );
                    PowerPointApplication1.ActiveWindow.View.Paste;
                  end;
              end;

              frmGen.updateLabels('Preparing powerPoint','80%');
              PowerPointApplication1.ActiveWindow.View.GotoSlide(1);
              frmGen.updateLabels('Preparing powerPoint','85%');
              PowerPointApplication1.ActivePresentation.Saved := 1;
              PowerPointApplication1.WindowState := 3;
              frmGen.updateLabels('Preparing powerPoint','90%');

              if frmFadeForm.Visible = true then
              frmFadeForm.Close;

              frmGen.updateLabels('Loading powerPoint file','95%');
              frmGen.updateLabels('Loading powerPoint file','100%');
              frmGen.updateLabels('Reports complete','100%');

              PowerPointApplication1.ActivePresentation.SaveAs(dataModule2.AppPath + 'Reports\Template\SET_Reports.ppt',ppSaveAsPresentation,msoFalse);
              PowerPointApplication1.WindowState := 1;
              PowerPointApplication1.Disconnect;


              frmGen.Close;
              frmReportUserOptions.setCentreVA_Scales;
              application.ProcessMessages;

              DataModule2.FindWindowByTitleAndMaximize('PowerPoint');
          end;
end;

procedure TfrmImagesToCapture.FlashPlayerControl1FSCommand(ASender: TObject;
  const command, args: WideString);
begin
  showmessage(command);
end;

procedure TfrmImagesToCapture.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  captureScreens(1);
 // captureScreens(2);
end;

procedure TfrmImagesToCapture.FormCreate(Sender: TObject);
begin
  canCapture := false;
  reportChartCount := 0;
  captureDelay := 0;
end;

procedure TfrmImagesToCapture.FormShow(Sender: TObject);
begin
  frmDBControls.ALC_TBL_Centres.Active := true;
  frmDBControls.ALC_TBL_Centres.Open;
  frmDBControls.ALC_TBL_Patients.Active := true;
  frmDBControls.ALC_TBL_Patients.Open;
  frmDBControls.ALC_TBL_Patients.Refresh;

  Label17.Caption := 'Report date: ' + DateToStr(now);
  Label8.Caption := 'Centre population: ' + frmDBControls.ALC_TBL_Centres.FieldByName('Population').AsString;
  Label9.Caption := 'SET record count: ' + inttostr(frmDBControls.ALC_TBL_Patients.RecordCount);

  Label17.Repaint;
  Label8.Repaint;
  Label9.Repaint;
  frmImagesToCapture.Repaint;
  // timer1.Enabled := true;
  // showmessage(inttostr(FlashPlayerControl1.FrameNum));
end;

procedure TfrmImagesToCapture.generateCharts(aChartNum: Integer;
  aTransFlashPlayerName: TFlashPlayerControl);
var
  dataStr : String;
  aXMLFileName, aSWF, chartType, slideTitle : String;
  Count : Integer;
begin
  dataStr := ''; //Clear dataStr of any previous data
  Count := 0;
  slideTitle := '';

 //Set capture form size
 if Self.Width <> 960 then
    begin
      Self.Width := 960;
      Self.Height := 700;
    end;

      //Set size and position of flash player (chart)
      aTransFlashPlayerName.Top := 0;
      aTransFlashPlayerName.Left := 0;
      aTransFlashPlayerName.Width := 930;
      aTransFlashPlayerName.Height := 690;


 case aChartNum of
    1 : begin  //Gender -
         PageControl1.ActivePage := TabSheet1;
         PageControl1.Repaint;
         PageControl1.Refresh;
         PageControl1.Update;
         frmReport.Button1Click(nil);
         dataStr := 'Males:;' + frmReport.lblMaleValue.Caption + sLineBreak;//getDataStr(aChartNum,4,0,TabSheet1,frmReport.Button1);
         dataStr := dataStr + 'Females:;'+ frmReport.lblFemaleValue.Caption;
         slideTitle := 'Gender';
         chartType := 'ampie';
         aXMLFileName := 'Pie_Gender.xml';
         aSWF := 'ampie.swf';
    end;

    2 : begin //Age
          PageControl1.ActivePage := TabSheet2;
          PageControl1.Repaint;
         PageControl1.Refresh;
         PageControl1.Update;
         frmReport.Button2Click(nil);
         dataStr := 'No. of patients age under 45 ;' + frmReport.lblPatientslAgeUnder45Value.Caption + sLineBreak;//getDataStr(aChartNum,4,0,TabSheet1,frmReport.Button1);
         dataStr := dataStr + 'No. of patients age between 45 and 64 ;' + frmReport.lblPatientsAgeBetween45And64Value.Caption + sLineBreak;
         dataStr := dataStr + 'No. of patients age 65 and above ;' + frmReport.lblPatientsAgeOver64Value.Caption;
         slideTitle := 'Age (years) at presentation';
         chartType := 'ampie';
         aXMLFileName := 'Pie_Age.xml';
         aSWF := 'ampie.swf';
    end;

    3 : begin //VMT
          PageControl1.ActivePage := TabSheet3;
          PageControl1.Repaint;
         PageControl1.Refresh;
         PageControl1.Update;
         frmReport.Button3Click(nil);
         dataStr := 'MH without VMT with ERM:;' + frmReport.lblVMTwithoutMHwithERMValue.Caption + sLineBreak;//getDataStr(aChartNum,4,0,TabSheet1,frmReport.Button1);
         dataStr := dataStr + 'VMT without MH without ERM:;' + frmReport.lblVMTwithoutMHwithoutERMValue.Caption + sLineBreak;
         dataStr := dataStr + 'VMT with MH with ERM:;' + frmReport.lblVMTwithMHwithERMValue.Caption + sLineBreak;
         dataStr := dataStr + 'MH without VMT with ERM:;' + frmReport.lblMHwithoutVMTwithERMValue.Caption + sLineBreak;
         dataStr := dataStr + 'MH without VMT without ERM:;' + frmReport.lblMHwithoutVMTwithoutERMValue.Caption;

         slideTitle := 'Vitreomacular traction & macular hole prevalence in primary eye at presentation';
         chartType := 'ampie';
         aXMLFileName := 'Pie_VMT.xml';
         aSWF := 'ampie.swf';
    end;


    4 : begin //Source of referral
          PageControl1.ActivePage := TabSheet4;
         PageControl1.Repaint;
         PageControl1.Refresh;
         PageControl1.Update;
         frmReport.Button19Click(nil);
         dataStr := 'GP:;' + frmReport.lblGPValue.Caption + sLineBreak;//getDataStr(aChartNum,4,0,TabSheet1,frmReport.Button1);
         dataStr := dataStr + 'Medical Retinal ophthalmologist:;' + frmReport.lblMedicalRetinalOphthalmologistValue.Caption + sLineBreak;
         dataStr := dataStr + 'Optometrist:;' + frmReport.lblOptometristValue.Caption + sLineBreak;
         dataStr := dataStr + 'Other:;' + frmReport.lblOtherValue.Caption + sLineBreak;
         dataStr := dataStr + 'Other ophthalmologist:;' + frmReport.lblOtherOphthalmologistValue.Caption + sLineBreak;
         dataStr := dataStr + 'Vitreoretinal surgeon:;' + frmReport.lblVitreoretinalSurgeonValue.Caption + sLineBreak;
         slideTitle := 'Source of referral';
         chartType := 'ampie';
         aXMLFileName := 'Pie_RefSource.xml';
         aSWF := 'ampie.swf';
    end;

     5 : begin //Reason of referral
          PageControl1.ActivePage := TabSheet5;
         PageControl1.Repaint;
         PageControl1.Refresh;
         PageControl1.Update;
         frmReport.Button21Click(nil);
         dataStr := 'Suspected cataract:;' + frmReport.lblSuspectedCataractValue.Caption + sLineBreak;//getDataStr(aChartNum,4,0,TabSheet1,frmReport.Button1);
         dataStr := dataStr + 'Suspected VMT:;' + frmReport.lblSuspectedVMTValue.Caption + sLineBreak;
         dataStr := dataStr + 'Suspected wet AMD:;' + frmReport.lblSuspectedWetAMDValue.Caption + sLineBreak;
         dataStr := dataStr + 'Suspected MH:;' + frmReport.lblSuspectedMHValue.Caption + sLineBreak;
         dataStr := dataStr + 'Vision symptoms of unknown cause:;' + frmReport.lblUnknownCauseValue.Caption + sLineBreak;
         dataStr := dataStr + 'Other:;' + frmReport.lblOtherReasonValue.Caption + sLineBreak;
         slideTitle := 'Reason for referral';
         chartType := 'ampie';
         aXMLFileName := 'Pie_RefReason.xml';
         aSWF := 'ampie.swf';
    end;

    6 : begin //Prim affected eye
          PageControl1.ActivePage := TabSheet6;
         PageControl1.Repaint;
         PageControl1.Refresh;
         PageControl1.Update;
         frmReport.Button23Click(nil);
         dataStr := 'Both:;' + frmReport.lblBothEyeValue.Caption + sLineBreak;//getDataStr(aChartNum,4,0,TabSheet1,frmReport.Button1);
         dataStr := dataStr + 'OD:;' + frmReport.lblODValue.Caption + sLineBreak;
         dataStr := dataStr + 'OS:;' + frmReport.lblOSvalue.Caption;
         slideTitle := 'Primary affected eye at presentation';
         chartType := 'ampie';
         aXMLFileName := 'Pie_PrimeEye.xml';
         aSWF := 'ampie.swf';
    end;

    7 : begin //Comorbidities percentage
          PageControl1.ActivePage := TabSheet7;
          PageControl1.Repaint;
          PageControl1.Refresh;
          PageControl1.Update;
          frmReport.Button25Click(nil);

         //Cat Axis
         dataStr := 'Ocular pathologies currently present or present in past 3 years;';
         //Vitreomacular Adhesion:
         dataStr := dataStr + frmReport.lblComorbiditiesPercVitreomacularAdhesionValue.Caption + ';';
         //Vitreomacular Traction:
         dataStr := dataStr + frmReport.lblComorbiditiesPercVitreomacularTractionValue.Caption + ';';
         //Macular Hole With VMT:
         dataStr := dataStr + frmReport.lblComorbiditiesPercMacularHoleWithVMTValue.Caption+ ';';
         //Macular Hole Without VMT:
         dataStr := dataStr + frmReport.lblComorbiditiesPercMacularHoleWithoutVMTValue.Caption + ';';
         //Wet AMD:
         dataStr := dataStr + frmReport.lblComorbiditiesPercWetAMDValue.Caption + ';';
         //Dry AMD:
         dataStr := dataStr + frmReport.lblComorbiditiesPercDryAMDValue.Caption+ ';';
         //DME:
         dataStr := dataStr + frmReport.lblComorbiditiesPercDMEValue.Caption + ';';
         //Proliferative Diabetic Retinopathy:
         dataStr := dataStr +  frmReport.lblComorbiditiesPercProliferativeDiabeticRetinopathyValue.Caption + ';';
         //Cataract:
         dataStr := dataStr + frmReport.lblComorbiditiesPercCataractValue.Caption+ ';';
         //Retinal Vein Occlusion:
         dataStr := dataStr + frmReport.lblComorbiditiesPercRetinalVeinOcclusionValue.Caption + ';';
         //Retinal Detachment:
         dataStr := dataStr + frmReport.lblComorbiditiesPercRetinalDetachmentValue.Caption + ';';
         //High Myopia:
         dataStr := dataStr + frmReport.lblComorbiditiesPercHighMyopiaValue.Caption+ ';';
         //Other:
         dataStr := dataStr + frmReport.lblComorbiditiesPercOtherValue.Caption + ';';
         //Not Relevant:
         dataStr := dataStr +  frmReport.lblComorbiditiesPercNotRelevantValue.Caption;
         slideTitle := 'Frequency of ocular pathologies present in the primary eye';
         chartType := 'amcolumn';
         aXMLFileName := 'amcolumn_Como.xml';
         aSWF := 'amcolumn.swf';
    end;

    8 : begin //Ocular Symptoms: - Frequency
          PageControl1.ActivePage := TabSheet8;
          PageControl1.Repaint;
         PageControl1.Refresh;
         PageControl1.Update;
         frmReport.Button27Click(nil);

         //Cat Axis
         dataStr := 'Ocular symptoms;';
         //SymptomsFloaters::
         dataStr := dataStr + frmReport.lblSymptomsFloatersValue.Caption + ';';
         //SymptomsFlashesOfLight:
         dataStr := dataStr + frmReport.lblSymptomsFlashesOfLightValue.Caption + ';';
         //SymptomsDistortedVision:
         dataStr := dataStr + frmReport.lblSymptomsDistortedVisionValue.Caption + ';';

         //SymptomsObjectsAppearSmaller:
         dataStr := dataStr + frmReport.lblSymptomsObjectsAppearSmallerValue.Caption + ';';
         //SymptomsCentralBlackImage:
         dataStr := dataStr + frmReport.lblSymptomsCentralBlackImageValue.Caption + ';';
         //SymptomsDifficultyReadingAtNight:
         dataStr := dataStr + frmReport.lblSymptomsDifficultyReadingAtNightValue.Caption+ ';';
         //SymptomsBlurredVision:
         dataStr := dataStr + frmReport.lblSymptomsBlurredVisionValue.Caption + ';';
         //SymptomsVisualReduction:
         dataStr := dataStr + frmReport.lblSymptomsVisualReductionValue.Caption + ';';
         //SymptomsOther:
         dataStr := dataStr + frmReport.lblSymptomsOtherValue.Caption+ ';';
         //SymptomsNotRelevant:
         dataStr := dataStr + frmReport.lblSymptomsNotRelevantValue.Caption;

         slideTitle := 'Frequency of ocular symptoms in the primary eye at presentation';
         chartType := 'amcolumn';
         aXMLFileName := 'amcolumn_SymptomsFreq.xml';
         aSWF := 'amcolumn.swf';
    end;

    9 : begin //Previous intervention: Frequency
          PageControl1.ActivePage := TabSheet9;
          PageControl1.Repaint;
         PageControl1.Refresh;
         PageControl1.Update;
         frmReport.Button29Click(nil);

         //Cat Axis
         dataStr := 'Previous interventions;';
         //PrevTreatCataractSurgery:::
         dataStr := dataStr + frmReport.lblPrevTreatCataractSurgeryValue.Caption + ';';
         //PrevTreatGlaucomaFiltrationSurgery::
         dataStr := dataStr +  frmReport.lblPrevTreatGlaucomaFiltrationSurgeryValue.Caption + ';';
         //PrevTreatVitrectomy::
         dataStr := dataStr + frmReport.lblPrevTreatVitrectomyValue.Caption + ';';
         //PrevTreatMacularLaserPhotocoagulation::
         dataStr := dataStr + frmReport.lblPrevTreatMacularLaserPhotocoagulationValue.Caption + ';';
         //PrevTreatPeripheralLaserPhotocoagulation::
         dataStr := dataStr +  frmReport.lblPrevTreatPeripheralLaserPhotocoagulationValue.Caption + ';';
         //PrevTreatOtherSurgery::
         dataStr := dataStr + frmReport.lblPrevTreatOtherSurgeryValue.Caption+ ';';
         //PrevTreatIntravitrealAntiVEGF::
         dataStr := dataStr + frmReport.lblPrevTreatIntravitrealAntiVEGFValue.Caption + ';';
         //PrevTreatIntravitrealSteroidLiquid::
         dataStr := dataStr +  frmReport.lblPrevTreatIntravitrealSteroidLiquidValue.Caption + ';';
         //PrevTreatIntravitrealSteroidImplant::
         dataStr := dataStr + frmReport.lblPrevTreatIntravitrealSteroidImplantValue.Caption+ ';';
         //PrevTreatOtherIntravitrealInjection::
         dataStr := dataStr + frmReport.lblPrevTreatOtherIntravitrealInjectionValue.Caption + ';';
         //PrevTreatNotRelevant:::
         dataStr := dataStr + frmReport.lblPrevTreatNotRelevantValue.Caption;

         slideTitle := 'Frequency of previous intervention in the primary eye';
         chartType := 'amcolumn';
         aXMLFileName := 'amcolumn_PrevInterventionFreq.xml';
         aSWF := 'amcolumn.swf';
    end;


    10 : begin //Proposed treatment by rationale
          PageControl1.ActivePage := TabSheet10;
          PageControl1.Repaint;
         PageControl1.Refresh;
         PageControl1.Update;
         frmReport.Button55Click(nil);
         dataStr := ' ;';
         dataStr := dataStr + frmReport.lblPatientPercRationaleNotApplicableValue.Caption + ';' ;
         dataStr := dataStr + frmReport.lblPatientPercRationaleWWValue.Caption + ';' ;
         dataStr := dataStr + frmReport.lblPatientPercRationaleSurgeryValue.Caption + ';' ;
         dataStr := dataStr + frmReport.lblPatientPercRationaleInjectionValue.Caption + ';';
         dataStr := dataStr + frmReport.lblPatientPercRationaleOtherValue.Caption + ';' ;
         dataStr := dataStr + frmReport.lblPatientPercRationaleDischargeValue.Caption;

         slideTitle := 'Proposed primary eye treatment at initial visit, by rationale';
         chartType := 'amcolumn';
         aXMLFileName := 'amcolumn_Rationale.xml';
         aSWF := 'amcolumn.swf';
    end;


     11 : begin //Mean intraocular pressure
          PageControl1.ActivePage := TabSheet11;
          PageControl1.Repaint;
         PageControl1.Refresh;
         PageControl1.Update;
         frmReport.Button31Click(nil);
         dataStr := frmDBControlsForReport.meanIOPMemo.Text;
       //  dataStr := getDataStr(aChartNum,36,0,TabSheet15,frmReport.Button29);
         slideTitle := 'Mean intraocular pressure in the primary eye – Over time';
         chartType := 'amline';
         aXMLFileName := 'amline_IOP_Time.xml';
         aSWF := 'amline.swf';
    end;

     12 : begin //Mean change in intraocular pressure (IOP) from initial visit to discharge
          PageControl1.ActivePage := TabSheet12;
          PageControl1.Repaint;
         PageControl1.Refresh;
         PageControl1.Update;
         frmReport.Button34Click(nil);

         //Cat Axis
         dataStr := 'Treatment group;';
         dataStr := dataStr + frmReport.lblMeanChangeIOPWWValue.Caption + ';';//sLineBreak;//getDataStr(aChartNum,4,0,TabSheet1,frmReport.Button1);
         dataStr := dataStr + frmReport.lblMeanChangeIOPSurgeryValue.Caption +';';//+ sLineBreak;
         dataStr := dataStr + frmReport.lblMeanChangeIOPInjectionValue.Caption;
         slideTitle := 'Mean change in intraocular pressure in the primary eye – From initial visit to discharge';
         chartType := 'amcolumn';
         aXMLFileName := 'amcolumn_IOP_Mean_Change.xml';
         aSWF := 'amcolumn.swf';
    end;


     13 : begin //Visual Acuity (Distance) – Over-time
          PageControl1.ActivePage := TabSheet13;
          PageControl1.Repaint;
         PageControl1.Refresh;
         PageControl1.Update;
         frmReport.Button35Click(nil);
         dataStr := frmDBControlsForReport.meanVisualAcuityDistanceMemo.Text;
       //  dataStr := getDataStr(aChartNum,36,0,TabSheet15,frmReport.Button29);
         slideTitle := 'Distance visual acuity in the primary eye – Over time';
         chartType := 'amline';
         aXMLFileName := 'amline_IOP_Time2.xml';
         aSWF := 'amline.swf';
    end;



     14 : begin //Mean change in Visual Acuity (Distance) – from initial visit to discharge
          PageControl1.ActivePage := TabSheet14;
          PageControl1.Repaint;
         PageControl1.Refresh;
         PageControl1.Update;
         frmReport.Button36Click(nil);

         dataStr := 'Treatment group;';
         dataStr := dataStr + frmReport.lblMeanChangeVisualAcuityDistanceWWValue.Caption + ';';//sLineBreak;//getDataStr(aChartNum,4,0,TabSheet1,frmReport.Button1);
         dataStr := dataStr + frmReport.lblMeanChangeVisualAcuityDistanceSurgeryValue.Caption + ';';//sLineBreak;
         dataStr := dataStr + frmReport.lblMeanChangeVisualAcuityDistanceInjectionValue.Caption;

         slideTitle := 'Mean change in distance visual acuity in the primary eye – From initial visit to discharge';
         chartType := 'amcolumn';
         aXMLFileName := 'amcolumn_IOP_Mean_Change2.xml';
         aSWF := 'amcolumn.swf';
    end;


     15 : begin //Visual Acuity (Near) – Over-time
          PageControl1.ActivePage := TabSheet15;
          PageControl1.Repaint;
         PageControl1.Refresh;
         PageControl1.Update;
         frmReport.Button39Click(nil);
         dataStr := frmDBControlsForReport.meanVisualAcuityNearMemo.Text;
         slideTitle := 'Near visual acuity in the primary eye – Over time';
         chartType := 'amline';
         aXMLFileName := 'amline_IOP_Time3.xml';
         aSWF := 'amline.swf';
    end;

     16 : begin //Mean change in Visual Acuity (Near) – from initial visit to discharge
          PageControl1.ActivePage := TabSheet16;
          PageControl1.Repaint;
         PageControl1.Refresh;
         PageControl1.Update;
         frmReport.Button42Click(nil);

         //Cat Axis
         dataStr := 'Treatment group;';
         dataStr := dataStr + frmReport.lblMeanChangeVisualAcuityNearWWValue.Caption + ';';//getDataStr(aChartNum,4,0,TabSheet1,frmReport.Button1);
         dataStr := dataStr + frmReport.lblMeanChangeVisualAcuityNearSurgeryValue.Caption + ';';
         dataStr := dataStr + frmReport.lblMeanChangeVisualAcuityNearInjectionValue.Caption;
         slideTitle := 'Mean change in near visual acuity in the primary eye – From initial visit to discharge';
         chartType := 'amcolumn';
         aXMLFileName := 'amcolumn_VisitToDischarge.xml';
         aSWF := 'amcolumn.swf';
    end;


     17 : begin //Distortion presence over time
          PageControl1.ActivePage := TabSheet17;
          PageControl1.Repaint;
         PageControl1.Refresh;
         PageControl1.Update;
         frmReport.Button43Click(nil);
         dataStr := frmDBControlsForReport.ProportionOfPatientWithDistortionAndScotomaMemo.Text;
         slideTitle := 'Presence of distortion in the primary eye – Over time';
         chartType := 'amline';
         aXMLFileName := 'amline_IOP_Time4.xml';
         aSWF := 'amline.swf';
    end;

     18 : begin ////Scotoma presence over time
          PageControl1.ActivePage := TabSheet18;
          PageControl1.Repaint;
         PageControl1.Refresh;
         PageControl1.Update;
         frmReport.Button43Click(nil);
         dataStr := frmDBControlsForReport.ProportionOfPatientWithDistortionAndScotomaMemo.Text;
         slideTitle := 'Presence of scotoma in the primary eye – Over time';
         chartType := 'amline';
         aXMLFileName := 'amline_IOP_Time4.xml';
         aSWF := 'amline.swf';
    end;



     19 : begin // Presence of … over time.
          PageControl1.ActivePage := TabSheet19;
          PageControl1.Repaint;
         PageControl1.Refresh;
         PageControl1.Update;
         frmReport.Button46Click(nil);
         dataStr := frmDBControlsForReport.ProportionOfPatientWithOCTMemo.Text;
         slideTitle := 'Presence of TBC in the primary eye – Over time';
         chartType := 'amline';
         aXMLFileName := 'amline_Presence.xml';
         aSWF := 'amline.swf';
    end;

     20 : begin //Vitreomacular adhesion (VMA) size over time
          PageControl1.ActivePage := TabSheet20;
          PageControl1.Repaint;
         PageControl1.Refresh;
         PageControl1.Update;
         frmReport.Button48Click(nil);
         dataStr := frmDBControlsForReport.AverageVitreomacularAdhesionMemo.Text;
       //  dataStr := getDataStr(aChartNum,36,0,TabSheet15,frmReport.Button29);
         slideTitle := 'Vitreomacular adhesion size in the primary eye – Over time';
         chartType := 'amline';
         aXMLFileName := 'amline_IOP_Time5.xml';
         aSWF := 'amline.swf';
    end;

     21 : begin //Macular hole stage  at initial visit  (need query)
          PageControl1.ActivePage := TabSheet21;
          PageControl1.Repaint;
         PageControl1.Refresh;
         PageControl1.Update;
         frmReport.Button49Click(nil);
         dataStr := frmDBControlsForReport.AverageVitreomacularAdhesionMemo.Text;
       //  dataStr := getDataStr(aChartNum,36,0,TabSheet15,frmReport.Button29);
         slideTitle := 'Macular hole stage at initial visit in the primary eye';
         chartType := 'amline';
         aXMLFileName := 'amline_IOP_Time6.xml';
         aSWF := 'amline.swf';
    end;

     22 : begin //Size of macular hole over time
          PageControl1.ActivePage := TabSheet22;
          PageControl1.Repaint;
         PageControl1.Refresh;
         PageControl1.Update;
         frmReport.Button49Click(nil);
         dataStr := frmDBControlsForReport.meanMacularHoleSizeMemo.Text;
         slideTitle := 'Size of macular hole in the primary eye – Over time';
         chartType := 'amline';
         aXMLFileName := 'amline_IOP_Time7.xml';
         aSWF := 'amline.swf';
    end;

     23 : begin //Occurrence of Secondary cataract
          PageControl1.ActivePage := TabSheet23;
          PageControl1.Repaint;
         PageControl1.Refresh;
         PageControl1.Update;
         frmReport.Button51Click(nil);
         dataStr := frmDBControlsForReport.SecondaryCataractPresenceMemo.Text;
         slideTitle := 'Occurrence of secondary cataract in the primary eye – Over time';
         chartType := 'amline';
         aXMLFileName := 'amline_IOP_Time8.xml';
         aSWF := 'amline.swf';
    end;

    24 : begin //Avg visits between initial and discharge
          PageControl1.ActivePage := TabSheet24;
          PageControl1.Repaint;
         PageControl1.Refresh;
         PageControl1.Update;
         frmReport.Button5Click(nil);

         //Cat Axis
         dataStr := 'Treatment group;';
         dataStr := dataStr + frmReport.lblWatchfulWaitingAverageNoAtDischargePointValue.Caption + ';';//getDataStr(aChartNum,4,0,TabSheet1,frmReport.Button1);
         dataStr := dataStr + frmReport.lblSurgeryAverageNoAtDischargePointValue.Caption + ';';
         dataStr := dataStr + frmReport.lbIntravitrealInjectionAverageNoAtDischargePointValue.Caption;

         slideTitle := 'Average number of visits between initial visit and discharge by treatment group';
         chartType := 'amcolumn';
         aXMLFileName := 'amcolumn_VisitBetweenDischarge.xml';
         aSWF := 'amcolumn.swf';
    end;

    25 : begin //Reason for discharge
          PageControl1.ActivePage := TabSheet25;
          PageControl1.Repaint;
         PageControl1.Refresh;
         PageControl1.Update;
         frmReport.Button6Click(nil);

         //Cat Axis
         dataStr := 'Grouped by Watchful Waiting;';
         //NA
         dataStr := dataStr + frmReport.notApplicableReasonForDischargeWWValue.Caption + ';';
         //Complete Red
         dataStr := dataStr +  frmReport.completeResolutionReasonForDischargeWWValue.Caption + ';';
         //Hole Closure
         dataStr := dataStr +  frmReport.macularHoleClosureReasonForDischargeWWValue.Caption + ';';
         //Patient Decision
         dataStr := dataStr +  frmReport.patientDecisionReasonForDischargeWWValue.Caption + ';';
         //Poor
         dataStr := dataStr +  frmReport.poorPrognosisReasonForDischargeWWValue.Caption + ';';
         //Other
         dataStr := dataStr + frmReport.otherReasonForDischargeWWValue.Caption + sLineBreak;

         //Cat Axis
         dataStr := dataStr + 'Grouped by Surgery;';
         //NA
         dataStr := dataStr + frmReport.notApplicableReasonForDischargeSurgeryValue.Caption + ';';
         //Complete Red
         dataStr := dataStr +  frmReport.completeResolutionReasonForDischargeSurgeryValue.Caption + ';';
         //Hole Closure
         dataStr := dataStr +  frmReport.macularHoleClosureReasonForDischargeSurgeryValue.Caption + ';';
         //Patient Decision
         dataStr := dataStr +  frmReport.patientDecisionReasonForDischargeSurgeryValue.Caption + ';';
         //Poor
         dataStr := dataStr +  frmReport.poorPrognosisReasonForDischargeSurgeryValue.Caption + ';';
         //Other
         dataStr := dataStr + frmReport.otherReasonForDischargeSurgeryValue.Caption + sLineBreak;

         //Cat Axis
         dataStr := dataStr + 'Grouped by Intravitreal injection;';
         //NA
         dataStr := dataStr + frmReport.notApplicableReasonForDischargeInjectionValue.Caption + ';';
         //Complete Red
         dataStr := dataStr +  frmReport.completeResolutionReasonForDischargeInjectionValue.Caption + ';';
         //Hole Closure
         dataStr := dataStr +  frmReport.macularHoleClosureReasonForDischargeInjectionValue.Caption + ';';
         //Patient Decision
         dataStr := dataStr +  frmReport.patientDecisionReasonForDischargeInjectionValue.Caption + ';';
         //Poor
         dataStr := dataStr +  frmReport.poorPrognosisReasonForDischargeInjectionValue.Caption + ';';
         //Other
         dataStr := dataStr + frmReport.otherReasonForDischargeInjectionValue.Caption + sLineBreak;

         slideTitle := 'Rationale for discharge by treatment group';
         chartType := 'amcolumn';
         aXMLFileName := 'amcolumn_ResonForDischarge.xml';
         aSWF := 'amcolumn.swf';

    end;

    26 : begin //Average time between initial visit and discharge
          PageControl1.ActivePage := TabSheet26;
          PageControl1.Repaint;
         PageControl1.Refresh;
         PageControl1.Update;
         frmReport.Button7Click(nil);

         //Cat Axis
         dataStr := 'Treatment group;';
         dataStr := dataStr + frmReport.lblAverageTimeBetweenInitialAndDischargeVisitWWValue.Caption + ';';//sLineBreak;//getDataStr(aChartNum,4,0,TabSheet1,frmReport.Button1);
         dataStr := dataStr + frmReport.lblAverageTimeBetweenInitialAndDischargeVisitSurgeryValue.Caption + ';';//sLineBreak;
         dataStr := dataStr + frmReport.lblAverageTimeBetweenInitialAndDischargeVisitInjectionValue.Caption;

         slideTitle := 'Average time between initial visit and discharge by treatment group';
         chartType := 'amcolumn';
         aXMLFileName := 'amcolumn_VisitToDischarge_TreatGroup.xml';
         aSWF := 'amcolumn.swf';
    end;

     27 : begin //Average duration between visits
          PageControl1.ActivePage := TabSheet27;
          PageControl1.Repaint;
         PageControl1.Refresh;
         PageControl1.Update;
         frmReport.Button8Click(nil);
         dataStr := 'Treatment group;';
         dataStr := dataStr + frmReport.lblAverageDurationBetweenVisitsWWValue.Caption + ';';//getDataStr(aChartNum,4,0,TabSheet1,frmReport.Button1);
         dataStr := dataStr + frmReport.lblAverageDurationBetweenVisitsSurgeryValue.Caption + ';';
         dataStr := dataStr + frmReport.lblAverageDurationBetweenVisitsInjectionValue.Caption;
         slideTitle := 'Average time between visits by treatment group';
         chartType := 'amcolumn';
         aXMLFileName := 'amcolumn_VisitToDischarge_TreatGroup2.xml';
         aSWF := 'amcolumn.swf';
    end;

    28 : begin //Average time between initial visit and treatment
          PageControl1.ActivePage := TabSheet28;
          PageControl1.Repaint;
         PageControl1.Refresh;
         PageControl1.Update;
         frmReport.Button9Click(nil);
         dataStr := 'Treatment group;';
         //ww
         dataStr := dataStr + frmReport.lblAverageTimeBetweenInitialVisitAndTreatmentWWValue.Caption + ';';
         //surgery
         dataStr := dataStr +  frmReport.lblAverageTimeBetweenInitialVisitAndTreatmentSurgeryValue.Caption + ';';
         //injection
         dataStr := dataStr + frmReport.lblAverageTimeBetweenInitialVisitAndTreatmentInjectionValue.Caption;
         //dataStr := 'Grouped by Watchful Waiting:;'+ frmReport.lblWatchfulWaitingAverageNoAtDischargePointValue.Caption + frmReport.lblSurgeryAverageNoAtDischargePointValue.Caption + frmReport.lbIntravitrealInjectionAverageNoAtDischargePointValue.Caption;//getDataStr(aChartNum,4,0,TabSheet1,frmReport.Button1);
         slideTitle := 'Average time between initial visit and treatment';
         chartType := 'amcolumn';
         aXMLFileName := 'amcolumn_VisitToDischarge_TreatGroup2.xml';
         aSWF := 'amcolumn.swf';
    end;


    29 : begin //Changes to treatment       (NEED QUERY)
          PageControl1.ActivePage := TabSheet29;
          PageControl1.Repaint;
         PageControl1.Refresh;
         PageControl1.Update;
         frmReport.Button56Click(nil);
         dataStr := 'Active treatment;';
         //ww
         dataStr := dataStr + frmReport.lblSwitchValue.Caption + ';';
         //surgery
         dataStr := dataStr +  frmReport.lblNoSwitchValue.Caption;
         //injection
         //dataStr := dataStr + frmReport.lblAverageDurationBetweenVisitsInjectionValue.Caption;
         //dataStr := 'Grouped by Watchful Waiting:;'+ frmReport.lblWatchfulWaitingAverageNoAtDischargePointValue.Caption + frmReport.lblSurgeryAverageNoAtDischargePointValue.Caption + frmReport.lbIntravitrealInjectionAverageNoAtDischargePointValue.Caption;//getDataStr(aChartNum,4,0,TabSheet1,frmReport.Button1);
         slideTitle := 'Proportion of eyes moving from watchful waiting to active treatment';
         chartType := 'amcolumn';
         aXMLFileName := 'amcolumn_Changes.xml';
         aSWF := 'amcolumn.swf';
    end;


 end;

 //Showmessage(inttoStr(aChartNum));
 //Showmessage(dataStr);   //TESTING Data passed to chart
 aTransFlashPlayerName.MOVIE := DataModule2.AppPath+'Animation\charts\'+chartType+'\'+aSWF;
 aTransFlashPlayerName.ScaleMode := 3;
 aTransFlashPlayerName.SetVariable('settings_file',DataModule2.AppPath+'Animation\charts\'+chartType+'\'+aXMLFileName);
 aTransFlashPlayerName.SetVariable('additional_chart_settings','<settings><labels><label lid="0"><text>'+slideTitle+'</text></label></labels></settings>');
 aTransFlashPlayerName.SetVariable('chart_data',dataStr);
 aTransFlashPlayerName.Play;
 application.ProcessMessages;
 PageControl1.Repaint;
 PageControl1.Refresh;
 PageControl1.Update;
end;

function TfrmImagesToCapture.getDataStr(anID, maxTagNum, loopPos: integer; aTabSheet: TTabSheet;
  aQueryBTN: TButton): String;
  Var
    ControlCounter, ControlCounter2, counterPos : Integer;
    dataString, resultStr : String;
    nextLabTag : integer;
begin
   { - Call aQueryBTN click to run the query
     - Loop aTabSheet, if the controls tag = anID then store as part of the dataString}
 {  if anID = 10 then
    dataString := ''
   else
    dataString := '';

   resultStr := '';
   nextLabTag := 0;
   ControlCounter := 0; //ControlCounter starts a zero
   ControlCounter2 := 0;
   counterPos := 0;
   aQueryBTN.OnClick(nil); //Run the Query

   for ControlCounter := loopPos to aTabSheet.ControlCount - 1 do
    begin
      if aTabSheet.Controls[ControlCounter].ClassType = TLabel then
        begin
        if dataString <> 'complete' then
          begin
            if ((TLabel(aTabSheet.Controls[ControlCounter]).Tag = anID) or
                (TLabel(aTabSheet.Controls[ControlCounter]).Tag <= maxTagNum) and
                (TLabel(aTabSheet.Controls[ControlCounter]).Tag <> 0)) then
              if TLabel(aTabSheet.Controls[ControlCounter]).Caption <> '' then
                begin
                  if dataString = '' then
                    begin
                      dataString := TLabel(aTabSheet.Controls[ControlCounter]).Caption + ';';
                      nextLabTag := TLabel(aTabSheet.Controls[ControlCounter]).tag + 1;
                    end
                  else
                    begin
                      if TLabel(aTabSheet.Controls[ControlCounter]).tag = nextLabTag then
                        begin
                          dataString := dataString + TLabel(aTabSheet.Controls[ControlCounter]).Caption + slineBreak;
                          resultStr := resultStr + dataString;
                          nextLabTag := TLabel(aTabSheet.Controls[ControlCounter]).tag + 1;
                          dataString := '';
                        end
                      else
                        begin
                          counterPos := ControlCounter;
                          for ControlCounter2 := 0 to aTabSheet.ControlCount - 1 do
                            begin
                              if aTabSheet.Controls[ControlCounter2].ClassType = TLabel then
                                begin
                                  if TLabel(aTabSheet.Controls[ControlCounter2]).tag = nextLabTag then
                                    begin
                                      dataString := dataString + TLabel(aTabSheet.Controls[ControlCounter2]).Caption + slineBreak;
                                      resultStr := resultStr + dataString;
                                      dataString := '';
                                      if nextLabTag <> maxTagNum then
                                        begin
                                          dataString := TLabel(aTabSheet.Controls[ControlCounter]).Caption + ';';
                                          nextLabTag := TLabel(aTabSheet.Controls[ControlCounter]).tag + 1;
                                        end
                                      else
                                        begin
                                           dataString := 'complete';
                                           nextLabTag := 0;
                                        end;

                                      Break;
                                    end;
                                end;
                            end;
                        end;
                    end;
                end
            else
              begin
                showmessage(TLabel(aTabSheet.Controls[ControlCounter]).name);
              end;
          end; //max tag end
        end; //if label end
    end; //loop end

  // showMessage(resultStr);
   Result := resultStr;     }
end;

procedure TfrmImagesToCapture.SaveTheWindow(Control: tcontrol;
  filename: string);
var
  bmp: tbitmap;
  MyFormat : Word;
  AData : Cardinal;
  APalette : HPALETTE;
begin
 bmp:=tbitmap.create;
 try
   captureclient(control,bmp);

   //p.SaveToClipboardFormat(MyFormat, nil, nil);
   //ipBoard.SetAsHandle(MyFormat, nil, nil);
 finally
   bmp.free;
 end;

end;

procedure TfrmImagesToCapture.Timer1Timer(Sender: TObject);
 // Count : integer;
begin
 { if Timer1.Enabled = true then
    begin
      Timer1.Enabled := false;
      captureDelay := captureDelay + 1;
      frmGen.updateLabels('exporting reports','30%');
      captureScreens(captureDelay);
    end;  }
end;

function TfrmImagesToCapture.WindowSnap(windowHandle: HWND;
  bmp: TBitmap): boolean;
var
  r: TRect;
  user32DLLHandle: THandle;
  printWindowAPI: function(sourceHandle: HWND; destinationHandle: HDC; nFlags: UINT): BOOL; stdcall;
  MyFormat : Word;
  Bitmap : TBitMap;
  AData : THandle;
  APalette : HPALETTE;

begin
  result := False;
  user32DLLHandle := GetModuleHandle(user32) ;
  if user32DLLHandle <> 0 then
  begin
    @printWindowAPI := GetProcAddress(user32DLLHandle, 'PrintWindow') ;
    if @printWindowAPI <> nil then
    begin
    GetWindowRect(windowHandle, r) ;
    bmp.Width := r.Right - r.Left;
    bmp.Height := r.Bottom - r.Top;
    bmp.Canvas.Lock;
    try
      result := printWindowAPI(windowHandle, bmp.Canvas.Handle, 0) ;
    finally
      bmp.Canvas.Unlock;
      end;
      end;
      end;
    //   bmp.SaveToClipBoardFormat(MyFormat,AData,APalette);
end;

end.
