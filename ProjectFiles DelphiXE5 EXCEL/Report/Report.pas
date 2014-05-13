unit Report;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ComCtrls, DBCtrls, Grids, DBGrids, Mask,
  FlashPlayerControl, ExtCtrls, unitDBControlsForReport;

type
  TfrmReport = class(TForm)
    Panel1: TPanel;
    Title: TLabel;
    Panel2: TPanel;
    Button15: TButton;
    Button16: TButton;
    PageControl1: TPageControl;
    GenderReportPage: TTabSheet;
    Label140: TLabel;
    AgeReportPage: TTabSheet;
    VMTPage: TTabSheet;
    AverageNoOfVisitsPage: TTabSheet;
    DBEdit_INI_FOLLOW_DateUpdated: TDBEdit;
    ReasonForDischargePage: TTabSheet;
    AverageTimeBetweenInitialVisitAndDischargePage: TTabSheet;
    Label89: TLabel;
    AverageDurationBetweenVisitsPage: TTabSheet;
    DBGrid7: TDBGrid;
    AverageTimeBetweenInitialVisitAndTreatmentPage: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Label7: TLabel;
    lblMaleDesc: TLabel;
    lblMaleValue: TLabel;
    lblFemaleDesc: TLabel;
    lblFemaleValue: TLabel;
    Button1: TButton;
    Label8: TLabel;
    Label9: TLabel;
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
    Button2: TButton;
    lblPatientsAgeOver64Desc: TLabel;
    lblPatientsAgeOver64Value: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    Label23: TLabel;
    lblVMTwithoutMHwithERMDesc: TLabel;
    lblVMTwithoutMHwithERMValue: TLabel;
    lblVMTwithoutMHwithoutERMDesc: TLabel;
    lblVMTwithoutMHwithoutERMValue: TLabel;
    Button3: TButton;
    lblVMTwithMHwithERMDesc: TLabel;
    lblVMTwithMHwithERMValue: TLabel;
    Button4: TButton;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Shape7: TShape;
    Shape8: TShape;
    Label31: TLabel;
    lblWatchfulWaitingAverageNoAtDischargePointDesc: TLabel;
    lblWatchfulWaitingAverageNoAtDischargePointValue: TLabel;
    lblSurgeryAverageNoAtDischargePointDesc: TLabel;
    lblSurgeryAverageNoAtDischargePointValue: TLabel;
    lblIntravitrealInjectionAverageNoAtDischargePointDesc: TLabel;
    lbIntravitrealInjectionAverageNoAtDischargePointValue: TLabel;
    Button5: TButton;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    Label45: TLabel;
    Label46: TLabel;
    Label48: TLabel;
    Label50: TLabel;
    notApplicableReasonForDischargeWWValue: TLabel;
    Button6: TButton;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Shape13: TShape;
    Shape14: TShape;
    Label59: TLabel;
    lblAverageTimeBetweenInitialAndDischargeVisitWWDesc: TLabel;
    lblAverageTimeBetweenInitialAndDischargeVisitWWValue: TLabel;
    lblAverageTimeBetweenInitialAndDischargeVisitSurgeryDesc: TLabel;
    lblAverageTimeBetweenInitialAndDischargeVisitSurgeryValue: TLabel;
    lblAverageTimeBetweenInitialAndDischargeVisitInjectionDesc: TLabel;
    lblAverageTimeBetweenInitialAndDischargeVisitInjectionValue: TLabel;
    Button7: TButton;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Shape15: TShape;
    Shape16: TShape;
    Label73: TLabel;
    lblAverageDurationBetweenVisitsWWDesc: TLabel;
    lblAverageDurationBetweenVisitsWWValue: TLabel;
    lblAverageDurationBetweenVisitsSurgeryDesc: TLabel;
    lblAverageDurationBetweenVisitsSurgeryValue: TLabel;
    lblAverageDurationBetweenVisitsInjectionDesc: TLabel;
    lblAverageDurationBetweenVisitsInjectionValue: TLabel;
    Button8: TButton;
    SourceOfReferralPage: TTabSheet;
    ReasonForReferralPage: TTabSheet;
    AffectedEyePage: TTabSheet;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Shape11: TShape;
    Shape12: TShape;
    Label87: TLabel;
    lblAverageTimeBetweenInitialVisitAndTreatmentWWDesc: TLabel;
    lblAverageTimeBetweenInitialVisitAndTreatmentWWValue: TLabel;
    lblAverageTimeBetweenInitialVisitAndTreatmentSurgeryDesc: TLabel;
    lblAverageTimeBetweenInitialVisitAndTreatmentSurgeryValue: TLabel;
    lblAverageTimeBetweenInitialVisitAndTreatmentInjectionDesc: TLabel;
    lblAverageTimeBetweenInitialVisitAndTreatmentInjectionValue: TLabel;
    Button9: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button17: TButton;
    Button18: TButton;
    DBGrid1: TDBGrid;
    Label105: TLabel;
    Label106: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Shape19: TShape;
    Shape20: TShape;
    Label114: TLabel;
    lblGPDesc: TLabel;
    lblGPValue: TLabel;
    lblMedicalRetinalOphthalmologistDesc: TLabel;
    lblMedicalRetinalOphthalmologistValue: TLabel;
    lblOptometristDesc: TLabel;
    lblOptometristValue: TLabel;
    Button19: TButton;
    lblOtherDesc: TLabel;
    lblOtherOphthalmologistDesc: TLabel;
    lblVitreoretinalSurgeonDesc: TLabel;
    lblOtherValue: TLabel;
    lblOtherOphthalmologistValue: TLabel;
    lblVitreoretinalSurgeonValue: TLabel;
    Button20: TButton;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Shape21: TShape;
    Shape22: TShape;
    Label122: TLabel;
    lblSuspectedCataractDesc: TLabel;
    lblSuspectedCataractValue: TLabel;
    lblSuspectedVMTDesc: TLabel;
    lblSuspectedVMTValue: TLabel;
    lblSuspectedWetAMDDesc: TLabel;
    lblSuspectedWetAMDValue: TLabel;
    Button21: TButton;
    lblSuspectedMHDesc: TLabel;
    lblUnknownCauseDesc: TLabel;
    lblOtherReasonDesc: TLabel;
    lblSuspectedMHValue: TLabel;
    lblUnknownCauseValue: TLabel;
    lblOtherReasonValue: TLabel;
    Button22: TButton;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    Shape23: TShape;
    Shape24: TShape;
    Label130: TLabel;
    lblBothEyeDesc: TLabel;
    lblBothEyeValue: TLabel;
    lblODDesc: TLabel;
    lblODValue: TLabel;
    lblOSDesc: TLabel;
    lblOSvalue: TLabel;
    Button23: TButton;
    Button24: TButton;
    ComorbiditiesPercentagePage: TTabSheet;
    Label131: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    Label137: TLabel;
    Shape25: TShape;
    Shape26: TShape;
    Label138: TLabel;
    lblComorbiditiesPercVitreomacularAdhesionDesc: TLabel;
    lblComorbiditiesPercVitreomacularAdhesionValue: TLabel;
    lblComorbiditiesPercVitreomacularTractionDesc: TLabel;
    lblComorbiditiesPercVitreomacularTractionValue: TLabel;
    lblComorbiditiesPercMacularHoleWithVMTDesc: TLabel;
    lblComorbiditiesPercMacularHoleWithVMTValue: TLabel;
    Button25: TButton;
    lblComorbiditiesPercMacularHoleWithoutVMTDesc: TLabel;
    lblComorbiditiesPercWetAMDDesc: TLabel;
    lblComorbiditiesPercDryAMDDesc: TLabel;
    lblComorbiditiesPercMacularHoleWithoutVMTValue: TLabel;
    lblComorbiditiesPercWetAMDValue: TLabel;
    lblComorbiditiesPercDryAMDValue: TLabel;
    Label152: TLabel;
    Label153: TLabel;
    Label154: TLabel;
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
    Label167: TLabel;
    Label168: TLabel;
    lblComorbiditiesPercOtherDesc: TLabel;
    lblComorbiditiesPercNotRelevantDesc: TLabel;
    lblComorbiditiesPercOtherValue: TLabel;
    lblComorbiditiesPercNotRelevantValue: TLabel;
    Button26: TButton;
    OcularSymptomsPercentagePage: TTabSheet;
    Button27: TButton;
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
    Shape28: TShape;
    Button28: TButton;
    Shape27: TShape;
    PreviousInterventionFrequencyPage: TTabSheet;
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
    lblPrevTreatPeripheralLaserPhotocoagulationDesc: TLabel;
    lblPrevTreatMacularLaserPhotocoagulationDesc: TLabel;
    lblPrevTreatVitrectomyValue: TLabel;
    lblPrevTreatVitrectomyDesc: TLabel;
    lblPrevTreatGlaucomaFiltrationSurgeryValue: TLabel;
    lblPrevTreatGlaucomaFiltrationSurgeryDesc: TLabel;
    lblPrevTreatCataractSurgeryValue: TLabel;
    lblPrevTreatCataractSurgeryDesc: TLabel;
    Label163: TLabel;
    Button29: TButton;
    Shape30: TShape;
    lblPrevTreatNotRelevantDesc: TLabel;
    lblPrevTreatNotRelevantValue: TLabel;
    Button30: TButton;
    notApplicableReasonForDischargeWWDesc: TLabel;
    completeResolutionReasonForDischargeWWDesc: TLabel;
    completeResolutionReasonForDischargeWWValue: TLabel;
    macularHoleClosureReasonForDischargeWWDesc: TLabel;
    macularHoleClosureReasonForDischargeWWValue: TLabel;
    patientDecisionReasonForDischargeWWDesc: TLabel;
    patientDecisionReasonForDischargeWWValue: TLabel;
    poorPrognosisReasonForDischargeWWDesc: TLabel;
    poorPrognosisReasonForDischargeWWValue: TLabel;
    otherReasonForDischargeWWDesc: TLabel;
    otherReasonForDischargeWWValue: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    notApplicableReasonForDischargeSurgeryValue: TLabel;
    notApplicableReasonForDischargeSurgeryDesc: TLabel;
    completeResolutionReasonForDischargeSurgeryDesc: TLabel;
    completeResolutionReasonForDischargeSurgeryValue: TLabel;
    macularHoleClosureReasonForDischargeSurgeryDesc: TLabel;
    macularHoleClosureReasonForDischargeSurgeryValue: TLabel;
    patientDecisionReasonForDischargeSurgeryDesc: TLabel;
    patientDecisionReasonForDischargeSurgeryValue: TLabel;
    poorPrognosisReasonForDischargeSurgeryDesc: TLabel;
    poorPrognosisReasonForDischargeSurgeryValue: TLabel;
    otherReasonForDischargeSurgeryDesc: TLabel;
    otherReasonForDischargeSurgeryValue: TLabel;
    Label164: TLabel;
    Label165: TLabel;
    Label166: TLabel;
    Label169: TLabel;
    Label170: TLabel;
    notApplicableReasonForDischargeInjectionValue: TLabel;
    notApplicableReasonForDischargeInjectionDesc: TLabel;
    completeResolutionReasonForDischargeInjectionDesc: TLabel;
    completeResolutionReasonForDischargeInjectionValue: TLabel;
    macularHoleClosureReasonForDischargeInjectionDesc: TLabel;
    macularHoleClosureReasonForDischargeInjectionValue: TLabel;
    patientDecisionReasonForDischargeInjectionDesc: TLabel;
    patientDecisionReasonForDischargeInjectionValue: TLabel;
    poorPrognosisReasonForDischargeInjectionDesc: TLabel;
    poorPrognosisReasonForDischargeInjectionValue: TLabel;
    otherReasonForDischargeInjectionDesc: TLabel;
    otherReasonForDischargeInjectionValue: TLabel;
    MeanIOPPage: TTabSheet;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label47: TLabel;
    Shape31: TShape;
    Shape32: TShape;
    Label49: TLabel;
    Button31: TButton;
    Button32: TButton;
    Button33: TButton;
    MeanChangeIOPPage: TTabSheet;
    Label51: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Shape33: TShape;
    Shape34: TShape;
    Label74: TLabel;
    lblMeanChangeIOPWWDesc: TLabel;
    lblMeanChangeIOPWWValue: TLabel;
    lblMeanChangeIOPSurgeryDesc: TLabel;
    lblMeanChangeIOPSurgeryValue: TLabel;
    lblMeanChangeIOPInjectionDesc: TLabel;
    lblMeanChangeIOPInjectionValue: TLabel;
    Button34: TButton;
    MeanVisualAcuityDistancePage: TTabSheet;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label139: TLabel;
    Label141: TLabel;
    Shape35: TShape;
    Shape36: TShape;
    Label142: TLabel;
    Button35: TButton;
    MeanChangeVisualAcuityDistancePage: TTabSheet;
    Label148: TLabel;
    Label149: TLabel;
    Label150: TLabel;
    Label151: TLabel;
    Label155: TLabel;
    Label156: TLabel;
    Label157: TLabel;
    Shape37: TShape;
    Shape38: TShape;
    Label158: TLabel;
    lblMeanChangeVisualAcuityDistanceWWDesc: TLabel;
    lblMeanChangeVisualAcuityDistanceWWValue: TLabel;
    lblMeanChangeVisualAcuityDistanceSurgeryDesc: TLabel;
    lblMeanChangeVisualAcuityDistanceSurgeryValue: TLabel;
    lblMeanChangeVisualAcuityDistanceInjectionDesc: TLabel;
    lblMeanChangeVisualAcuityDistanceInjectionValue: TLabel;
    Button36: TButton;
    Button37: TButton;
    Button38: TButton;
    MeanVisualAcuityNearPage: TTabSheet;
    Label159: TLabel;
    Label160: TLabel;
    Label161: TLabel;
    Label162: TLabel;
    Label171: TLabel;
    Label172: TLabel;
    Label173: TLabel;
    Shape39: TShape;
    Shape40: TShape;
    Label174: TLabel;
    Button39: TButton;
    Button40: TButton;
    Button41: TButton;
    MeanChangeVisualAcuityNearPage: TTabSheet;
    Label175: TLabel;
    Label176: TLabel;
    Label177: TLabel;
    Label178: TLabel;
    Label179: TLabel;
    Label180: TLabel;
    Label181: TLabel;
    Shape41: TShape;
    Shape42: TShape;
    Label182: TLabel;
    lblMeanChangeVisualAcuityNearWWDesc: TLabel;
    lblMeanChangeVisualAcuityNearWWValue: TLabel;
    lblMeanChangeVisualAcuityNearSurgeryDesc: TLabel;
    lblMeanChangeVisualAcuityNearSurgeryValue: TLabel;
    Label187: TLabel;
    lblMeanChangeVisualAcuityNearInjectionValue: TLabel;
    Button42: TButton;
    ProportionDistortionAndScotomarPage: TTabSheet;
    Label183: TLabel;
    Label184: TLabel;
    Label185: TLabel;
    Label186: TLabel;
    Label188: TLabel;
    Label189: TLabel;
    Label190: TLabel;
    Shape43: TShape;
    Shape44: TShape;
    Label191: TLabel;
    Button43: TButton;
    Button44: TButton;
    Button45: TButton;
    OCTPresencePage: TTabSheet;
    Label192: TLabel;
    Label193: TLabel;
    Label194: TLabel;
    Label195: TLabel;
    Label196: TLabel;
    Label197: TLabel;
    Label198: TLabel;
    Shape45: TShape;
    Shape46: TShape;
    Label199: TLabel;
    Button46: TButton;
    Button47: TButton;
    VitreomacularAdhesionPage: TTabSheet;
    Label200: TLabel;
    Label201: TLabel;
    Label202: TLabel;
    Label203: TLabel;
    Label204: TLabel;
    Label205: TLabel;
    Label206: TLabel;
    Shape47: TShape;
    Shape48: TShape;
    Label207: TLabel;
    Button48: TButton;
    MeanMacularHoleSizePage: TTabSheet;
    Label208: TLabel;
    Label209: TLabel;
    Label210: TLabel;
    Label211: TLabel;
    Label212: TLabel;
    Label213: TLabel;
    Label214: TLabel;
    Shape49: TShape;
    Shape50: TShape;
    Label215: TLabel;
    Button49: TButton;
    Button50: TButton;
    SecondaryCataractPresencePage: TTabSheet;
    Label216: TLabel;
    Label217: TLabel;
    Label218: TLabel;
    Label219: TLabel;
    Label220: TLabel;
    Label221: TLabel;
    Label222: TLabel;
    Shape51: TShape;
    Shape52: TShape;
    Label223: TLabel;
    Button51: TButton;
    Button52: TButton;
    Button53: TButton;
    Button54: TButton;
    lblMHwithoutVMTwithERMDesc: TLabel;
    lblMHwithoutVMTwithERMValue: TLabel;
    lblMHwithoutVMTwithoutERMDesc: TLabel;
    lblMHwithoutVMTwithoutERMValue: TLabel;
    ProposedTreatmentByRationalePage: TTabSheet;
    Label88: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label224: TLabel;
    Shape53: TShape;
    Shape54: TShape;
    Label225: TLabel;
    Button55: TButton;
    ChangeToTreatmentPage: TTabSheet;
    Label226: TLabel;
    Label227: TLabel;
    Label228: TLabel;
    Label229: TLabel;
    Label230: TLabel;
    Label231: TLabel;
    Label232: TLabel;
    Shape55: TShape;
    Shape56: TShape;
    Label233: TLabel;
    lblSwitchDesc: TLabel;
    lblSwitchValue: TLabel;
    lblNoSwitchDesc: TLabel;
    lblNoSwitchValue: TLabel;
    Button56: TButton;
    MacularHoleStagePage: TTabSheet;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Shape17: TShape;
    Shape18: TShape;
    Label102: TLabel;
    lblProportionOfPatientAtSTAGE1Desc: TLabel;
    lblProportionOfPatientAtSTAGE1Value: TLabel;
    lblProportionOfPatientAtSTAGE2Desc: TLabel;
    lblProportionOfPatientAtSTAGE2Value: TLabel;
    lblProportionOfPatientAtSTAGE3Desc: TLabel;
    lblProportionOfPatientAtSTAGE3Value: TLabel;
    Button10: TButton;
    lblProportionOfPatientAtSTAGE4Desc: TLabel;
    lblProportionOfPatientAtSTAGE4Value: TLabel;
    ProportionDistortionPage: TTabSheet;
    Label103: TLabel;
    Label104: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label234: TLabel;
    Label235: TLabel;
    Label236: TLabel;
    Shape57: TShape;
    Shape58: TShape;
    Label237: TLabel;
    Button57: TButton;
    Button58: TButton;
    lblPatientPercRationaleNotApplicableDesc: TLabel;
    lblPatientPercRationaleWWDesc: TLabel;
    lblPatientPercRationaleSurgeryDesc: TLabel;
    lblPatientPercRationaleInjectionDesc: TLabel;
    lblPatientPercRationaleOtherDesc: TLabel;
    lblPatientPercRationaleOtherValue: TLabel;
    lblPatientPercRationaleInjectionValue: TLabel;
    lblPatientPercRationaleSurgeryValue: TLabel;
    lblPatientPercRationaleWWValue: TLabel;
    lblPatientPercRationaleNotApplicableValue: TLabel;
    lblPatientPercRationaleDischargeDesc: TLabel;
    lblPatientPercRationaleDischargeValue: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure Button37Click(Sender: TObject);
    procedure Button38Click(Sender: TObject);
    procedure Button40Click(Sender: TObject);
    procedure Button39Click(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure Button42Click(Sender: TObject);
    procedure Button43Click(Sender: TObject);
    procedure Button44Click(Sender: TObject);
    procedure Button45Click(Sender: TObject);
    procedure Button46Click(Sender: TObject);
    procedure Button47Click(Sender: TObject);
    procedure Button48Click(Sender: TObject);
    procedure Button49Click(Sender: TObject);
    procedure Button50Click(Sender: TObject);
    procedure Button52Click(Sender: TObject);
    procedure Button51Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button55Click(Sender: TObject);
    procedure Button54Click(Sender: TObject);
    procedure Button56Click(Sender: TObject);
    procedure Button53Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button58Click(Sender: TObject);
    procedure Button57Click(Sender: TObject);
  private
    { Private declarations }
  public
    objReport: TReport;
    { Public declarations }
  end;

var
  frmReport: TfrmReport;

implementation

uses unitDBControls;

{$R *.dfm}

procedure TfrmReport.Button10Click(Sender: TObject);
begin
  //macular hole stage at initial visit
  objReport.runQryReport_MacularHoleStageAtInitialVisit(frmDBControlsForReport.qryReport_MacularHoleStageAtInitialVisit);

  //write macular hole stage at initial visit
  lblProportionOfPatientAtSTAGE1Value.Caption := FormatFloat('0.00',objReport.getProportionOfPatientAtSTAGE1);
  lblProportionOfPatientAtSTAGE2Value.Caption := FormatFloat('0.00',objReport.getProportionOfPatientAtSTAGE2);
  lblProportionOfPatientAtSTAGE3Value.Caption := FormatFloat('0.00',objReport.getProportionOfPatientAtSTAGE3);
  lblProportionOfPatientAtSTAGE4Value.Caption := FormatFloat('0.00',objReport.getProportionOfPatientAtSTAGE4);
end;

procedure TfrmReport.Button11Click(Sender: TObject);
begin
  PageControl1.ActivePage := AverageNoOfVisitsPage;
end;

procedure TfrmReport.Button12Click(Sender: TObject);
begin
  PageControl1.ActivePage := ReasonForDischargePage;
end;

procedure TfrmReport.Button13Click(Sender: TObject);
begin
  PageControl1.ActivePage := AverageTimeBetweenInitialVisitAndDischargePage;
end;

procedure TfrmReport.Button14Click(Sender: TObject);
begin
  PageControl1.ActivePage := AverageDurationBetweenVisitsPage;
end;

procedure TfrmReport.Button15Click(Sender: TObject);
begin
  PageControl1.ActivePage := AgeReportPage;
end;

procedure TfrmReport.Button16Click(Sender: TObject);
begin
  PageControl1.ActivePage := GenderReportPage;
end;

procedure TfrmReport.Button17Click(Sender: TObject);
begin
  PageControl1.ActivePage := AverageTimeBetweenInitialVisitAndTreatmentPage;
end;

procedure TfrmReport.Button18Click(Sender: TObject);
begin
  PageControl1.ActivePage := ChangeToTreatmentPage;
end;

procedure TfrmReport.Button19Click(Sender: TObject);
begin
  //get source of referral
  objReport.runQryReport_SourceOfReferral(frmDBControlsForReport.qryReport_SourceOfReferral);

  //write source of referral
  lblGPValue.Caption := IntToStr(objReport.getGP);
  lblMedicalRetinalOphthalmologistValue.Caption := IntToStr(objReport.getMedicalRetinalOphthalmologist);
  lblOptometristValue.Caption := IntToStr(objReport.getOptometrist);
  lblOtherValue.Caption := IntToStr(objReport.getOtherReferralSource);
  lblOtherOphthalmologistValue.Caption := IntToStr(objReport.getOtherOphthalmologist);
  lblVitreoretinalSurgeonValue.Caption := IntToStr(objReport.getVitreoretinalSurgeon);
end;

procedure TfrmReport.Button1Click(Sender: TObject);
begin
 //count no of Males and Females in current centre
 objReport.runQryReport_Gender(frmDBControlsForReport.qryReport_Gender);

 //write no of Males and Females to report
 lblMaleValue.Caption := IntToStr(objReport.getNoOfMalePatients);
 lblFemaleValue.Caption := IntToStr(objReport.getNoOfFemalePatients);
end;

procedure TfrmReport.Button20Click(Sender: TObject);
begin
    PageControl1.ActivePage := SourceOfReferralPage;
end;

procedure TfrmReport.Button21Click(Sender: TObject);
begin
  //get reason of referral
  objReport.runQryReport_ReasonForReferral(frmDBControlsForReport.qryReport_SourceOfReferral);

  //write reason of referral
  lblSuspectedCataractValue.Caption := IntToStr(objReport.getSuspectedCataract);
  lblSuspectedVMTValue.Caption := IntToStr(objReport.getSuspectedVMT);
  lblSuspectedWetAMDValue.Caption := IntToStr(objReport.getSuspectedWetAMD);
  lblOtherReasonValue.Caption := IntToStr(objReport.getOtherReason);
  lblSuspectedMHValue.Caption := IntToStr(objReport.getSuspectedMH);
  lblUnknownCauseValue.Caption := IntToStr(objReport.getUnknownReason);
end;

procedure TfrmReport.Button22Click(Sender: TObject);
begin
  PageControl1.ActivePage := ReasonForReferralPage;
end;

procedure TfrmReport.Button23Click(Sender: TObject);
begin
  //count no of patients by age group in current centre
  objReport.runQryReport_PrimaryAffectedEye(frmDBControlsForReport.qryReport_PrimaryAffectedEye);

  //write no of patients by age group to report
  lblBothEyeValue.Caption := IntToStr(objReport.getBothEyes);
  lblODValue.Caption := IntToStr(objReport.getOD);
  lblOSvalue.Caption := IntToStr(objReport.getOS);
end;

procedure TfrmReport.Button24Click(Sender: TObject);
begin
  PageControl1.ActivePage := AffectedEyePage;
end;

procedure TfrmReport.Button25Click(Sender: TObject);
begin
  //get comorbidities percentages
  objReport.runQryReport_ComorbiditiesPerc(frmDBControlsForReport.qryReport_ComorbiditiesPerc);

  //write comorbidities percentages
  lblComorbiditiesPercVitreomacularAdhesionValue.Caption := FormatFloat('0.00',objReport.getComorbiditiesPercVitreomacularAdhesion);
  lblComorbiditiesPercVitreomacularTractionValue.Caption := FormatFloat('0.00',objReport.getComorbiditiesPercVitreomacularTraction);
  lblComorbiditiesPercMacularHoleWithVMTValue.Caption := FormatFloat('0.00',objReport.getComorbiditiesPercMacularHoleWithVMT);
  lblComorbiditiesPercMacularHoleWithoutVMTValue.Caption := FormatFloat('0.00',objReport.getComorbiditiesPercMacularHoleWithoutVMT);
  lblComorbiditiesPercWetAMDValue.Caption := FormatFloat('0.00',objReport.getComorbiditiesPercWetAMD);
  lblComorbiditiesPercDryAMDValue.Caption := FormatFloat('0.00',objReport.getComorbiditiesPercDryAMD);
  lblComorbiditiesPercDMEValue.Caption := FormatFloat('0.00',objReport.getComorbiditiesPercDME);
  lblComorbiditiesPercProliferativeDiabeticRetinopathyValue.Caption := FormatFloat('0.00',objReport.getComorbiditiesPercProliferativeDiabeticRetinopathy);
  lblComorbiditiesPercCataractValue.Caption := FormatFloat('0.00',objReport.getComorbiditiesPercCataract);
  lblComorbiditiesPercRetinalVeinOcclusionValue.Caption := FormatFloat('0.00',objReport.getComorbiditiesPercRetinalVeinOcclusion);
  lblComorbiditiesPercRetinalDetachmentValue.Caption := FormatFloat('0.00',objReport.getComorbiditiesPercRetinalDetachment);
  lblComorbiditiesPercHighMyopiaValue.Caption := FormatFloat('0.00',objReport.getComorbiditiesPercHighMyopia);
  lblComorbiditiesPercOtherValue.Caption := FormatFloat('0.00',objReport.getComorbiditiesPercOther);
  lblComorbiditiesPercNotRelevantValue.Caption := FormatFloat('0.00',objReport.getComorbiditiesPercNotRelevant);
end;

procedure TfrmReport.Button26Click(Sender: TObject);
begin
  PageControl1.ActivePage := ComorbiditiesPercentagePage;
end;

procedure TfrmReport.Button27Click(Sender: TObject);
begin
  //get ocular symptoms percentages
  objReport.runQryReport_OcularSymptomsPerc(frmDBControlsForReport.qryReport_OcularSymptomsPerc);

  //write ocular symptoms percentages to report
  lblSymptomsNotRelevantValue.Caption := FormatFloat('0.00',objReport.getSymptomsNotRelevant);
  lblSymptomsOtherValue.Caption := FormatFloat('0.00',objReport.getSymptomsOther);
  lblSymptomsVisualReductionValue.Caption := FormatFloat('0.00',objReport.getSymptomsVisualReduction);
  lblSymptomsBlurredVisionValue.Caption := FormatFloat('0.00',objReport.getSymptomsBlurredVision);
  lblSymptomsDifficultyReadingAtNightValue.Caption := FormatFloat('0.00',objReport.getSymptomsDifficultyReadingAtNight);
  lblSymptomsCentralBlackImageValue.Caption := FormatFloat('0.00',objReport.getSymptomsCentralBlackImage);
  lblSymptomsObjectsAppearSmallerValue.Caption := FormatFloat('0.00',objReport.getSymptomsObjectsAppearSmaller);
  lblSymptomsDistortedVisionValue.Caption := FormatFloat('0.00',objReport.getSymptomsDistortedVision);
  lblSymptomsFlashesOfLightValue.Caption := FormatFloat('0.00',objReport.getSymptomsFlashesOfLight);
  lblSymptomsFloatersValue.Caption := FormatFloat('0.00',objReport.getSymptomsFloaters);
end;

procedure TfrmReport.Button28Click(Sender: TObject);
begin
  PageControl1.ActivePage := OcularSymptomsPercentagePage;
end;

procedure TfrmReport.Button29Click(Sender: TObject);
begin
  //get previous intervantion frequency
  objReport.runQryReport_PreviousInterventionPerc(frmDBControlsForReport.qryReport_PreviousInterventionPerc);

  //write previous intervantion frequency to report
  lblPrevTreatOtherIntravitrealInjectionValue.Caption := FormatFloat('0.00',objReport.getPrevTreatOtherIntravitrealInjection);
  lblPrevTreatIntravitrealSteroidImplantValue.Caption := FormatFloat('0.00',objReport.getPrevTreatIntravitrealSteroidImplant);
  lblPrevTreatIntravitrealSteroidLiquidValue.Caption := FormatFloat('0.00',objReport.getPrevTreatIntravitrealSteroidLiquid);
  lblPrevTreatIntravitrealAntiVEGFValue.Caption := FormatFloat('0.00',objReport.getPrevTreatIntravitrealAntiVEGF);
  lblPrevTreatOtherSurgeryValue.Caption := FormatFloat('0.00',objReport.getPrevTreatOtherSurgery);
  lblPrevTreatMacularLaserPhotocoagulationValue.Caption := FormatFloat('0.00',objReport.getPrevTreatMacularLaserPhotocoagulation);
  lblPrevTreatVitrectomyValue.Caption := FormatFloat('0.00',objReport.getPrevTreatVitrectomy);
  lblPrevTreatGlaucomaFiltrationSurgeryValue.Caption := FormatFloat('0.00',objReport.getPrevTreatGlaucomaFiltrationSurgery);
  lblPrevTreatCataractSurgeryValue.Caption := FormatFloat('0.00',objReport.getPrevTreatCataractSurgery);
  lblPrevTreatPeripheralLaserPhotocoagulationValue.Caption := FormatFloat('0.00',objReport.getPrevTreatPeripheralLaserPhotocoagulation);
  lblPrevTreatNotRelevantValue.Caption := FormatFloat('0.00',objReport.getPrevTreatNotRelevant);
end;

procedure TfrmReport.Button2Click(Sender: TObject);
begin
  //count no of patients by age group in current centre
  objReport.runQryReport_Age(frmDBControlsForReport.qryReport_Age);

  //write no of patients by age group to report
  lblPatientslAgeUnder45Value.Caption := IntToStr(objReport.getNoOfPatientUnder45);
  lblPatientsAgeBetween45And64Value.Caption := IntToStr(objReport.getNoOfPatientBetween45And64);
  lblPatientsAgeOver64Value.Caption := IntToStr(objReport.getNoOfPatientOlderThan65);
end;

procedure TfrmReport.Button30Click(Sender: TObject);
begin
  PageControl1.ActivePage := PreviousInterventionFrequencyPage;
end;

procedure TfrmReport.Button31Click(Sender: TObject);
begin
  //count average no of visits at discharge point
  objReport.runQryReport_ClinicalMeasures_MeanIntraocularPressure(frmDBControlsForReport.qryReport_ClinicalMeasures_MeanIntraocularPressure);
end;

procedure TfrmReport.Button32Click(Sender: TObject);
begin
  PageControl1.ActivePage := MeanIOPPage;
end;

procedure TfrmReport.Button33Click(Sender: TObject);
begin
  PageControl1.ActivePage := MeanChangeIOPPage;
end;

procedure TfrmReport.Button34Click(Sender: TObject);
begin
  //mean change in intraocular pressure between initial and final visit
  objReport.runQryReport_ClinicalMeasures_MeanChangeInIntraocularPressure(frmDBControlsForReport.qryReport_ClinicalMeasures_MeanChangeInIntraocularPressure);

  //write average no of visits at discharge point
  lblMeanChangeIOPWWValue.Caption := FormatFloat('0.00',objReport.getMeanChangeIOPWW);
  lblMeanChangeIOPSurgeryValue.Caption := FormatFloat('0.00',objReport.getMeanChangeIOPSurgery);
  lblMeanChangeIOPInjectionValue.Caption := FormatFloat('0.00',objReport.getMeanChangeIOPInjection);
end;

procedure TfrmReport.Button35Click(Sender: TObject);
begin
  //count average no of visits at discharge point
  objReport.runQryReport_ClinicalMeasures_MeanVisualAcuityDistance(frmDBControlsForReport.qryReport_ClinicalMeasures_MeanVisualAcuityDistance);
end;

procedure TfrmReport.Button36Click(Sender: TObject);
begin
   //mean change in visual acuity distance between initial and final visit
  objReport.runQryReport_ClinicalMeasures_MeanChangeInVisualAcuityDistance(frmDBControlsForReport.qryReport_ClinicalMeasures_MeanChangeInVisualAcuityDistance);

  //write average no of visits at discharge point
  lblMeanChangeVisualAcuityDistanceWWValue.Caption := FormatFloat('0.00',objReport.getMeanChangeVisualAcuityDistanceWW);
  lblMeanChangeVisualAcuityDistanceSurgeryValue.Caption := FormatFloat('0.00',objReport.getMeanChangeVisualAcuityDistanceSurgery);
  lblMeanChangeVisualAcuityDistanceInjectionValue.Caption := FormatFloat('0.00',objReport.getMeanChangeVisualAcuityDistanceInjection);
end;

procedure TfrmReport.Button37Click(Sender: TObject);
begin
    PageControl1.ActivePage := MeanChangeVisualAcuityDistancePage;
end;

procedure TfrmReport.Button38Click(Sender: TObject);
begin
  PageControl1.ActivePage := MeanVisualAcuityDistancePage;
end;

procedure TfrmReport.Button39Click(Sender: TObject);
begin
  //visual acuity near over time
  objReport.runQryReport_ClinicalMeasures_MeanVisualAcuityNear(frmDBControlsForReport.qryReport_ClinicalMeasures_MeanVisualAcuityNear);
end;

procedure TfrmReport.Button3Click(Sender: TObject);
begin
  //count VMT episodes
  objReport.runQryReport_VMTIncidence(frmDBControlsForReport.qryReport_VMTIncidence);

  //write VMT episodes
  lblVMTwithoutMHwithERMValue.Caption := IntToStr(objReport.getVMTwithoutMHwithERM);
  lblVMTwithoutMHwithoutERMValue.Caption := IntToStr(objReport.getVMTwithoutMHwithoutERM);
  lblVMTwithMHwithERMValue.Caption := IntToStr(objReport.getVMTwithMHwithERM);
  lblMHwithoutVMTwithERMValue.Caption := IntToStr(objReport.getMHwithoutVMTwithERM);
  lblMHwithoutVMTwithoutERMValue.Caption := IntToStr(objReport.getMHwithoutVMTwithoutERM);
end;

procedure TfrmReport.Button40Click(Sender: TObject);
begin
  PageControl1.ActivePage := MeanVisualAcuityNearPage;
end;

procedure TfrmReport.Button41Click(Sender: TObject);
begin
   PageControl1.ActivePage := MeanChangeVisualAcuityNearPage;
end;

procedure TfrmReport.Button42Click(Sender: TObject);
begin
  //mean change in visual acuity near between initial and final visit
  objReport.runQryReport_ClinicalMeasures_MeanChangeInVisualAcuityNear(frmDBControlsForReport.qryReport_ClinicalMeasures_MeanChangeInVisualAcuityNear);

  //write average no of visits at discharge point
  lblMeanChangeVisualAcuityNearWWValue.Caption := FormatFloat('0.00',objReport.getMeanChangeVisualAcuityNearWW);
  lblMeanChangeVisualAcuityNearSurgeryValue.Caption := FormatFloat('0.00',objReport.getMeanChangeVisualAcuityNearSurgery);
  lblMeanChangeVisualAcuityNearInjectionValue.Caption := FormatFloat('0.00',objReport.getMeanChangeVisualAcuityNearInjection);
end;

procedure TfrmReport.Button43Click(Sender: TObject);
begin
  //distortion or scotoma over time
  objReport.runQryReport_ClinicalMeasures_DistortionAndScotomaPresenceOverTime(frmDBControlsForReport.qryReport_ClinicalMeasures_DistortionAndScotomaPresenceOverTime);
end;

procedure TfrmReport.Button44Click(Sender: TObject);
begin
   PageControl1.ActivePage := ProportionDistortionAndScotomarPage;
end;

procedure TfrmReport.Button45Click(Sender: TObject);
begin
  PageControl1.ActivePage := OCTPresencePage;
end;

procedure TfrmReport.Button46Click(Sender: TObject);
begin
  //OCT presence over time
  objReport.runQryReport_ClinicalMeasures_OCTPresenceOverTime(frmDBControlsForReport.qryReport_ClinicalMeasures_OCTPresenceOverTime);
end;

procedure TfrmReport.Button47Click(Sender: TObject);
begin
  PageControl1.ActivePage := VitreomacularAdhesionPage;
end;

procedure TfrmReport.Button48Click(Sender: TObject);
begin
  //Mean Vitreomacular Adhesion over time
  objReport.runQryReport_ClinicalMeasures_MeanVitreomacularAdhesion(frmDBControlsForReport.qryReport_ClinicalMeasures_MeanVitreomacularAdhesion);
end;

procedure TfrmReport.Button49Click(Sender: TObject);
begin
  //Mean Vitreomacular Adhesion over time
  objReport.runQryReport_ClinicalMeasures_MacularHoleSize(frmDBControlsForReport.qryReport_ClinicalMeasures_MacularHoleSize);
end;

procedure TfrmReport.Button4Click(Sender: TObject);
begin
  PageControl1.ActivePage := VMTPage;
end;

procedure TfrmReport.Button50Click(Sender: TObject);
begin
  PageControl1.ActivePage := MeanMacularHoleSizePage;
end;

procedure TfrmReport.Button51Click(Sender: TObject);
begin
  //Occurence of secondary cataract over time
  objReport.runQryReport_ClinicalMeasures_SecondaryCataractPresenceOverTime(frmDBControlsForReport.qryReport_ClinicalMeasures_SecondaryCataractPresenceOverTime);
end;

procedure TfrmReport.Button52Click(Sender: TObject);
begin
  PageControl1.ActivePage := SecondaryCataractPresencePage;
end;

procedure TfrmReport.Button53Click(Sender: TObject);
begin
  PageControl1.ActivePage := MacularHoleStagePage;
end;

procedure TfrmReport.Button54Click(Sender: TObject);
begin
  PageControl1.ActivePage := ProposedTreatmentByRationalePage;
end;

procedure TfrmReport.Button55Click(Sender: TObject);
begin
  //proposed treatment by rationale
  objReport.runQryReport_ProposedTreatmentRationalPerc(frmDBControlsForReport.qryReport_ProposedTreatmentRationalPerc);

  //write treatment by rationale
 lblPatientPercRationaleNotApplicableValue.Caption := FormatFloat('0.00',objReport.getPatientPercRationaleNotApplicable);
 lblPatientPercRationaleWWValue.Caption := FormatFloat('0.00',objReport.getPatientPercRationaleWW);
 lblPatientPercRationaleSurgeryValue.Caption := FormatFloat('0.00',objReport.getPatientPercRationaleSurgery);
 lblPatientPercRationaleInjectionValue.Caption := FormatFloat('0.00',objReport.getPatientPercRationaleOcriplasminIntravitrealInjection);
 lblPatientPercRationaleOtherValue.Caption := FormatFloat('0.00',objReport.getPatientPercRationaleOther);
 lblPatientPercRationaleDischargeValue.Caption := FormatFloat('0.00',objReport.getPatientPercRationaleDischarge);
end;

procedure TfrmReport.Button56Click(Sender: TObject);
begin
 //proportion of patients that change treatment from WW to surgery or Injection
 objReport.runQryReport_ChangesToTreatment(frmDBControlsForReport.qryReport_ChangesToTreatment);

 //write no of Males and Females to report
 lblSwitchValue.Caption := FormatFloat('0.00',objReport.getNoOfSwitchedPatients);
 lblNoSwitchValue.Caption := FormatFloat('0.00',objReport.getNoOfNoSwitchedPatients);
end;

procedure TfrmReport.Button57Click(Sender: TObject);
begin
  //distortion or scotoma over time
  objReport.runQryReport_ClinicalMeasures_DistortionPresenceOverTime(frmDBControlsForReport.qryReport_ClinicalMeasures_DistortionPresenceOverTime);
end;

procedure TfrmReport.Button58Click(Sender: TObject);
begin
   PageControl1.ActivePage := ProportionDistortionPage;
end;

procedure TfrmReport.Button5Click(Sender: TObject);
begin
  //count average no of visits at discharge point
  objReport.runQryReport_AverageNoOfVisitsBetweenInitialVisitAndDischarge(frmDBControlsForReport.qryReport_AverageNoOfVisitsBetweenInitialVisitAndDischarge);

  //write average no of visits at discharge point
  lblWatchfulWaitingAverageNoAtDischargePointValue.Caption := FormatFloat('0.00',objReport.getWatchfulWaitingAverageNoAtDischargePoint);
  lblSurgeryAverageNoAtDischargePointValue.Caption := FormatFloat('0.00',objReport.getSurgeryAverageNoAtDischargePoint);
  lbIntravitrealInjectionAverageNoAtDischargePointValue.Caption := FormatFloat('0.00',objReport.getOcriplasminIntravitrealInjectionAverageNoAtDischargePoint);
end;

procedure TfrmReport.Button6Click(Sender: TObject);
begin
  //count reasons for discharge
  objReport.runQryReport_ReasonForDischarge(frmDBControlsForReport.qryReport_ReasonForDischarge);

  //write reasons for discharge Watchful waiting / No treatment
  notApplicableReasonForDischargeWWValue.Caption := FormatFloat('0.00',objReport.getNotApplicableReasonForDischargeWW);
  completeResolutionReasonForDischargeWWValue.Caption := FormatFloat('0.00',objReport.getCompleteResolutionReasonForDischargeWW);
  macularHoleClosureReasonForDischargeWWValue.Caption := FormatFloat('0.00',objReport.getMacularHoleClosureReasonForDischargeWW);
  patientDecisionReasonForDischargeWWValue.Caption := FormatFloat('0.00',objReport.getPatientDecisionReasonForDischargeWW);
  poorPrognosisReasonForDischargeWWValue.Caption := FormatFloat('0.00',objReport.getPoorPrognosisReasonForDischargeWW);
  otherReasonForDischargeWWValue.Caption := FormatFloat('0.00',objReport.getOtherReasonForDischargeWW);

  //write reasons for discharge Surgery
  notApplicableReasonForDischargeSurgeryValue.Caption := FormatFloat('0.00',objReport.getNotApplicableReasonForDischargeSurgery);
  completeResolutionReasonForDischargeSurgeryValue.Caption := FormatFloat('0.00',objReport.getCompleteResolutionReasonForDischargeSurgery);
  macularHoleClosureReasonForDischargeSurgeryValue.Caption := FormatFloat('0.00',objReport.getMacularHoleClosureReasonForDischargeSurgery);
  patientDecisionReasonForDischargeSurgeryValue.Caption := FormatFloat('0.00',objReport.getPatientDecisionReasonForDischargeSurgery);
  poorPrognosisReasonForDischargeSurgeryValue.Caption := FormatFloat('0.00',objReport.getPoorPrognosisReasonForDischargeSurgery);
  otherReasonForDischargeSurgeryValue.Caption := FormatFloat('0.00',objReport.getOtherReasonForDischargeSurgery);

  //write reasons for discharge Ocriplasmin intravitreal injection
  notApplicableReasonForDischargeInjectionValue.Caption := FormatFloat('0.00',objReport.getNotApplicableReasonForDischargeInjection);
  completeResolutionReasonForDischargeInjectionValue.Caption := FormatFloat('0.00',objReport.getCompleteResolutionReasonForDischargeInjection);
  macularHoleClosureReasonForDischargeInjectionValue.Caption := FormatFloat('0.00',objReport.getMacularHoleClosureReasonForDischargeInjection);
  patientDecisionReasonForDischargeInjectionValue.Caption := FormatFloat('0.00',objReport.getPatientDecisionReasonForDischargeInjection);
  poorPrognosisReasonForDischargeInjectionValue.Caption := FormatFloat('0.00',objReport.getPoorPrognosisReasonForDischargeInjection);
  otherReasonForDischargeInjectionValue.Caption := FormatFloat('0.00',objReport.getOtherReasonForDischargeInjection);
end;

procedure TfrmReport.Button7Click(Sender: TObject);
begin
  //get average time between initial visit and discharge
  objReport.runQryReport_averageTimeBetweeninitialVisitAndDischarge(frmDBControlsForReport.qryReport_averageTimeBetweeninitialVisitAndDischarge);

  //write average time between initial visit and discharge
  lblAverageTimeBetweenInitialAndDischargeVisitWWValue.Caption := FormatFloat('0.00',objReport.getAverageTimeBetweenInitialAndDischargeVisitWW);
  lblAverageTimeBetweenInitialAndDischargeVisitSurgeryValue.Caption := FormatFloat('0.00',objReport.getAverageTimeBetweenInitialAndDischargeVisitSurgery);
  lblAverageTimeBetweenInitialAndDischargeVisitInjectionValue.Caption := FormatFloat('0.00',objReport.getAverageTimeBetweenInitialAndDischargeVisitInjection);
end;

procedure TfrmReport.Button8Click(Sender: TObject);
begin
  //get average duration between visits
  objReport.runQryReport_AverageDurationBetweenVisits(frmDBControlsForReport.qryReport_AverageDurationBetweenVisits);

  //write average duration between visits
  lblAverageDurationBetweenVisitsWWValue.Caption := FormatFloat('0.00',objReport.getAverageDurationBetweenVisitsWW);
  lblAverageDurationBetweenVisitsSurgeryValue.Caption := FormatFloat('0.00',objReport.getAverageDurationBetweenVisitsSurgery);
  lblAverageDurationBetweenVisitsInjectionValue.Caption := FormatFloat('0.00',objReport.getAverageDurationBetweenVisitsInjection);
end;

procedure TfrmReport.Button9Click(Sender: TObject);
begin
  //get average time between initial visit and discharge
  objReport.runQryReport_averageTimeBetweenInitialvisitAndTreatment(frmDBControlsForReport.qryReport_averageTimeBetweenInitialvisitAndTreatment);

  //write average time between initial visit and discharge
  lblAverageTimeBetweenInitialVisitAndTreatmentWWValue.Caption := FormatFloat('0.00',objReport.getAverageTimeBetweenInitialVisitAndTreatmentWW);
  lblAverageTimeBetweenInitialVisitAndTreatmentSurgeryValue.Caption := FormatFloat('0.00',objReport.getAverageTimeBetweenInitialVisitAndTreatmentSurgery);
  lblAverageTimeBetweenInitialVisitAndTreatmentInjectionValue.Caption := FormatFloat('0.00',objReport.getAverageTimeBetweenInitialVisitAndTreatmentInjection);
end;

procedure TfrmReport.FormActivate(Sender: TObject);
begin
  //create the report object and activate database
  if not assigned(objReport) then
    begin
      objReport := TReport.Create(Self);
      objReport.setADOConnection(frmDBControls.ALC_Connection_1);
    end;
end;

end.
