unit unitDBControlsForReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, DB, Mask, ADODB, ComCtrls,
  ExtCtrls,ComObj, ActiveX, FlashPlayerControl, Math;


type
  TReport = class
    {
      ************************************************************************
      * CLASS TReport;                                                       *
      * ------------------------------------------------------------------   *
      * DESCRIPTION: query database to generate reports;                     *
      * ------------------------------------------------------------------   *
      * ABOUT: | DATE:      || AUTHOR:                                       *
      *        | 17/10/2013 || Donato Cappiello; NULL                        *
      ************************************************************************
    }
    private
      { Private declarations }
      anADOConnection: TADOConnection;
      currentMalesNo: Integer;
      currentFemalesNo: Integer;
      noOfPatientUnder45: Integer;
      noOfPatientOlderThan65: Integer;
      noOfPatientBetween45And64: Integer;
      VMTwithoutMHwithERM: Integer;
      VMTwithoutMHwithoutERM: Integer;
      VMTwithMHwithERM: Integer;
      MHwithoutVMTwithERM: Integer;
      MHwithoutVMTwithoutERM: Integer;
      GP: Integer;
      MedicalRetinalOphthalmologist: Integer;
      Optometrist: Integer;
      OtherReferralSource: Integer;
      OtherOphthalmologist: Integer;
      VitreoretinalSurgeon: Integer;
      OtherReason: Integer;
      SuspectedCataract: Integer;
      SuspectedMH: Integer;
      SuspectedVMT: Integer;
      SuspectedWetAMD: Integer;
      UnknownReason: Integer;
      BothEyes: Integer;
      OD: Integer;
      OS: Integer;
      ComorbiditiesPercVitreomacularAdhesion: Real;
      ComorbiditiesPercTraction: Real;
      ComorbiditiesPercMacularHoleWithVMT: Real;
      ComorbiditiesPercMacularHoleWithoutVMT: Real;
      ComorbiditiesPercWetAMD: Real;
      ComorbiditiesPercDryAMD: Real;
      ComorbiditiesPercDME: Real;
      ComorbiditiesPercProliferativeDiabeticRetinopathy: Real;
      ComorbiditiesPercCataract: Real;
      ComorbiditiesPercRetinalVeinOcclusion: Real;
      ComorbiditiesPercRetinalDetachment: Real;
      ComorbiditiesPercHighMyopia: Real;
      ComorbiditiesPercOther: Real;
      ComorbiditiesPercNotRelevant: Real;
      SymptomsNotRelevant: Real;
      SymptomsOther: Real;
      SymptomsVisualReduction: Real;
      SymptomsBlurredVision: Real;
      SymptomsDifficultyReadingAtNight: Real;
      SymptomsObjectsAppearSmaller: Real;
      SymptomsCentralBlackImage: Real;
      SymptomsDistortedVision: Real;
      SymptomsFlashesOfLight: Real;
      SymptomsFloaters: Real;
      PrevTreatOtherIntravitrealInjection: Real;
      PrevTreatIntravitrealSteroidImplant: Real;
      PrevTreatIntravitrealSteroidLiquid: Real;
      PrevTreatIntravitrealAntiVEGF: Real;
      PrevTreatOtherSurgery: Real;
      PrevTreatPeripheralLaserPhotocoagulation: Real;
      PrevTreatMacularLaserPhotocoagulation: Real;
      PrevTreatVitrectomy: Real;
      PrevTreatGlaucomaFiltrationSurgery: Real;
      PrevTreatCataractSurgery: Real;
      PrevTreatNotRelevant: Real;
      ocriplasminIntravitrealInjectionAverageNoAtDischargePoint: Real;
      surgeryAverageNoAtDischargePoint: Real;
      watchfulWaitingAverageNoAtDischargePoint: Real;
      notApplicableReasonForDischargeSurgery: Real;
      completeResolutionReasonForDischargeSurgery: Real;
      macularHoleClosureReasonForDischargeSurgery: Real;
      patientDecisionReasonForDischargeSurgery: Real;
      poorPrognosisReasonForDischargeSurgery: Real;
      otherReasonForDischargeSurgery: Real;
      notApplicableReasonForDischargeInjection: Real;
      completeResolutionReasonForDischargeInjection: Real;
      macularHoleClosureReasonForDischargeInjection: Real;
      patientDecisionReasonForDischargeInjection: Real;
      poorPrognosisReasonForDischargeInjection: Real;
      otherReasonForDischargeInjection: Real;
      notApplicableReasonForDischargeWW: Real;
      completeResolutionReasonForDischargeWW: Real;
      macularHoleClosureReasonForDischargeWW: Real;
      patientDecisionReasonForDischargeWW: Real;
      poorPrognosisReasonForDischargeWW: Real;
      otherReasonForDischargeWW: Real;
      averageTimeBetweenInitialAndDischargeVisitWW: Real;
      averageTimeBetweenInitialAndDischargeVisitSurgery: Real;
      averageTimeBetweenInitialAndDischargeVisitInjection: Real;
      averageTimeBetweenInitialVisitAndTreatmentWW: Real;
      averageTimeBetweenInitialVisitAndTreatmentSurgery: Real;
      averageTimeBetweenInitialVisitAndTreatmentInjection: Real;
      averageDurationBetweenVisitsWW: Real;
      averageDurationBetweenVisitsSurgery: Real;
      averageDurationBetweenVisitsInjection: Real;
      maxTimeIntervalForMeanIOP: Real;
      maxTimeIntervalForMeanVisualAcuityDistance: Real;
      maxTimeIntervalForMeanVisualAcuityNear: Real;
      maxTimeIntervalForDistortionAndScotoma: Real;
      maxTimeIntervalForDistortion: Real;
      maxTimeIntervalForOCTPresence: Real;
      meanIOPWWSerie: Real;
      meanIOPSurgerySerie: Real;
      meanIOPInjectionSerie: Real;
      meanChangeIOPWW: Real;
      meanChangeIOPSurgery: Real;
      meanChangeIOPInjection: Real;
      meanChangeVisualAcuityDistanceWW: Real;
      meanChangeVisualAcuityDistanceSurgery: Real;
      meanChangeVisualAcuityDistanceInjection: Real;
      meanChangeVisualAcuityNearWW: Real;
      meanChangeVisualAcuityNearSurgery: Real;
      meanChangeVisualAcuityNearInjection: Real;
      maxTimeIntervalForVitreomacularAdhesion: Real;
      maxTimeIntervalForMacularHoleSize: Real;
      maxTimeIntervalForSecondaryCataractPresence: Real;
      noOfSwitchedPatients: Real;
      noOfNoSwitchedPatients: Real;
      proportionOfPatientAtSTAGE1: Real;
      proportionOfPatientAtSTAGE2: Real;
      proportionOfPatientAtSTAGE3: Real;
      proportionOfPatientAtSTAGE4: Real;
      patientPercRationaleNotApplicable: Real;
      patientPercRationaleWW: Real;
      patientPercRationaleSurgery: Real;
      patientPercRationaleOcriplasminIntravitrealInjection : Real;
      patientPercRationaleOther: Real;
      patientPercRationaleDischarge: Real;
    protected
      { Protected declarations }
      { Protected declarations to be published in descendants}

    public
      constructor Create(AOwner: TComponent);
      destructor Destroy;
      procedure setADOConnection(anADOConnection: TADOConnection);
      function getADOConnection: TADOConnection;
      procedure runQryReport_Gender(anADOQuery: TADOQuery);
      procedure runQryReport_Age(anADOQuery: TADOQuery);
      procedure runQryReport_VMTIncidence(anADOQuery: TADOQuery);
      procedure runQryReport_SourceOfReferral(anADOQuery: TADOQuery);
      procedure runQryReport_ReasonForReferral(anADOQuery: TADOQuery);
      procedure runQryReport_PrimaryAffectedEye(anADOQuery: TADOQuery);
      procedure runQryReport_ComorbiditiesPerc(anADOQuery: TADOQuery);
      procedure runQryReport_OcularSymptomsPerc(anADOQuery: TADOQuery);
      procedure runQryReport_PreviousInterventionPerc(anADOQuery: TADOQuery);
      procedure runQryReport_AverageNoOfVisitsBetweenInitialVisitAndDischarge(anADOQuery: TADOQuery);
      procedure runQryReport_ReasonForDischarge(anADOQuery: TADOQuery);
      procedure runQryReport_averageTimeBetweeninitialVisitAndDischarge(anADOQuery: TADOQuery);
      procedure runQryReport_averageTimeBetweenInitialvisitAndTreatment(anADOQuery: TADOQuery);
      procedure runQryReport_AverageDurationBetweenVisits(anADOQuery: TADOQuery);
      procedure runQryDelphi_MaxTimeIntervalForMeanIOP(anADOQuery: TADOQuery);
      procedure runQryDelphi_MaxTimeIntervalForVisualAcuityDistance(anADOQuery: TADOQuery);
      procedure runQryDelphi_MaxTimeIntervalForVisualAcuityNear(anADOQuery: TADOQuery);
      procedure runQryDelphi_MaxTimeIntervalForDistortionAndScotoma(anADOQuery: TADOQuery);
      procedure runQryDelphi_MaxTimeIntervalForDistortion(anADOQuery: TADOQuery);
      procedure runQryDelphi_MaxTimeIntervalForOCTPresence(anADOQuery: TADOQuery);
      procedure runQryDelphi_MaxTimeIntervalForVitreomacularAdhesion(anADOQuery: TADOQuery);
      procedure runQryDelphi_MaxTimeIntervalForMacularHoleSize(anADOQuery: TADOQuery);
      procedure runQryDelphi_MaxTimeIntervalForSecondaryCataractPresence(anADOQuery: TADOQuery);
      procedure runQryReport_ClinicalMeasures_MeanIntraocularPressure(anADOQuery: TADOQuery);
      procedure runQryReport_ClinicalMeasures_MeanVisualAcuityDistance(anADOQuery: TADOQuery);
      procedure runQryReport_ClinicalMeasures_MeanVisualAcuityNear(anADOQuery: TADOQuery);
      procedure runQryReport_ClinicalMeasures_MeanChangeInIntraocularPressure(anADOQuery: TADOQuery);
      procedure runQryReport_ClinicalMeasures_MeanChangeInVisualAcuityDistance(anADOQuery: TADOQuery);
      procedure runQryReport_ClinicalMeasures_MeanChangeInVisualAcuityNear(anADOQuery: TADOQuery);
      procedure runQryReport_ClinicalMeasures_DistortionAndScotomaPresenceOverTime(anADOQuery: TADOQuery);
      procedure runQryReport_ClinicalMeasures_DistortionPresenceOverTime(anADOQuery: TADOQuery);
      procedure runQryReport_ClinicalMeasures_OCTPresenceOverTime(anADOQuery: TADOQuery);
      procedure runQryReport_ClinicalMeasures_MeanVitreomacularAdhesion(anADOQuery: TADOQuery);
      procedure runQryReport_ClinicalMeasures_MacularHoleSize(anADOQuery: TADOQuery);
      procedure runQryReport_ClinicalMeasures_SecondaryCataractPresenceOverTime(anADOQuery: TADOQuery);
      procedure runQryReport_ProposedTreatmentRationalPerc(anADOQuery: TADOQuery);
      procedure runQryReport_ChangesToTreatment(anADOQuery: TADOQuery);
      procedure runQryReport_MacularHoleStageAtInitialVisit(anADOQuery: TADOQuery);
      function getNoOfMalePatients: Integer;
      function getNoOfFemalePatients: Integer;
      function getNoOfPatientUnder45: Integer;
      function getNoOfPatientOlderThan65: Integer;
      function getNoOfPatientBetween45And64: Integer;
      function getVMTwithoutMHwithERM: Integer;
      function getVMTwithoutMHwithoutERM: Integer;
      function getVMTwithMHwithERM: Integer;
      function getMHwithoutVMTwithERM: Integer;
      function getMHwithoutVMTwithoutERM: Integer;
      function getGP: Integer;
      function getMedicalRetinalOphthalmologist: Integer;
      function getOptometrist: Integer;
      function getOtherReferralSource: Integer;
      function getOtherOphthalmologist: Integer;
      function getVitreoretinalSurgeon: Integer;
      function getOtherReason: Integer;
      function getSuspectedCataract: Integer;
      function getSuspectedMH: Integer;
      function getSuspectedVMT: Integer;
      function getSuspectedWetAMD: Integer;
      function getUnknownReason: Integer;
      function getBothEyes: Integer;
      function getOD: Integer;
      function getOS: Integer;
      function getComorbiditiesPercVitreomacularAdhesion: Real;
      function getComorbiditiesPercVitreomacularTraction: Real;
      function getComorbiditiesPercMacularHoleWithVMT: Real;
      function getComorbiditiesPercMacularHoleWithoutVMT: Real;
      function getComorbiditiesPercWetAMD: Real;
      function getComorbiditiesPercDryAMD: Real;
      function getComorbiditiesPercDME: Real;
      function getComorbiditiesPercProliferativeDiabeticRetinopathy: Real;
      function getComorbiditiesPercCataract: Real;
      function getComorbiditiesPercRetinalVeinOcclusion: Real;
      function getComorbiditiesPercRetinalDetachment: Real;
      function getComorbiditiesPercHighMyopia: Real;
      function getComorbiditiesPercOther: Real;
      function getComorbiditiesPercNotRelevant: Real;
      function getSymptomsNotRelevant: Real;
      function getSymptomsOther: Real;
      function getSymptomsVisualReduction: Real;
      function getSymptomsBlurredVision: Real;
      function getSymptomsDifficultyReadingAtNight: Real;
      function getSymptomsObjectsAppearSmaller: Real;
      function getSymptomsCentralBlackImage: Real;
      function getSymptomsDistortedVision: Real;
      function getSymptomsFlashesOfLight: Real;
      function getSymptomsFloaters: Real;
      function getPrevTreatOtherIntravitrealInjection: Real;
      function getPrevTreatIntravitrealSteroidImplant: Real;
      function getPrevTreatIntravitrealSteroidLiquid: Real;
      function getPrevTreatIntravitrealAntiVEGF: Real;
      function getPrevTreatOtherSurgery: Real;
      function getPrevTreatPeripheralLaserPhotocoagulation: Real;
      function getPrevTreatMacularLaserPhotocoagulation: Real;
      function getPrevTreatVitrectomy: Real;
      function getPrevTreatGlaucomaFiltrationSurgery: Real;
      function getPrevTreatCataractSurgery: Real;
      function getPrevTreatNotRelevant: Real;
      function getOcriplasminIntravitrealInjectionAverageNoAtDischargePoint: Real;
      function getSurgeryAverageNoAtDischargePoint: Real;
      function getWatchfulWaitingAverageNoAtDischargePoint: Real;
      function getnotApplicableReasonForDischargeSurgery: Real;
      function getCompleteResolutionReasonForDischargeSurgery: Real;
      function getMacularHoleClosureReasonForDischargeSurgery: Real;
      function getPatientDecisionReasonForDischargeSurgery: Real;
      function getPoorPrognosisReasonForDischargeSurgery: Real;
      function getOtherReasonForDischargeSurgery: Real;
      function getNotApplicableReasonForDischargeInjection: Real;
      function getCompleteResolutionReasonForDischargeInjection: Real;
      function getMacularHoleClosureReasonForDischargeInjection: Real;
      function getPatientDecisionReasonForDischargeInjection: Real;
      function getPoorPrognosisReasonForDischargeInjection: Real;
      function getOtherReasonForDischargeInjection: Real;
      function getNotApplicableReasonForDischargeWW: Real;
      function getCompleteResolutionReasonForDischargeWW: Real;
      function getMacularHoleClosureReasonForDischargeWW: Real;
      function getPatientDecisionReasonForDischargeWW: Real;
      function getPoorPrognosisReasonForDischargeWW: Real;
      function getOtherReasonForDischargeWW: Real;
      function getAverageTimeBetweenInitialAndDischargeVisitWW: Real;
      function getAverageTimeBetweenInitialAndDischargeVisitSurgery: Real;
      function getAverageTimeBetweenInitialAndDischargeVisitInjection: Real;
      function getAverageTimeBetweenInitialVisitAndTreatmentWW: Real;
      function getAverageTimeBetweenInitialVisitAndTreatmentSurgery: Real;
      function getAverageTimeBetweenInitialVisitAndTreatmentInjection: Real;
      function getAverageDurationBetweenVisitsWW: Real;
      function getAverageDurationBetweenVisitsSurgery: Real;
      function getAverageDurationBetweenVisitsInjection: Real;
      function getMaxTimeIntervalForMeanIOP: Real;
      function getMaxTimeIntervalForMeanVisualAcuityDistance: Real;
      function getMaxTimeIntervalForMeanVisualAcuityNear: Real;
      function getMaxTimeIntervalForDistortionAndScotoma: Real;
      function getMaxTimeIntervalForDistortion: Real;
      function getMaxTimeIntervalForOCTPresence: Real;
      function getMaxTimeIntervalForVitreomacularAdhesion: Real;
      function getMaxTimeIntervalForMacularHoleSize: Real;
      function getMaxTimeIntervalForSecondaryCataractPresence: Real;
      function getMeanIOPWWSerie: Real;
      function getMeanIOPSurgerySerie: Real;
      function getMeanIOPInjectionSerie: Real;
      function getMeanChangeIOPWW: Real;
      function getMeanChangeIOPSurgery: Real;
      function getMeanChangeIOPInjection: Real;
      function getMeanChangeVisualAcuityDistanceWW: Real;
      function getMeanChangeVisualAcuityDistanceSurgery: Real;
      function getMeanChangeVisualAcuityDistanceInjection: Real;
      function getMeanChangeVisualAcuityNearWW: Real;
      function getMeanChangeVisualAcuityNearSurgery: Real;
      function getMeanChangeVisualAcuityNearInjection: Real;
      function getNoOfSwitchedPatients: Real;
      function getNoOfNoSwitchedPatients: Real;
      function getProportionOfPatientAtSTAGE1: Real;
      function getProportionOfPatientAtSTAGE2: Real;
      function getProportionOfPatientAtSTAGE3: Real;
      function getProportionOfPatientAtSTAGE4: Real;
      function getPatientPercRationaleNotApplicable: Real;
      function getPatientPercRationaleWW: Real;
      function getPatientPercRationaleSurgery: Real;
      function getPatientPercRationaleOcriplasminIntravitrealInjection : Real;
      function getPatientPercRationaleOther: Real;
      function getPatientPercRationaleDischarge: Real;
    published
      { Published declarations }
  end;

  TfrmDBControlsForReport = class(TForm)
    Panel2: TPanel;
    Label103: TLabel;
    qryReport_Gender: TADOQuery;
    qryReport_GenderCountOfpatientID: TIntegerField;
    qryReport_Gendergender: TWideStringField;
    qryReport_ProportionOfPatientsMovingFromWWToSurgeryOrInjections: TADOQuery;
    qryReport_averageTimeBetweeninitialVisitAndDischarge: TADOQuery;
    qryReport_VMTIncidence: TADOQuery;
    qryReport_VMTIncidenceCountOfpatientID: TIntegerField;
    qryReport_VMTIncidenceIndicationDesc: TWideStringField;
    qryReport_Age: TADOQuery;
    qryReport_AgeCountOfpatientID: TIntegerField;
    qryReport_AgeageRangeDesc: TWideStringField;
    qryReport_ReasonForDischarge: TADOQuery;
    qryReport_averageTimeBetweenInitialvisitAndTreatment: TADOQuery;
    qryReport_AverageNoOfVisitsBetweenInitialVisitAndDischarge: TADOQuery;
    Label1: TLabel;
    qrySub_DischargedAnswersIDs: TADOQuery;
    IntegerField7: TIntegerField;
    WideStringField7: TWideStringField;
    qrySub_EpisodesIdsOfDischargedAnswers: TADOQuery;
    IntegerField8: TIntegerField;
    WideStringField8: TWideStringField;
    qrySub_AnswersIdOfInitialVisitsWithADischargedID: TADOQuery;
    IntegerField14: TIntegerField;
    WideStringField14: TWideStringField;
    qryReport_SourceOfReferral: TADOQuery;
    qryReport_SourceOfReferralCountOfpatientID: TIntegerField;
    qryReport_SourceOfReferralSourceOfReferralDesc: TWideStringField;
    qryReport_ReasonforReferral: TADOQuery;
    qryReport_ReasonforReferralCountOfpatientID: TIntegerField;
    qryReport_ReasonforReferralReasonForReferalDesc: TWideStringField;
    qryReport_PrimaryAffectedEye: TADOQuery;
    qryReport_PrimaryAffectedEyeBoth: TIntegerField;
    qryReport_PrimaryAffectedEyeAffectedOD: TIntegerField;
    qryReport_PrimaryAffectedEyeAffectedOS: TIntegerField;
    qryReport_ComorbiditiesPerc: TADOQuery;
    qryReport_ComorbiditiesPercVitreomacularAdhesion: TFloatField;
    qryReport_ComorbiditiesPercVitreomacularTraction: TFloatField;
    qryReport_ComorbiditiesPercMacularHoleWithVMT: TFloatField;
    qryReport_ComorbiditiesPercMacularHoleWithoutVMT: TFloatField;
    qryReport_ComorbiditiesPercWetAMD: TFloatField;
    qryReport_ComorbiditiesPercDryAMD: TFloatField;
    qryReport_ComorbiditiesPercDME: TFloatField;
    qryReport_ComorbiditiesPercProliferativeDiabeticRetinopathy: TFloatField;
    qryReport_ComorbiditiesPercCataract: TFloatField;
    qryReport_ComorbiditiesPercRetinalVeinOcclusion: TFloatField;
    qryReport_ComorbiditiesPercRetinalDetachment: TFloatField;
    qryReport_ComorbiditiesPercHighMyopia: TFloatField;
    qryReport_ComorbiditiesPercOther: TFloatField;
    qryReport_ComorbiditiesPercNotRelevant: TFloatField;
    qryReport_OcularSymptomsPerc: TADOQuery;
    qryReport_OcularSymptomsPercSymptomsFloaters: TFloatField;
    qryReport_OcularSymptomsPercSymptomsFlashesOfLight: TFloatField;
    qryReport_OcularSymptomsPercSymptomsDistortedVision: TFloatField;
    qryReport_OcularSymptomsPercSymptomsObjectsAppearSmaller: TFloatField;
    qryReport_OcularSymptomsPercSymptomsCentralBlackImage: TFloatField;
    qryReport_OcularSymptomsPercSymptomsDifficultyReadingAtNight: TFloatField;
    qryReport_OcularSymptomsPercSymptomsBlurredVision: TFloatField;
    qryReport_OcularSymptomsPercSymptomsVisualReduction: TFloatField;
    qryReport_OcularSymptomsPercSymptomsOther: TFloatField;
    qryReport_OcularSymptomsPercSymptomsNotRelevant: TFloatField;
    qryReport_PreviousInterventionPerc: TADOQuery;
    qryReport_PreviousInterventionPercPrevTreatCataractSurgery: TFloatField;
    qryReport_PreviousInterventionPercPrevTreatGlaucomaFiltrationSurgery: TFloatField;
    qryReport_PreviousInterventionPercPrevTreatVitrectomy: TFloatField;
    qryReport_PreviousInterventionPercPrevTreatMacularLaserPhotocoagulation: TFloatField;
    qryReport_PreviousInterventionPercPrevTreatPeripheralLaserPhotocoagulation: TFloatField;
    qryReport_PreviousInterventionPercPrevTreatOtherSurgery: TFloatField;
    qryReport_PreviousInterventionPercPrevTreatIntravitrealAntiVEGF: TFloatField;
    qryReport_PreviousInterventionPercPrevTreatIntravitrealSteroidLiquid: TFloatField;
    qryReport_PreviousInterventionPercPrevTreatIntravitrealSteroidImplant: TFloatField;
    qryReport_PreviousInterventionPercPrevTreatOtherIntravitrealInjection: TFloatField;
    qryReport_PreviousInterventionPercPrevTreatNotRelevant: TFloatField;
    qryReport_AverageNoOfVisitsBetweenInitialVisitAndDischargeProposedTreatmentGroupDesc: TWideStringField;
    qryReport_AverageNoOfVisitsBetweenInitialVisitAndDischargeAverageNoOfVisitsByProposedInitialTreatment: TFloatField;
    qryReport_ReasonForDischargeProposedTreatmentGroupDesc: TWideStringField;
    qryReport_ReasonForDischargeDischargeReasonDesc: TWideStringField;
    qryReport_ReasonForDischargeCountOfDischargeReasonDesc: TIntegerField;
    qryReport_averageTimeBetweeninitialVisitAndDischargeProposedTreatmentGroupDesc: TWideStringField;
    qryReport_averageTimeBetweeninitialVisitAndDischargeAverageTimeBetweenInitialAndDischargeVisit: TFloatField;
    qryReport_AverageDurationBetweenVisits: TADOQuery;
    qrySub_DurationBetweenFirstVisitsAndTreatment: TADOQuery;
    qrySub_DurationBetweenFirstVisitsAndTreatmentAnswerBaseID: TAutoIncField;
    qrySub_DurationBetweenFirstVisitsAndTreatmentepisodeSetID: TIntegerField;
    qrySub_DurationBetweenFirstVisitsAndTreatmentepisodeDate: TDateTimeField;
    qrySub_DurationBetweenFirstVisitsAndTreatmentPrevDate: TDateTimeField;
    qrySub_DurationBetweenFirstVisitsAndTreatmentInterval: TFloatField;
    qrySub_EpisodeSetsByProposedGroupDescOfFirstVisit: TADOQuery;
    qrySub_EpisodeSetsByProposedGroupDescOfFirstVisitepisodeSetID: TIntegerField;
    qrySub_EpisodeSetsByProposedGroupDescOfFirstVisitProposedTreatmentGroupDesc: TWideStringField;
    qrySub_DurationBetweenVisits: TADOQuery;
    qrySub_DurationBetweenVisitsAnswerBaseID: TAutoIncField;
    qrySub_DurationBetweenVisitsepisodeSetID: TIntegerField;
    qrySub_DurationBetweenVisitsepisodeDate: TDateTimeField;
    qrySub_DurationBetweenVisitsPrevDate: TDateTimeField;
    qrySub_DurationBetweenVisitsInterval: TFloatField;
    qryReport_ClinicalMeasures_MeanIntraocularPressure: TADOQuery;
    qryDelphi_MaxTimeIntervalForMeanIOP: TADOQuery;
    qryDelphi_MaxTimeIntervalForMeanIOPMaxTimeIntervalForMeanIOP: TIntegerField;
    meanIOPMemo: TMemo;
    qryReport_ClinicalMeasures_MeanChangeInIntraocularPressure: TADOQuery;
    qryReport_ClinicalMeasures_MeanChangeInIntraocularPressureMeanChangeInIOP: TFloatField;
    qryReport_ClinicalMeasures_MeanChangeInIntraocularPressureProposedTreatmentGroupDesc: TWideStringField;
    qryReport_ClinicalMeasures_MeanVisualAcuityDistance: TADOQuery;
    qryReport_ClinicalMeasures_MeanVisualAcuityDistanceProposedTreatmentGroupDesc: TWideStringField;
    qryReport_ClinicalMeasures_MeanVisualAcuityDistanceIntervalFromFirstVisitInMonths: TIntegerField;
    qryReport_ClinicalMeasures_MeanVisualAcuityDistancemeanVisuaAcuityOverTime: TFloatField;
    qryDelphi_MaxTimeIntervalForMeanVisualAcuityDistance: TADOQuery;
    qryDelphi_MaxTimeIntervalForMeanVisualAcuityDistanceMaxTimeIntervalForMeanVisualAcuityDistance: TIntegerField;
    meanVisualAcuityDistanceMemo: TMemo;
    qryReport_ClinicalMeasures_MeanChangeInVisualAcuityDistance: TADOQuery;
    qryReport_ClinicalMeasures_MeanChangeInVisualAcuityDistanceMeanChangeInVisualAcuityDistance: TFloatField;
    qryReport_ClinicalMeasures_MeanChangeInVisualAcuityDistanceProposedTreatmentGroupDesc: TWideStringField;
    qryReport_ClinicalMeasures_MeanVisualAcuityNear: TADOQuery;
    qryReport_ClinicalMeasures_MeanVisualAcuityNearProposedTreatmentGroupDesc: TWideStringField;
    qryReport_ClinicalMeasures_MeanVisualAcuityNearIntervalFromFirstVisitInMonths: TIntegerField;
    qryReport_ClinicalMeasures_MeanVisualAcuityNearmeanVisuaAcuityNearOverTime: TFloatField;
    meanVisualAcuityNearMemo: TMemo;
    qryDelphi_MaxTimeIntervalForMeanVisualAcuityNear: TADOQuery;
    qryDelphi_MaxTimeIntervalForMeanVisualAcuityNearMaxTimeIntervalForMeanVisualAcuityNear: TIntegerField;
    qryReport_ClinicalMeasures_MeanChangeInVisualAcuityNear: TADOQuery;
    qryReport_ClinicalMeasures_MeanChangeInVisualAcuityNearMeanChangeInVisualAcuityNear: TFloatField;
    qryReport_ClinicalMeasures_MeanChangeInVisualAcuityNearProposedTreatmentGroupDesc: TWideStringField;
    qryDelphi_MaxTimeIntervalForDistortionAndScotoma: TADOQuery;
    ProportionOfPatientWithDistortionAndScotomaMemo: TMemo;
    qryReport_ClinicalMeasures_DistortionAndScotomaPresenceOverTime: TADOQuery;
    qryDelphi_MaxTimeIntervalForOCTPresence: TADOQuery;
    qryDelphi_MaxTimeIntervalForOCTPresenceMaxTimeIntervalFoOCTPresence: TIntegerField;
    qryReport_ClinicalMeasures_OCTPresenceOverTime: TADOQuery;
    qryReport_ClinicalMeasures_OCTPresenceOverTimeIntervalFromFirstVisitInMonths: TIntegerField;
    qryReport_ClinicalMeasures_OCTPresenceOverTimeCountProposedTreatByTimeInterval: TIntegerField;
    qryReport_ClinicalMeasures_OCTPresenceOverTimeProposedTreatmentGroupDesc: TWideStringField;
    qryReport_ClinicalMeasures_OCTPresenceOverTimeProportionOfPatientsByTimeInterval: TFloatField;
    ProportionOfPatientWithOCTMemo: TMemo;
    qryDelphi_MaxTimeIntervalForVitreomacularAdhesion: TADOQuery;
    qryReport_ClinicalMeasures_MeanVitreomacularAdhesion: TADOQuery;
    qryReport_ClinicalMeasures_MeanVitreomacularAdhesionProposedTreatmentGroupDesc: TWideStringField;
    qryReport_ClinicalMeasures_MeanVitreomacularAdhesionIntervalFromFirstVisitInMonths: TIntegerField;
    qryReport_ClinicalMeasures_MeanVitreomacularAdhesionmeanVMAOverTime: TFloatField;
    AverageVitreomacularAdhesionMemo: TMemo;
    qryDelphi_MaxTimeIntervalForVitreomacularAdhesionMaxTimeIntervalForVitreomacularAdhesion: TIntegerField;
    qryDelphi_MaxTimeIntervalForMacularHoleSize: TADOQuery;
    qryDelphi_MaxTimeIntervalForMacularHoleSizeMaxTimeIntervalForMacularHoleSize: TIntegerField;
    qryReport_ClinicalMeasures_MacularHoleSize: TADOQuery;
    qryReport_ClinicalMeasures_MacularHoleSizeProposedTreatmentGroupDesc: TWideStringField;
    qryReport_ClinicalMeasures_MacularHoleSizeIntervalFromFirstVisitInMonths: TIntegerField;
    qryReport_ClinicalMeasures_MacularHoleSizemeanMacularHoleSizeOverTime: TFloatField;
    meanMacularHoleSizeMemo: TMemo;
    qryReport_ClinicalMeasures_SecondaryCataractPresenceOverTime: TADOQuery;
    qryDelphi_MaxTimeIntervalForSecondaryCataractPresence: TADOQuery;
    qryDelphi_MaxTimeIntervalForSecondaryCataractPresenceMaxTimeIntervalForSecondaryCataractPresence: TIntegerField;
    qryReport_ClinicalMeasures_SecondaryCataractPresenceOverTimeIntervalFromFirstVisitInMonths: TIntegerField;
    qryReport_ClinicalMeasures_SecondaryCataractPresenceOverTimeCountProposedTreatByTimeInterval: TIntegerField;
    qryReport_ClinicalMeasures_SecondaryCataractPresenceOverTimeProposedTreatmentGroupDesc: TWideStringField;
    qryReport_ClinicalMeasures_SecondaryCataractPresenceOverTimeProportionOfPatientsByTimeInterval: TFloatField;
    SecondaryCataractPresenceMemo: TMemo;
    qryReport_ProportionOfPatientsMovingFromWWToSurgeryOrInjectionsCountOfpatientID: TIntegerField;
    qryReport_ProportionOfPatientsMovingFromWWToSurgeryOrInjectionsIndicationDesc: TWideStringField;
    qryReport_AverageDurationBetweenVisitsItemsCount: TIntegerField;
    qryReport_AverageDurationBetweenVisitsProposedTreatmentGroupDesc: TWideStringField;
    qryReport_AverageDurationBetweenVisitsAverageDurationBetweenVisits: TFloatField;
    qryReport_averageTimeBetweenInitialvisitAndTreatmentItemsCount: TIntegerField;
    qryReport_averageTimeBetweenInitialvisitAndTreatmentProposedTreatmentGroupDesc: TWideStringField;
    qryReport_averageTimeBetweenInitialvisitAndTreatmentAverageDurationBetweenFirstVisitAndTreatment: TFloatField;
    qryReport_ProposedTreatmentRationalPerc: TADOQuery;
    ProposedTreatmentRationalMemo: TMemo;
    qryReport_ChangesToTreatment: TADOQuery;
    qryReport_ChangesToTreatmentPatientsMovingFromWWToSurgeryOrInjections: TIntegerField;
    qryReport_ChangesToTreatmentTotalNoOfPAtients: TIntegerField;
    qryReport_ChangesToTreatmentProportionOfPatientsMovingFromWWToSurgeryOrInjection: TFloatField;
    qryReport_MacularHoleStageAtInitialVisit: TADOQuery;
    qryReport_MacularHoleStageAtInitialVisitproportionOfPatientAtSTAGE1: TFloatField;
    qryReport_MacularHoleStageAtInitialVisitproportionOfPatientAtSTAGE2: TFloatField;
    qryReport_MacularHoleStageAtInitialVisitproportionOfPatientAtSTAGE3: TFloatField;
    qryReport_MacularHoleStageAtInitialVisitproportionOfPatientAtSTAGE4: TFloatField;
    qryDelphi_MaxTimeIntervalForDistortionAndScotomaMaxTimeIntervalForDistortionAndScotoma: TIntegerField;
    qryReport_ClinicalMeasures_DistortionAndScotomaPresenceOverTimeIntervalFromFirstVisitInMonths: TIntegerField;
    qryReport_ClinicalMeasures_DistortionAndScotomaPresenceOverTimeCountProposedTreatByTimeInterval: TIntegerField;
    qryReport_ClinicalMeasures_DistortionAndScotomaPresenceOverTimeProposedTreatmentGroupDesc: TWideStringField;
    qryReport_ClinicalMeasures_DistortionAndScotomaPresenceOverTimeProportionOfPatientsByTimeInterval: TFloatField;
    qryDelphi_MaxTimeIntervalForDistortion: TADOQuery;
    qryReport_ClinicalMeasures_DistortionPresenceOverTime: TADOQuery;
    qryDelphi_MaxTimeIntervalForDistortionMaxTimeIntervalForDistortion: TIntegerField;
    qryReport_ClinicalMeasures_DistortionPresenceOverTimeIntervalFromFirstVisitInMonths: TIntegerField;
    qryReport_ClinicalMeasures_DistortionPresenceOverTimeCountProposedTreatByTimeInterval: TIntegerField;
    qryReport_ClinicalMeasures_DistortionPresenceOverTimeProposedTreatmentGroupDesc: TWideStringField;
    qryReport_ClinicalMeasures_DistortionPresenceOverTimeProportionOfPatientsByTimeInterval: TFloatField;
    ProportionOfPatientWithDistortionMemo: TMemo;
    qryReport_ProposedTreatmentRationalPercPatientPerc: TFloatField;
    qryReport_ProposedTreatmentRationalPercProposedTreatmentGroupDesc: TWideStringField;
    qryReport_ClinicalMeasures_MeanIntraocularPressureProposedTreatmentGroupDesc: TWideStringField;
    qryReport_ClinicalMeasures_MeanIntraocularPressureIntervalFromFirstVisitInMonths: TIntegerField;
    qryReport_ClinicalMeasures_MeanIntraocularPressuremeanIOPOverTime: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDBControlsForReport: TfrmDBControlsForReport;

implementation

uses Report, unitDBControls;

{$R *.dfm}

{ TReport }

constructor TReport.Create(AOwner: TComponent);
begin

end;

destructor TReport.Destroy;
begin
  Self.anADOConnection.Connected := False;
end;

function TReport.getADOConnection: TADOConnection;
begin
  Result := Self.anADOConnection;
end;

function TReport.getAverageDurationBetweenVisitsInjection: Real;
begin
  Result := Self.averageDurationBetweenVisitsInjection;
end;

function TReport.getAverageDurationBetweenVisitsSurgery: Real;
begin
  Result := Self.averageDurationBetweenVisitsSurgery;
end;

function TReport.getAverageDurationBetweenVisitsWW: Real;
begin
  Result := Self.averageDurationBetweenVisitsWW;
end;

function TReport.getAverageTimeBetweenInitialAndDischargeVisitInjection: Real;
begin
    Result := Self.averageTimeBetweenInitialAndDischargeVisitInjection;
end;

function TReport.getAverageTimeBetweenInitialAndDischargeVisitSurgery: Real;
begin
  Result := Self.averageTimeBetweenInitialAndDischargeVisitSurgery;
end;

function TReport.getAverageTimeBetweenInitialAndDischargeVisitWW: Real;
begin
    Result := Self.averageTimeBetweenInitialAndDischargeVisitWW;
end;

function TReport.getAverageTimeBetweenInitialVisitAndTreatmentInjection: Real;
begin
  Result := Self.averageTimeBetweenInitialVisitAndTreatmentInjection;
end;

function TReport.getAverageTimeBetweenInitialVisitAndTreatmentSurgery: Real;
begin
  Result := Self.averageTimeBetweenInitialVisitAndTreatmentSurgery;
end;

function TReport.getAverageTimeBetweenInitialVisitAndTreatmentWW: Real;
begin
  Result := Self.averageTimeBetweenInitialVisitAndTreatmentWW;
end;

function TReport.getBothEyes: Integer;
begin
  Result := Self.BothEyes;
end;

function TReport.getComorbiditiesPercCataract: Real;
begin
  Result := Self.ComorbiditiesPercCataract;
end;

function TReport.getComorbiditiesPercVitreomacularTraction: Real;
begin
  Result := Self.ComorbiditiesPercTraction;
end;

function TReport.getComorbiditiesPercDME: Real;
begin
  Result := Self.ComorbiditiesPercDME;
end;

function TReport.getComorbiditiesPercDryAMD: Real;
begin
  Result := Self.ComorbiditiesPercDryAMD;
end;

function TReport.getComorbiditiesPercHighMyopia: Real;
begin
  Result := Self.ComorbiditiesPercHighMyopia;
end;

function TReport.getComorbiditiesPercMacularHoleWithoutVMT: Real;
begin
  Result := Self.ComorbiditiesPercMacularHoleWithoutVMT;
end;

function TReport.getComorbiditiesPercMacularHoleWithVMT: Real;
begin
  Result := Self.ComorbiditiesPercMacularHoleWithVMT;
end;

function TReport.getComorbiditiesPercNotRelevant: Real;
begin
  Result := Self.ComorbiditiesPercNotRelevant;
end;

function TReport.getComorbiditiesPercOther: Real;
begin
  Result := Self.ComorbiditiesPercOther;
end;

function TReport.getComorbiditiesPercProliferativeDiabeticRetinopathy: Real;
begin
  Result := Self.ComorbiditiesPercProliferativeDiabeticRetinopathy;
end;

function TReport.getComorbiditiesPercRetinalDetachment: Real;
begin
  Result := Self.ComorbiditiesPercRetinalDetachment;
end;

function TReport.getComorbiditiesPercRetinalVeinOcclusion: Real;
begin
  Result := Self.ComorbiditiesPercRetinalVeinOcclusion;
end;

function TReport.getComorbiditiesPercVitreomacularAdhesion: Real;
begin
  Result := Self.ComorbiditiesPercVitreomacularAdhesion
;
end;

function TReport.getComorbiditiesPercWetAMD: Real;
begin
  Result := Self.ComorbiditiesPercWetAMD;
end;

function TReport.getCompleteResolutionReasonForDischargeInjection: Real;
begin
  Result := Self.completeResolutionReasonForDischargeInjection;
end;

function TReport.getCompleteResolutionReasonForDischargeSurgery: Real;
begin
    Result := Self.completeResolutionReasonForDischargeSurgery;
end;

function TReport.getCompleteResolutionReasonForDischargeWW: Real;
begin
  Result := Self.completeResolutionReasonForDischargeWW;
end;

function TReport.getGP: Integer;
begin
  Result := Self.GP;
end;

function TReport.getMacularHoleClosureReasonForDischargeInjection: Real;
begin
  Result := Self.macularHoleClosureReasonForDischargeInjection;
end;

function TReport.getMacularHoleClosureReasonForDischargeSurgery: Real;
begin
  Result := Self.macularHoleClosureReasonForDischargeSurgery;
end;

function TReport.getMacularHoleClosureReasonForDischargeWW: Real;
begin
  Result := Self.macularHoleClosureReasonForDischargeWW;
end;

function TReport.getMaxTimeIntervalForDistortion: Real;
begin
  Result := Self.maxTimeIntervalForDistortion;
end;

function TReport.getMaxTimeIntervalForDistortionAndScotoma: Real;
begin
  Result := Self.maxTimeIntervalForDistortionAndScotoma;
end;

function TReport.getMaxTimeIntervalForMacularHoleSize: Real;
begin
    Result := Self.maxTimeIntervalForMacularHoleSize;
end;

function TReport.getMaxTimeIntervalForMeanIOP: Real;
begin
  Result := Self.maxTimeIntervalForMeanIOP;
end;

function TReport.getMaxTimeIntervalForMeanVisualAcuityDistance: Real;
begin
  Result := Self.maxTimeIntervalForMeanVisualAcuityDistance;
end;

function TReport.getMaxTimeIntervalForMeanVisualAcuityNear: Real;
begin
 Result := Self.maxTimeIntervalForMeanVisualAcuityNear;
end;

function TReport.getMaxTimeIntervalForOCTPresence: Real;
begin
  Result := Self.maxTimeIntervalForOCTPresence;
end;

function TReport.getMaxTimeIntervalForSecondaryCataractPresence: Real;
begin
    Result := Self.maxTimeIntervalForSecondaryCataractPresence;
end;

function TReport.getMaxTimeIntervalForVitreomacularAdhesion: Real;
begin
    Result := Self.MaxTimeIntervalForVitreomacularAdhesion;
end;

function TReport.getMeanChangeIOPInjection: Real;
begin
  Result := Self.meanChangeIOPInjection;
end;

function TReport.getMeanChangeIOPSurgery: Real;
begin
  Result := Self.meanChangeIOPSurgery;
end;

function TReport.getMeanChangeIOPWW: Real;
begin
  Result := Self.meanChangeIOPWW;
end;

function TReport.getMeanChangeVisualAcuityDistanceInjection: Real;
begin
  Result := Self.meanChangeVisualAcuityDistanceInjection;
end;

function TReport.getMeanChangeVisualAcuityDistanceSurgery: Real;
begin
  Result := Self.meanChangeVisualAcuityDistanceSurgery
end;

function TReport.getMeanChangeVisualAcuityDistanceWW: Real;
begin
  Result := Self.meanChangeVisualAcuityDistanceWW;
end;

function TReport.getMeanChangeVisualAcuityNearInjection: Real;
begin
  Result := Self.meanChangeVisualAcuityNearInjection
end;

function TReport.getMeanChangeVisualAcuityNearSurgery: Real;
begin
  Result := Self.meanChangeVisualAcuityNearSurgery;
end;

function TReport.getMeanChangeVisualAcuityNearWW: Real;
begin
  Result := Self.meanChangeVisualAcuityNearWW;
end;

function TReport.getMeanIOPInjectionSerie: Real;
begin
  Result := Self.meanIOPWWSerie;
end;

function TReport.getMeanIOPSurgerySerie: Real;
begin
  Result := Self.meanIOPSurgerySerie;
end;

function TReport.getMeanIOPWWSerie: Real;
begin
  Result := Self.meanIOPInjectionSerie;
end;

function TReport.getMedicalRetinalOphthalmologist: Integer;
begin
  Result := Self.MedicalRetinalOphthalmologist;
end;

function TReport.getMHwithoutVMTwithERM: Integer;
begin
  Result := Self.MHwithoutVMTwithERM;
end;

function TReport.getMHwithoutVMTwithoutERM: Integer;
begin
    Result := Self.MHwithoutVMTwithoutERM;
end;

function TReport.getNoOfFemalePatients: Integer;
begin
  Result := Self.currentFemalesNo;
end;

function TReport.getNoOfMalePatients: Integer;
begin
  Result := Self.currentMalesNo;
end;

function TReport.getNoOfNoSwitchedPatients: Real;
begin
  Result := Self.noOfNoSwitchedPatients;
end;

function TReport.getNoOfPatientBetween45And64: Integer;
begin
  Result := Self.noOfPatientBetween45And64;
end;

function TReport.getNoOfPatientOlderThan65: Integer;
begin
  Result := Self.noOfPatientOlderThan65;
end;

procedure TReport.runQryDelphi_MaxTimeIntervalForDistortion(
  anADOQuery: TADOQuery);
begin
  //helper method: get maximun interval time for Distortion and Scotoma
  anADOQuery := frmDBControlsForReport.qryDelphi_MaxTimeIntervalForDistortion;
  anADOQuery.Close;
  anADOQuery.Open;

  if not(anADOQuery.IsEmpty) then
    begin
      if anADOQuery.Recordset.Fields['MaxTimeIntervalForDistortion'].Value <> Null then
        Self.maxTimeIntervalForDistortion := anADOQuery.Recordset.Fields['MaxTimeIntervalForDistortion'].Value;
    end
  else
    Self.maxTimeIntervalForDistortion := 0;
end;

procedure TReport.runQryDelphi_MaxTimeIntervalForDistortionAndScotoma(
  anADOQuery: TADOQuery);
begin
  //helper method: get maximun interval time for Distortion and Scotoma
  anADOQuery := frmDBControlsForReport.qryDelphi_MaxTimeIntervalForDistortionAndScotoma;
  anADOQuery.Close;
  anADOQuery.Open;

  if not(anADOQuery.IsEmpty) then
    begin
      if anADOQuery.Recordset.Fields['MaxTimeIntervalForDistortionAndScotoma'].Value <> Null then
        Self.maxTimeIntervalForDistortionAndScotoma := anADOQuery.Recordset.Fields['MaxTimeIntervalForDistortionAndScotoma'].Value ;
    end
  else
    Self.maxTimeIntervalForDistortionAndScotoma := 0;
end;

procedure TReport.runQryDelphi_MaxTimeIntervalForMacularHoleSize(
  anADOQuery: TADOQuery);
begin
  //helper method: get maximun interval time for macular hole size
  anADOQuery := frmDBControlsForReport.qryDelphi_MaxTimeIntervalForMacularHoleSize;
  anADOQuery.Close;
  anADOQuery.Open;

  if not(anADOQuery.IsEmpty) then
    begin
      if anADOQuery.Recordset.Fields['MaxTimeIntervalForMacularHoleSize'].Value <> Null then
        Self.maxTimeIntervalForMacularHoleSize := anADOQuery.Recordset.Fields['MaxTimeIntervalForMacularHoleSize'].Value;
    end
  else
    Self.maxTimeIntervalForDistortionAndScotoma := 0;
end;

procedure TReport.runQryDelphi_MaxTimeIntervalForMeanIOP(anADOQuery: TADOQuery);
begin
  //helper method: get maximun interval time for mean IOP
  anADOQuery := frmDBControlsForReport.qryDelphi_MaxTimeIntervalForMeanIOP;
  anADOQuery.Close;
  anADOQuery.Open;

  if not(anADOQuery.IsEmpty) then
    begin
      if anADOQuery.Recordset.Fields['MaxTimeIntervalForMeanIOP'].Value <> Null then
        Self.maxTimeIntervalForMeanIOP := anADOQuery.Recordset.Fields['MaxTimeIntervalForMeanIOP'].Value;
    end
  else
    Self.maxTimeIntervalForMeanIOP := 0;
end;

procedure TReport.runQryDelphi_MaxTimeIntervalForOCTPresence(
  anADOQuery: TADOQuery);
begin
  //helper method: get maximun interval time for OCT presence
  anADOQuery := frmDBControlsForReport.qryDelphi_MaxTimeIntervalForOCTPresence;
  anADOQuery.Close;
  anADOQuery.Open;

  if not(anADOQuery.IsEmpty) then
    begin
      if anADOQuery.Recordset.Fields['MaxTimeIntervalFoOCTPresence'].Value <> Null then
        Self.maxTimeIntervalForOCTPresence := anADOQuery.Recordset.Fields['MaxTimeIntervalFoOCTPresence'].Value;
    end
  else
    Self.maxTimeIntervalForOCTPresence := 0;
end;

procedure TReport.runQryDelphi_MaxTimeIntervalForSecondaryCataractPresence(
  anADOQuery: TADOQuery);
begin
  //helper method: get maximun interval time for macular hole size
  anADOQuery := frmDBControlsForReport.qryDelphi_MaxTimeIntervalForSecondaryCataractPresence;
  anADOQuery.Close;
  anADOQuery.Open;

  if not(anADOQuery.IsEmpty) then
    begin
      if anADOQuery.Recordset.Fields['MaxTimeIntervalForSecondaryCataractPresence'].Value <> Null then
        Self.maxTimeIntervalForSecondaryCataractPresence := anADOQuery.Recordset.Fields['MaxTimeIntervalForSecondaryCataractPresence'].Value;
    end
  else
    Self.maxTimeIntervalForSecondaryCataractPresence := 0;
end;

procedure TReport.runQryDelphi_MaxTimeIntervalForVisualAcuityDistance(
  anADOQuery: TADOQuery);
begin
  //helper method: get maximun interval time for mean Visual Acuity Distance
  anADOQuery := frmDBControlsForReport.qryDelphi_MaxTimeIntervalForMeanVisualAcuityDistance;
  anADOQuery.Close;
  anADOQuery.Open;

  if not(anADOQuery.IsEmpty) then
    begin
      if anADOQuery.Recordset.Fields['MaxTimeIntervalForMeanVisualAcuityDistance'].Value <> Null then
        Self.maxTimeIntervalForMeanVisualAcuityDistance := anADOQuery.Recordset.Fields['MaxTimeIntervalForMeanVisualAcuityDistance'].Value;
    end
  else
    Self.maxTimeIntervalForMeanVisualAcuityDistance := 0;
end;

procedure TReport.runQryDelphi_MaxTimeIntervalForVisualAcuityNear(
  anADOQuery: TADOQuery);
begin
  //helper method: get maximun interval time for mean Visual Acuity Near
  anADOQuery := frmDBControlsForReport.qryDelphi_MaxTimeIntervalForMeanVisualAcuityNear;
  anADOQuery.Close;
  anADOQuery.Open;

  if not(anADOQuery.IsEmpty) then
    begin
      if anADOQuery.Recordset.Fields['MaxTimeIntervalForMeanVisualAcuityNear'].Value <> Null then
        Self.maxTimeIntervalForMeanVisualAcuityNear := anADOQuery.Recordset.Fields['MaxTimeIntervalForMeanVisualAcuityNear'].Value;
    end
  else
    Self.maxTimeIntervalForMeanVisualAcuityNear := 0;
end;

procedure TReport.runQryDelphi_MaxTimeIntervalForVitreomacularAdhesion(
  anADOQuery: TADOQuery);
begin
  //helper method: get maximun interval time for OCT presence
  anADOQuery := frmDBControlsForReport.qryDelphi_MaxTimeIntervalForVitreomacularAdhesion;
  anADOQuery.Close;
  anADOQuery.Open;

  if not(anADOQuery.IsEmpty) then
    begin
      if anADOQuery.Recordset.Fields['MaxTimeIntervalForVitreomacularAdhesion'].Value <> Null then
        Self.maxTimeIntervalForVitreomacularAdhesion := anADOQuery.Recordset.Fields['MaxTimeIntervalForVitreomacularAdhesion'].Value;
    end
  else
    Self.maxTimeIntervalForVitreomacularAdhesion := 0;
end;

procedure TReport.runQryReport_Age(anADOQuery: TADOQuery);
begin
  //helper method: count no of patients in each group age and record values in noOfPatientUnder45, noOfPatientOlderThan65 and noOfPatientBetween45And64
  anADOQuery := frmDBControlsForReport.qryReport_Age;
  anADOQuery.Close;
  anADOQuery.Open;

  if not(anADOQuery.IsEmpty) then
    begin
      while not anADOQuery.Recordset.EOF do
        begin
          // get values
          if anADOQuery.Recordset.Fields['CountOfpatientID'].Value <> Null then
            begin
              if LowerCase(anADOQuery.Recordset.Fields['ageRangeDesc'].Value) = '< 45' then
                noOfPatientUnder45 := anADOQuery.Recordset.Fields['CountOfpatientID'].Value
              else if LowerCase(anADOQuery.Recordset.Fields['ageRangeDesc'].Value) = '≥65' then
                noOfPatientOlderThan65 := anADOQuery.Recordset.Fields['CountOfpatientID'].Value
              else
                noOfPatientBetween45And64 := anADOQuery.Recordset.Fields['CountOfpatientID'].Value;
            end;

          anADOQuery.Recordset.MoveNext;
       end
    end;
end;

procedure TReport.runQryReport_AverageDurationBetweenVisits(
  anADOQuery: TADOQuery);
begin
   //helper method: count no of female and males and record value in currentMalesNo and  currentFemalesNo variables
  anADOQuery := frmDBControlsForReport.qryReport_AverageDurationBetweenVisits;
  anADOQuery.Close;
  anADOQuery.Open;

  if not(anADOQuery.IsEmpty) then
    begin
      while not anADOQuery.Recordset.EOF do
      begin
        // get values
        if anADOQuery.Recordset.Fields['AverageDurationBetweenVisits'].Value <> Null then
          begin
            if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'ocriplasmin intravitreal injection' then
              averageDurationBetweenVisitsInjection := anADOQuery.Recordset.Fields['AverageDurationBetweenVisits'].Value
            else if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'surgery' then
              averageDurationBetweenVisitsSurgery := anADOQuery.Recordset.Fields['AverageDurationBetweenVisits'].Value
            else
              averageDurationBetweenVisitsWW := anADOQuery.Recordset.Fields['AverageDurationBetweenVisits'].Value;
          end;

          anADOQuery.Recordset.MoveNext;
      end;
    end;
end;

procedure TReport.runQryReport_AverageNoOfVisitsBetweenInitialVisitAndDischarge(
  anADOQuery: TADOQuery);
begin
  //helper method: count no of female and males and record value in currentMalesNo and  currentFemalesNo variables
  anADOQuery := frmDBControlsForReport.qryReport_AverageNoOfVisitsBetweenInitialVisitAndDischarge;
  anADOQuery.Close;
  anADOQuery.Open;

  if not(anADOQuery.IsEmpty) then
    begin
      while not anADOQuery.Recordset.EOF do
      begin
        // get values
          if anADOQuery.Recordset.Fields['AverageNoOfVisitsByProposedInitialTreatment'].Value <> Null then
            begin
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'ocriplasmin intravitreal injection' then
                ocriplasminIntravitrealInjectionAverageNoAtDischargePoint := anADOQuery.Recordset.Fields['AverageNoOfVisitsByProposedInitialTreatment'].Value
              else if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'surgery' then
                surgeryAverageNoAtDischargePoint := anADOQuery.Recordset.Fields['AverageNoOfVisitsByProposedInitialTreatment'].Value
              else
                watchfulWaitingAverageNoAtDischargePoint := anADOQuery.Recordset.Fields['AverageNoOfVisitsByProposedInitialTreatment'].Value;
            end;

          anADOQuery.Recordset.MoveNext;
      end;
    end;
end;

procedure TReport.runQryReport_averageTimeBetweeninitialVisitAndDischarge(
  anADOQuery: TADOQuery);
begin
  //helper method: get average time between initial visit and discharge
  anADOQuery := frmDBControlsForReport.qryReport_averageTimeBetweeninitialVisitAndDischarge;
  anADOQuery.Close;
  anADOQuery.Open;

  if not(anADOQuery.IsEmpty) then
    begin
      while not anADOQuery.Recordset.EOF do
      begin
        // get values
          if anADOQuery.Recordset.Fields['AverageTimeBetweenInitialAndDischargeVisit'].Value <> Null then
            begin
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'ocriplasmin intravitreal injection' then
                self.averageTimeBetweenInitialAndDischargeVisitInjection := anADOQuery.Recordset.Fields['AverageTimeBetweenInitialAndDischargeVisit'].Value
              else if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'surgery' then
                self.averageTimeBetweenInitialAndDischargeVisitSurgery := anADOQuery.Recordset.Fields['AverageTimeBetweenInitialAndDischargeVisit'].Value
              else
                self.averageTimeBetweenInitialAndDischargeVisitWW := anADOQuery.Recordset.Fields['AverageTimeBetweenInitialAndDischargeVisit'].Value;
            end;

          anADOQuery.Recordset.MoveNext;
      end;
    end;
end;

procedure TReport.runQryReport_averageTimeBetweenInitialvisitAndTreatment(
  anADOQuery: TADOQuery);
begin
  //helper method: get average time between initial visit and discharge
  anADOQuery := frmDBControlsForReport.qryReport_averageTimeBetweenInitialvisitAndTreatment;
  anADOQuery.Close;
  anADOQuery.Open;

  if not(anADOQuery.IsEmpty) then
    begin
      while not anADOQuery.Recordset.EOF do
      begin
        // get values
        if anADOQuery.Recordset.Fields['AverageDurationBetweenFirstVisitAndTreatment'].Value <> Null then
          begin
            if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'ocriplasmin intravitreal injection' then
              self.averageTimeBetweenInitialVisitAndTreatmentInjection := anADOQuery.Recordset.Fields['AverageDurationBetweenFirstVisitAndTreatment'].Value
            else if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'surgery' then
              self.averageTimeBetweenInitialVisitAndTreatmentSurgery := anADOQuery.Recordset.Fields['AverageDurationBetweenFirstVisitAndTreatment'].Value
            else
              self.averageTimeBetweenInitialVisitAndTreatmentWW := anADOQuery.Recordset.Fields['AverageDurationBetweenFirstVisitAndTreatment'].Value;
          end;

          anADOQuery.Recordset.MoveNext;
      end;
    end;
end;

procedure TReport.runQryReport_ChangesToTreatment(anADOQuery: TADOQuery);
begin
  //helper method: proportion of patients that change treatment from WW to surgery or injections
  anADOQuery := frmDBControlsForReport.qryReport_ChangesToTreatment;
  anADOQuery.Close;
  try
    anADOQuery.Open;

    if not(anADOQuery.IsEmpty) then
      begin
        // get values
        if anADOQuery.Recordset.Fields['TotalNoOfPAtients'].Value <> 0 then
          begin
            if anADOQuery.Recordset.Fields['ProportionOfPatientsMovingFromWWToSurgeryOrInjection'].Value <> Null then
              begin
                Self.noOfSwitchedPatients := StrToFloat(FormatFloat('0.00', anADOQuery.Recordset.Fields['ProportionOfPatientsMovingFromWWToSurgeryOrInjection'].Value));
                Self.noOfNoSwitchedPatients := 100 - Self.noOfSwitchedPatients;
              end;
          end;
      end;
  except
    on E : Exception do
      if E.ClassName = 'EOleException' then
        begin
          Self.noOfSwitchedPatients := 0;
          Self.noOfNoSwitchedPatients := 0;
        end;
  end;
end;

procedure TReport.runQryReport_ClinicalMeasures_DistortionAndScotomaPresenceOverTime(
  anADOQuery: TADOQuery);
var
 maxIntervalTime,i : Integer;
 IntervalTime: Integer;
 ProposedTreatment, currentLine: string;
 WWArray: array of Real;
 SurgeryArray: array of Real;
 InjectionArray: array of Real;
begin
  //helper method: get proportion of patients with Distortion or Scotoma over time
  runQryDelphi_MaxTimeIntervalForDistortionAndScotoma(frmDBControlsForReport.qryDelphi_MaxTimeIntervalForDistortionAndScotoma);
  maxIntervalTime := round(self.getMaxTimeIntervalForDistortionAndScotoma);

  SetLength(WWArray, maxIntervalTime + 1);
  SetLength(SurgeryArray, maxIntervalTime + 1);
  SetLength(InjectionArray, maxIntervalTime + 1);

  anADOQuery := frmDBControlsForReport.qryReport_ClinicalMeasures_DistortionAndScotomaPresenceOverTime;
  anADOQuery.Close;
  anADOQuery.Open;

  frmDBControlsForReport.ProportionOfPatientWithDistortionAndScotomaMemo.Lines.Clear;

  if not(anADOQuery.IsEmpty) then
    begin
      while not anADOQuery.Recordset.EOF do
        begin
          if anADOQuery.Recordset.Fields['ProportionOfPatientsByTimeInterval'].Value <> Null then
            begin
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'watchful waiting / no treatment' then
                WWArray[Integer(anADOQuery.Recordset.Fields['IntervalFromFirstVisitInMonths'].Value)] := anADOQuery.Recordset.Fields['ProportionOfPatientsByTimeInterval'].Value;
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'surgery' then
                SurgeryArray[Integer(anADOQuery.Recordset.Fields['IntervalFromFirstVisitInMonths'].Value)] := anADOQuery.Recordset.Fields['ProportionOfPatientsByTimeInterval'].Value;
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'ocriplasmin intravitreal injection' then
                InjectionArray[Integer(anADOQuery.Recordset.Fields['IntervalFromFirstVisitInMonths'].Value)] := anADOQuery.Recordset.Fields['ProportionOfPatientsByTimeInterval'].Value;
            end;

          anADOQuery.Recordset.MoveNext;
        end;
    end;

  for i := 0 to High(WWArray) do
    begin
      currentLine := IntToStr(i) + ';';
      currentLine := currentLine + FormatFloat('0.00',WWArray[i]) + ';';
      currentLine := currentLine + FormatFloat('0.00',InjectionArray[i]) + ';';
      currentLine := currentLine + FormatFloat('0.00',SurgeryArray[i]);

      frmDBControlsForReport.ProportionOfPatientWithDistortionAndScotomaMemo.Lines.Add(currentLine);
    end;
end;

procedure TReport.runQryReport_ClinicalMeasures_DistortionPresenceOverTime(
  anADOQuery: TADOQuery);
var
 maxIntervalTime,i : Integer;
 IntervalTime: Integer;
 ProposedTreatment, currentLine: string;
 WWArray: array of Real;
 SurgeryArray: array of Real;
 InjectionArray: array of Real;
begin
  //helper method: get proportion of patients with Distortion or Scotoma over time
  runQryDelphi_MaxTimeIntervalForDistortion(frmDBControlsForReport.qryDelphi_MaxTimeIntervalForDistortion);
  maxIntervalTime := round(self.getMaxTimeIntervalForDistortion);

  SetLength(WWArray, maxIntervalTime + 1);
  SetLength(SurgeryArray, maxIntervalTime + 1);
  SetLength(InjectionArray, maxIntervalTime + 1);

  anADOQuery := frmDBControlsForReport.qryReport_ClinicalMeasures_DistortionPresenceOverTime;
  anADOQuery.Close;
  anADOQuery.Open;

  frmDBControlsForReport.ProportionOfPatientWithDistortionMemo.Lines.Clear;

  if not(anADOQuery.IsEmpty) then
    begin
      while not anADOQuery.Recordset.EOF do
        begin
          if anADOQuery.Recordset.Fields['ProportionOfPatientsByTimeInterval'].Value <> Null then
            begin
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'watchful waiting / no treatment' then
                WWArray[Integer(anADOQuery.Recordset.Fields['IntervalFromFirstVisitInMonths'].Value)] := anADOQuery.Recordset.Fields['ProportionOfPatientsByTimeInterval'].Value;
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'surgery' then
                SurgeryArray[Integer(anADOQuery.Recordset.Fields['IntervalFromFirstVisitInMonths'].Value)] := anADOQuery.Recordset.Fields['ProportionOfPatientsByTimeInterval'].Value;
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'ocriplasmin intravitreal injection' then
                InjectionArray[Integer(anADOQuery.Recordset.Fields['IntervalFromFirstVisitInMonths'].Value)] := anADOQuery.Recordset.Fields['ProportionOfPatientsByTimeInterval'].Value;
            end;

          anADOQuery.Recordset.MoveNext;
        end;
    end;

  for i := 0 to High(WWArray) do
    begin
      currentLine := IntToStr(i) + ';';
      currentLine := currentLine + FormatFloat('0.00',WWArray[i]) + ';';
      currentLine := currentLine + FormatFloat('0.00',InjectionArray[i]) + ';';
      currentLine := currentLine + FormatFloat('0.00',SurgeryArray[i]);

      frmDBControlsForReport.ProportionOfPatientWithDistortionMemo.Lines.Add(currentLine);
    end;
end;

procedure TReport.runQryReport_ClinicalMeasures_MacularHoleSize(
  anADOQuery: TADOQuery);
var
 maxIntervalTime,i : Integer;
 IntervalTime: Integer;
 ProposedTreatment, currentLine: string;
 WWArray: array of Real;
 SurgeryArray: array of Real;
 InjectionArray: array of Real;
begin
  //helper method: get proportion of patients with OCT presence over time
  runQryDelphi_MaxTimeIntervalForMacularHoleSize(frmDBControlsForReport.qryDelphi_MaxTimeIntervalForMacularHoleSize);
  maxIntervalTime := round(self.getMaxTimeIntervalForMacularHoleSize);

  SetLength(WWArray, maxIntervalTime + 1);
  SetLength(SurgeryArray, maxIntervalTime + 1);
  SetLength(InjectionArray, maxIntervalTime + 1);

  anADOQuery := frmDBControlsForReport.qryReport_ClinicalMeasures_MacularHoleSize;
  anADOQuery.Close;
  anADOQuery.Open;

  frmDBControlsForReport.meanMacularHoleSizeMemo.Lines.Clear;

  if not(anADOQuery.IsEmpty) then
    begin
      while not anADOQuery.Recordset.EOF do
        begin
          if anADOQuery.Recordset.Fields['meanMacularHoleSizeOverTime'].Value <> Null then
            begin
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'watchful waiting / no treatment' then
                WWArray[Integer(anADOQuery.Recordset.Fields['IntervalFromFirstVisitInMonths'].Value)] := anADOQuery.Recordset.Fields['meanMacularHoleSizeOverTime'].Value;
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'surgery' then
                SurgeryArray[Integer(anADOQuery.Recordset.Fields['IntervalFromFirstVisitInMonths'].Value)] := anADOQuery.Recordset.Fields['meanMacularHoleSizeOverTime'].Value;
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'ocriplasmin intravitreal injection' then
                InjectionArray[Integer(anADOQuery.Recordset.Fields['IntervalFromFirstVisitInMonths'].Value)] := anADOQuery.Recordset.Fields['meanMacularHoleSizeOverTime'].Value;
            end;

          anADOQuery.Recordset.MoveNext;
        end;
    end;

  for i := 0 to High(WWArray) do
    begin
      currentLine := IntToStr(i) + ';';
      currentLine := currentLine + FormatFloat('0.00',WWArray[i]) + ';';
      currentLine := currentLine + FormatFloat('0.00',InjectionArray[i]) + ';';
      currentLine := currentLine + FormatFloat('0.00',SurgeryArray[i]);

      frmDBControlsForReport.meanMacularHoleSizeMemo.Lines.Add(currentLine);
    end;
end;

procedure TReport.runQryReport_ClinicalMeasures_MeanChangeInIntraocularPressure(
  anADOQuery: TADOQuery);
begin
  //helper method: maen change in intraocular pressure by ww, surgery and ocular injection
  anADOQuery := frmDBControlsForReport.qryReport_ClinicalMeasures_MeanChangeInIntraocularPressure;
  anADOQuery.Close;
  anADOQuery.Open;

  if not(anADOQuery.IsEmpty) then
    begin
      while not anADOQuery.Recordset.EOF do
      begin
        // get values
          if anADOQuery.Recordset.Fields['MeanChangeInIOP'].Value <> Null then
            begin
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'ocriplasmin intravitreal injection' then
                meanChangeIOPInjection:= anADOQuery.Recordset.Fields['MeanChangeInIOP'].Value
              else if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'surgery' then
                meanChangeIOPSurgery:= anADOQuery.Recordset.Fields['MeanChangeInIOP'].Value
              else
                meanChangeIOPWW := anADOQuery.Recordset.Fields['MeanChangeInIOP'].Value;
            end;

          anADOQuery.Recordset.MoveNext;
      end;
    end;
end;

procedure TReport.runQryReport_ClinicalMeasures_MeanChangeInVisualAcuityDistance(
  anADOQuery: TADOQuery);
begin
  //helper method: maen change in visual acuity distance by ww, surgery and ocular injection
  anADOQuery := frmDBControlsForReport.qryReport_ClinicalMeasures_MeanChangeInVisualAcuityDistance;
  anADOQuery.Close;
  anADOQuery.Open;

  if not(anADOQuery.IsEmpty) then
    begin
      while not anADOQuery.Recordset.EOF do
      begin
        // get values
          if anADOQuery.Recordset.Fields['MeanChangeInVisualAcuityDistance'].Value <> Null then
            begin
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'ocriplasmin intravitreal injection' then
                meanChangeVisualAcuityDistanceInjection:= anADOQuery.Recordset.Fields['MeanChangeInVisualAcuityDistance'].Value
              else if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'surgery' then
                meanChangeVisualAcuityDistanceSurgery:= anADOQuery.Recordset.Fields['MeanChangeInVisualAcuityDistance'].Value
              else
                meanChangeVisualAcuityDistanceWW := anADOQuery.Recordset.Fields['MeanChangeInVisualAcuityDistance'].Value;
            end;

          anADOQuery.Recordset.MoveNext;
      end;
    end;
end;

procedure TReport.runQryReport_ClinicalMeasures_MeanChangeInVisualAcuityNear(
  anADOQuery: TADOQuery);
begin
  //helper method: maen change in visual acuity distance by ww, surgery and ocular injection
  anADOQuery := frmDBControlsForReport.qryReport_ClinicalMeasures_MeanChangeInVisualAcuityNear;
  anADOQuery.Close;
  anADOQuery.Open;

  if not(anADOQuery.IsEmpty) then
    begin
      while not anADOQuery.Recordset.EOF do
      begin
        // get values
          if anADOQuery.Recordset.Fields['MeanChangeInVisualAcuityNear'].Value <> Null then
            begin
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'ocriplasmin intravitreal injection' then
                meanChangeVisualAcuityNearInjection := anADOQuery.Recordset.Fields['MeanChangeInVisualAcuityNear'].Value
              else if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'surgery' then
                meanChangeVisualAcuityNearSurgery := anADOQuery.Recordset.Fields['MeanChangeInVisualAcuityNear'].Value
              else
                meanChangeVisualAcuityNearWW := anADOQuery.Recordset.Fields['MeanChangeInVisualAcuityNear'].Value;
            end;

          anADOQuery.Recordset.MoveNext;
      end;
    end;
end;

procedure TReport.runQryReport_ClinicalMeasures_MeanIntraocularPressure(
  anADOQuery: TADOQuery);
var
 maxIntervalTime,i : Integer;
 IntervalTime: Integer;
 ProposedTreatment, currentLine: string;
 WWArray: array of Real;
 SurgeryArray: array of Real;
 InjectionArray: array of Real;
begin
  //helper method: get mean of Intraocular pressure over time
  runQryDelphi_MaxTimeIntervalForMeanIOP(frmDBControlsForReport.qryDelphi_MaxTimeIntervalForMeanIOP);
  maxIntervalTime := round(self.getMaxTimeIntervalForMeanIOP);

  SetLength(WWArray, maxIntervalTime + 1);
  SetLength(SurgeryArray, maxIntervalTime + 1);
  SetLength(InjectionArray, maxIntervalTime + 1);

  anADOQuery := frmDBControlsForReport.qryReport_ClinicalMeasures_MeanIntraocularPressure;
  anADOQuery.Close;
  anADOQuery.Open;

  frmDBControlsForReport.meanIOPMemo.Lines.Clear;

  if not(anADOQuery.IsEmpty) then
    begin
      while not anADOQuery.Recordset.EOF do
        begin
          if anADOQuery.Recordset.Fields['meanIOPOverTime'].Value <> Null then
            begin
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'watchful waiting / no treatment' then
                WWArray[Integer(anADOQuery.Recordset.Fields['IntervalFromFirstVisitInMonths'].Value)] := anADOQuery.Recordset.Fields['meanIOPOverTime'].Value;
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'surgery' then
                SurgeryArray[Integer(anADOQuery.Recordset.Fields['IntervalFromFirstVisitInMonths'].Value)] := anADOQuery.Recordset.Fields['meanIOPOverTime'].Value;
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'ocriplasmin intravitreal injection' then
                InjectionArray[Integer(anADOQuery.Recordset.Fields['IntervalFromFirstVisitInMonths'].Value)] := anADOQuery.Recordset.Fields['meanIOPOverTime'].Value;
            end;

          anADOQuery.Recordset.MoveNext;
        end;
    end;

  for i := 0 to High(WWArray) do
    begin
      currentLine := IntToStr(i) + ';';
      currentLine := currentLine + FormatFloat('0.00',WWArray[i]) + ';';
      currentLine := currentLine + FormatFloat('0.00',InjectionArray[i]) + ';';
      currentLine := currentLine + FormatFloat('0.00',SurgeryArray[i]);

      frmDBControlsForReport.meanIOPMemo.Lines.Add(currentLine);
    end;

//  showmessage(frmDBControlsForReport.meanIOPMemo.text);
end;

procedure TReport.runQryReport_ClinicalMeasures_MeanVisualAcuityDistance(
  anADOQuery: TADOQuery);
var
 maxIntervalTime,i : Integer;
 IntervalTime: Integer;
 ProposedTreatment, currentLine: string;
 WWArray: array of Real;
 SurgeryArray: array of Real;
 InjectionArray: array of Real;
begin
  //helper method: get mean of Intraocular pressure over time
  runQryDelphi_MaxTimeIntervalForVisualAcuityDistance(frmDBControlsForReport.qryDelphi_MaxTimeIntervalForMeanVisualAcuityDistance);
  maxIntervalTime := round(self.getMaxTimeIntervalForMeanVisualAcuityDistance);

  SetLength(WWArray, maxIntervalTime + 1);
  SetLength(SurgeryArray, maxIntervalTime + 1);
  SetLength(InjectionArray, maxIntervalTime + 1);

  anADOQuery := frmDBControlsForReport.qryReport_ClinicalMeasures_MeanVisualAcuityDistance;
  anADOQuery.Close;
  anADOQuery.Open;

  frmDBControlsForReport.meanVisualAcuityDistanceMemo.Lines.Clear;

  if not(anADOQuery.IsEmpty) then
    begin
      while not anADOQuery.Recordset.EOF do
        begin
          if anADOQuery.Recordset.Fields['meanVisuaAcuityOverTime'].Value <> Null then
            begin
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'watchful waiting / no treatment' then
                WWArray[Integer(anADOQuery.Recordset.Fields['IntervalFromFirstVisitInMonths'].Value)] := anADOQuery.Recordset.Fields['meanVisuaAcuityOverTime'].Value;
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'surgery' then
                SurgeryArray[Integer(anADOQuery.Recordset.Fields['IntervalFromFirstVisitInMonths'].Value)] := anADOQuery.Recordset.Fields['meanVisuaAcuityOverTime'].Value;
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'ocriplasmin intravitreal injection' then
                InjectionArray[Integer(anADOQuery.Recordset.Fields['IntervalFromFirstVisitInMonths'].Value)] := anADOQuery.Recordset.Fields['meanVisuaAcuityOverTime'].Value;
            end;

          anADOQuery.Recordset.MoveNext;
        end;
    end;

  for i := 0 to High(WWArray) do
    begin
      currentLine := IntToStr(i) + ';';
      currentLine := currentLine + FormatFloat('0.00',WWArray[i]) + ';';
      currentLine := currentLine + FormatFloat('0.00',InjectionArray[i]) + ';';
      currentLine := currentLine + FormatFloat('0.00',SurgeryArray[i]);

      frmDBControlsForReport.meanVisualAcuityDistanceMemo.Lines.Add(currentLine);
    end;
end;

procedure TReport.runQryReport_ClinicalMeasures_MeanVisualAcuityNear(
  anADOQuery: TADOQuery);
var
 maxIntervalTime,i : Integer;
 IntervalTime: Integer;
 ProposedTreatment, currentLine: string;
 WWArray: array of Real;
 SurgeryArray: array of Real;
 InjectionArray: array of Real;
begin
  //helper method: get mean of visual acuity near over time
  runQryDelphi_MaxTimeIntervalForVisualAcuityNear(frmDBControlsForReport.qryDelphi_MaxTimeIntervalForMeanVisualAcuityNear);
  maxIntervalTime := round(self.getMaxTimeIntervalForMeanVisualAcuityNear);

  SetLength(WWArray, maxIntervalTime + 1);
  SetLength(SurgeryArray, maxIntervalTime + 1);
  SetLength(InjectionArray, maxIntervalTime + 1);

  anADOQuery := frmDBControlsForReport.qryReport_ClinicalMeasures_MeanVisualAcuityNear;
  anADOQuery.Close;
  anADOQuery.Open;

  frmDBControlsForReport.meanVisualAcuityNearMemo.Lines.Clear;

  if not(anADOQuery.IsEmpty) then
    begin
      while not anADOQuery.Recordset.EOF do
        begin
          if anADOQuery.Recordset.Fields['meanVisuaAcuityNearOverTime'].Value <> Null then
            begin
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'watchful waiting / no treatment' then
                WWArray[Integer(anADOQuery.Recordset.Fields['IntervalFromFirstVisitInMonths'].Value)] := anADOQuery.Recordset.Fields['meanVisuaAcuityNearOverTime'].Value;
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'surgery' then
                SurgeryArray[Integer(anADOQuery.Recordset.Fields['IntervalFromFirstVisitInMonths'].Value)] := anADOQuery.Recordset.Fields['meanVisuaAcuityNearOverTime'].Value;
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'ocriplasmin intravitreal injection' then
                InjectionArray[Integer(anADOQuery.Recordset.Fields['IntervalFromFirstVisitInMonths'].Value)] := anADOQuery.Recordset.Fields['meanVisuaAcuityNearOverTime'].Value;
            end;

          anADOQuery.Recordset.MoveNext;
        end;
    end;

  for i := 0 to High(WWArray) do
    begin
      currentLine := IntToStr(i) + ';';
      currentLine := currentLine + FormatFloat('0.00',WWArray[i]) + ';';
      currentLine := currentLine + FormatFloat('0.00',InjectionArray[i]) + ';';
      currentLine := currentLine + FormatFloat('0.00',SurgeryArray[i]);

      frmDBControlsForReport.meanVisualAcuityNearMemo.Lines.Add(currentLine);
    end;
end;

procedure TReport.runQryReport_ClinicalMeasures_MeanVitreomacularAdhesion(
  anADOQuery: TADOQuery);
var
 maxIntervalTime,i : Integer;
 IntervalTime: Integer;
 ProposedTreatment, currentLine: string;
 WWArray: array of Real;
 SurgeryArray: array of Real;
 InjectionArray: array of Real;
begin
  //helper method: get proportion of patients with OCT presence over time
  runQryDelphi_MaxTimeIntervalForVitreomacularAdhesion(frmDBControlsForReport.qryDelphi_MaxTimeIntervalForVitreomacularAdhesion);
  maxIntervalTime := round(self.getMaxTimeIntervalForVitreomacularAdhesion);

  SetLength(WWArray, maxIntervalTime + 1);
  SetLength(SurgeryArray, maxIntervalTime + 1);
  SetLength(InjectionArray, maxIntervalTime + 1);

  anADOQuery := frmDBControlsForReport.qryReport_ClinicalMeasures_MeanVitreomacularAdhesion;
  anADOQuery.Close;
  anADOQuery.Open;

  frmDBControlsForReport.AverageVitreomacularAdhesionMemo.Lines.Clear;

  if not(anADOQuery.IsEmpty) then
    begin
      while not anADOQuery.Recordset.EOF do
        begin
          if anADOQuery.Recordset.Fields['meanVMAOverTime'].Value <> Null then
            begin
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'watchful waiting / no treatment' then
                WWArray[Integer(anADOQuery.Recordset.Fields['IntervalFromFirstVisitInMonths'].Value)] := anADOQuery.Recordset.Fields['meanVMAOverTime'].Value;
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'surgery' then
                SurgeryArray[Integer(anADOQuery.Recordset.Fields['IntervalFromFirstVisitInMonths'].Value)] := anADOQuery.Recordset.Fields['meanVMAOverTime'].Value;
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'ocriplasmin intravitreal injection' then
                InjectionArray[Integer(anADOQuery.Recordset.Fields['IntervalFromFirstVisitInMonths'].Value)] := anADOQuery.Recordset.Fields['meanVMAOverTime'].Value;
            end;

          anADOQuery.Recordset.MoveNext;
        end;
    end;

  for i := 0 to High(WWArray) do
    begin
      currentLine := IntToStr(i) + ';';
      currentLine := currentLine + FormatFloat('0.00',WWArray[i]) + ';';
      currentLine := currentLine + FormatFloat('0.00',InjectionArray[i]) + ';';
      currentLine := currentLine + FormatFloat('0.00',SurgeryArray[i]);

      frmDBControlsForReport.AverageVitreomacularAdhesionMemo.Lines.Add(currentLine);
    end;
end;

procedure TReport.runQryReport_ClinicalMeasures_OCTPresenceOverTime(
  anADOQuery: TADOQuery);
var
 maxIntervalTime,i : Integer;
 IntervalTime: Integer;
 ProposedTreatment, currentLine: string;
 WWArray: array of Real;
 SurgeryArray: array of Real;
 InjectionArray: array of Real;
begin
  //helper method: get proportion of patients with OCT presence over time
  runQryDelphi_MaxTimeIntervalForOCTPresence(frmDBControlsForReport.qryDelphi_MaxTimeIntervalForOCTPresence);
  maxIntervalTime := round(self.getMaxTimeIntervalForOCTPresence);

  SetLength(WWArray, maxIntervalTime + 1);
  SetLength(SurgeryArray, maxIntervalTime + 1);
  SetLength(InjectionArray, maxIntervalTime + 1);

  anADOQuery := frmDBControlsForReport.qryReport_ClinicalMeasures_OCTPresenceOverTime;
  anADOQuery.Close;
  anADOQuery.Open;

  frmDBControlsForReport.ProportionOfPatientWithOCTMemo.Lines.Clear;

  if not(anADOQuery.IsEmpty) then
    begin
      while not anADOQuery.Recordset.EOF do
        begin
          if anADOQuery.Recordset.Fields['ProportionOfPatientsByTimeInterval'].Value <> Null then
            begin
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'watchful waiting / no treatment' then
                WWArray[Integer(anADOQuery.Recordset.Fields['IntervalFromFirstVisitInMonths'].Value)] := anADOQuery.Recordset.Fields['ProportionOfPatientsByTimeInterval'].Value;
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'surgery' then
                SurgeryArray[Integer(anADOQuery.Recordset.Fields['IntervalFromFirstVisitInMonths'].Value)] := anADOQuery.Recordset.Fields['ProportionOfPatientsByTimeInterval'].Value;
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'ocriplasmin intravitreal injection' then
                InjectionArray[Integer(anADOQuery.Recordset.Fields['IntervalFromFirstVisitInMonths'].Value)] := anADOQuery.Recordset.Fields['ProportionOfPatientsByTimeInterval'].Value;
            end;

          anADOQuery.Recordset.MoveNext;
        end;
    end;

  for i := 0 to High(WWArray) do
    begin
      currentLine := IntToStr(i) + ';';
      currentLine := currentLine + FormatFloat('0.00',WWArray[i]) + ';';
      currentLine := currentLine + FormatFloat('0.00',InjectionArray[i]) + ';';
      currentLine := currentLine + FormatFloat('0.00',SurgeryArray[i]);

      frmDBControlsForReport.ProportionOfPatientWithOCTMemo.Lines.Add(currentLine);
    end;
end;

procedure TReport.runQryReport_ClinicalMeasures_SecondaryCataractPresenceOverTime(
  anADOQuery: TADOQuery);
var
 maxIntervalTime,i : Integer;
 IntervalTime: Integer;
 ProposedTreatment, currentLine: string;
 WWArray: array of Real;
 SurgeryArray: array of Real;
 InjectionArray: array of Real;
begin
  //helper method: get secondary cataract presence over time
  runQryDelphi_MaxTimeIntervalForSecondaryCataractPresence(frmDBControlsForReport.qryDelphi_MaxTimeIntervalForSecondaryCataractPresence);
  maxIntervalTime := round(self.getMaxTimeIntervalForSecondaryCataractPresence);

  SetLength(WWArray, maxIntervalTime + 1);
  SetLength(SurgeryArray, maxIntervalTime + 1);
  SetLength(InjectionArray, maxIntervalTime + 1);

  anADOQuery := frmDBControlsForReport.qryReport_ClinicalMeasures_SecondaryCataractPresenceOverTime;
  anADOQuery.Close;
  anADOQuery.Open;

  frmDBControlsForReport.SecondaryCataractPresenceMemo.Lines.Clear;

  if not(anADOQuery.IsEmpty) then
    begin
      while not anADOQuery.Recordset.EOF do
        begin
          if anADOQuery.Recordset.Fields['ProportionOfPatientsByTimeInterval'].Value <> Null then
            begin
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'watchful waiting / no treatment' then
                WWArray[Integer(anADOQuery.Recordset.Fields['IntervalFromFirstVisitInMonths'].Value)] := anADOQuery.Recordset.Fields['ProportionOfPatientsByTimeInterval'].Value;
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'surgery' then
                SurgeryArray[Integer(anADOQuery.Recordset.Fields['IntervalFromFirstVisitInMonths'].Value)] := anADOQuery.Recordset.Fields['ProportionOfPatientsByTimeInterval'].Value;
              if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'ocriplasmin intravitreal injection' then
                InjectionArray[Integer(anADOQuery.Recordset.Fields['IntervalFromFirstVisitInMonths'].Value)] := anADOQuery.Recordset.Fields['ProportionOfPatientsByTimeInterval'].Value;
            end;

          anADOQuery.Recordset.MoveNext;
        end;
    end;

  for i := 0 to High(WWArray) do
    begin
      currentLine := IntToStr(i) + ';';
      currentLine := currentLine + FormatFloat('0.00',WWArray[i]) + ';';
      currentLine := currentLine + FormatFloat('0.00',InjectionArray[i]) + ';';
      currentLine := currentLine + FormatFloat('0.00',SurgeryArray[i]);

      frmDBControlsForReport.SecondaryCataractPresenceMemo.Lines.Add(currentLine);
    end;
end;

procedure TReport.runQryReport_ComorbiditiesPerc(anADOQuery: TADOQuery);
begin
  //helper method: get comorbidities percentages
  anADOQuery := frmDBControlsForReport.qryReport_ComorbiditiesPerc;
  anADOQuery.Close;
  anADOQuery.Open;
  anADOQuery.First;

  // get values
  if not(anADOQuery.IsEmpty) then
    begin
      if anADOQuery.Recordset.Fields['VitreomacularAdhesion'].Value <> Null then
        Self.ComorbiditiesPercVitreomacularAdhesion := anADOQuery.Recordset.Fields['VitreomacularAdhesion'].Value;
      if anADOQuery.Recordset.Fields['VitreomacularTraction'].Value <> Null then
        Self.ComorbiditiesPercTraction := anADOQuery.Recordset.Fields['VitreomacularTraction'].Value;
      if anADOQuery.Recordset.Fields['MacularHoleWithVMT'].Value <> Null then
        Self.ComorbiditiesPercMacularHoleWithVMT := anADOQuery.Recordset.Fields['MacularHoleWithVMT'].Value;
      if anADOQuery.Recordset.Fields['MacularHoleWithoutVMT'].Value <> Null then
        Self.ComorbiditiesPercMacularHoleWithoutVMT := anADOQuery.Recordset.Fields['MacularHoleWithoutVMT'].Value;
      if anADOQuery.Recordset.Fields['WetAMD'].Value <> Null then
        Self.ComorbiditiesPercWetAMD := anADOQuery.Recordset.Fields['WetAMD'].Value;
      if anADOQuery.Recordset.Fields['DryAMD'].Value <> Null then
        Self.ComorbiditiesPercDryAMD := anADOQuery.Recordset.Fields['DryAMD'].Value;
      if anADOQuery.Recordset.Fields['DME'].Value <> Null then
        Self.ComorbiditiesPercDME := anADOQuery.Recordset.Fields['DME'].Value;
      if anADOQuery.Recordset.Fields['ProliferativeDiabeticRetinopathy'].Value <> Null then
        Self.ComorbiditiesPercProliferativeDiabeticRetinopathy := anADOQuery.Recordset.Fields['ProliferativeDiabeticRetinopathy'].Value;
      if anADOQuery.Recordset.Fields['Cataract'].Value <> Null then
        Self.ComorbiditiesPercCataract := anADOQuery.Recordset.Fields['Cataract'].Value;
      if anADOQuery.Recordset.Fields['RetinalVeinOcclusion'].Value <> Null then
        Self.ComorbiditiesPercRetinalVeinOcclusion := anADOQuery.Recordset.Fields['RetinalVeinOcclusion'].Value;
      if anADOQuery.Recordset.Fields['RetinalDetachment'].Value <> Null then
        Self.ComorbiditiesPercRetinalDetachment := anADOQuery.Recordset.Fields['RetinalDetachment'].Value;
      if anADOQuery.Recordset.Fields['HighMyopia'].Value <> Null then
        Self.ComorbiditiesPercHighMyopia := anADOQuery.Recordset.Fields['HighMyopia'].Value;
      if anADOQuery.Recordset.Fields['Other'].Value <> Null then
        Self.ComorbiditiesPercOther := anADOQuery.Recordset.Fields['Other'].Value;
      if anADOQuery.Recordset.Fields['NotRelevant'].Value <> Null then
        Self.ComorbiditiesPercNotRelevant := anADOQuery.Recordset.Fields['NotRelevant'].Value;
    end;
end;

procedure TReport.runQryReport_Gender(anADOQuery: TADOQuery);
begin
  //helper method: count no of female and males and record value in currentMalesNo and  currentFemalesNo variables
  anADOQuery := frmDBControlsForReport.qryReport_Gender;
  anADOQuery.Close;
  anADOQuery.Open;

  if not(anADOQuery.IsEmpty) then
    begin
      while not anADOQuery.Recordset.EOF do
      begin
        // get values
        if anADOQuery.Recordset.Fields['CountOfpatientID'].Value <> Null then
          begin
            if LowerCase(anADOQuery.Recordset.Fields['Gender'].Value) = 'male' then
              Self.currentMalesNo := anADOQuery.Recordset.Fields['CountOfpatientID'].Value
            else
              Self.currentFemalesNo := anADOQuery.Recordset.Fields['CountOfpatientID'].Value;
            end;

        anADOQuery.Recordset.MoveNext;
      end;
    end;
end;

procedure TReport.runQryReport_MacularHoleStageAtInitialVisit(
  anADOQuery: TADOQuery);
begin
  //helper method: macular hole stage at initial visit
  anADOQuery := frmDBControlsForReport.qryReport_MacularHoleStageAtInitialVisit;
  anADOQuery.Close;

  try
  anADOQuery.Open;
  anADOQuery.First;

  if not(anADOQuery.IsEmpty) then
    begin
      // write macular hole stage at initial visit
      if anADOQuery.Recordset.Fields['proportionOfPatientAtSTAGE1'].Value <> Null then
      Self.proportionOfPatientAtSTAGE1 := anADOQuery.Recordset.Fields['proportionOfPatientAtSTAGE1'].Value;
      if anADOQuery.Recordset.Fields['proportionOfPatientAtSTAGE2'].Value <> Null then
      Self.proportionOfPatientAtSTAGE2 := anADOQuery.Recordset.Fields['proportionOfPatientAtSTAGE2'].Value;
      if anADOQuery.Recordset.Fields['proportionOfPatientAtSTAGE3'].Value <> Null then
      Self.proportionOfPatientAtSTAGE3 := anADOQuery.Recordset.Fields['proportionOfPatientAtSTAGE3'].Value;
      if anADOQuery.Recordset.Fields['proportionOfPatientAtSTAGE4'].Value <> Null then
      Self.proportionOfPatientAtSTAGE4 := anADOQuery.Recordset.Fields['proportionOfPatientAtSTAGE4'].Value;
    end;
  except
    on E : Exception do
      if E.ClassName = 'EOleException' then
        begin
          Self.proportionOfPatientAtSTAGE1 := 0;
          Self.proportionOfPatientAtSTAGE2 := 0;
          Self.proportionOfPatientAtSTAGE3 := 0;
          Self.proportionOfPatientAtSTAGE4 := 0;
        end;
  end;
end;

procedure TReport.runQryReport_OcularSymptomsPerc(anADOQuery: TADOQuery);
begin
  //helper method: get ocular symptoms percentages
  anADOQuery := frmDBControlsForReport.qryReport_OcularSymptomsPerc;
  anADOQuery.Close;
  anADOQuery.Open;

  if not(anADOQuery.IsEmpty) then
    begin
      // write ocular symptoms percentages
      if anADOQuery.Recordset.Fields['SymptomsNotRelevant'].Value <> Null then
        Self.SymptomsNotRelevant := anADOQuery.Recordset.Fields['SymptomsNotRelevant'].Value;
      if anADOQuery.Recordset.Fields['SymptomsOther'].Value <> Null then
        Self.SymptomsOther := anADOQuery.Recordset.Fields['SymptomsOther'].Value;
      if anADOQuery.Recordset.Fields['SymptomsVisualReduction'].Value <> Null then
        Self.SymptomsVisualReduction := anADOQuery.Recordset.Fields['SymptomsVisualReduction'].Value;
      if anADOQuery.Recordset.Fields['SymptomsBlurredVision'].Value <> Null then
        Self.SymptomsBlurredVision := anADOQuery.Recordset.Fields['SymptomsBlurredVision'].Value;
      if anADOQuery.Recordset.Fields['SymptomsDifficultyReadingAtNight'].Value <> Null then
        Self.SymptomsDifficultyReadingAtNight := anADOQuery.Recordset.Fields['SymptomsDifficultyReadingAtNight'].Value;
      if anADOQuery.Recordset.Fields['SymptomsCentralBlackImage'].Value <> Null then
        Self.SymptomsObjectsAppearSmaller := anADOQuery.Recordset.Fields['SymptomsObjectsAppearSmaller'].Value;
      if anADOQuery.Recordset.Fields['SymptomsCentralBlackImage'].Value <> Null then
        Self.SymptomsCentralBlackImage := anADOQuery.Recordset.Fields['SymptomsCentralBlackImage'].Value;
      if anADOQuery.Recordset.Fields['SymptomsDistortedVision'].Value <> Null then
        Self.SymptomsDistortedVision := anADOQuery.Recordset.Fields['SymptomsDistortedVision'].Value;
      if anADOQuery.Recordset.Fields['SymptomsFlashesOfLight'].Value <> Null then
        Self.SymptomsFlashesOfLight := anADOQuery.Recordset.Fields['SymptomsFlashesOfLight'].Value;
      if anADOQuery.Recordset.Fields['SymptomsFloaters'].Value <> Null then
        Self.SymptomsFloaters := anADOQuery.Recordset.Fields['SymptomsFloaters'].Value;
    end;
end;

procedure TReport.runQryReport_PreviousInterventionPerc(anADOQuery: TADOQuery);
begin
  //helper method: get previous intervention frequency
  anADOQuery := frmDBControlsForReport.qryReport_PreviousInterventionPerc;
  anADOQuery.Close;
  anADOQuery.Open;
  anADOQuery.First;

  if not(anADOQuery.IsEmpty) then
    begin
      // write previous intervention frequency
      if anADOQuery.Recordset.Fields['PrevTreatOtherIntravitrealInjection'].Value <> Null then
        Self.PrevTreatOtherIntravitrealInjection := anADOQuery.Recordset.Fields['PrevTreatOtherIntravitrealInjection'].Value;
      if anADOQuery.Recordset.Fields['PrevTreatIntravitrealSteroidImplant'].Value <> Null then
        Self.PrevTreatIntravitrealSteroidImplant := anADOQuery.Recordset.Fields['PrevTreatIntravitrealSteroidImplant'].Value;
      if anADOQuery.Recordset.Fields['PrevTreatIntravitrealSteroidLiquid'].Value <> Null then
        Self.PrevTreatIntravitrealSteroidLiquid := anADOQuery.Recordset.Fields['PrevTreatIntravitrealSteroidLiquid'].Value;
      if anADOQuery.Recordset.Fields['PrevTreatIntravitrealAntiVEGF'].Value <> Null then
        Self.PrevTreatIntravitrealAntiVEGF := anADOQuery.Recordset.Fields['PrevTreatIntravitrealAntiVEGF'].Value;
      if anADOQuery.Recordset.Fields['PrevTreatOtherSurgery'].Value <> Null then
        Self.PrevTreatOtherSurgery := anADOQuery.Recordset.Fields['PrevTreatOtherSurgery'].Value;
      if anADOQuery.Recordset.Fields['PrevTreatPeripheralLaserPhotocoagulation'].Value <> Null then
        Self.PrevTreatPeripheralLaserPhotocoagulation := anADOQuery.Recordset.Fields['PrevTreatPeripheralLaserPhotocoagulation'].Value;
      if anADOQuery.Recordset.Fields['PrevTreatMacularLaserPhotocoagulation'].Value <> Null then
        Self.PrevTreatMacularLaserPhotocoagulation := anADOQuery.Recordset.Fields['PrevTreatMacularLaserPhotocoagulation'].Value;
      if anADOQuery.Recordset.Fields['PrevTreatVitrectomy'].Value <> Null then
        Self.PrevTreatVitrectomy := anADOQuery.Recordset.Fields['PrevTreatVitrectomy'].Value;
      if anADOQuery.Recordset.Fields['PrevTreatGlaucomaFiltrationSurgery'].Value <> Null then
        Self.PrevTreatGlaucomaFiltrationSurgery := anADOQuery.Recordset.Fields['PrevTreatGlaucomaFiltrationSurgery'].Value;
      if anADOQuery.Recordset.Fields['PrevTreatCataractSurgery'].Value <> Null then
        Self.PrevTreatCataractSurgery := anADOQuery.Recordset.Fields['PrevTreatCataractSurgery'].Value;
      if anADOQuery.Recordset.Fields['PrevTreatNotRelevant'].Value <> Null then
        Self.PrevTreatNotRelevant := anADOQuery.Recordset.Fields['PrevTreatNotRelevant'].Value;
    end;
end;

procedure TReport.runQryReport_PrimaryAffectedEye(anADOQuery: TADOQuery);
begin
  //helper method: count affected eyes and record values in BothEyes, OD and OS variables
  anADOQuery := frmDBControlsForReport.qryReport_PrimaryAffectedEye;
  anADOQuery.Close;
  anADOQuery.Open;
  anADOQuery.First;

  if not(anADOQuery.IsEmpty) then
    begin
      // get values
      if anADOQuery.Recordset.Fields['Both'].Value <> Null then
        Self.BothEyes := anADOQuery.Recordset.Fields['Both'].Value;
      if anADOQuery.Recordset.Fields['AffectedOD'].Value <> Null then
        Self.OD := anADOQuery.Recordset.Fields['AffectedOD'].Value;
      if anADOQuery.Recordset.Fields['AffectedOS'].Value <> Null then
        Self.OS := anADOQuery.Recordset.Fields['AffectedOS'].Value;
    end;
end;

procedure TReport.runQryReport_ProposedTreatmentRationalPerc(
  anADOQuery: TADOQuery);
begin
  //helper method: get proposed treatment by rationale

  anADOQuery := frmDBControlsForReport.qryReport_ProposedTreatmentRationalPerc;
  anADOQuery.Close;
  anADOQuery.Open;

  if not(anADOQuery.IsEmpty) then
    begin
      if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'not applicable' then
        Self.patientPercRationaleNotApplicable := anADOQuery.Recordset.Fields['PatientPerc'].Value;
      if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'watchful waiting / no treatment' then
        Self.patientPercRationaleWW := anADOQuery.Recordset.Fields['PatientPerc'].Value;
      if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'surgery' then
        Self.patientPercRationaleSurgery := anADOQuery.Recordset.Fields['PatientPerc'].Value;
      if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'ocriplasmin intravitreal injection' then
        Self.patientPercRationaleOcriplasminIntravitrealInjection := anADOQuery.Recordset.Fields['PatientPerc'].Value;
      if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'other' then
        Self.patientPercRationaleOther := anADOQuery.Recordset.Fields['PatientPerc'].Value;
      if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'discharge' then
        Self.patientPercRationaleDischarge := anADOQuery.Recordset.Fields['PatientPerc'].Value;
    end;
end;

procedure TReport.runQryReport_ReasonForDischarge(anADOQuery: TADOQuery);
begin
   //helper method: get reasons for discharge
  anADOQuery := frmDBControlsForReport.qryReport_ReasonForDischarge;
  anADOQuery.Close;
  anADOQuery.Open;

  if not(anADOQuery.IsEmpty) then
    begin
      while not anADOQuery.Recordset.EOF do
      begin
        // get values
        if anADOQuery.Recordset.Fields['CountOfDischargeReasonDesc'].Value <> Null then
          begin
            if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'watchful waiting / no treatment' then
              begin
                if LowerCase(anADOQuery.Recordset.Fields['DischargeReasonDesc'].Value) = 'not applicable' then
                  Self.notApplicableReasonForDischargeWW := anADOQuery.Recordset.Fields['CountOfDischargeReasonDesc'].Value;
                if LowerCase(anADOQuery.Recordset.Fields['DischargeReasonDesc'].Value) = 'complete resolution' then
                  Self.completeResolutionReasonForDischargeWW := anADOQuery.Recordset.Fields['CountOfDischargeReasonDesc'].Value;
                if LowerCase(anADOQuery.Recordset.Fields['DischargeReasonDesc'].Value) = 'macular Hole closure' then
                  Self.macularHoleClosureReasonForDischargeWW := anADOQuery.Recordset.Fields['CountOfDischargeReasonDesc'].Value;
                if LowerCase(anADOQuery.Recordset.Fields['DischargeReasonDesc'].Value) = 'patient decision for no further treatment / follow up' then
                  Self.patientDecisionReasonForDischargeWW := anADOQuery.Recordset.Fields['CountOfDischargeReasonDesc'].Value;
                if LowerCase(anADOQuery.Recordset.Fields['DischargeReasonDesc'].Value) = 'patient decision for no further treatment / follow up' then
                  Self.poorPrognosisReasonForDischargeWW := anADOQuery.Recordset.Fields['CountOfDischargeReasonDesc'].Value;
                if LowerCase(anADOQuery.Recordset.Fields['DischargeReasonDesc'].Value) = 'other' then
                  Self.otherReasonForDischargeWW := anADOQuery.Recordset.Fields['CountOfDischargeReasonDesc'].Value;
              end;
            if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'surgery' then
              begin
                if LowerCase(anADOQuery.Recordset.Fields['DischargeReasonDesc'].Value) = 'not applicable' then
                  Self.notApplicableReasonForDischargeSurgery := anADOQuery.Recordset.Fields['CountOfDischargeReasonDesc'].Value;
                if LowerCase(anADOQuery.Recordset.Fields['DischargeReasonDesc'].Value) = 'complete resolution' then
                  Self.completeResolutionReasonForDischargeSurgery := anADOQuery.Recordset.Fields['CountOfDischargeReasonDesc'].Value;
                if LowerCase(anADOQuery.Recordset.Fields['DischargeReasonDesc'].Value) = 'macular Hole closure' then
                  Self.macularHoleClosureReasonForDischargeSurgery := anADOQuery.Recordset.Fields['CountOfDischargeReasonDesc'].Value;
                if LowerCase(anADOQuery.Recordset.Fields['DischargeReasonDesc'].Value) = 'patient decision for no further treatment / follow up' then
                  Self.patientDecisionReasonForDischargeSurgery := anADOQuery.Recordset.Fields['CountOfDischargeReasonDesc'].Value;
                if LowerCase(anADOQuery.Recordset.Fields['DischargeReasonDesc'].Value) = 'patient decision for no further treatment / follow up' then
                  Self.poorPrognosisReasonForDischargeSurgery := anADOQuery.Recordset.Fields['CountOfDischargeReasonDesc'].Value;
                if LowerCase(anADOQuery.Recordset.Fields['DischargeReasonDesc'].Value) = 'other' then
                  Self.otherReasonForDischargeSurgery := anADOQuery.Recordset.Fields['CountOfDischargeReasonDesc'].Value;
              end;
            if LowerCase(anADOQuery.Recordset.Fields['ProposedTreatmentGroupDesc'].Value) = 'ocriplasmin intravitreal injection' then
              begin
                if LowerCase(anADOQuery.Recordset.Fields['DischargeReasonDesc'].Value) = 'not applicable' then
                  Self.notApplicableReasonForDischargeInjection := anADOQuery.Recordset.Fields['CountOfDischargeReasonDesc'].Value;
                if LowerCase(anADOQuery.Recordset.Fields['DischargeReasonDesc'].Value) = 'complete resolution' then
                  Self.completeResolutionReasonForDischargeInjection := anADOQuery.Recordset.Fields['CountOfDischargeReasonDesc'].Value;
                if LowerCase(anADOQuery.Recordset.Fields['DischargeReasonDesc'].Value) = 'macular Hole closure' then
                  Self.macularHoleClosureReasonForDischargeInjection := anADOQuery.Recordset.Fields['CountOfDischargeReasonDesc'].Value;
                if LowerCase(anADOQuery.Recordset.Fields['DischargeReasonDesc'].Value) = 'patient decision for no further treatment / follow up' then
                  Self.patientDecisionReasonForDischargeInjection := anADOQuery.Recordset.Fields['CountOfDischargeReasonDesc'].Value;
                if LowerCase(anADOQuery.Recordset.Fields['DischargeReasonDesc'].Value) = 'patient decision for no further treatment / follow up' then
                  Self.poorPrognosisReasonForDischargeInjection := anADOQuery.Recordset.Fields['CountOfDischargeReasonDesc'].Value;
                if LowerCase(anADOQuery.Recordset.Fields['DischargeReasonDesc'].Value) = 'other' then
                  Self.otherReasonForDischargeInjection := anADOQuery.Recordset.Fields['CountOfDischargeReasonDesc'].Value;
              end;
          end;

        anADOQuery.Recordset.MoveNext;
      end;
    end;
end;

procedure TReport.runQryReport_ReasonForReferral(anADOQuery: TADOQuery);
begin
  //helper method: get reason of referral and record value in OtherSource, SuspectedCataract, SuspectedMH, SuspectedVMT, SuspectedWetAMD and UnknownReason  variables
  anADOQuery := frmDBControlsForReport.qryReport_ReasonforReferral;
  anADOQuery.Close;
  anADOQuery.Open;

  if not(anADOQuery.IsEmpty) then
    begin
      while not anADOQuery.Recordset.EOF do
      begin
        // get values
        if anADOQuery.Recordset.Fields['CountOfpatientID'].Value <> Null then
          begin
            if LowerCase(anADOQuery.Recordset.Fields['ReasonForReferalDesc'].Value) = 'other' then
              Self.OtherReason := anADOQuery.Recordset.Fields['CountOfpatientID'].Value;
            if LowerCase(anADOQuery.Recordset.Fields['ReasonForReferalDesc'].Value) = 'suspected cataract' then
              SuspectedCataract := anADOQuery.Recordset.Fields['CountOfpatientID'].Value;
            if LowerCase(anADOQuery.Recordset.Fields['ReasonForReferalDesc'].Value) = 'suspected mh' then
              Self.SuspectedMH := anADOQuery.Recordset.Fields['CountOfpatientID'].Value;
            if LowerCase(anADOQuery.Recordset.Fields['ReasonForReferalDesc'].Value) = 'suspected vmt' then
              Self.SuspectedVMT := anADOQuery.Recordset.Fields['CountOfpatientID'].Value;
            if LowerCase(anADOQuery.Recordset.Fields['ReasonForReferalDesc'].Value) = 'suspected wet amd' then
              Self.SuspectedWetAMD := anADOQuery.Recordset.Fields['CountOfpatientID'].Value;
            if LowerCase(anADOQuery.Recordset.Fields['ReasonForReferalDesc'].Value) = 'vision symptoms of unknown cause' then
             Self.UnknownReason := anADOQuery.Recordset.Fields['CountOfpatientID'].Value;
          end;

        anADOQuery.Recordset.MoveNext;
      end;
    end;
end;

procedure TReport.runQryReport_SourceOfReferral(anADOQuery: TADOQuery);
begin
  //helper method: get source of referral and record value in GP, MedicalRetinalOphthalmologist, Optometrist, OtherReferralSource, OtherOphthalmologist and VitreoretinalSurgeon  variables
  anADOQuery := frmDBControlsForReport.qryReport_SourceOfReferral;
  anADOQuery.Close;
  anADOQuery.Open;

  if not(anADOQuery.IsEmpty) then
    begin
      while not anADOQuery.Recordset.EOF do
      begin
        // get values
        if anADOQuery.Recordset.Fields['CountOfpatientID'].Value <> Null then
          begin
            if LowerCase(anADOQuery.Recordset.Fields['SourceOfReferralDesc'].Value) = 'gp' then
              Self.GP := anADOQuery.Recordset.Fields['CountOfpatientID'].Value;
            if LowerCase(anADOQuery.Recordset.Fields['SourceOfReferralDesc'].Value) = 'medical retinal ophthalmologist' then
              MedicalRetinalOphthalmologist := anADOQuery.Recordset.Fields['CountOfpatientID'].Value;
            if LowerCase(anADOQuery.Recordset.Fields['SourceOfReferralDesc'].Value) = 'optometrist' then
              Self.Optometrist := anADOQuery.Recordset.Fields['CountOfpatientID'].Value;
            if LowerCase(anADOQuery.Recordset.Fields['SourceOfReferralDesc'].Value) = 'other' then
              Self.OtherReferralSource := anADOQuery.Recordset.Fields['CountOfpatientID'].Value;
            if LowerCase(anADOQuery.Recordset.Fields['SourceOfReferralDesc'].Value) = 'other ophthalmologist' then
              Self.OtherOphthalmologist := anADOQuery.Recordset.Fields['CountOfpatientID'].Value;
            if LowerCase(anADOQuery.Recordset.Fields['SourceOfReferralDesc'].Value) = 'vitreoretinal surgeon' then
             Self.VitreoretinalSurgeon := anADOQuery.Recordset.Fields['CountOfpatientID'].Value;
          end;

        anADOQuery.Recordset.MoveNext;
      end;
    end;
end;

procedure TReport.runQryReport_VMTIncidence(anADOQuery: TADOQuery);
begin
  //helper method: get VTM incidence episodes and record values in MHwithoutVMT, VMTwithMH and VMTwithoutMH variables
  anADOQuery := frmDBControlsForReport.qryReport_VMTIncidence;
  anADOQuery.Close;
  anADOQuery.Open;

  if not(anADOQuery.IsEmpty) then
    begin
      while not anADOQuery.Recordset.EOF do
      begin
        // get values
        if anADOQuery.Recordset.Fields['CountOfpatientID'].Value <> Null then
          begin
            if LowerCase(anADOQuery.Recordset.Fields['IndicationDesc'].Value) = 'vmt without mh with erm' then
              Self.VMTwithoutMHwithERM := anADOQuery.Recordset.Fields['CountOfpatientID'].Value;
            if LowerCase(anADOQuery.Recordset.Fields['IndicationDesc'].Value) = 'vmt without mh without erm' then
              Self.VMTwithoutMHwithoutERM := anADOQuery.Recordset.Fields['CountOfpatientID'].Value;
            if LowerCase(anADOQuery.Recordset.Fields['IndicationDesc'].Value) = 'vmt with mh with erm' then
              Self.VMTwithMHwithERM := anADOQuery.Recordset.Fields['CountOfpatientID'].Value;
            if LowerCase(anADOQuery.Recordset.Fields['IndicationDesc'].Value) = 'mh without vmt with erm' then
              Self.MHwithoutVMTwithERM := anADOQuery.Recordset.Fields['CountOfpatientID'].Value;
            if LowerCase(anADOQuery.Recordset.Fields['IndicationDesc'].Value) = 'mh without vmt without erm' then
              Self.MHwithoutVMTwithoutERM := anADOQuery.Recordset.Fields['CountOfpatientID'].Value;
          end;

        anADOQuery.Recordset.MoveNext;
      end;
    end;
end;

function TReport.getNoOfPatientUnder45: Integer;
begin
  Result := Self.noOfPatientUnder45;
end;

function TReport.getNoOfSwitchedPatients: Real;
begin
  Result := Self.noOfSwitchedPatients
end;

function TReport.getNotApplicableReasonForDischargeInjection: Real;
begin
    Result := Self.notApplicableReasonForDischargeInjection;
end;

function TReport.getnotApplicableReasonForDischargeSurgery: Real;
begin
    Result := Self.notApplicableReasonForDischargeSurgery;
end;

function TReport.getNotApplicableReasonForDischargeWW: Real;
begin
    Result := Self.notApplicableReasonForDischargeWW;
end;

function TReport.getOcriplasminIntravitrealInjectionAverageNoAtDischargePoint: Real;
begin
  Result := Self.ocriplasminIntravitrealInjectionAverageNoAtDischargePoint;
end;

function TReport.getOD: Integer;
begin
  Result := Self.OD;
end;

function TReport.getOptometrist: Integer;
begin
  Result := Self.Optometrist;
end;

function TReport.getOS: Integer;
begin
  Result := Self.OS;
end;

function TReport.getOtherOphthalmologist: Integer;
begin
  Result := Self.OtherOphthalmologist;
end;

function TReport.getOtherReason: Integer;
begin
  Result := Self.OtherReason;
end;

function TReport.getOtherReasonForDischargeInjection: Real;
begin
  Result := Self.otherReasonForDischargeInjection;
end;

function TReport.getOtherReasonForDischargeSurgery: Real;
begin
    Result := Self.otherReasonForDischargeSurgery;
end;

function TReport.getOtherReasonForDischargeWW: Real;
begin
  Result := Self.otherReasonForDischargeWW;
end;

function TReport.getOtherReferralSource: Integer;
begin
  Result := Self.OtherReferralSource;
end;

function TReport.getPatientDecisionReasonForDischargeInjection: Real;
begin
  Result := Self.patientDecisionReasonForDischargeInjection;
end;

function TReport.getPatientDecisionReasonForDischargeSurgery: Real;
begin
    Result := Self.patientDecisionReasonForDischargeSurgery;
end;

function TReport.getPatientDecisionReasonForDischargeWW: Real;
begin
  Result := Self.patientDecisionReasonForDischargeWW;
end;

function TReport.getPatientPercRationaleDischarge: Real;
begin
  Result := Self.patientPercRationaleDischarge;
end;

function TReport.getPatientPercRationaleNotApplicable: Real;
begin
  Result := Self.patientPercRationaleNotApplicable;
end;

function TReport.getPatientPercRationaleOcriplasminIntravitrealInjection: Real;
begin
  Result := Self.patientPercRationaleOcriplasminIntravitrealInjection;
end;

function TReport.getPatientPercRationaleOther: Real;
begin
  Result := Self.patientPercRationaleOther;
end;

function TReport.getPatientPercRationaleSurgery: Real;
begin
  Result := Self.patientPercRationaleSurgery;
end;

function TReport.getPatientPercRationaleWW: Real;
begin
  Result := Self.patientPercRationaleWW;
end;

function TReport.getPoorPrognosisReasonForDischargeInjection: Real;
begin
  Result := Self.poorPrognosisReasonForDischargeInjection;
end;

function TReport.getPoorPrognosisReasonForDischargeSurgery: Real;
begin
    Result := Self.poorPrognosisReasonForDischargeSurgery;
end;

function TReport.getPoorPrognosisReasonForDischargeWW: Real;
begin
  Result := Self.poorPrognosisReasonForDischargeWW;
end;

function TReport.getPrevTreatCataractSurgery: Real;
begin
  Result := Self.PrevTreatCataractSurgery;
end;

function TReport.getPrevTreatGlaucomaFiltrationSurgery: Real;
begin
  Result := Self.PrevTreatGlaucomaFiltrationSurgery;
end;

function TReport.getPrevTreatIntravitrealAntiVEGF: Real;
begin
  Result := Self.PrevTreatIntravitrealAntiVEGF;
end;

function TReport.getPrevTreatIntravitrealSteroidImplant: Real;
begin
  Result := Self.PrevTreatIntravitrealSteroidImplant;
end;

function TReport.getPrevTreatIntravitrealSteroidLiquid: Real;
begin
  Result := Self.PrevTreatIntravitrealSteroidLiquid;
end;

function TReport.getPrevTreatMacularLaserPhotocoagulation: Real;
begin
  Result := Self.PrevTreatMacularLaserPhotocoagulation;
end;

function TReport.getPrevTreatNotRelevant: Real;
begin
  Result := Self.PrevTreatNotRelevant;
end;

function TReport.getPrevTreatOtherIntravitrealInjection: Real;
begin
  Result := Self.PrevTreatOtherIntravitrealInjection;
end;

function TReport.getPrevTreatOtherSurgery: Real;
begin
  Result := Self.PrevTreatOtherSurgery;
end;

function TReport.getPrevTreatPeripheralLaserPhotocoagulation: Real;
begin
  Result := Self.PrevTreatPeripheralLaserPhotocoagulation;
end;

function TReport.getPrevTreatVitrectomy: Real;
begin
  Result := Self.PrevTreatVitrectomy;
end;

function TReport.getProportionOfPatientAtSTAGE1: Real;
begin
  Result := Self.proportionOfPatientAtSTAGE1;
end;

function TReport.getProportionOfPatientAtSTAGE2: Real;
begin
  Result := Self.proportionOfPatientAtSTAGE2;
end;

function TReport.getProportionOfPatientAtSTAGE3: Real;
begin
  Result := Self.proportionOfPatientAtSTAGE3;
end;

function TReport.getProportionOfPatientAtSTAGE4: Real;
begin
  Result := Self.proportionOfPatientAtSTAGE4;
end;

function TReport.getSurgeryAverageNoAtDischargePoint: Real;
begin
  Result := Self.surgeryAverageNoAtDischargePoint;
end;

function TReport.getSuspectedCataract: Integer;
begin
  Result := Self.SuspectedCataract;
end;

function TReport.getSuspectedMH: Integer;
begin
  Result := Self.SuspectedMH;
end;

function TReport.getSuspectedVMT: Integer;
begin
  Result := Self.SuspectedVMT;
end;

function TReport.getSuspectedWetAMD: Integer;
begin
  Result := Self.SuspectedWetAMD;
end;

function TReport.getSymptomsBlurredVision: Real;
begin
  Result := Self.SymptomsBlurredVision;
end;

function TReport.getSymptomsCentralBlackImage: Real;
begin
  Result := Self.SymptomsCentralBlackImage;
end;

function TReport.getSymptomsDifficultyReadingAtNight: Real;
begin
  Result := Self.SymptomsDifficultyReadingAtNight;
end;

function TReport.getSymptomsDistortedVision: Real;
begin
  Result := Self.SymptomsDistortedVision;
end;

function TReport.getSymptomsFlashesOfLight: Real;
begin
  Result := Self.SymptomsFlashesOfLight;
end;

function TReport.getSymptomsFloaters: Real;
begin
  Result := Self.SymptomsFloaters;
end;

function TReport.getSymptomsNotRelevant: Real;
begin
  Result := Self.SymptomsNotRelevant;
end;

function TReport.getSymptomsObjectsAppearSmaller: Real;
begin
  Result := Self.SymptomsObjectsAppearSmaller;
end;

function TReport.getSymptomsOther: Real;
begin
  Result := Self.SymptomsOther;
end;

function TReport.getSymptomsVisualReduction: Real;
begin
  Result := Self.SymptomsVisualReduction;
end;

function TReport.getUnknownReason: Integer;
begin
  Result := Self.UnknownReason;
end;

function TReport.getVitreoretinalSurgeon: Integer;
begin
  Result := Self.VitreoretinalSurgeon;
end;

function TReport.getVMTwithMHwithERM: Integer;
begin
   Result := Self.VMTwithMHwithERM;
end;

function TReport.getVMTwithoutMHwithERM: Integer;
begin
  Result := Self.VMTwithoutMHwithERM;
end;

function TReport.getVMTwithoutMHwithoutERM: Integer;
begin
  Result := Self.VMTwithoutMHwithoutERM;
end;

function TReport.getWatchfulWaitingAverageNoAtDischargePoint: Real;
begin
  Result := Self.watchfulWaitingAverageNoAtDischargePoint;
end;

procedure TReport.setADOConnection(anADOConnection: TADOConnection);
begin
  Self.anADOConnection := anADOConnection;
  Self.anADOConnection.Connected := False;
  Self.anADOConnection.Connected := True;
end;

end.
