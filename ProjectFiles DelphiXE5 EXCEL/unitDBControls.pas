unit unitDBControls;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, DB, Mask, ADODB, ComCtrls,
  ExtCtrls,ComObj, ActiveX, FlashPlayerControl;


type
  TfrmDBControls = class(TForm)
    ALC_Connection_1: TADOConnection;
    ALC_TBL_Centres: TADOTable;
    ALC_DATASOURCE_CENTRES: TDataSource;
    ALC_TBL_Patients: TADOTable;
    ALC_DATASOURCE_PATIENTS: TDataSource;
    ALC_TBL_Medical: TADOTable;
    ALC_DATASOURCE_MEDICAL: TDataSource;
    ALC_TBL_ANSWERS_INI_VISIT: TADOTable;
    ALC_DATASOURCE_ANSWERS_INI_VISIT: TDataSource;
    ALC_TBL_ANSWERS_INI_FOLLOWUP: TADOTable;
    ALC_DATASOURCE_INI_FOLLOWUP: TDataSource;
    ALC_TBL_DISCHARGE: TADOTable;
    ALC_DATASOURCE_DISCHARGE: TDataSource;
    ALC_TBL_CENTRE_DIS_SCALE: TADOTable;
    ALC_DS_DIS_SCALE: TDataSource;
    ALC_TBL_CENTRE_DIS_SCALEDistanceVisualAcuityScaleID: TAutoIncField;
    ALC_TBL_CENTRE_DIS_SCALEDistanceVisualAcuityScaleDesc: TWideStringField;
    ALC_TBL_CENTRE_DIS_SCALEarchived: TBooleanField;
    ALC_TBL_CENTRE_DIS_SCALEDateAdded: TDateTimeField;
    ALC_TBL_CENTRE_NEAR_SCALE: TADOTable;
    ALC_DS_CENTRE_NEAR_SCALE: TDataSource;
    ALC_TBL_CENTRE_NEAR_SCALENearVisualAcuityScaleID: TAutoIncField;
    ALC_TBL_CENTRE_NEAR_SCALENearVisualAcuityScaleDesc: TWideStringField;
    ALC_TBL_CENTRE_NEAR_SCALEArchived: TBooleanField;
    ALC_TBL_CENTRE_NEAR_SCALEDateAdded: TDateTimeField;
    ALC_DS_ANSWERS_BASE: TDataSource;
    ALC_TBL_ANSWERS_BASE: TADOTable;
    ALC_TBL_AGE: TADOTable;
    ALC_DS_AGE: TDataSource;
    ALC_TBL_AGEageID: TAutoIncField;
    ALC_TBL_AGEageRangeDesc: TWideStringField;
    ALC_TBL_AGEArchived: TBooleanField;
    ALC_TBL_AGEDateAdded: TDateTimeField;
    ALC_TBL_GENDER: TADOTable;
    ALC_DS_GENDER: TDataSource;
    ALC_TBL_GENDERgenderID: TAutoIncField;
    ALC_TBL_GENDERgender: TWideStringField;
    ALC_TBL_GENDERDateAdded: TDateTimeField;
    ALC_TBL_MED_REF_SOURCE: TADOTable;
    ALC_DS_MED_REF_SOURCE: TDataSource;
    ALC_TBL_MED_REF_SOURCESourceOfReferralID: TAutoIncField;
    ALC_TBL_MED_REF_SOURCESourceOfReferralDesc: TWideStringField;
    ALC_TBL_MED_REF_SOURCEArchived: TBooleanField;
    ALC_TBL_MED_REF_SOURCEDateAdded: TDateTimeField;
    ALC_TBL_MED_REF_REASON: TADOTable;
    ALC_DS_MED_REF_REASON: TDataSource;
    ALC_TBL_MED_REF_REASONReasonForReferalID: TAutoIncField;
    ALC_TBL_MED_REF_REASONReasonForReferalDesc: TWideStringField;
    ALC_TBL_MED_REF_REASONArchived: TBooleanField;
    ALC_TBL_MED_REF_REASONDateAdded: TDateTimeField;
    Panel1: TPanel;
    Panel2: TPanel;
    Title: TLabel;
    Button15: TButton;
    Button16: TButton;
    ALC_TBL_DISTANCEVA: TADOTable;
    ALC_DS_DISTANCEVA: TDataSource;
    ALC_TBL_NEARVA: TADOTable;
    ALC_DS_NEARVA: TDataSource;
    ALC_DS_OCTVMTID: TDataSource;
    ALC_TBL_PROPOSED_TREAT: TADOTable;
    ALC_DS_PROPOSED_TREAT: TDataSource;
    ALC_TBL_DISTANCEVADistanceVisualAcuityScaleID: TAutoIncField;
    ALC_TBL_DISTANCEVADistanceVisualAcuityScaleDesc: TWideStringField;
    ALC_TBL_DISTANCEVAarchived: TBooleanField;
    ALC_TBL_DISTANCEVADateAdded: TDateTimeField;
    ALC_TBL_NEARVANearVisualAcuityScaleID: TAutoIncField;
    ALC_TBL_NEARVANearVisualAcuityScaleDesc: TWideStringField;
    ALC_TBL_NEARVAArchived: TBooleanField;
    ALC_TBL_NEARVADateAdded: TDateTimeField;
    ALC_TBL_PROPOSED_TREATProposedTreatmentID: TAutoIncField;
    ALC_TBL_PROPOSED_TREATProposedTreatmentDesc: TWideStringField;
    ALC_TBL_PROPOSED_TREATArchived: TBooleanField;
    ALC_TBL_PROPOSED_TREATDateAdded: TDateTimeField;
    ALC_TBL_RATION_TREAT: TADOTable;
    ALC_DS_RATION_TREAT: TDataSource;
    ALC_TBL_RATION_TREATProposedTreatmentRationalID: TAutoIncField;
    ALC_TBL_RATION_TREATProposedTreatmentRationalDesc: TWideStringField;
    ALC_TBL_RATION_TREATArchived: TBooleanField;
    ALC_TBL_RATION_TREATDateAdded: TDateTimeField;
    ALC_TBL_OS_SHORT: TADOTable;
    ALC_DS_OS_SHORT: TDataSource;
    ALC_TBL_OS_LONG: TADOTable;
    ALC_DS_OS_LONG: TDataSource;
    ALC_TBL_OS_SHORTOccularSymptomsID: TAutoIncField;
    ALC_TBL_OS_SHORTOccularSymptomsDesc: TWideStringField;
    ALC_TBL_OS_SHORTArchived: TBooleanField;
    ALC_TBL_OS_SHORTDateAdded: TDateTimeField;
    ALC_TBL_OS_LONGOccularSymptomsID: TAutoIncField;
    ALC_TBL_OS_LONGOccularSymptomsDesc: TWideStringField;
    ALC_TBL_OS_LONGArchived: TBooleanField;
    ALC_TBL_OS_LONGDateAdded: TDateTimeField;
    ALC_TBL_REASON_DISCHARGE: TADOTable;
    ALC_DS_REASON_DISCHARGE: TDataSource;
    ALC_TBL_REASON_DISCHARGEDischargeReasonID: TAutoIncField;
    ALC_TBL_REASON_DISCHARGEDischargeReasonDesc: TWideStringField;
    ALC_TBL_REASON_DISCHARGEArchived: TBooleanField;
    ALC_TBL_REASON_DISCHARGEDateAdded: TDateTimeField;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
    Button21: TButton;
    Button22: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Shape1: TShape;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label97: TLabel;
    Shape2: TShape;
    Label140: TLabel;
    Label141: TLabel;
    DBEDIT_centreID: TDBEdit;
    DBCheckBox_Centre_Arch: TDBCheckBox;
    DBEdit_CentreGUID: TDBEdit;
    DBEdit_Centre_DateAdded: TDBEdit;
    DBEdit_Centre_DateUpdated: TDBEdit;
    ALC_DBGRID_CENTRES: TDBGrid;
    Button1: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button17: TButton;
    DBEdit_Centre_Machines: TDBEdit;
    DBEdit_Centre_Pop: TDBEdit;
    DBComboBox_Centre_NearScaleID: TDBLookupComboBox;
    DBComboBox_Centre_DistanceScaleID: TDBLookupComboBox;
    TabSheet2: TTabSheet;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    lab_PatientID: TLabel;
    Label148: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label100: TLabel;
    Label99: TLabel;
    TransparentFlashPlayerControl2: TTransparentFlashPlayerControl;
    DBEdit_Patient_ID: TDBEdit;
    DBEdit_Patinet_GUID: TDBEdit;
    DBEdit_Patient_CentreID: TDBEdit;
    DBCheckBox_Patient_Arch: TDBCheckBox;
    DBEdit_Patient_DateAdded: TDBEdit;
    DBEdit_Patient_DateUpdated: TDBEdit;
    DBEdit_Patient_centreGUID: TDBEdit;
    Button2: TButton;
    DBGrid1: TDBGrid;
    DBGrid9: TDBGrid;
    Button31: TButton;
    Button12: TButton;
    DBComboBox_Patient_Age: TDBLookupComboBox;
    DBLookupComboBox_Patient_Gender: TDBLookupComboBox;
    TabSheet3: TTabSheet;
    Label20: TLabel;
    Label134: TLabel;
    Shape19: TShape;
    Shape20: TShape;
    Label156: TLabel;
    Label103: TLabel;
    Label102: TLabel;
    Label27: TLabel;
    Label26: TLabel;
    Shape27: TShape;
    Shape28: TShape;
    Label29: TLabel;
    Label106: TLabel;
    Shape29: TShape;
    Shape30: TShape;
    Label105: TLabel;
    Label112: TLabel;
    Label104: TLabel;
    DBGrid2: TDBGrid;
    Button3: TButton;
    DBEdit_Medical_DateAdded: TDBEdit;
    DBEdit_Medical_DateUpdated: TDBEdit;
    Button13: TButton;
    DBLookupComboBox_Medical_ReasonForReferalID: TDBLookupComboBox;
    DBLookupComboBox_Medical_SourceOfReferalID: TDBLookupComboBox;
    DBCheckBox_Medical_Arch: TDBCheckBox;
    DBEdit_Medical_patientID: TDBEdit;
    DBEdit_Medical_MedicalHistoryID: TDBEdit;
    DBCheckBox_Medical_NotRelevant_OS: TDBCheckBox;
    DBCheckBox_Medical_NotRelevant_OD: TDBCheckBox;
    DBCheckBox_Medical_Other_OS: TDBCheckBox;
    DBCheckBox_Medical_Other_OD: TDBCheckBox;
    DBCheckBox_Medical_RetinalDetachment_OS: TDBCheckBox;
    DBCheckBox_Medical_RetinalDetachment_OD: TDBCheckBox;
    DBCheckBox_Medical_RetinalVeinOcclusion_OS: TDBCheckBox;
    DBCheckBox_Medical_RetinalVeinOcclusion_OD: TDBCheckBox;
    DBCheckBox_Medical_ProliferativeDiabeticRetinopathy_OS: TDBCheckBox;
    DBCheckBox_Medical_ProliferativeDiabeticRetinopathy_OD: TDBCheckBox;
    DBCheckBox_Medical_DME_OS: TDBCheckBox;
    DBCheckBox_Medical_DME_OD: TDBCheckBox;
    DBCheckBox_Medical_DryAMD_OS: TDBCheckBox;
    DBCheckBox_Medical_DryAMD_OD: TDBCheckBox;
    DBCheckBox_Medical_WetAMD_OS: TDBCheckBox;
    DBCheckBox_Medical_WetAMD_OD: TDBCheckBox;
    TabSheet4: TTabSheet;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    Shape21: TShape;
    Shape22: TShape;
    Label21: TLabel;
    Label108: TLabel;
    Label114: TLabel;
    Shape23: TShape;
    Shape24: TShape;
    Label22: TLabel;
    Label113: TLabel;
    Label110: TLabel;
    Button4: TButton;
    DBEdit_AnsIni_AnswersInitialVisitID: TDBEdit;
    DBEdit_AnsIni_AnswerBaseID: TDBEdit;
    DBCheckBox_AnsIni_SymptomsFloaters_OD: TDBCheckBox;
    DBCheckBox_AnsIni_SymptomsFloaters_OS: TDBCheckBox;
    DBCheckBox_AnsIni_SymptomsFlashesOfLight_OD: TDBCheckBox;
    DBCheckBox_AnsIni_SymptomsFlashesOfLight_OS: TDBCheckBox;
    DBCheckBox_AnsIni_SymptomsObjectsAppearSmaller_OD: TDBCheckBox;
    DBCheckBox_AnsIni_SymptomsObjectsAppearSmaller_OS: TDBCheckBox;
    DBCheckBox_AnsIni_SymptomsDifficultyReadingAtNight_OD: TDBCheckBox;
    DBCheckBox_AnsIni_SymptomsDifficultyReadingAtNight_OS: TDBCheckBox;
    DBCheckBox_AnsIni_SymptomsBlurredVision_OD: TDBCheckBox;
    DBCheckBox_AnsIni_SymptomsBlurredVision_OS: TDBCheckBox;
    DBCheckBox_AnsIni_SymptomsVisualReduction_OD: TDBCheckBox;
    DBCheckBox_AnsIni_SymptomsVisualReduction_OS: TDBCheckBox;
    DBCheckBox_AnsIni_SymptomsOther_OD: TDBCheckBox;
    DBCheckBox_AnsIni_SymptomsOther_OS: TDBCheckBox;
    DBCheckBox_AnsIni_SymptomsNotRelevant_OD: TDBCheckBox;
    DBCheckBox_AnsIni_SymptomsNotRelevant_OS: TDBCheckBox;
    DBCheckBox_AnsIni_PrevTreatCataractSurgery_OD: TDBCheckBox;
    DBCheckBox_AnsIni_PrevTreatCataractSurgery_OS: TDBCheckBox;
    DBCheckBox_AnsIni_PrevTreatGlaucomaFiltrationSurgery_OD: TDBCheckBox;
    DBCheckBox_AnsIni_PrevTreatGlaucomaFiltrationSurgery_OS: TDBCheckBox;
    DBCheckBox_AnsIni_PrevTreatVitrectomy_OD: TDBCheckBox;
    DBCheckBox_AnsIni_PrevTreatVitrectomy_OS: TDBCheckBox;
    DBCheckBox_AnsIni_PrevTreatMacularLaserPhotocoagulation_OD: TDBCheckBox;
    DBCheckBox_AnsIni_PrevTreatMacularLaserPhotocoagulation_OS: TDBCheckBox;
    DBCheckBox_AnsIni_PrevTreatPeripheralLaserPhotocoagulation_OD: TDBCheckBox;
    DBCheckBox_AnsIni_PrevTreatPeripheralLaserPhotocoagulation_OS: TDBCheckBox;
    DBCheckBox_AnsIni_PrevTreatOtherSurgery_OD: TDBCheckBox;
    DBCheckBox_AnsIni_PrevTreatOtherSurgery_OS: TDBCheckBox;
    DBCheckBox_AnsIni_PrevTreatIntravitrealAntiVEGF_OD: TDBCheckBox;
    DBCheckBox_AnsIni_PrevTreatIntravitrealAntiVEGF_OS: TDBCheckBox;
    DBCheckBox_AnsIni_PrevTreatNotRelevant_OD: TDBCheckBox;
    DBCheckBox_AnsIni_PrevTreatNotRelevant_OS: TDBCheckBox;
    DBCheckBox_AnsIni_Arch: TDBCheckBox;
    DBEdit_AnsIni_DateUpdated: TDBEdit;
    DBGrid3: TDBGrid;
    Button14: TButton;
    TabSheet5: TTabSheet;
    Label36: TLabel;
    Label37: TLabel;
    Label46: TLabel;
    Label48: TLabel;
    Label50: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label59: TLabel;
    Label118: TLabel;
    Label121: TLabel;
    Shape25: TShape;
    Shape26: TShape;
    Label28: TLabel;
    Label120: TLabel;
    Label40: TLabel;
    Label38: TLabel;
    Shape31: TShape;
    Label35: TLabel;
    Shape32: TShape;
    Label98: TLabel;
    Label107: TLabel;
    Label109: TLabel;
    Shape33: TShape;
    Label39: TLabel;
    Shape34: TShape;
    Label41: TLabel;
    Shape35: TShape;
    Label42: TLabel;
    Label43: TLabel;
    Shape36: TShape;
    Shape37: TShape;
    Label116: TLabel;
    Shape38: TShape;
    Label157: TLabel;
    Shape39: TShape;
    Label158: TLabel;
    Shape40: TShape;
    Label159: TLabel;
    Shape41: TShape;
    Label160: TLabel;
    Shape42: TShape;
    Label161: TLabel;
    Shape43: TShape;
    Label162: TLabel;
    Shape44: TShape;
    Shape45: TShape;
    Label44: TLabel;
    Label124: TLabel;
    Label122: TLabel;
    DBGrid4: TDBGrid;
    Button5: TButton;
    DBEdit_INI_FOLLOWUP_AnswersInitialAndFollowupVisit: TDBEdit;
    DBEdit_INI_FOLLOW_AnswerBaseID: TDBEdit;
    DBCheckBox_INI_FOLLOW_OCTVitreomacularAdhesion_OD: TDBCheckBox;
    DBCheckBox_INI_FOLLOW_OCTVitreomacularAdhesion_OS: TDBCheckBox;
    DBEdit_INI_FOLLOW_OCTVMASize_OD: TDBEdit;
    DBEdit_INI_FOLLOW_OCTVMASize_OS: TDBEdit;
    DBEdit_INI_FOLLOW_OCTMacularHoleSize_OD: TDBEdit;
    DBEdit_INI_FOLLOW_OCTMacularHoleSize_OS: TDBEdit;
    DBCheckBox_INI_FOLLOW_OCTEpiretinalMembrane_OD: TDBCheckBox;
    DBCheckBox_INI_FOLLOW_OCTEpiretinalMembrane_OS: TDBCheckBox;
    DBCheckBox_INI_FOLLOW_Archived: TDBCheckBox;
    DBEdit_INI_FOLLOW_DateUpdated: TDBEdit;
    DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OD: TDBLookupComboBox;
    DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OS: TDBLookupComboBox;
    DateTimePicker5: TDateTimePicker;
    DateTimePicker6: TDateTimePicker;
    DBLookupComboBox_INI_FOLLOW_VisualAcuityDistance_OS: TDBLookupComboBox;
    DBLookupComboBox_INI_FOLLOW_VisualAcuityDistance_OD: TDBLookupComboBox;
    TabSheet6: TTabSheet;
    Label62: TLabel;
    Label63: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Shape48: TShape;
    Shape49: TShape;
    Label49: TLabel;
    Label125: TLabel;
    Label79: TLabel;
    Label78: TLabel;
    Label77: TLabel;
    Label76: TLabel;
    Label75: TLabel;
    Label74: TLabel;
    Label73: TLabel;
    Label72: TLabel;
    Label71: TLabel;
    Label70: TLabel;
    Label69: TLabel;
    Label68: TLabel;
    Label67: TLabel;
    Label66: TLabel;
    Label65: TLabel;
    Label64: TLabel;
    Shape50: TShape;
    Shape51: TShape;
    Label51: TLabel;
    Label123: TLabel;
    DBGrid5: TDBGrid;
    Button6: TButton;
    DBEdit_FOLLOWUP_AnswerFollowupVisitOnlyID: TDBEdit;
    DBEdit_FOLLOWUP_AnswerBaseID: TDBEdit;
    DBEdit_FOLLOWUP_DateCreated: TDBEdit;
    DBCheckBox_FOLLOWUP_Archived: TDBCheckBox;
    DBEdit_FOLLOWUP_DateUpdated: TDBEdit;
    DBLookupCB_FOLLOWUP_OccularSymptomsDistortedVisionID_OS: TDBLookupComboBox;
    DBCheckBox_INI_FOLLOW_SecCateractPresence_OS: TDBCheckBox;
    DBCheckBox_INI_FOLLOW_SecCateractPresence_OD: TDBCheckBox;
    DBLookupCB_FOLLOWUP_OccularSymptomsFloatersID_OS: TDBLookupComboBox;
    DBLookupCB_FOLLOWUP_OccularSymptomsFlashesOfLightID_OS: TDBLookupComboBox;
    DBLookupCB_FOLLOWUP_OccularSymptomsObjectsAppearSmallerID_OS: TDBLookupComboBox;
    DBLookupCB_FOLLOWUP_OccularSymptomsOtherID_OS: TDBLookupComboBox;
    DBLookupCB_FOLLOWUP_OccularSymptomsVisualReductionID_OS: TDBLookupComboBox;
    DBLookupCB_FOLLOWUP_OccularSymptomsBlurredVisionID_OS: TDBLookupComboBox;
    DBLookupCB_FOLLOWUP_OccularSymptomsCentralBlackImageID_OS: TDBLookupComboBox;
    DBLookupCB_FOLLOWUP_OccularSymptomsCentralBlackImageID_OD: TDBLookupComboBox;
    DBLookupCB_FOLLOWUP_OccularSymptomsBlurredVisionID_OD: TDBLookupComboBox;
    DBLookupCB_FOLLOWUP_OccularSymptomsVisualReductionID_OD: TDBLookupComboBox;
    DBLookupCB_FOLLOWUP_OccularSymptomsOtherID_OD: TDBLookupComboBox;
    DBLookupCB_FOLLOWUP_OccularSymptomsObjectsAppearSmallerID_OD: TDBLookupComboBox;
    DBLookupComboBox_FOLLOWUP_OccularSymptomsDistortedVisionID_OD: TDBLookupComboBox;
    DBLookupComboBox_FOLLOWUP_OccularSymptomsFlashesOfLightID_OD: TDBLookupComboBox;
    DBLookupComboBox_FOLLOWUP_OccularSymptomsFloatersID_OD: TDBLookupComboBox;
    TabSheet7: TTabSheet;
    Shape52: TShape;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Shape53: TShape;
    Label60: TLabel;
    Button7: TButton;
    DBGrid6: TDBGrid;
    DBEdi_DISCHARGE_DischargeVisitID: TDBEdit;
    DBEdit_DISCHARGE_AnserBaseID: TDBEdit;
    DBCheckBox_DISCHARGE_LostToFollowup: TDBCheckBox;
    DBEdit_DISCHARGE_DischargeDate: TDBEdit;
    DBEdit_DISCHARGE_DateCreated: TDBEdit;
    DBCheckBox_DISCHARGE_Archived: TDBCheckBox;
    DBEdit_DISCHARGE_DateUpdated: TDBEdit;
    DBLookupComboBox_DISCHARGE_DischargeReasonID: TDBLookupComboBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker7: TDateTimePicker;
    TabSheet8: TTabSheet;
    Label111: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    Label144: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Button18: TButton;
    DBGrid7: TDBGrid;
    Panel5: TPanel;
    Shape13: TShape;
    Shape14: TShape;
    Label150: TLabel;
    ScrollBox1: TScrollBox;
    TabSheet9: TTabSheet;
    Shape56: TShape;
    Label94: TLabel;
    Label96: TLabel;
    Label133: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    Shape11: TShape;
    Shape12: TShape;
    lab_Prev_Patient_Visits: TLabel;
    Label95: TLabel;
    Label163: TLabel;
    Shape57: TShape;
    lab_Prev_PatientID: TLabel;
    Button20: TButton;
    DBGrid8: TDBGrid;
    DBEdit_Patient_EnteredBy: TDBEdit;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    Panel6: TPanel;
    Shape15: TShape;
    Shape16: TShape;
    Label151: TLabel;
    Label152: TLabel;
    Label130: TLabel;
    Button19: TButton;
    Panel7: TPanel;
    Shape17: TShape;
    Shape18: TShape;
    Label153: TLabel;
    Label154: TLabel;
    Label155: TLabel;
    Button37: TButton;
    ScrollBox2: TScrollBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Button47: TButton;
    Button46: TButton;
    Button32: TButton;
    Label9: TLabel;
    ADOQuery1: TADOQuery;
    Edit1: TEdit;
    Button33: TButton;
    Memo1: TMemo;
    ALC_TBL_EPISODESETS: TADOTable;
    ALC_DS_EPISODESETS: TDataSource;
    DBLookupComboBox_DifficultyReading_OD: TDBLookupComboBox;
    DBLookupComboBox_DifficultyReading_OS: TDBLookupComboBox;
    Label45: TLabel;
    Label47: TLabel;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    ADOQuery3PatientID: TIntegerField;
    ADOQuery1episodeSetID: TIntegerField;
    ADOQuery2patientID: TIntegerField;
    DataSource3: TDataSource;
    Label61: TLabel;
    qryReport_Gender: TADOQuery;
    qryReport_GenderCountOfpatientID: TIntegerField;
    qryReport_Gendergender: TWideStringField;
    qryReport_ProportionOfPatientsMovingFromWWToSurgeryOrInjections: TADOQuery;
    IntegerField5: TIntegerField;
    WideStringField5: TWideStringField;
    qryReport_averageTimeBetweeninitialVisitAndDischarge: TADOQuery;
    IntegerField2: TIntegerField;
    WideStringField2: TWideStringField;
    qryReport_VMTIncidence: TADOQuery;
    qryReport_VMTIncidenceCountOfpatientID: TIntegerField;
    qryReport_VMTIncidenceIndicationDesc: TWideStringField;
    qryReport_Age: TADOQuery;
    qryReport_AgeCountOfpatientID: TIntegerField;
    qryReport_AgeageRangeDesc: TWideStringField;
    qryReport_ReasonForDischarge: TADOQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    qryReport_averageTimeBetweenInitialvisitAndTreatment: TADOQuery;
    IntegerField4: TIntegerField;
    WideStringField4: TWideStringField;
    qryReport_AverageDurationBetweenVisits: TADOQuery;
    IntegerField3: TIntegerField;
    WideStringField3: TWideStringField;
    qryReport_AverageNoOfVisitsBetweenInitialVisitAndDischarge: TADOQuery;
    IntegerField6: TIntegerField;
    WideStringField6: TWideStringField;
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
    ADOQuery4: TADOQuery;
    ADOQuery4patientID: TAutoIncField;
    ADOQuery4gender: TWideStringField;
    ADOQuery4ageRangeDesc: TWideStringField;
    ADOQuery5: TADOQuery;
    ADOQuery5episodeDate: TDateTimeField;
    ADOQuery6: TADOQuery;
    ADOQuery6episodeSetID: TIntegerField;
    ADOQuery6episodeDate: TDateTimeField;
    Label115: TLabel;
    Label117: TLabel;
    Shape3: TShape;
    Shape4: TShape;
    Shape7: TShape;
    Label119: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Shape8: TShape;
    Label128: TLabel;
    ALC_TBL_CentresCentreID: TAutoIncField;
    ALC_TBL_CentresCentreUUID: TWideStringField;
    ALC_TBL_CentresDistanceVisualAcuityScaleID: TIntegerField;
    ALC_TBL_CentresNearVisualAcuityScaleID: TIntegerField;
    ALC_TBL_CentresPopulation: TIntegerField;
    ALC_TBL_CentresNumberOfOCTMachines: TIntegerField;
    ALC_TBL_CentresDateAdded: TDateTimeField;
    ALC_TBL_CentresDateUpdated: TDateTimeField;
    ALC_TBL_CentresArchived: TBooleanField;
    ALC_TBL_CentresAuthorID: TWideStringField;
    ALC_TBL_PatientsPatientID: TAutoIncField;
    ALC_TBL_PatientsPatientUUID: TWideStringField;
    ALC_TBL_PatientsCentreID: TIntegerField;
    ALC_TBL_PatientsCentreUUID: TWideStringField;
    ALC_TBL_PatientsGenderID: TIntegerField;
    ALC_TBL_PatientsAgeID: TIntegerField;
    ALC_TBL_PatientsDateAdded: TDateTimeField;
    ALC_TBL_PatientsDateUpdated: TDateTimeField;
    ALC_TBL_PatientsArchived: TBooleanField;
    ALC_TBL_PatientsAuthorID: TWideStringField;
    ALC_TBL_ANSWERS_INI_VISITAnswersInitialVisitID: TAutoIncField;
    ALC_TBL_ANSWERS_INI_VISITAnswerBaseID: TIntegerField;
    ALC_TBL_ANSWERS_INI_VISITSymptomsMetamorphopsia_OD: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITSymptomsMetamorphopsia_OS: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITSymptomsBlurredVision_OD: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITSymptomsBlurredVision_OS: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITSymptomsObjectsAppearSmaller_OD: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITSymptomsObjectsAppearSmaller_OS: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITSymptomsFloaters_OD: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITSymptomsFloaters_OS: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITSymptomsFlashesOfLight_OD: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITSymptomsFlashesOfLight_OS: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITSymptomsDifficultyReadingAtNight_OD: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITSymptomsDifficultyReadingAtNight_OS: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITSymptomsScotoma_OD: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITSymptomsScotoma_OS: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITSymptomsVisualReduction_OD: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITSymptomsVisualReduction_OS: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITSymptomsOther_OD: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITSymptomsOther_OS: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITSymptomsNotRelevant_OD: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITSymptomsNotRelevant_OS: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITPrevTreatCataractSurgery_OD: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITPrevTreatCataractSurgery_OS: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITPrevTreatGlaucomaFiltrationSurgery_OD: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITPrevTreatGlaucomaFiltrationSurgery_OS: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITPrevTreatVitrectomy_OD: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITPrevTreatVitrectomy_OS: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITPrevTreatMacularLaserPhotocoagulation_OD: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITPrevTreatMacularLaserPhotocoagulation_OS: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITPrevTreatPeripheralLaserPhotocoagulation_OD: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITPrevTreatPeripheralLaserPhotocoagulation_OS: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITPrevTreatOtherSurgery_OD: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITPrevTreatOtherSurgery_OS: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITPrevTreatIntravitrealAntiVEGF_OD: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITPrevTreatIntravitrealAntiVEGF_OS: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITPrevTreatIntravitrealSteroid_OD: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITPrevTreatIntravitrealSteroid_OS: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITPrevTreatOther_OD: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITPrevTreatOther_OS: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITPrevTreatNotRelevant_OD: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITPrevTreatNotRelevant_OS: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITPreviousOccurance_OD: TIntegerField;
    ALC_TBL_ANSWERS_INI_VISITPreviousOccurance_OS: TIntegerField;
    ALC_TBL_ANSWERS_INI_VISITDateAdded: TDateTimeField;
    ALC_TBL_ANSWERS_INI_VISITdateUpdated: TDateTimeField;
    ALC_TBL_ANSWERS_INI_VISITarchived: TBooleanField;
    ALC_TBL_ANSWERS_INI_VISITAuthorID: TWideStringField;
    ALC_TBL_DISCHARGEDischargeVisitID: TAutoIncField;
    ALC_TBL_DISCHARGEAnswerBaseID: TIntegerField;
    ALC_TBL_DISCHARGEDischargeDate: TDateTimeField;
    ALC_TBL_DISCHARGELostToFollowup: TBooleanField;
    ALC_TBL_DISCHARGEDischargeReasonID: TIntegerField;
    ALC_TBL_DISCHARGEDateCreated: TDateTimeField;
    ALC_TBL_DISCHARGEDateUpdated: TDateTimeField;
    ALC_TBL_DISCHARGEarchived: TBooleanField;
    ALC_TBL_DISCHARGEAuthorID: TWideStringField;
    ALC_TBL_ANSWERS_BASEAnswerBaseID: TAutoIncField;
    ALC_TBL_ANSWERS_BASEEpisodeSetID: TIntegerField;
    ALC_TBL_ANSWERS_BASEPatientID: TIntegerField;
    ALC_TBL_ANSWERS_BASEPatientUUID: TWideStringField;
    ALC_TBL_ANSWERS_BASEEnteredBy: TWideStringField;
    ALC_TBL_ANSWERS_BASEEpisodeDate: TDateTimeField;
    ALC_TBL_ANSWERS_BASEEpisodeNumber: TIntegerField;
    ALC_TBL_ANSWERS_BASECompleted: TBooleanField;
    ALC_TBL_ANSWERS_BASEDateAdded: TDateTimeField;
    ALC_TBL_ANSWERS_BASEdateUpdated: TDateTimeField;
    ALC_TBL_ANSWERS_BASEarchived: TBooleanField;
    ALC_TBL_ANSWERS_BASEAuthorID: TWideStringField;
    ALC_TBL_INDICATIONS: TADOTable;
    ALC_DS_INDICATIONS: TDataSource;
    ALC_TBL_INDICATIONSIndicationGroupingID: TAutoIncField;
    ALC_TBL_INDICATIONSIndicationGroupingDescription: TWideStringField;
    ALC_TBL_INDICATIONSdateAdded: TDateTimeField;
    ALC_TBL_INDICATIONSdateUpdated: TDateTimeField;
    ALC_TBL_INDICATIONSArchived: TBooleanField;
    ALC_TBL_INDICATIONSAuthorID: TWideStringField;
    ALC_TBL_CURRENT_LENS_STATUS: TADOTable;
    ALC_DS_CURRENT_LENS_STATUS: TDataSource;
    ALC_TBL_ANSWERS_INI_FOLLOWUPAnswersInitialAndFollowupVisit: TAutoIncField;
    ALC_TBL_ANSWERS_INI_FOLLOWUPAnswerBaseID: TIntegerField;
    ALC_TBL_ANSWERS_INI_FOLLOWUPVisualAcuityDistance_OD: TIntegerField;
    ALC_TBL_ANSWERS_INI_FOLLOWUPVisualAcuityDistance_OS: TIntegerField;
    ALC_TBL_ANSWERS_INI_FOLLOWUPOCTVitreomacularAdhesion_OD: TBooleanField;
    ALC_TBL_ANSWERS_INI_FOLLOWUPOCTVitreomacularAdhesion_OS: TBooleanField;
    ALC_TBL_ANSWERS_INI_FOLLOWUPOCTVMASize_OD: TFloatField;
    ALC_TBL_ANSWERS_INI_FOLLOWUPOCTVMASize_OS: TFloatField;
    ALC_TBL_ANSWERS_INI_FOLLOWUPOCTVMTPresent_OD: TBooleanField;
    ALC_TBL_ANSWERS_INI_FOLLOWUPOCTVMTPresent_OS: TBooleanField;
    ALC_TBL_ANSWERS_INI_FOLLOWUPOCTMacularHole_OD: TBooleanField;
    ALC_TBL_ANSWERS_INI_FOLLOWUPOCTMacularHole_OS: TBooleanField;
    ALC_TBL_ANSWERS_INI_FOLLOWUPOCTMacularHoleSize_OD: TFloatField;
    ALC_TBL_ANSWERS_INI_FOLLOWUPOCTMacularHoleSize_OS: TFloatField;
    ALC_TBL_ANSWERS_INI_FOLLOWUPOCTEpiretinalMembrane_OD: TBooleanField;
    ALC_TBL_ANSWERS_INI_FOLLOWUPOCTEpiretinalMembrane_OS: TBooleanField;
    ALC_TBL_ANSWERS_INI_FOLLOWUPProposedTreatmentID_OD: TIntegerField;
    ALC_TBL_ANSWERS_INI_FOLLOWUPProposedTreatmentID_OS: TIntegerField;
    ALC_TBL_ANSWERS_INI_FOLLOWUPProposedTreatmentDate_OD: TDateTimeField;
    ALC_TBL_ANSWERS_INI_FOLLOWUPProposedTreatmentDate_OS: TDateTimeField;
    ALC_TBL_ANSWERS_INI_FOLLOWUPProposedTreatmentRationaleID_OD: TIntegerField;
    ALC_TBL_ANSWERS_INI_FOLLOWUPProposedTreatmentRationaleID_OS: TIntegerField;
    ALC_TBL_ANSWERS_INI_FOLLOWUPSecCateractPresence_OD: TBooleanField;
    ALC_TBL_ANSWERS_INI_FOLLOWUPSecCateractPresence_OS: TBooleanField;
    ALC_TBL_ANSWERS_INI_FOLLOWUPDateAdded: TDateTimeField;
    ALC_TBL_ANSWERS_INI_FOLLOWUPDateUpdated: TDateTimeField;
    ALC_TBL_ANSWERS_INI_FOLLOWUPArchived: TBooleanField;
    ALC_TBL_ANSWERS_INI_FOLLOWUPAuthorID: TWideStringField;
    ALC_TBL_VISUAL_ACUITY_MATRIX: TADOTable;
    ALC_DS_VISUAL_ACUITY_MATRIX: TDataSource;
    ALC_TBL_VISUAL_ACUITY_MATRIXVisualAcuityMatrixID: TAutoIncField;
    ALC_TBL_VISUAL_ACUITY_MATRIXSnellenFeet_20Desc: TWideStringField;
    ALC_TBL_VISUAL_ACUITY_MATRIXSnellenFeet_20: TBCDField;
    ALC_TBL_VISUAL_ACUITY_MATRIXSnellenMeter_6Desc: TWideStringField;
    ALC_TBL_VISUAL_ACUITY_MATRIXSnellenMeter_6: TBCDField;
    ALC_TBL_VISUAL_ACUITY_MATRIXDecimalDesc: TWideStringField;
    ALC_TBL_VISUAL_ACUITY_MATRIXDecimal: TBCDField;
    ALC_TBL_VISUAL_ACUITY_MATRIXLogMarDesc: TWideStringField;
    ALC_TBL_VISUAL_ACUITY_MATRIXLogMar: TBCDField;
    ALC_TBL_VISUAL_ACUITY_MATRIXLineNumberDesc: TWideStringField;
    ALC_TBL_VISUAL_ACUITY_MATRIXLineNumber: TBCDField;
    ALC_TBL_VISUAL_ACUITY_MATRIXJaegerDesc: TWideStringField;
    ALC_TBL_VISUAL_ACUITY_MATRIXJaeger: TBCDField;
    ALC_TBL_VISUAL_ACUITY_MATRIXInches_14Desc: TWideStringField;
    ALC_TBL_VISUAL_ACUITY_MATRIXInches_14: TBCDField;
    ALC_TBL_VISUAL_ACUITY_MATRIXCentimeters_35Desc: TWideStringField;
    ALC_TBL_VISUAL_ACUITY_MATRIXCentimeters_35: TBCDField;
    ALC_TBL_VISUAL_ACUITY_MATRIXdateAdded: TDateTimeField;
    ALC_TBL_VISUAL_ACUITY_MATRIXdateUpdated: TDateTimeField;
    ALC_TBL_VISUAL_ACUITY_MATRIXarchived: TBooleanField;
    ALC_TBL_VISUAL_ACUITY_MATRIXAuthorID: TWideStringField;
    ALC_TBL_PREVIOUS_OCCURANCE: TADOTable;
    ALC_TBL_PREVIOUS_OCCURANCEPreviousOccuranceID: TAutoIncField;
    ALC_TBL_PREVIOUS_OCCURANCEPreviousOccuranceDescription: TWideStringField;
    ALC_TBL_PREVIOUS_OCCURANCEdateAdded: TDateTimeField;
    ALC_TBL_PREVIOUS_OCCURANCEdateupdated: TDateTimeField;
    ALC_TBL_PREVIOUS_OCCURANCEarchived: TBooleanField;
    ALC_TBL_PREVIOUS_OCCURANCEAuthorID: TWideStringField;
    ALC_DS_PREVIOUS_OCCURANCE: TDataSource;
    ADOCmdSelectPatientByID: TADOCommand;
    ALC_TBL_EPISODESETSEpisodeSetID: TAutoIncField;
    ALC_TBL_EPISODESETSPatientID: TIntegerField;
    ALC_TBL_EPISODESETSPatientUUID: TWideStringField;
    ALC_TBL_EPISODESETSDateAdded: TDateTimeField;
    ALC_TBL_EPISODESETSDateUpdated: TDateTimeField;
    ALC_TBL_EPISODESETSArchived: TBooleanField;
    ALC_TBL_EPISODESETSAuthorID: TWideStringField;
    qryPatientUUIDByPatientID: TADOQuery;
    ALC_TBL_MedicalPatientMedicalHistoryID: TAutoIncField;
    ALC_TBL_MedicalpatientID: TIntegerField;
    ALC_TBL_MedicalAnswerBaseID: TIntegerField;
    ALC_TBL_MedicalSourceOfReferalID: TIntegerField;
    ALC_TBL_MedicalPhakia_OD: TIntegerField;
    ALC_TBL_MedicalPhakia_OS: TIntegerField;
    ALC_TBL_MedicalPseudophakia_OD: TBooleanField;
    ALC_TBL_Medicalpseudophakia_OS: TBooleanField;
    ALC_TBL_MedicalReasonForReferalID: TIntegerField;
    ALC_TBL_MedicalGlaucoma_OD: TBooleanField;
    ALC_TBL_MedicalGlaucoma_OS: TBooleanField;
    ALC_TBL_MedicalWetAMD_OD: TBooleanField;
    ALC_TBL_MedicalWetAMD_OS: TBooleanField;
    ALC_TBL_MedicalDryAMD_OD: TBooleanField;
    ALC_TBL_MedicalDryAMD_OS: TBooleanField;
    ALC_TBL_MedicalDME_OD: TBooleanField;
    ALC_TBL_MedicalDME_OS: TBooleanField;
    ALC_TBL_MedicalProliferativeDiabeticRetinopathy_OD: TBooleanField;
    ALC_TBL_MedicalProliferativeDiabeticRetinopathy_OS: TBooleanField;
    ALC_TBL_MedicalRetinalVeinOcclusion_OD: TBooleanField;
    ALC_TBL_MedicalRetinalVeinOcclusion_OS: TBooleanField;
    ALC_TBL_MedicalRetinalDetachment_OD: TBooleanField;
    ALC_TBL_MedicalRetinalDetachment_OS: TBooleanField;
    ALC_TBL_MedicalOther_OD: TBooleanField;
    ALC_TBL_MedicalOther_OS: TBooleanField;
    ALC_TBL_MedicalNotRelevant_OD: TBooleanField;
    ALC_TBL_MedicalNotRelevant_OS: TBooleanField;
    ALC_TBL_MedicalNonProliferativeDiabeticRetinopathy_OD: TBooleanField;
    ALC_TBL_MedicalNonProliferativeDiabeticRetinopathy_OS: TBooleanField;
    ALC_TBL_MedicalCurrentLensStatus_OD: TIntegerField;
    ALC_TBL_MedicalCurrentLensStatus_OS: TIntegerField;
    ALC_TBL_MedicaldateAdded: TDateTimeField;
    ALC_TBL_MedicaldateUpdated: TDateTimeField;
    ALC_TBL_Medicalarchived: TBooleanField;
    ALC_TBL_MedicalAuthorID: TWideStringField;
    ALC_TBL_CURRENT_LENS_STATUSLensStatusID: TAutoIncField;
    ALC_TBL_CURRENT_LENS_STATUSLensStatusDescription: TWideStringField;
    ALC_TBL_CURRENT_LENS_STATUSdateAdded: TDateTimeField;
    ALC_TBL_CURRENT_LENS_STATUSdateUpdated: TDateTimeField;
    ALC_TBL_CURRENT_LENS_STATUSArchived: TBooleanField;
    ALC_TBL_CURRENT_LENS_STATUSAuthorID: TWideStringField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBEdit_CentreGUIDClick(Sender: TObject);
    procedure DBEdit_CentreGUIDChange(Sender: TObject);
    procedure DBComboBox_Centre_DistanceScaleIDChange(Sender: TObject);
    procedure DBComboBox_Centre_NearScaleIDChange(Sender: TObject);
    procedure DBEdit_Centre_PopChange(Sender: TObject);
    procedure DBEdit_Centre_MachinesChange(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure DBEdit_Patient_EnteredByChange(Sender: TObject);
    procedure DBLookupComboBox_Patient_GenderCloseUp(Sender: TObject);
    procedure DBComboBox_Patient_AgeCloseUp(Sender: TObject);
    procedure DBComboBox_Centre_DistanceScaleIDCloseUp(Sender: TObject);
    procedure DBComboBox_Centre_NearScaleIDCloseUp(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure DBLookupComboBox_Medical_SourceOfReferalIDCloseUp(
      Sender: TObject);
    procedure DBLookupComboBox_Medical_ReasonForReferalIDCloseUp(
      Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure DBCheckBox_Medical_VitreomacularAdhesion_ODClick(Sender: TObject);
    procedure DBCheckBox_Medical_VitreomacularTraction_ODClick(Sender: TObject);
    procedure DBCheckBox_Medical_MacularHoleWithVMT_ODClick(Sender: TObject);
    procedure DBCheckBox_Medical_MacularHoleWithoutVMT_ODClick(Sender: TObject);
    procedure DBCheckBox_Medical_WetAMD_ODClick(Sender: TObject);
    procedure DBCheckBox_Medical_DryAMD_ODClick(Sender: TObject);
    procedure DBCheckBox_Medical_DME_ODClick(Sender: TObject);
    procedure DBCheckBox_Medical_ProliferativeDiabeticRetinopathy_ODClick(
      Sender: TObject);
    procedure DBCheckBox_Medical_Cataract_ODClick(Sender: TObject);
    procedure DBCheckBox_Medical_RetinalVeinOcclusion_ODClick(Sender: TObject);
    procedure DBCheckBox_Medical_RetinalDetachment_ODClick(Sender: TObject);
    procedure DBCheckBox_Medical_HighMyopia_ODClick(Sender: TObject);
    procedure DBCheckBox_Medical_Other_ODClick(Sender: TObject);
    procedure DBCheckBox_Medical_NotRelevant_ODClick(Sender: TObject);
    procedure DBCheckBox_Medical_VitreomacularAdhesion_OSClick(Sender: TObject);
    procedure DBCheckBox_Medical_VitreomacularTraction_OSClick(Sender: TObject);
    procedure DBCheckBox_Medical_MacularHoleWithVMT_OSClick(Sender: TObject);
    procedure DBCheckBox_Medical_MacularHoleWithoutVMT_OSClick(Sender: TObject);
    procedure DBCheckBox_Medical_WetAMD_OSClick(Sender: TObject);
    procedure DBCheckBox_Medical_DryAMD_OSClick(Sender: TObject);
    procedure DBCheckBox_Medical_DME_OSClick(Sender: TObject);
    procedure DBCheckBox_Medical_ProliferativeDiabeticRetinopathy_OSClick(
      Sender: TObject);
    procedure DBCheckBox_Medical_Cataract_OSClick(Sender: TObject);
    procedure DBCheckBox_Medical_RetinalVeinOcclusion_OSClick(Sender: TObject);
    procedure DBCheckBox_Medical_RetinalDetachment_OSClick(Sender: TObject);
    procedure DBCheckBox_Medical_HighMyopia_OSClick(Sender: TObject);
    procedure DBCheckBox_Medical_Other_OSClick(Sender: TObject);
    procedure DBCheckBox_Medical_NotRelevant_OSClick(Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsFloaters_ODClick(Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsFlashesOfLight_ODClick(Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsDistortedVision_ODClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsObjectsAppearSmaller_ODClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsCentralBlackImage_ODClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsDifficultyReadingAtNight_ODClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsBlurredVision_ODClick(Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsVisualReduction_ODClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsOther_ODClick(Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsNotRelevant_ODClick(Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsFloaters_OSClick(Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsFlashesOfLight_OSClick(Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsDistortedVision_OSClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsObjectsAppearSmaller_OSClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsCentralBlackImage_OSClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsDifficultyReadingAtNight_OSClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsBlurredVision_OSClick(Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsVisualReduction_OSClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsOther_OSClick(Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsNotRelevant_OSClick(Sender: TObject);
    procedure DBCheckBox_AnsIni_PrevTreatCataractSurgery_ODClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_PrevTreatGlaucomaFiltrationSurgery_ODClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_PrevTreatVitrectomy_ODClick(Sender: TObject);
    procedure DBCheckBox_AnsIni_PrevTreatMacularLaserPhotocoagulation_ODClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_PrevTreatPeripheralLaserPhotocoagulation_ODClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_PrevTreatOtherSurgery_ODClick(Sender: TObject);
    procedure DBCheckBox_AnsIni_PrevTreatIntravitrealAntiVEGF_ODClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_PrevTreatIntravitrealSteroidLiquid_ODClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_PrevTreatIntravitrealSteroidImplant_ODClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_PrevTreatOtherIntravitrealInjection_ODClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_PrevTreatNotRelevant_ODClick(Sender: TObject);
    procedure DBCheckBox_AnsIni_PrevTreatCataractSurgery_OSClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_PrevTreatGlaucomaFiltrationSurgery_OSClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_PrevTreatVitrectomy_OSClick(Sender: TObject);
    procedure DBCheckBox_AnsIni_PrevTreatMacularLaserPhotocoagulation_OSClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_PrevTreatPeripheralLaserPhotocoagulation_OSClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_PrevTreatOtherSurgery_OSClick(Sender: TObject);
    procedure DBCheckBox_AnsIni_PrevTreatIntravitrealAntiVEGF_OSClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_PrevTreatIntravitrealSteroidLiquid_OSClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_PrevTreatIntravitrealSteroidImplant_OSClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_PrevTreatOtherIntravitrealInjection_OSClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_PrevTreatNotRelevant_OSClick(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure DateTimePicker7Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DateTimePicker5Change(Sender: TObject);
    procedure DateTimePicker6Change(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure Button37Click(Sender: TObject);
    procedure Button38Click(Sender: TObject);
    procedure Button39Click(Sender: TObject);
    procedure DBComboBox_Centre_NearScaleIDClick(Sender: TObject);
    procedure DBCheckBox_INI_FOLLOW_OCTVitreomacularAdhesion_ODClick(
      Sender: TObject);
    procedure DBCheckBox_INI_FOLLOW_OCTVitreomacularAdhesion_OSClick(
      Sender: TObject);
    procedure DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_ODCloseUp(
      Sender: TObject);
    procedure DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OSCloseUp(
      Sender: TObject);
    procedure Button46Click(Sender: TObject);
    procedure Button47Click(Sender: TObject);
    procedure Button42Click(Sender: TObject);
    procedure Button40Click(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure Button44Click(Sender: TObject);
    procedure Button43Click(Sender: TObject);
    procedure Button45Click(Sender: TObject);
    procedure Label130Click(Sender: TObject);
    procedure DBLookupComboBox_INI_FOLLOW_ProposedTreatmentRationalID_ODCloseUp(
      Sender: TObject);
    procedure DBLookupComboBox_INI_FOLLOW_ProposedTreatmentRationalID_OSClick(
      Sender: TObject);
    procedure DBLookupComboBox_INI_FOLLOW_OCTVMTID_OSCloseUp(Sender: TObject);
    procedure DBLookupComboBox_INI_FOLLOW_OCTVMTID_ODCloseUp(Sender: TObject);
    procedure DBLookupComboBox_INI_FOLLOW_VisualAcuityNear_ODCloseUp(
      Sender: TObject);
    procedure DBLookupComboBox_INI_FOLLOW_VisualAcuityNear_OSCloseUp(
      Sender: TObject);
    procedure DBLookupCB_FOLLOWUP_OccularSymptomsOtherID_OSClick(
      Sender: TObject);
    procedure DBLookupComboBox_INI_FOLLOW_VisualAcuityDistance_ODCloseUp(
      Sender: TObject);
    procedure DBLookupComboBox_INI_FOLLOW_VisualAcuityDistance_OSCloseUp(
      Sender: TObject);
    procedure DBLookupComboBox_INI_FOLLOW_ProposedTreatmentRationalID_ODClick(
      Sender: TObject);
    procedure DBLookupComboBox_INI_FOLLOW_ProposedTreatmentRationalID_OSCloseUp(
      Sender: TObject);
    procedure DBLookupComboBox_INI_FOLLOW_OCTVMTID_OSClick(Sender: TObject);
    procedure DBCheckBox_INI_FOLLOW_SecCateractPresence_ODClick(
      Sender: TObject);
    procedure DBCheckBox_INI_FOLLOW_SecCateractPresence_OSClick(
      Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit_DISCHARGE_DischargeDateChange(Sender: TObject);
    procedure DBEdit_INI_FOLLOW_ProposedTreatmentDate_OSChange(Sender: TObject);
    procedure DBEdit_INI_FOLLOW_ProposedTreatmentDate_ODChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     CurrentScreen : Integer;
     centreFound : boolean;
     patientsFound : boolean;
     patientSaved : Boolean;
     Rec_Label_Count : integer;
     patients_EditMode : boolean;
     in_Initial_Visit, in_FollowUp_Visit : boolean;
     var_AnswerBase_ID : integer;
     var_EpisodeNum : integer;
     var_Patient_ID : integer;
     var_Patient_UUID : AnsiString;
     var_Center_ID: integer;
     var_Center_UUID: AnsiString;
     patient_New: boolean;
    function CanSubmitCentre : Boolean;
    function CanSubmitPatient : Boolean;
    function PatientCheck : Boolean;
    function MedicalCheck : Boolean;
    function MedicalCheckBoxCheck(aTagNum : Integer) : Boolean;
    function IniVisitCheckBoxCheck(aTagNum : Integer) : Boolean;
    function FollowUpCheckBoxCheck(aTagNum : Integer) : Boolean;
    function IniVisitCheck : Boolean;
    procedure activateDBTables;
    procedure closeDBTables;
    function IDGen: string;
    procedure IntialiseNewCentre;
    procedure IntialiseNewPatient;
    procedure insertNewPatientOLD(aCaseNum : integer);
    procedure insertNewMedical;
    procedure insertNewIniVisit;
    function requiredFieldCheck(aDBObject : TWinControl; aLabel : TLabel): boolean;
    procedure NavigateTo(ScreenID: Integer);
    procedure NavigateTo_Initial(ScreenID: Integer);
    procedure NavigateTo_FollowUp(ScreenID: Integer);
    function BackorNextScreen(CurrentScreenID : Integer;NextorBack:String):integer;
    procedure GetPreviousPatientRecords;
    procedure createFollowUpRecords;
    procedure destroyRecLabels;
    procedure destroyFollowUpLabels;
    procedure onLabClick (aSender : Tobject);
    procedure onVisitLabClick (aSender : Tobject);
    procedure defaultCheckBoxes(aTable : TADOTable; aTabSheet : TTabSheet; aBool : Boolean);
    procedure getPreviousRecords(anID : Integer; aTable : TADOTable; aFieldName : String);
    procedure getCentresDetails;
    function returnEpisodeNum (aPatinetID : integer; followup : boolean):integer;
    procedure sectionFinish(aTitle : String);
    procedure setDDLookupSourceDIS(aScaleIndex : Integer);
    procedure setDDLookupSourceNEA(aScaleIndex : Integer);
    procedure setDDLookupSourceFOLLOWUP(aPatientID, anEpisodeID : integer);
    procedure setDDLookupSourceFOLLOWUP_plus(aPatientID, anEpisodeID : integer);
    function iniFollowUpRequiredFieldCheck(aCase : Integer) : boolean;
    function showDisCharge(aPatientID : integer) : boolean;
    function visualAcuityRequiredFieldCheck : boolean;
    function proposedTxRequiredFieldCheck : boolean;
    function VMTRequiredFieldCheck : boolean;
    function SecondCatRequiredFieldCheck : boolean;
    procedure ViewText(Sender: TObject; HTMLText, aTitle: string);
    function patientDischarged(aAnswerBaseID, EpiSetID : Integer) : boolean;
    function checkRecordExists(aTable : TADOTable; anAnswerBaseID : integer) : Boolean;
    procedure CallComboBoxes(aTabSheet : TTabSheet);
    procedure ShowDatabaseError(aSender: TObject; anException: Exception; tableName: AnsiString; errorDescription: AnsiString);
    procedure ResetCentresScreen;
    procedure ResetPatientDetailsScreen;
  end;

var
  frmDBControls: TfrmDBControls;

implementation

uses Unit1, DataModuleUnit2, uniSectionEnd, uniEpisodeDatePicker, ref,
  FlashRefunit;

{$R *.dfm}

procedure TfrmDBControls.activateDBTables;
var
  I : integer;
begin
{
  ************************************************************************
  *                                                                      *
  * FUNCTION VERSION NO: 1.0.1;                                          *
  * ------------------------------------------------------------------   *
  * DESCRIPTION: Procedure to activate all DB tables;                    *
  * ------------------------------------------------------------------   *
  * PARAMS: None;                                                        *
  * ------------------------------------------------------------------   *
  * RESULT: DB tables activated ;                                        *
  * ------------------------------------------------------------------   *
  * NOTES:  ""                                                           *
  * ------------------------------------------------------------------   *
  * ABOUT: | DATE:      || AUTHOR: ||  ACTION:                           *
  *        | 30/09/2013 || DanS;   ||  Created;                          *
  *        | 02/10/2013 || DanS;   ||  Updated;                          *
  *                                                                      *
  ************************************************************************
}

  for I := 0 to frmDBControls.ComponentCount - 1 do
    begin
      if frmDBControls.Components[I].ClassType = TADOTable then
        begin
          TADOTable(frmDBControls.Components[I]).Active := true;
        end;
    end;
end;

function TfrmDBControls.BackorNextScreen(CurrentScreenID: Integer;
  NextorBack: String): integer;
begin
  // NextorBack can be back for next//
  if LowerCase(NextorBack)= 'next' then
    begin
      CurrentScreenID := CurrentScreenID + 1;
    end;

  if LowerCase(NextorBack)= 'back' then
    begin
      CurrentScreenID := CurrentScreenID - 1;
    end;

  Result := CurrentScreenID;
end;

procedure TfrmDBControls.Button12Click(Sender: TObject);
var
  msgString : String;
  canPost : boolean;
begin
   {Force the user to insert some centre details before moving on}
   //ALC_TBL_Medical.Active := true;


     { if ((label96.Visible = true) or (label99.Visible = true) or (label100.Visible = true) or (label101.Visible = true)) then
        begin
          Showmessage('Please make sure all required fields (*) are complete before saving');
        end
      else
        if patients_EditMode <> true then
          begin
            DBEdit_Patinet_GUID.Text := IDGen;
            DBEdit_Patient_CentreID.Text := '1';
            ALC_TBL_Centres.Active := true;
            DBEdit_Patient_centreGUID.Text := ALC_TBL_Centres.FieldByName('centreGUID').AsString;
            ALC_TBL_Patients.Post;
           // patients_EditMode := false;
            button12.Visible := false;
          end
        else
          begin
            ALC_TBL_Patients.Post;
            requiredFieldCheck(DBLookupComboBox_Medical_SourceOfReferalID,Label102);
            requiredFieldCheck(DBLookupComboBox_Medical_ReasonForReferalID,Label103);
           // patients_EditMode := false;
            button12.Visible := false;
          end;



   if ALC_TBL_Medical.RecordCount = 0 then
    begin
      insertNewMedical;
      patients_EditMode := false;
    end;  }
    if ((label96.Visible = true) or (label99.Visible = true) or (label100.Visible = true)) then
      begin
        Showmessage('Please make sure all required fields (*) are complete before saving');
      end
    else
      begin
        {ALC_TBL_ANSWERS_BASE.Edit;
        ALC_TBL_ANSWERS_BASE.Post; }
        ALC_TBL_Patients.Edit;
        ALC_TBL_Patients.Post;
        sectionFinish('Patient details complete');
       // button12.Visible := false;
      end;



end;

procedure TfrmDBControls.Button13Click(Sender: TObject);
begin
   {Force the user to insert some centre details before moving on}

      if ((label102.Visible = true) or (label103.Visible = true) or (label106.Visible = true) or (label104.Visible = true) or (label112.Visible = true)) then
        begin
          Showmessage('Please make sure all required fields (*) are complete before saving');
        end
      else
        begin
          ALC_TBL_MEdical.Post;
          Button21Click(nil);
        end;
end;

procedure TfrmDBControls.Button14Click(Sender: TObject);
begin

    if ((label108.Visible = true) or (label110.Visible = true) or (label113.Visible = true) or (label114.Visible = true)) then
        begin
          Showmessage('Please make sure all required fields (*) are complete before saving');
        end
    else
      begin
         // button14.Visible := false;
         ALC_TBL_ANSWERS_INI_VISIT.Edit;
         ALC_TBL_ANSWERS_INI_VISIT.Post;
         Button21Click(nil);
      end;

end;

procedure TfrmDBControls.Button15Click(Sender: TObject);
begin
  if ((button12.Visible <> true) and (Pagecontrol1.ActivePage = TabSheet2)) then
    NavigateTo(BackorNextScreen(CurrentScreen,'next'))
  else if ((button13.Visible <> true) and (Pagecontrol1.ActivePage = TabSheet3)) then
         NavigateTo(BackorNextScreen(CurrentScreen,'next'))
  else if ((button14.Visible <> true) and (Pagecontrol1.ActivePage = TabSheet4)) then
         NavigateTo(BackorNextScreen(CurrentScreen,'next'))
  Else if ((Pagecontrol1.ActivePage = TabSheet5) or (Pagecontrol1.ActivePage = TabSheet6))then
           NavigateTo(BackorNextScreen(CurrentScreen,'next'))
  else
    showmessage('Please save before continuing');
end;

procedure TfrmDBControls.Button16Click(Sender: TObject);
begin
  NavigateTo(BackorNextScreen(CurrentScreen,'back'));
end;

procedure TfrmDBControls.Button18Click(Sender: TObject);
begin
  ALC_TBL_Patients.Active := true;
  begin
      {  ALC_TBL_Patients.Last;
    //   FrmDBControls.insertNewPatient;
        FrmDBControls.ALC_TBL_Patients.FieldByName('archived').AsBoolean := false;
        FrmDBControls.Label96.Visible := true;
        FrmDBControls.Label99.Visible := true;
        FrmDBControls.Label100.Visible := true;
        FrmDBControls.Label101.Visible := true;   }
        //insertNewPatient(1);
        button12.Visible := true;
        patients_EditMode := false;
        FrmDBControls.NavigateTo(2);
  end;
end;

procedure TfrmDBControls.Button19Click(Sender: TObject);
var
  d : String;
begin
      in_Initial_Visit := true;
      in_FollowUp_Visit := false;
      var_EpisodeNum := 1;
      //insertNewPatient(3);
      ALC_TBL_ANSWERS_BASE.Edit;
      frmEpisodeDatePicker.DateTimePicker1.Date := Now;
      frmEpisodeDatePicker.DateTimePicker1.Visible := true;
      //DBEdit1.Text := DateToStr(frmEpisodeDatePicker.DateTimePicker1.DateTime);
      //insertNewPatient(2);
      patients_EditMode := false;
      //Button19.Visible := false;
     // Button36.Visible := true;
      DataModule2.canShowFadeForm := true;
      Mainform.showPopUp(frmEpisodeDatePicker);


end;

procedure TfrmDBControls.Button1Click(Sender: TObject);
begin
  ALC_TBL_Centres.Active := true;
end;

procedure TfrmDBControls.Button20Click(Sender: TObject);
begin
  if Button20.Caption = 'add new'  then
    begin
      var_EpisodeNum := returnEpisodeNum(var_Patient_ID{ALC_TBL_Patients.FieldByName('patientID').AsInteger},true);
      //insertNewPatient(3);
      ALC_TBL_ANSWERS_BASE.Edit;
      label133.Visible := true;
      //insertNewPatient(5);
      patients_EditMode := false;
    end;
  if Button20.Caption = 'confirm' then
    Begin
      ALC_TBL_ANSWERS_BASE.Post;
      NavigateTo(5);
    End;
end;

procedure TfrmDBControls.Button21Click(Sender: TObject);
begin
if pagecontrol1.ActivePage = tabsheet3 then
  NavigateTo_Initial(4)
else if pagecontrol1.ActivePage = tabsheet4 then
         NavigateTo_Initial(5)
else if pagecontrol1.ActivePage = tabsheet5 then
        if (showDisCharge((var_AnswerBAse_ID)) = false) then
         NavigateTo_Initial(6)
        else
         NavigateTo_FollowUp(3);
end;

procedure TfrmDBControls.Button22Click(Sender: TObject);
begin
if pagecontrol1.ActivePage = tabsheet5 then
  NavigateTo_FollowUp(2)
else if ((pagecontrol1.ActivePage = tabsheet6) and (showDisCharge((var_AnswerBAse_ID)) = false)) then
         NavigateTo_FollowUp(4)
      else
        NavigateTo_FollowUp(3);

end;

procedure TfrmDBControls.Button28Click(Sender: TObject);
begin
 // TransparentFlashPlayerControl1.Visible := false;
 // panel3.Visible := false;
  Mainform.TFP_INPUT_CLICKClick(nil);
 // Close;
end;

procedure TfrmDBControls.Button29Click(Sender: TObject);
begin
 // TransparentFlashPlayerControl1.Visible := false;
 // panel3.Visible := false;
  Close;
end;

procedure TfrmDBControls.Button2Click(Sender: TObject);
begin
 ALC_TBL_Patients.Active := true;
 ALC_TBL_Patients.Insert;
end;

procedure TfrmDBControls.Button30Click(Sender: TObject);
begin
 // TransparentFlashPlayerControl1.Visible := false;
 // panel3.Visible := false;
  Mainform.TFP_CENTRE_CLICKClick(nil);
end;

procedure TfrmDBControls.Button32Click(Sender: TObject);
begin
{  TransparentFlashPlayerControl2.Visible := false;
 // panel4.Visible := false;
  Mainform.TFP_INPUT_CLICKClick(nil);
  RadioButton2.Checked := true;
  }
  ALC_TBL_Patients.Post;

end;

procedure TfrmDBControls.Button33Click(Sender: TObject);
begin
//  TransparentFlashPlayerControl2.Visible := false;
 // panel4.Visible := false;
 // Close;
 ADOQuery1.Open;
 ADOQuery1.First;
 while ADOQuery1.Eof <> true do
  begin
    Memo1.Lines.Add(ADOQuery1.FieldByName('TreatmentDescription').AsString + ' ' + ADOQuery1.FieldByName('AverageOfVisitsAtDischargePoint').AsString);
    ADOQuery1.Next;
  end;
 Edit1.Text := ADOQuery1.FieldByName('AverageOfVisitsAtDischargePoint').AsString;
end;

procedure TfrmDBControls.Button34Click(Sender: TObject);
begin
  TransparentFlashPlayerControl2.Visible := false;
  //panel4.Visible := false;
  Mainform.TFP_CENTRE_CLICKClick(nil);
end;

procedure TfrmDBControls.Button35Click(Sender: TObject);
begin
      activateDBTables;
      in_Initial_Visit := true;
      in_FollowUp_Visit := false;
      patients_EditMode := true;
      ALC_TBL_Patients.Active := true;
      ALC_TBL_Patients.Edit;
      ALC_TBL_Patients.Post;
      frmEpisodeDatePicker.DateTimePicker1.DateTime := StrToDate(label130.Caption);
      DataModule2.canShowFadeForm := true;
      Mainform.showPopUp(frmEpisodeDatePicker);

end;

procedure TfrmDBControls.Button36Click(Sender: TObject);
begin
      in_Initial_Visit := true;
      in_FollowUp_Visit := false;
      ALC_TBL_Patients.Active := true;
      ALC_TBL_Patients.Edit;
      ALC_TBL_Patients.Post;
      ALC_TBL_ANSWERS_BASE.Post;
      NavigateTo(3);

end;

procedure TfrmDBControls.Button37Click(Sender: TObject);
begin
      in_Initial_Visit := false;
      in_FollowUp_Visit := true;
      patients_EditMode := false;
      if ScrollBox2.ControlCount = 0 then
        var_EpisodeNum := 2
      else
        var_EpisodeNum :=  ScrollBox2.ControlCount + 2;//returnEpisodeNum(var_Patient_ID{ALC_TBL_Patients.FieldByName('patientID').AsInteger},true);
      //insertNewPatient(3);
      ALC_TBL_ANSWERS_BASE.Edit;
      frmEpisodeDatePicker.DateTimePicker1.Date := Now;
      frmEpisodeDatePicker.DateTimePicker1.Visible := true;
      //DBEdit1.Text := DateToStr(frmEpisodeDatePicker.DateTimePicker1.DateTime);
      label133.Visible := true;
      //insertNewPatient(5);
      patients_EditMode := false;
      DataModule2.canShowFadeForm := true;
      Mainform.showPopUp(frmEpisodeDatePicker);
end;

procedure TfrmDBControls.Button38Click(Sender: TObject);
begin
      activateDBTables;
      in_Initial_Visit := true;
      in_FollowUp_Visit := false;
      patients_EditMode := true;
      ALC_TBL_Patients.Active := true;
      ALC_TBL_Patients.Edit;
      ALC_TBL_Patients.Post;
      frmEpisodeDatePicker.DateTimePicker1.DateTime := StrToDate(label130.Caption);
      DataModule2.canShowFadeForm := true;
      Mainform.showPopUp(frmEpisodeDatePicker);
end;

procedure TfrmDBControls.Button39Click(Sender: TObject);
begin
      in_Initial_Visit := false;
      in_FollowUp_Visit := true;
      ALC_TBL_Patients.Active := true;
      ALC_TBL_Patients.Edit;
      ALC_TBL_Patients.Post;
      ALC_TBL_ANSWERS_BASE.Post;
      NavigateTo_FollowUp(1);
end;

procedure TfrmDBControls.Button3Click(Sender: TObject);
begin
  ALC_TBL_Medical.Active := true;
end;

procedure TfrmDBControls.Button40Click(Sender: TObject);
begin
  Mainform.TFP_INPUT_CLICKclick(nil);
end;

procedure TfrmDBControls.Button41Click(Sender: TObject);
begin
 { TransparentFlashPlayerControl3.Visible := false;
  panel8.Visible := false;   }

  frmDBControls.Close;
end;

procedure TfrmDBControls.Button42Click(Sender: TObject);
begin
  MAinform.TFP_CENTRE_CLICKClick(nil);
 { TransparentFlashPlayerControl3.Visible := false;
  panel8.Visible := false;    }
end;

procedure TfrmDBControls.Button43Click(Sender: TObject);
begin

  Mainform.TFP_INPUT_CLICKclick(nil);
end;

procedure TfrmDBControls.Button44Click(Sender: TObject);
begin

  frmDBControls.Close;
end;

procedure TfrmDBControls.Button45Click(Sender: TObject);
begin

  Mainform.TFP_CENTRE_CLICKClick(nil);
end;

procedure TfrmDBControls.Button46Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmDBControls.Button47Click(Sender: TObject);
begin
 // PageControl1.ActivePage := TabSheet8;
 NavigateTo(8);
end;

procedure TfrmDBControls.Button4Click(Sender: TObject);
begin
  ALC_TBL_ANSWERS_INI_VISIT.Active := true;
end;

procedure TfrmDBControls.Button5Click(Sender: TObject);
begin
//    ALC_TBL_ANSWERS_INI_FOLLOWUP.Active := true;

     visualAcuityRequiredFieldCheck;
     proposedTxRequiredFieldCheck;
     VMTRequiredFieldCheck;

  if ((label120.Visible = false) and (label124.Visible = false) and (label122.Visible = false)) then
    begin
      ALC_TBL_ANSWERS_INI_FOLLOWUP.Edit;
      ALC_TBL_ANSWERS_INI_FOLLOWUP.Post;
        if ((in_Initial_Visit = true)) then
          if(showDisCharge((var_AnswerBAse_ID)) = false) then
            sectionFinish('This concludes the initial visit')
          else
           Button21Click(nil)
        else
          Button22Click(nil);
    end
  else
    Showmessage('Please make sure all required fields (*) are complete before saving');

end;

procedure TfrmDBControls.Button6Click(Sender: TObject);
begin
//  ALC_TBL_FOLLOWUP.Active := true;
if ((FollowUpCheckBoxCheck(99) = true) and (FollowUpCheckBoxCheck(2) = true) and (FollowUpCheckBoxCheck(3) = true)) then
  begin
  
    if showDisCharge((var_AnswerBAse_ID)) = false then
      sectionFinish('This concludes the follow up visit')
    else
      Button22Click(nil);
  end
else
  begin
    Showmessage('Please make sure all required fields (*) are complete before saving');
  end;
end;

procedure TfrmDBControls.Button7Click(Sender: TObject);
begin
  //ALC_TBL_DISCHARGE.Active := true;
  if DBLookupComboBox_DISCHARGE_DischargeReasonID.Text <> '' then
    begin
       ALC_TBL_DISCHARGE.edit;
       ALC_TBL_DISCHARGE.Post;
       NavigateTo_FollowUp(4);
    end
  else
    showmessage('Please give a reason for discharge');
end;

procedure TfrmDBControls.Button8Click(Sender: TObject);
begin
  ALC_TBL_Centres.Insert;
end;

procedure TfrmDBControls.CallComboBoxes(aTabSheet: TTabSheet);
Var
  I : integer;
begin
   for I := 0 to aTabSheet.ControlCount - 1 do
    begin
      if aTabSheet.Controls[I].ClassType = TDBLookupComboBox then
        begin
           TDBLookupComboBox(aTabSheet.Controls[I]).OnCloseUp(nil);
        end;
    end;
end;

function TfrmDBControls.CanSubmitCentre: Boolean;
var
  missingFields: Boolean;
begin
  //check if any information is missing before allowing submission of data
  //entered in the centre page: returns False if required data is missing
  missingFields := False;
  ResetCentresScreen;

  if (MainForm.DBComboBox_Centre_DistanceScaleID.Text = '') then
    begin
      missingFields := True;
      MainForm.lblCentreRequired1.Visible := True;
    end;

  if (MainForm.DBEdit_Centre_Pop.Text = '') then
    begin
      missingFields := True;
      MainForm.lblCentreRequired2.Visible := True;
    end;

  if (DBEdit_Centre_Machines.Text = '') then
    begin
      missingFields := True;
      MainForm.lblCentreRequired3.Visible := True;
    end;

  if missingFields then
    begin
      MainForm.lblCentreRequiredWarning.Visible := True;
      Result := False;
    end
  else
    Result := True;
end;

function TfrmDBControls.CanSubmitPatient: Boolean;
var
  missingFields: Boolean;
begin
  //check if any information is missing before allowing submission of data
  //entered in the patient page: returns False if required data is missing
  missingFields := False;
  ResetPatientDetailsScreen;

  if (MainForm.DBLookupComboBox_Patient_Gender.Text = '') then
    begin
      missingFields := True;
      MainForm.lblPatientRequired1.Visible := True;
    end;

  if (MainForm.DBComboBox_Patient_Age.Text = '') then
    begin
      missingFields := True;
      MainForm.lblPatientRequired2.Visible := True;
    end;

  if missingFields then
    begin
      MainForm.lblPatientRequiredWarning.Visible := True;
      Result := False;
    end
  else
    Result := True;
end;

function TfrmDBControls.checkRecordExists(aTable: TADOTable;
  anAnswerBaseID: integer): Boolean;
var
  Level: Integer;
begin
  // start database transaction
  Level := frmDBControls.ALC_Connection_1.BeginTrans;

  try
        // searching records
        activateDBTables;
        aTable.Close;
        aTable.Open;
        aTable.First;

        if aTable.RecordCount <> 0 then
          begin
            while aTable.Eof <> true do
              begin
                if aTable.FieldByName('AnswerBaseID').AsInteger = anAnswerBaseID then
                  begin
                    Result := true;
                    Break;
                  end
                else
                  begin
                    Result := false;
                    aTable.next;
                  end;
              end;
          end
        else
          begin
            Result := false;
          end;

        // if database operations are successful end transaction and commit data to database
        frmDBControls.ALC_Connection_1.CommitTrans;
      except
        on E: Exception do
          begin
            frmDBControls.ShowDatabaseError(nil, E, aTable.TableName + ' Table', 'SEARCHING DATABASE ERROR: trying to locate a record in the table ' + aTable.TableName);
            frmDBControls.ALC_Connection_1.RollbackTrans;
          end;
      end; // end try
end;

procedure TfrmDBControls.closeDBTables;
Var
  I : Integer;
begin
  for I := 0 to frmDBControls.ComponentCount - 1 do
    begin
      if frmDBControls.Components[I].ClassType = TADOTable then
        begin
       //   showmessage( TADOTable(frmDBControls.Components[I]).Name);
          TADOTable(frmDBControls.Components[I]).Active := false;

        end;
    end;
end;

procedure TfrmDBControls.createFollowUpRecords;
begin

end;

procedure TfrmDBControls.DateTimePicker5Change(Sender: TObject);
begin
 // DBEdit_INI_FOLLOW_ProposedTreatmentDate_OD.Text := DateToStr(DateTimePicker5.DateTime);

end;

procedure TfrmDBControls.DateTimePicker6Change(Sender: TObject);
begin
// DBEdit_INI_FOLLOW_ProposedTreatmentDate_OS.Text := DateToStr(DateTimePicker6.DateTime);
end;

procedure TfrmDBControls.DateTimePicker7Change(Sender: TObject);
begin
DBEdit_DISCHARGE_DischargeDate.Text := DateToStr(DateTimePicker7.DateTime);

end;

procedure TfrmDBControls.DBCheckBox_AnsIni_PrevTreatCataractSurgery_ODClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(3);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_PrevTreatCataractSurgery_OSClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(4);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_PrevTreatGlaucomaFiltrationSurgery_ODClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(3);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_PrevTreatGlaucomaFiltrationSurgery_OSClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(4);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_PrevTreatIntravitrealAntiVEGF_ODClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(3);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_PrevTreatIntravitrealAntiVEGF_OSClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(4);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_PrevTreatIntravitrealSteroidImplant_ODClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(3);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_PrevTreatIntravitrealSteroidImplant_OSClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(4);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_PrevTreatIntravitrealSteroidLiquid_ODClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(3);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_PrevTreatIntravitrealSteroidLiquid_OSClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(4);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_PrevTreatMacularLaserPhotocoagulation_ODClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(3);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_PrevTreatMacularLaserPhotocoagulation_OSClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(4);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_PrevTreatNotRelevant_ODClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(3);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_PrevTreatNotRelevant_OSClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(4);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_PrevTreatOtherIntravitrealInjection_ODClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(3);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_PrevTreatOtherIntravitrealInjection_OSClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(4);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_PrevTreatOtherSurgery_ODClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(3);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_PrevTreatOtherSurgery_OSClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(4);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_PrevTreatPeripheralLaserPhotocoagulation_ODClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(3);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_PrevTreatPeripheralLaserPhotocoagulation_OSClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(4);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_PrevTreatVitrectomy_ODClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(3);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_PrevTreatVitrectomy_OSClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(4);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_SymptomsBlurredVision_ODClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(1);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_SymptomsBlurredVision_OSClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(2);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_SymptomsCentralBlackImage_ODClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(1);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_SymptomsCentralBlackImage_OSClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(2);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_SymptomsDifficultyReadingAtNight_ODClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(1);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_SymptomsDifficultyReadingAtNight_OSClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(2);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_SymptomsDistortedVision_ODClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(1);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_SymptomsDistortedVision_OSClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(2);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_SymptomsFlashesOfLight_ODClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(1);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_SymptomsFlashesOfLight_OSClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(2);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_SymptomsFloaters_ODClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(1);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_SymptomsFloaters_OSClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(2);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_SymptomsNotRelevant_ODClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(1);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_SymptomsNotRelevant_OSClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(2);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_SymptomsObjectsAppearSmaller_ODClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(1);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_SymptomsObjectsAppearSmaller_OSClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(2);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_SymptomsOther_ODClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(1);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_SymptomsOther_OSClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(2);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_SymptomsVisualReduction_ODClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(1);
end;

procedure TfrmDBControls.DBCheckBox_AnsIni_SymptomsVisualReduction_OSClick(
  Sender: TObject);
begin
IniVisitCheckBoxCheck(2);
end;

procedure TfrmDBControls.DBCheckBox_INI_FOLLOW_OCTVitreomacularAdhesion_ODClick(
  Sender: TObject);
begin
  if DBCheckBox_INI_FOLLOW_OCTVitreomacularAdhesion_OD.Checked = true then
    begin
      DBEdit_INI_FOLLOW_OCTVMASize_OD.Visible := true;
    end
  else
    begin
      DBEdit_INI_FOLLOW_OCTVMASize_OD.Visible := false;
    end;
end;

procedure TfrmDBControls.DBCheckBox_INI_FOLLOW_OCTVitreomacularAdhesion_OSClick(
  Sender: TObject);
begin
  if DBCheckBox_INI_FOLLOW_OCTVitreomacularAdhesion_OS.Checked = true then
    begin
      DBEdit_INI_FOLLOW_OCTVMASize_OS.Visible := true;
    end
  else
    begin
      DBEdit_INI_FOLLOW_OCTVMASize_OS.Visible := false;
    end;
end;

procedure TfrmDBControls.DBCheckBox_INI_FOLLOW_SecCateractPresence_ODClick(
  Sender: TObject);
begin
SecondCatRequiredFieldCheck;
end;

procedure TfrmDBControls.DBCheckBox_INI_FOLLOW_SecCateractPresence_OSClick(
  Sender: TObject);
begin
SecondCatRequiredFieldCheck;
end;

procedure TfrmDBControls.DBCheckBox_Medical_Cataract_ODClick(Sender: TObject);
begin
MedicalCheckBoxCheck(2);
end;

procedure TfrmDBControls.DBCheckBox_Medical_Cataract_OSClick(Sender: TObject);
begin
MedicalCheckBoxCheck(3);
end;

procedure TfrmDBControls.DBCheckBox_Medical_DME_ODClick(Sender: TObject);
begin
MedicalCheckBoxCheck(2);
end;

procedure TfrmDBControls.DBCheckBox_Medical_DME_OSClick(Sender: TObject);
begin
MedicalCheckBoxCheck(3);
end;

procedure TfrmDBControls.DBCheckBox_Medical_DryAMD_ODClick(Sender: TObject);
begin
MedicalCheckBoxCheck(2);
end;

procedure TfrmDBControls.DBCheckBox_Medical_DryAMD_OSClick(Sender: TObject);
begin
MedicalCheckBoxCheck(3);
end;

procedure TfrmDBControls.DBCheckBox_Medical_HighMyopia_ODClick(Sender: TObject);
begin
MedicalCheckBoxCheck(2);
end;

procedure TfrmDBControls.DBCheckBox_Medical_HighMyopia_OSClick(Sender: TObject);
begin
MedicalCheckBoxCheck(3);
end;

procedure TfrmDBControls.DBCheckBox_Medical_MacularHoleWithoutVMT_ODClick(
  Sender: TObject);
begin
MedicalCheckBoxCheck(2);
end;

procedure TfrmDBControls.DBCheckBox_Medical_MacularHoleWithoutVMT_OSClick(
  Sender: TObject);
begin
MedicalCheckBoxCheck(3);
end;

procedure TfrmDBControls.DBCheckBox_Medical_MacularHoleWithVMT_ODClick(
  Sender: TObject);
begin
MedicalCheckBoxCheck(2);
end;

procedure TfrmDBControls.DBCheckBox_Medical_MacularHoleWithVMT_OSClick(
  Sender: TObject);
begin
MedicalCheckBoxCheck(3);
end;

procedure TfrmDBControls.DBCheckBox_Medical_NotRelevant_ODClick(
  Sender: TObject);
begin
MedicalCheckBoxCheck(2);
end;

procedure TfrmDBControls.DBCheckBox_Medical_NotRelevant_OSClick(
  Sender: TObject);
begin
MedicalCheckBoxCheck(3);
end;

procedure TfrmDBControls.DBCheckBox_Medical_Other_ODClick(Sender: TObject);
begin
MedicalCheckBoxCheck(2);
end;

procedure TfrmDBControls.DBCheckBox_Medical_Other_OSClick(Sender: TObject);
begin
MedicalCheckBoxCheck(3);
end;

procedure TfrmDBControls.DBCheckBox_Medical_ProliferativeDiabeticRetinopathy_ODClick(
  Sender: TObject);
begin
MedicalCheckBoxCheck(2);
end;

procedure TfrmDBControls.DBCheckBox_Medical_ProliferativeDiabeticRetinopathy_OSClick(
  Sender: TObject);
begin
MedicalCheckBoxCheck(3);
end;

procedure TfrmDBControls.DBCheckBox_Medical_RetinalDetachment_ODClick(
  Sender: TObject);
begin
MedicalCheckBoxCheck(2);
end;

procedure TfrmDBControls.DBCheckBox_Medical_RetinalDetachment_OSClick(
  Sender: TObject);
begin
MedicalCheckBoxCheck(3);
end;

procedure TfrmDBControls.DBCheckBox_Medical_RetinalVeinOcclusion_ODClick(
  Sender: TObject);
begin
MedicalCheckBoxCheck(2);
end;

procedure TfrmDBControls.DBCheckBox_Medical_RetinalVeinOcclusion_OSClick(
  Sender: TObject);
begin
MedicalCheckBoxCheck(3);
end;

procedure TfrmDBControls.DBCheckBox_Medical_VitreomacularAdhesion_ODClick(
  Sender: TObject);
begin
 MedicalCheckBoxCheck(2);
end;

procedure TfrmDBControls.DBCheckBox_Medical_VitreomacularAdhesion_OSClick(
  Sender: TObject);
begin
MedicalCheckBoxCheck(3);
end;

procedure TfrmDBControls.DBCheckBox_Medical_VitreomacularTraction_ODClick(
  Sender: TObject);
begin
MedicalCheckBoxCheck(2);
end;

procedure TfrmDBControls.DBCheckBox_Medical_VitreomacularTraction_OSClick(
  Sender: TObject);
begin
MedicalCheckBoxCheck(3);
end;

procedure TfrmDBControls.DBCheckBox_Medical_WetAMD_ODClick(Sender: TObject);
begin
MedicalCheckBoxCheck(2);
end;

procedure TfrmDBControls.DBCheckBox_Medical_WetAMD_OSClick(Sender: TObject);
begin
MedicalCheckBoxCheck(3);
end;

procedure TfrmDBControls.DBComboBox_Centre_DistanceScaleIDChange(
  Sender: TObject);
begin

    requiredFieldCheck(DBComboBox_Centre_DistanceScaleID,Label90);

end;

procedure TfrmDBControls.DBComboBox_Centre_DistanceScaleIDCloseUp(
  Sender: TObject);
begin
  requiredFieldCheck(DBComboBox_Centre_DistanceScaleID,Label90);
  setDDLookupSourceDIS(ALC_TBL_Centres.FieldByName('DistanceVisualAcuityScaleID').AsInteger);
end;

procedure TfrmDBControls.DBComboBox_Centre_NearScaleIDChange(Sender: TObject);
begin

     requiredFieldCheck(DBComboBox_Centre_NearScaleID,Label91);

end;

procedure TfrmDBControls.DBComboBox_Centre_NearScaleIDClick(Sender: TObject);
begin
setDDLookupSourceDIS(ALC_TBL_Centres.FieldByName('DistanceVisualAcuityScaleID').AsInteger);
end;

procedure TfrmDBControls.DBComboBox_Centre_NearScaleIDCloseUp(Sender: TObject);
begin
  requiredFieldCheck(DBComboBox_Centre_NearScaleID,Label91);
  setDDLookupSourceNEA(ALC_TBL_Centres.FieldByName('NearVisualAcuityScaleID').AsInteger);
end;

procedure TfrmDBControls.DBComboBox_Patient_AgeCloseUp(Sender: TObject);
begin
requiredFieldCheck(DBComboBox_Patient_Age,Label100);
end;

procedure TfrmDBControls.DBEdit_CentreGUIDChange(Sender: TObject);
begin
//  requiredFieldCheck(DBEdit_CentreGUID,Label97);
end;

procedure TfrmDBControls.DBEdit_CentreGUIDClick(Sender: TObject);
begin
{  Showmessage('This is a read-only field' + sLineBreak +
              'Please use the "GEN" button to generate a Centre GUID');  }
end;

procedure TfrmDBControls.DBEdit_Centre_MachinesChange(Sender: TObject);
begin

     requiredFieldCheck(DBEdit_Centre_Machines,Label93);

end;

procedure TfrmDBControls.DBEdit_Centre_PopChange(Sender: TObject);
begin

     requiredFieldCheck(DBEdit_Centre_Pop,Label92);

end;

procedure TfrmDBControls.DBEdit_DISCHARGE_DischargeDateChange(
  Sender: TObject);
begin
    if DBEdit_DISCHARGE_DischargeDate.Text <> '' then
  DateTimePicker7.Date := StrToDate(DBEdit_DISCHARGE_DischargeDate.Text);
end;

procedure TfrmDBControls.DBEdit_INI_FOLLOW_ProposedTreatmentDate_ODChange(
  Sender: TObject);
begin
 // if DBEdit_INI_FOLLOW_ProposedTreatmentDate_OD.Text <> '' then
 // DateTimePicker5.Date := StrToDate(DBEdit_INI_FOLLOW_ProposedTreatmentDate_OD.Text);
end;

procedure TfrmDBControls.DBEdit_INI_FOLLOW_ProposedTreatmentDate_OSChange(
  Sender: TObject);
begin
// if DBEdit_INI_FOLLOW_ProposedTreatmentDate_OS.Text <> '' then
// DateTimePicker6.Date := StrToDate(DBEdit_INI_FOLLOW_ProposedTreatmentDate_OS.Text);
end;

procedure TfrmDBControls.DBEdit_Patient_EnteredByChange(Sender: TObject);
begin
requiredFieldCheck(DBEdit_Patient_EnteredBy,Label96);
end;

procedure TfrmDBControls.DBLookupCB_FOLLOWUP_OccularSymptomsOtherID_OSClick(
  Sender: TObject);
begin
//requiredFieldCheck(DBLookupCB_FOLLOWUP_OccularSymptomsOtherID_OS,Label99);
end;

procedure TfrmDBControls.DBLookupComboBox_INI_FOLLOW_OCTVMTID_ODCloseUp(
  Sender: TObject);
begin
//iniFollowUpRequiredFieldCheck(3);
//visualAcuityRequiredFieldCheck;
VMTRequiredFieldCheck;
end;

procedure TfrmDBControls.DBLookupComboBox_INI_FOLLOW_OCTVMTID_OSClick(
  Sender: TObject);
begin
VMTRequiredFieldCheck;
end;

procedure TfrmDBControls.DBLookupComboBox_INI_FOLLOW_OCTVMTID_OSCloseUp(
  Sender: TObject);
begin
//iniFollowUpRequiredFieldCheck(3);
visualAcuityRequiredFieldCheck;
end;

procedure TfrmDBControls.DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_ODCloseUp(
  Sender: TObject);
begin
  if LowerCase(DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OD.Text) = 'discharge' then
    begin
      ALC_TBL_ANSWERS_INI_FOLLOWUP.FieldByName('ProposedTreatmentID_OS').AsInteger := 8;
      DateTimePicker5.Visible := false;
      DateTimePicker6.Visible := false;
    end;


  if ((LowerCase(DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OD.text) = 'not applicable') or (LowerCase(DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OD.text) = 'watchful waiting / no treatment') or
     (LowerCase(DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OD.text) = 'other') or (LowerCase(DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OD.text) = 'discharge')) then
     begin
       DateTimePicker5.Visible := false;
     end
  else
    begin
      DateTimePicker5.Visible := true;
    end;

    proposedTxRequiredFieldCheck;
end;

procedure TfrmDBControls.DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OSCloseUp(
  Sender: TObject);
begin
  if LowerCase(DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OS.text) = 'discharge' then
    begin
      ALC_TBL_ANSWERS_INI_FOLLOWUP.FieldByName('ProposedTreatmentID_OD').AsInteger := 8;
      DateTimePicker5.Visible := false;
      DateTimePicker6.Visible := false;
    end;


  if ((LowerCase(DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OS.text) = 'not applicable') or (LowerCase(DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OS.text) = 'watchful waiting / no treatment') or
     (LowerCase(DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OS.text) = 'other') or (LowerCase(DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OS.text) = 'discharge')) then
     begin
       DateTimePicker6.Visible := false;
     end
  else
    begin
      DateTimePicker6.Visible := true;
    end;
    proposedTxRequiredFieldCheck;
end;

procedure TfrmDBControls.DBLookupComboBox_INI_FOLLOW_ProposedTreatmentRationalID_ODClick(
  Sender: TObject);
begin
proposedTxRequiredFieldCheck;
end;

procedure TfrmDBControls.DBLookupComboBox_INI_FOLLOW_ProposedTreatmentRationalID_ODCloseUp(
  Sender: TObject);
begin
//iniFollowUpRequiredFieldCheck(2);
proposedTxRequiredFieldCheck;
end;

procedure TfrmDBControls.DBLookupComboBox_INI_FOLLOW_ProposedTreatmentRationalID_OSClick(
  Sender: TObject);
begin
//iniFollowUpRequiredFieldCheck(2);
end;

procedure TfrmDBControls.DBLookupComboBox_INI_FOLLOW_ProposedTreatmentRationalID_OSCloseUp(
  Sender: TObject);
begin
proposedTxRequiredFieldCheck;
end;

procedure TfrmDBControls.DBLookupComboBox_INI_FOLLOW_VisualAcuityDistance_ODCloseUp(
  Sender: TObject);
begin
  visualAcuityRequiredFieldCheck;
end;

procedure TfrmDBControls.DBLookupComboBox_INI_FOLLOW_VisualAcuityDistance_OSCloseUp(
  Sender: TObject);
begin
  visualAcuityRequiredFieldCheck;
end;

procedure TfrmDBControls.DBLookupComboBox_INI_FOLLOW_VisualAcuityNear_ODCloseUp(
  Sender: TObject);
begin
//iniFollowUpRequiredFieldCheck(1);
  visualAcuityRequiredFieldCheck;
end;

procedure TfrmDBControls.DBLookupComboBox_INI_FOLLOW_VisualAcuityNear_OSCloseUp(
  Sender: TObject);
begin
//  iniFollowUpRequiredFieldCheck(1);
  visualAcuityRequiredFieldCheck;
end;

procedure TfrmDBControls.DBLookupComboBox_Medical_ReasonForReferalIDCloseUp(
  Sender: TObject);
begin
requiredFieldCheck(DBLookupComboBox_Medical_ReasonForReferalID,Label103);
end;

procedure TfrmDBControls.DBLookupComboBox_Medical_SourceOfReferalIDCloseUp(
  Sender: TObject);
begin
  requiredFieldCheck(DBLookupComboBox_Medical_SourceOfReferalID,Label102);

end;

procedure TfrmDBControls.DBLookupComboBox_Patient_GenderCloseUp(
  Sender: TObject);
begin
requiredFieldCheck(DBLookupComboBox_Patient_Gender,Label99);
end;

procedure TfrmDBControls.defaultCheckBoxes(aTable : TADOTable; aTabSheet: TTabSheet;
  aBool: Boolean);
var
  I : Integer;
  Level: Integer;
begin
  // start database transaction
  Level := frmDBControls.ALC_Connection_1.BeginTrans;

  try
    aTable.Active := True;

    if not(aTable.State in [dsEdit, dsInsert])then
      aTable.Edit;

    for I := 0 to aTabSheet.ControlCount - 1 do
    begin
      if aTabSheet.Controls[I].ClassType = TDBCheckBox then
        begin
          if TDBCheckBox(aTabSheet.Controls[I]).Tag <> 99 then
            aTable.FieldByName(TDBCheckBox(aTabSheet.Controls[I]).DataField).AsBoolean := aBool
        end;
    end;

    frmDBControls.ALC_Connection_1.CommitTrans;
  except
    on E: Exception do
      begin
        frmDBControls.ShowDatabaseError(nil, E, aTable.TableName + ' Table', 'DATABASE CHECKBOXES ERROR: default checkboxes value could not be restored in table ' + aTable.TableName);
        frmDBControls.ALC_Connection_1.RollbackTrans;
      end;
  end; // end try
end;

procedure TfrmDBControls.destroyFollowUpLabels;
Var
  I : Integer;
begin
  for I := ScrollBox2.ControlCount -1 downto 0 do
    begin
       if ScrollBox2.Controls[I].ClassType = TLabel Then
        begin
           if pos('FollowUpRec_Label',TLabel(ScrollBox2.Controls[I]).Name) <> 0 then
            begin
              TLabel(ScrollBox2.Controls[I]).Free;
            end;
        end;
    end;
end;

procedure TfrmDBControls.destroyRecLabels;
Var
  I : Integer;
begin
  for I := ScrollBox1.ControlCount -1 downto 0 do
    begin
       if ScrollBox1.Controls[I].ClassType = TLabel Then
        begin
           if pos('Rec_Label',TLabel(ScrollBox1.Controls[I]).Name) <> 0 then
            begin
              TLabel(ScrollBox1.Controls[I]).Free;
            end;
        end;
    end;
end;

function TfrmDBControls.FollowUpCheckBoxCheck(aTagNum: Integer): Boolean;
var
  required : boolean;
  I : integer;
begin
  required := false;
  for I := 0 to tabSheet6.ControlCount - 1 do
    begin
      if TabSheet6.Controls[I].ClassType = TDBCheckBox then
        begin
          if TDBCheckBox(TabSheet6.Controls[I]).Tag = aTagNum then
            begin
              if TDBCheckBox(TabSheet6.Controls[I]).Checked = false then
                begin
                  required := false;
                end
              else
                begin
                  required := true;
                  Break;
                end;
            end;
        end
      else
        begin
          if TabSheet6.Controls[I].ClassType = TDBLookupComboBox then
                  begin
                    if TDBLookupComboBox(TabSheet6.Controls[I]).Tag = aTagNum then
                      begin
                        if TDBLookupComboBox(TabSheet6.Controls[I]).text = '' then
                          begin
                            required := false;
                          end
                        else
                          begin
                            required := true;
                            Break;
                          end;
                      end;
                  end;
        end;
    end;



    if required = false then
      begin
        if aTagNum = 99 then
          begin
            //Showmessage('Please select at least one occular symptom for OS');
            Label123.Visible := true;
          end
        else if aTagNum = 2 then
          begin
           // Showmessage('Please select at least one of the occular symptom for OD');
            Label9.Visible := true;
          end
        else if aTagNum = 3 then
          begin
          //  Showmessage('Please select at least one Previous treatment received in the last 5 years for OS');
            Label125.Visible := true;
          end
      end
    else
      begin
        if aTagNum = 99 then
          Label123.Visible := false;

        if (aTagNum = 2) then
          Label9.Visible := false;

        if (aTagNum = 3) then
          Label125.Visible := false;
      end;


    Result := required;

end;

procedure TfrmDBControls.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 MainForm.Enabled := true;
end;

procedure TfrmDBControls.FormCreate(Sender: TObject);
begin
  KeyPreview := true;
end;

procedure TfrmDBControls.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((ssAlt in Shift) and (Key = VK_F4)) then
 Key := 0;
end;

procedure TfrmDBControls.FormShow(Sender: TObject);
begin

 { if ALC_TBL_Patients.RecordCount > 0 then
    begin
      PageControl1.ActivePage := TabSheet8;
    end
  else
    begin
      If CentreCheck = true then
        begin
          insertNewPatient;
          NavigateTo(1);
        end;
    end;  }
    mainform.Enabled := false;
end;

procedure TfrmDBControls.getCentresDetails;
begin
  ALC_TBL_Centres.Close;
  ALC_TBL_Centres.Open;
  ALC_TBL_Centres.Edit;
  ALC_TBL_Centres.First;
  var_Center_ID := frmDBControls.ALC_TBL_Centres.FieldByName('CentreID').AsInteger;
  var_Center_UUID := frmDBControls.ALC_TBL_Centres.FieldByName('CentreUUID').AsString;
  centreFound := True;
end;

procedure TfrmDBControls.GetPreviousPatientRecords;
var
  Rec_Label : TLabel;
  I : integer;
  ageID : integer;
  genderID : integer;
  ageDesc, genderDesc : String;
  labColor : TColor;
begin
  ALC_TBL_Patients.Active := true;
  ALC_TBL_Patients.First;
    //Loop through patients table
      while ((ALC_TBL_Patients.Eof <> true)) do
        begin
          if ALC_TBL_Patients.FieldByName('patientID').AsString <> '' then
            begin
                Rec_Label := Tlabel.Create(self);
                Rec_Label.Name := 'Rec_Label' + inttostr(Rec_Label_Count);
                Rec_Label.Tag := ALC_TBL_Patients.FieldByName('patientID').AsInteger;
                ageID := ALC_TBL_Patients.FieldByName('ageID').AsInteger;
                genderID := ALC_TBL_Patients.FieldByName('genderID').AsInteger;
                ADOTable1.Active := true;
                ADOTable2.Active := true;
                ADOTable1.First;
                ADOTable2.First;
                while ADOTable1.Eof <> true do
                  begin
                    if ADOTable1.FieldByName('ageID').AsInteger = ageID then
                      ageDesc :=  ADOTable1.FieldByName('ageRangeDesc').AsString;

                    ADOTable1.Next;
                  end;
                while ADOTable2.Eof <> true do
                  begin
                    if ADOTable2.FieldByName('genderID').AsInteger = genderID then
                      genderDesc :=  ADOTable2.FieldByName('gender').AsString;

                    ADOTable2.Next;
                  end;

                Rec_Label.Caption := 'PatientID: ' + ALC_TBL_Patients.FieldByName('patientID').AsString;
                Rec_Label.Caption :=  Rec_Label.Caption + '   || Gender: ' + genderDesc;
                Rec_Label.Caption :=  Rec_Label.Caption + '   || Age: ' + ageDesc;
                Rec_Label.Caption :=  Rec_Label.Caption + '   || date Added: ' + ALC_TBL_Patients.FieldByName('dateAdded').AsString;
                Rec_Label.Parent := ScrollBox1;
                Rec_Label.Font.Name := 'Arial';
                Rec_Label.Font.size := 12;
                Rec_Label.Transparent := true;
                Rec_Label.Cursor := crHandPoint;
                Rec_Label.OnClick := onLabClick;
                for I := 0 to ScrollBox1.ControlCount - 1 do
                  begin
                    if ScrollBox1.Controls[I].ClassType = TLabel Then
                      begin
                        if pos('Rec_Label',TLabel(ScrollBox1.Controls[I]).Name) <> 0 then
                          begin
                            Rec_Label_Count := Rec_Label_Count + 1;
                              if Rec_Label_Count = 1 then
                                begin
                                  Rec_Label.Top := 5;
                                  Rec_Label.Left := 5;
                                end
                              else
                                begin
                                  Rec_Label.Top := TLabel(ScrollBox1.Controls[I]).Top + TLabel(ScrollBox1.Controls[I]).height + 10;
                                  Rec_Label.Left := TLabel(ScrollBox1.Controls[I]).Left;
                                end;
                          end;
                      end;
                  end;
                  if Rec_Label_Count = 0 then
                    begin
                     Rec_Label.Top := 10;
                     Rec_Label.Left := 10;
                    end;
                  Rec_Label.Parent := ScrollBox1;
                  Rec_Label.Visible := true;



                  if ALC_TBL_Patients.FieldByName('dateAdded').AsString = '' then
                   Rec_Label.Font.Color := ClRed
                  else
                    Rec_Label.Font.Color := ClGreen;

                 { if ScrollBox1.ControlCount = ALC_TBL_Patients.RecordCount then
                    begin
                      Rec_Label.Font.Color := ClRed;
                    end
                  else
                    begin
                      Rec_Label.Font.Color := clBlack;
                    end;  }



            end;
            ALC_TBL_Patients.Next;
        end;
     ALC_TBL_Patients.First;
     ALC_TBL_Patients.Refresh;
end;

procedure TfrmDBControls.getPreviousRecords(anID: Integer; aTable: TADOTable; aFieldName : String);
var
  I : Integer;
  Level: Integer;
begin
  // start database transaction
  Level := frmDBControls.ALC_Connection_1.BeginTrans;

  try
    activateDBTables;
    aTable.First;
    while aTable.Eof <> true do
      begin
        if aTable.FieldByName(aFieldName).AsInteger = anID then
          begin
           aTable.Edit;
          // aTable.UpdateRecord;
           Break
          end
        else
          aTable.Next;
      end;

    // if database operations are successful end transaction and commit data to database
    frmDBControls.ALC_Connection_1.CommitTrans;
  except
    on E: Exception do
      begin
        frmDBControls.ShowDatabaseError(nil, E, aTable.TableName + ' Table', 'RETRIEVING RECORD ERROR: previous record could not be found in table ' + aTable.TableName);
        frmDBControls.ALC_Connection_1.RollbackTrans;
      end;
  end; // end try









end;

function TfrmDBControls.IDGen: string;
const
  Chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890';
{var
  S: string;
  i, A, N, D: integer;
  id_String: string;
  id_Char_Count, charIndex : integer;
begin
{
  ************************************************************************
  *                                                                      *
  * FUNCTION VERSION NO: 1.0.0;                                          *
  * ------------------------------------------------------------------   *
  * DESCRIPTION: The IDGen function is used to produce a GUID;           *
  * ------------------------------------------------------------------   *
  * PARAMS: None;                                                        *
  * ------------------------------------------------------------------   *
  * RESULT: GUID (String);                                               *
  * ------------------------------------------------------------------   *
  * NOTES:  ""                                                           *
  * ------------------------------------------------------------------   *
  * ABOUT: | DATE:      || AUTHOR: ||  ACTION:                           *
  *        | 30/09/2013 || DanS;   ||  Created;                          *
  *                                                                      *
  ************************************************************************
}

{  D := 0;
  //Loop controls GUID length
  for id_Char_Count := 1 to 36 do
    begin
      //Get a random character from Chars
      Randomize;
      charIndex := Random(Length(Chars)) + 1;
      //Every 4th char (D), place a hyphen
      if D < 4 then
        begin
          //Check to last char is different to the next char to be added to avoid duplicates.
          if ((pos(Chars[charIndex],id_String) <> Length(id_String)) or (id_String = '')) Then
            begin
              id_String := id_String + Chars[charIndex];
              D := D + 1;
            end
          else
            begin
              Randomize;
              charIndex := Random(Length(Chars)) + 1;
              id_String := id_String + Chars[charIndex];
              D := D + 1;
            end;
        end
      else
        begin
          //Add hyphen every 4th char unless at the end of the string
          if id_Char_Count < 36 then
            begin
              id_String :=  id_String + '-';
              D := 0;
            end;
        end;
    end;
    Result := id_String; {GUID as String}
var
  ID: TGUID;
  idStr : String;
begin
  Result := '';
  if CoCreateGuid(ID) = S_OK then
    idStr := GUIDToString(ID);
    idStr := copy(idStr,2,length(idStr)-2);
    Result := idStr;
end;


function TfrmDBControls.iniFollowUpRequiredFieldCheck(aCase: Integer): boolean;
begin
   case aCase of
    1:Begin
       if ((DBLookupComboBox_INI_FOLLOW_VisualAcuityDistance_OD.Text = '') and (DBLookupComboBox_INI_FOLLOW_VisualAcuityDistance_OS.Text = '')) then
        begin
          Result := false;
          Label120.Visible := true;
        end;
    End;

    2:Begin
        if ((DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OD.Text = '') and (DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OS.Text = '')) then
          begin
            Result := false;
            Label124.Visible := true;
          end;
    End;

    3:Begin
        
    End;
   end;
end;

function TfrmDBControls.IniVisitCheck: Boolean;
var
  MsgString : String;
begin
{
  ************************************************************************
  *                                                                      *
  * FUNCTION VERSION NO: 1.0.0;                                          *
  * ------------------------------------------------------------------   *
  * DESCRIPTION: Function to Check if an Ini visit record                *
  *              has been inserted and all of the required fields        *
  *              have been entered                                       *
  * ------------------------------------------------------------------   *
  * PARAMS: None;                                                        *
  * ------------------------------------------------------------------   *
  * RESULT: Boolean (True if Ini Visit found/False if no Ini Visit found;*
  * ------------------------------------------------------------------   *
  * NOTES:  ""                                                           *
  * ------------------------------------------------------------------   *
  * ABOUT: | DATE:      || AUTHOR: ||  ACTION:                           *
  *        | 04/10/2013 || DanS;   ||  Created;                          *
  *                                                                      *
  ************************************************************************


  MsgString := '';

  if ALC_TBL_ANSWERS_INI_VISIT.RecordCount = 0 then
    Result := false
  else
    begin
     ALC_TBL_ANSWERS_INI_VISIT.Last;
      if ((DBLookupComboBox_Medical_SourceOfReferalID.Text = '') or
          (DBLookupComboBox_Medical_ReasonForReferalID.Text = ''))
      then
        begin
          MsgString := 'The system has detected that not all the required medical history details have been entered.' + sLineBreak;
           if (DBLookupComboBox_Medical_SourceOfReferalID.Text = '') then
            begin
              label102.Visible := true;
              MsgString := MsgString + 'Please select the source of referal.' + sLineBreak;
            end
           else
            begin
              label102.Visible := false;
              MsgString := MsgString + '';
            end;

            THIS IS THE NAME OF THE GAME.... FOOTBALL.

           if (DBLookupComboBox_Medical_ReasonForReferalID.Text = '') then
            begin
              label103.Visible := true;
              MsgString := MsgString + 'Please select the reason for referal.' + sLineBreak;
            end
           else
            begin
              label103.Visible := false;
              MsgString := MsgString + '';
            end;

          Result := false;
          frmDBControls.PageControl1.ActivePage := frmDBControls.TabSheet3;
          showmessage(MsgString);
        end
      else
        begin
          Result := true;
        end;

    end;
        }
end;

function TfrmDBControls.IniVisitCheckBoxCheck(aTagNum: Integer): Boolean;
Var
  I : integer;
  required : Boolean;
begin
 {
  ************************************************************************
  *                                                                      *
  * FUNCTION VERSION NO: 1.0.0;                                          *
  * ------------------------------------------------------------------   *
  * DESCRIPTION: Function to Check if a selection has been made for the  *
  *              medical table questions                                 *
  * ------------------------------------------------------------------   *
  * PARAMS: a Tag Num (Integer);                                         *
  * ------------------------------------------------------------------   *
  * RESULT: Boolean (True if condition is met                            *
  *          ie a selction has been made);                               *
  * ------------------------------------------------------------------   *
  * NOTES:  ""                                                           *
  * ------------------------------------------------------------------   *
  * ABOUT: | DATE:      || AUTHOR: ||  ACTION:                           *
  *        | 03/10/2013 || DanS;   ||  Created;                          *
  *                                                                      *
  ************************************************************************
}
  required := false;

   for I := 0 to mainform.pg_Ini_Visit.ControlCount - 1 do
    begin
      if mainform.pg_Ini_Visit.Controls[I].ClassType = TDBCheckBox then
        begin
          if TDBCheckBox(mainform.pg_Ini_Visit.Controls[I]).Tag = aTagNum then
            begin
              if TDBCheckBox(mainform.pg_Ini_Visit.Controls[I]).Checked = false then
                begin
                  required := false;
                end
              else
                begin
                  required := true;
                  Break;
                end;
            end;
        end
    end;

    if required = false then
      begin
        if aTagNum = 1 then
          begin
            Mainform.Label123.Visible := true;
          end
        else if aTagNum = 2 then
          begin
            Mainform.Label54.Visible := true;
          end
        else if aTagNum = 3 then
          begin
            Mainform.Label118.Visible := true;
          end
        else if aTagNum = 4 then
          begin
            Mainform.Label119.Visible := true;
          end;
      end
    else
      begin
        if aTagNum = 1 then
          Mainform.Label108.Visible := false;

        if (aTagNum = 2) then
          Mainform.Label54.Visible := false;


        if (aTagNum = 3) then
          Mainform.Label118.Visible := false;

        if (aTagNum = 4) then
          Mainform.Label119.Visible := false;
      end;

  if ((MainForm.label108.Visible = true) or (MainForm.label54.Visible = true) or (MainForm.label118.Visible = true) or (MainForm.label119.Visible = true)) then
    MainForm.Label82.Visible := true
  else
    MainForm.Label82.Visible := false;

  Result := required;
end;

procedure TfrmDBControls.IntialiseNewCentre;
begin
  // store new Centre ID
  var_Center_UUID := IDGen;
end;

procedure TfrmDBControls.IntialiseNewPatient;
begin
  // store new Patient and AnswerBase IDs
  var_Patient_ID := 0; //Set to zero to start, this will be updated once the patient details have been inserted
  var_Patient_UUID := IDGen;
  var_AnswerBAse_ID := 0; //Set this to zero to start, this will be updated once an answerbase has been inserted for this patient
end;

procedure TfrmDBControls.insertNewIniVisit;
var
  I : integer;
  Level: Integer;
begin
  {
  ************************************************************************
  *                                                                      *
  * FUNCTION VERSION NO: 1.0.0;                                          *
  * ------------------------------------------------------------------   *
  * DESCRIPTION:  procedure to ready the Ini Visit DB controls,          *
  *                                                                      *
  * ------------------------------------------------------------------   *
  * PARAMS: None;                                                        *
  * ------------------------------------------------------------------   *
  * RESULT:  Ini Visit DB controls are active;                           *
  * ------------------------------------------------------------------   *
  * NOTES:  ""                                                           *
  * ------------------------------------------------------------------   *
  * ABOUT: | DATE:      || AUTHOR: ||  ACTION:                           *
  *        | 04/10/2013 || DanS;   ||  Created;                          *
  *                                                                      *
  *                                                                      *
  ************************************************************************
}


   // start database transaction
      Level := frmDBControls.ALC_Connection_1.BeginTrans;

      try
        if Not (ALC_TBL_ANSWERS_INI_VISIT.State in [dsEdit, dsInsert]) then
          begin
            ALC_TBL_ANSWERS_INI_VISIT.Insert;
          end;

        DBEdit_AnsIni_AnswerBaseID.Text :=  ALC_TBL_ANSWERS_BASE.FieldByName('AnswerBaseID').AsString;
        for I := 0 to TabSheet4.ControlCount - 1 do
          begin
            if TabSheet4.Controls[I].ClassType = TDBCheckBox then
              begin
                ALC_TBL_ANSWERS_INI_VISIT.FieldByName(TDBCheckBox(TabSheet4.Controls[I]).DataField).AsBoolean := False;
              end;
          end;


        ALC_TBL_ANSWERS_INI_VISIT.Post;
        // if database operations are successful end transaction and commit data to database
        frmDBControls.ALC_Connection_1.CommitTrans;

        // select next page
        // add next operation(s) code here...
      except
        on E: Exception do
          begin
            frmDBControls.ShowDatabaseError(nil, E, 'Answers Initial And Followup Visit Table', 'ERROR DATABASE INSERT: the Answers Initial And Followup Visit details have not been submitted');
            frmDBControls.ALC_Connection_1.RollbackTrans;
          end;
      end; // end try









end;

procedure TfrmDBControls.insertNewMedical;
var
  I : integer;
begin
  {
  ************************************************************************
  *                                                                      *
  * FUNCTION VERSION NO: 1.0.0;                                          *
  * ------------------------------------------------------------------   *
  * DESCRIPTION:  procedure to ready the Medical history DB controls,    *
  *                                                                      *
  * ------------------------------------------------------------------   *
  * PARAMS: None;                                                        *
  * ------------------------------------------------------------------   *
  * RESULT:  Medical DB controls are active;                             *
  * ------------------------------------------------------------------   *
  * NOTES:  ""                                                           *
  * ------------------------------------------------------------------   *
  * ABOUT: | DATE:      || AUTHOR: ||  ACTION:                           *
  *        | 03/10/2013 || DanS;   ||  Created;                          *
  *                                                                      *
  *                                                                      *
  ************************************************************************
}

  if Not (ALC_TBL_Medical.State in [dsEdit, dsInsert]) then
    begin
//      ALC_TBL_Medical.Insert;
    end;

end;

procedure TfrmDBControls.insertNewPatientOLD(aCaseNum : integer);
begin
  {
  ************************************************************************
  *                                                                      *
  * FUNCTION VERSION NO: 1.0.0;                                          *
  * ------------------------------------------------------------------   *
  * DESCRIPTION: procedure to ready the patient DB controls, generate a  *
  *              patient GUID and post it leaving the other patient      *
  *              controls ready for the user to input                    *
  * ------------------------------------------------------------------   *
  * PARAMS: None;                                                        *
  * ------------------------------------------------------------------   *
  * RESULT:  Patient GUID posted to Patient DB table and other Patient DB*
  *          controls are active;                                        *
  * ------------------------------------------------------------------   *
  * NOTES:  ""                                                           *
  * ------------------------------------------------------------------   *
  * ABOUT: | DATE:      || AUTHOR: ||  ACTION:                           *
  *        | 02/10/2013 || DanS;   ||  Created;                          *
  *                                                                      *
  *                                                                      *
  ************************************************************************
}
      activateDBTables;
       case aCaseNum of

       1 : begin  {Patients Table}
           ALC_TBL_Patients.Insert;
           DBEdit_Patinet_GUID.Text := IDGen;
           DBEdit_Patient_CentreID.Text := ALC_TBL_Centres.FieldByName('centreID').AsString;
           DBEdit_Patient_centreGUID.Text := ALC_TBL_Centres.FieldByName('centreGUID').AsString;
           defaultCheckBoxes(ALC_TBL_Patients,TabSheet2,false);
           ALC_TBL_Patients.Post;
           requiredFieldCheck(DBComboBox_Centre_DistanceScaleID,Label90);
           requiredFieldCheck(DBComboBox_Centre_NearScaleID,Label91);
       end;

       2 : begin {Medical Table}
             ALC_TBL_Medical.Insert;
             ALC_TBL_Medical.FieldByName('AnswerBaseID').AsInteger := var_AnswerBAse_ID;
             ALC_TBL_Medical.FieldByName('patientID').AsString := inttostr(var_Patient_ID);//ALC_TBL_Patients.FieldByName('patientID').AsString;
             defaultCheckBoxes(ALC_TBL_Medical,TabSheet3,false);
             ALC_TBL_Medical.Post;
             requiredFieldCheck(DBLookupComboBox_Medical_SourceOfReferalID,Label102);
             requiredFieldCheck(DBLookupComboBox_Medical_ReasonForReferalID,Label103);
             MedicalCheckBoxCheck(1);
             MedicalCheckBoxCheck(2);
             MedicalCheckBoxCheck(3);
       end;

       3 : begin {ANSWERS_BASE Table}
            // ALC_TBL_ANSWERS_BASE.Insert;
             ALC_TBL_ANSWERS_BASE.FieldByName('patientID').AsString := inttostr(var_Patient_ID);
             ALC_TBL_ANSWERS_BASE.FieldByName('questionnaireID').AsString := '1';
             ALC_TBL_ANSWERS_BASE.FieldByName('EnteredBy').AsString := '1';
             ALC_TBL_ANSWERS_BASE.FieldByName('EpisodeNumber').AsString := inttostr(var_EpisodeNum);
             // defaultCheckBoxes(ALC_TBL_Patients,TabSheet2,false);
             ALC_TBL_ANSWERS_BASE.Post;
             var_AnswerBAse_ID := ALC_TBL_ANSWERS_BASE.FieldByName('AnswerBaseID').AsInteger;
       end;
       4 : begin {ALC_TBL_ANSWERS_INI_VISIT Table}
            ALC_TBL_ANSWERS_INI_VISIT.Insert;
            ALC_TBL_ANSWERS_INI_VISIT.FieldByName('AnswerBaseID').AsInteger := var_AnswerBAse_ID;
            defaultCheckBoxes(ALC_TBL_ANSWERS_INI_VISIT,TabSheet4,false);
            ALC_TBL_ANSWERS_INI_VISIT.Post;
            IniVisitCheckBoxCheck(1);
            IniVisitCheckBoxCheck(2);
            IniVisitCheckBoxCheck(3);
            IniVisitCheckBoxCheck(4);
       end;
       5 : begin {ALC_TBL_ANSWERS_INI_FOLLOWUP Table}
           ALC_TBL_ANSWERS_INI_FOLLOWUP.Insert;
           ALC_TBL_ANSWERS_INI_FOLLOWUP.FieldByName('AnswerBaseID').AsString := ALC_TBL_ANSWERS_BASE.FieldByName('AnswerBaseID').AsString;
           defaultCheckBoxes(ALC_TBL_ANSWERS_INI_FOLLOWUP,TabSheet5,false);
           DateTimePicker5.Date := now;
           DateTimePicker6.Date := now;
         //  DBEdit_INI_FOLLOW_ProposedTreatmentDate_OD.Text := DateToStr(DateTimePicker5.DateTime);
         //  DBEdit_INI_FOLLOW_ProposedTreatmentDate_OS.Text := DateToStr(DateTimePicker6.DateTime);
           ALC_TBL_ANSWERS_INI_FOLLOWUP.Post;
           DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OD.Visible := true;
           DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OS.Visible := true;
           DateTimePicker5.Visible := true;
           DateTimePicker6.Visible := true;

           visualAcuityRequiredFieldCheck;
          proposedTxRequiredFieldCheck;
          VMTRequiredFieldCheck;
       end;
       6 : begin {ALC_TBL_FOLLOWUP Table}
         
          FollowUpCheckBoxCheck(99);
          FollowUpCheckBoxCheck(2);
          FollowUpCheckBoxCheck(3);
       end;

       7 : begin {ALC_TBL_FOLLOWUP Table}
          ALC_TBL_DISCHARGE.Insert;
          ALC_TBL_DISCHARGE.FieldByName('AnswerBaseID').AsInteger := var_AnswerBAse_ID;
          defaultCheckBoxes(ALC_TBL_DISCHARGE,TabSheet7,false);
           DateTimePicker1.Date := now;
           DateTimePicker7.Date := now;
           DBEdit_DISCHARGE_DischargeDate.Text := DateToStr(DateTimePicker7.DateTime);
          ALC_TBL_DISCHARGE.Post;
       end;

       end;
      //Call insert on all tables

    //  ALC_TBL_Medical.Insert;
     // ALC_TBL_ANSWERS_BASE.Insert;
    //  ALC_TBL_QUESTIONS.Insert;
    //  ALC_TBL_ANSWERS_INI_VISIT.Insert;
    //  ALC_TBL_ANSWERS_INI_FOLLOWUP.Insert;
   //   ALC_TBL_FOLLOWUP.Insert;
      //ALC_TBL_DISCHARGE.Insert;

     //populate appropriate fields
     {ALC_TBL_Patients
        - PatientID = Auto Num
        - PatientGUID = IDGEN (function)
        - CentreID = table Centres, centreID
        - genderID = UI selection
        - ageID = UI selection
        - date Added = auto
        - date updated = auto
        - indication ID = UI selection
     }


     //populate appropriate fields
     {ALC_TBL_Medical;
        - PatientMedicalHistoryID =  AutoNumber
        - patientID = Copy from Patients table patientID
        - referralDate = UI selection
        - FirstPresentationDate = UI selection
        - DefinitiveDiagnosisDate = UI selection
        - SourceOfReferalID =  UI selection
        - ReasonForReferalID = UI selection
     }
   {
     {ALC_TBL_QUESTIONS
        - QuestionnaireID = Auto
        - questionnaireDesc = ???
        - questionnaireID= ???
        - Data added = Auto
        - Data created = Auto
     }

    { ALC_TBL_QUESTIONS.FieldByName('questionnaireDesc').AsString := 'Questionnaire 1';
     ALC_TBL_QUESTIONS.FieldByName('questionnaireOrder').AsInteger := 1;
    // defaultCheckBoxes(ALC_TBL_Patients,TabSheet2,false);
      ALC_TBL_QUESTIONS.Post;


     {ALC_TBL_ANSWERS_BASE
        - AnserBaseID = Auto Num
        - pstientID = Copy from Patients table patientID
        - QuestionnaireID = Copy from Questionnare Table
        - Entered by = UI on patient details screen
        - episode Date = ???
        - episodeNumber = ???
        - Date Created = Auto
        - Date updated = Auto

     }

   {


     {ALC_TBL_ANSWERS_INI_VISIT
        - AnsersIniVisitID = Auto Num
        - AnswerBaseID = Copy from Answer Base table
        - Default all checkboxes to false
     }
   {

     {ALC_TBL_ANSWERS_INI_FOLLOWUP
        - AnsersIniAndFollowUpVisitID = Auto Num
        - AnswerBaseID = Copy from Answer Base table
        - Default all checkboxes to false
     }
    {


     {ALC_TBL_FOLLOWUP
        - AnsersFollowUpVisitID = Auto Num
        - AnswerBaseID = Copy from Answer Base table
        - Default all checkboxes to false
     }
   {


            }



end;

procedure TfrmDBControls.Label130Click(Sender: TObject);
begin
      if pos('edit',label130.Caption) <> 0 then
        begin
          activateDBTables;
          in_Initial_Visit := true;
          in_FollowUp_Visit := false;
          patients_EditMode := true;
          ALC_TBL_Patients.Active := true;
          ALC_TBL_Patients.Edit;
          ALC_TBL_Patients.Post;

          ALC_TBL_ANSWERS_BASE.First;
          while ALC_TBL_ANSWERS_BASE.Eof <> true do
            begin
              if ALC_TBL_ANSWERS_BASE.FieldByName('patientID').AsInteger = var_Patient_ID then
                begin
                  if ALC_TBL_ANSWERS_BASE.FieldByName('EpisodeNumber').AsInteger = 1 then
                    begin
                      var_AnswerBAse_ID := ALC_TBL_ANSWERS_BASE.FieldByName('AnswerBaseID').AsInteger;
                      Break;
                    end
                  else
                    ALC_TBL_ANSWERS_BASE.next;
                end
              else
               ALC_TBL_ANSWERS_BASE.next;
            end;


          frmEpisodeDatePicker.DateTimePicker1.DateTime := StrToDate(copy(Label130.Caption,0,pos('edit',Label130.Caption)-1));
          DataModule2.canShowFadeForm := true;
          Mainform.showPopUp(frmEpisodeDatePicker);
        end;
end;

function TfrmDBControls.MedicalCheck: Boolean;
var
  MsgString : String;
begin
{
  ************************************************************************
  *                                                                      *
  * FUNCTION VERSION NO: 1.0.0;                                          *
  * ------------------------------------------------------------------   *
  * DESCRIPTION: Function to Check if a Medical record has been inserted *
  *               and all of the required fields have been entered       *
  * ------------------------------------------------------------------   *
  * PARAMS: None;                                                        *
  * ------------------------------------------------------------------   *
  * RESULT: Boolean (True if Medical found/False if no Medical found;    *
  * ------------------------------------------------------------------   *
  * NOTES:  ""                                                           *
  * ------------------------------------------------------------------   *
  * ABOUT: | DATE:      || AUTHOR: ||  ACTION:                           *
  *        | 03/10/2013 || DanS;   ||  Created;                          *
  *                                                                      *
  ************************************************************************
}

  MsgString := '';

  if ALC_TBL_Medical.RecordCount = 0 then
    Result := false
  else
    begin
      if ((DBLookupComboBox_Medical_SourceOfReferalID.Text = '') or (DBLookupComboBox_Medical_ReasonForReferalID.Text = ''))
      then
        begin
          MsgString := 'The system has detected that not all the required medical history details have been entered.' + sLineBreak;
           if (DBLookupComboBox_Medical_SourceOfReferalID.Text = '') then
            begin
              label102.Visible := true;
              MsgString := MsgString + 'Please select the source of referal.' + sLineBreak;
            end
           else
            begin
              label102.Visible := false;
              MsgString := MsgString + '';
            end;

           if (DBLookupComboBox_Medical_ReasonForReferalID.Text = '') then
            begin
              label103.Visible := true;
              MsgString := MsgString + 'Please select the reason for referal.' + sLineBreak;
            end
           else
            begin
              label103.Visible := false;
              MsgString := MsgString + '';
            end;

          Result := false;
          frmDBControls.PageControl1.ActivePage := frmDBControls.TabSheet3;
          showmessage(MsgString);
        end
      else
        begin
          Result := true;
        end;

    end;


end;

function TfrmDBControls.MedicalCheckBoxCheck(aTagNum : Integer): Boolean;
Var
  I : integer;
  required : Boolean;
begin
 {
  ************************************************************************
  *                                                                      *
  * FUNCTION VERSION NO: 1.0.0;                                          *
  * ------------------------------------------------------------------   *
  * DESCRIPTION: Function to Check if a selection has been made for the  *
  *              medical table questions                                 *
  * ------------------------------------------------------------------   *
  * PARAMS: a Tag Num (Integer);                                                        *
  * ------------------------------------------------------------------   *
  * RESULT: Boolean (True if condition is met                            *
  *          ie a selction has been made);                               *
  * ------------------------------------------------------------------   *
  * NOTES:  ""                                                           *
  * ------------------------------------------------------------------   *
  * ABOUT: | DATE:      || AUTHOR: ||  ACTION:                           *
  *        | 03/10/2013 || DanS;   ||  Created;                          *
  *                                                                      *
  ************************************************************************
}
  required := false;
  for I := 0 to mainform.pg_Medical_History.ControlCount - 1 do
    begin
      if mainform.pg_Medical_History.Controls[I].ClassType = TDBCheckBox then
        begin
          if TDBCheckBox(mainform.pg_Medical_History.Controls[I]).Tag = aTagNum then
            begin
              if TDBCheckBox(mainform.pg_Medical_History.Controls[I]).Checked = false then
                begin
                  required := false;
                end
              else
                begin
                  required := true;
                  Break;
                end;
            end;
        end
    end;

    if required = false then
      begin
        if aTagNum = 1 then
          begin
          
          end
        else if aTagNum = 2 then
          begin
           // Showmessage('Please select at least one of the Ocular pathologies for OD');
            Mainform.Label104.Visible := true;
          end
        else if aTagNum = 3 then
          begin
          //  Showmessage('Please select at least one of the Ocular pathologies for OS');
            Mainform.Label112.Visible := true;
          end;
      end
    else
      begin
        if aTagNum = 1 then
          Mainform.Label106.Visible := false;

        if (aTagNum = 2) then
          Mainform.Label104.Visible := false;


        if (aTagNum = 3) then
          Mainform.Label112.Visible := false;
      end;

    if ((Mainform.label50.Visible = true) or (Mainform.label17.Visible = true) or (Mainform.label104.Visible = true) or (Mainform.label112.Visible = true)) then
      Mainform.Label25.Visible := True
    else
      Mainform.Label25.Visible := False;

    Result := required;
end;

procedure TfrmDBControls.NavigateTo(ScreenID: Integer);
var
  TitleSheetNo, TitleColNo, TitleRowNo: Integer;
  pageTotal : string;
  pageTitle: string;
  doUpdate: boolean;
  I : integer;
  tempString : String;
begin
  if (ScreenID = 6) then
    begin
      //button15.Visible := false;
    end
  else
    begin
      //button15.Visible := true;
     // button16.Visible := true;
    end;

  if (ScreenID = 1) then
    begin
     // button15.Visible := false;
      //button16.Visible := false;
    end;


  case ScreenID of
    1 : begin
          //Title screen
          PageControl1.ActivePage := TabSheet1;
          title.Caption := 'Center Details';
           {Force the user to insert some centre details before moving on}
        end;

    2 : begin
          //Title screen

          if patients_EditMode = true then
            begin
              getPreviousRecords(var_AnswerBAse_ID,ALC_TBL_Patients,'patientID');
              requiredFieldCheck(DBComboBox_Centre_DistanceScaleID,Label90);
              requiredFieldCheck(DBComboBox_Centre_NearScaleID,Label91);
            end;


          requiredFieldCheck(DBLookupComboBox_Patient_Gender,Label99);
          requiredFieldCheck(DBComboBox_Patient_Age,Label100);
          lab_PatientID.Caption := '';
          lab_PatientID.Caption := 'Patient ID: #' + ALC_TBL_Patients.FieldByName('patientID').AsString;
          PageControl1.ActivePage := TabSheet2;
          title.Caption := 'Patient Details, patientID #' + ALC_TBL_Patients.FieldByName('patientID').AsString;
          CurrentScreen := ScreenID;
        end;

    3 : begin
          //Your page description here
         { if patients_EditMode = false then
            begin
              defaultCheckBoxes(ALC_TBL_Medical,tabsheet3,false);
            end;   }
          if patients_EditMode = true then
            begin
              getPreviousRecords(var_AnswerBAse_ID,ALC_TBL_Medical,'patientID');
              requiredFieldCheck(DBLookupComboBox_Medical_SourceOfReferalID,Label102);
              requiredFieldCheck(DBLookupComboBox_Medical_ReasonForReferalID,Label103);
               MedicalCheckBoxCheck(1);
               MedicalCheckBoxCheck(2);
               MedicalCheckBoxCheck(3);
            end
          else
            begin

            end;

          PageControl1.ActivePage := TabSheet3;
          title.Caption := 'Medical History ,patientID #' + IntToStr(var_Patient_ID);
          CurrentScreen := ScreenID;
        end;
    4 : begin
          //Your page description here
         { if patients_EditMode = false then
            begin
              defaultCheckBoxes(ALC_TBL_ANSWERS_INI_VISIT,tabsheet4,false);
            end;  }
            if patients_EditMode = true then
              begin
                getPreviousRecords(var_AnswerBAse_ID,ALC_TBL_ANSWERS_INI_VISIT,'AnswerBaseID');
                IniVisitCheckBoxCheck(1);
                IniVisitCheckBoxCheck(2);
                IniVisitCheckBoxCheck(3);
                IniVisitCheckBoxCheck(4);
              end;
          PageControl1.ActivePage := TabSheet4;
          title.Caption := 'Ini visist, patientID #' + IntToStr(var_Patient_ID);
          CurrentScreen := ScreenID;
        end;
    5 : begin
          //Your page description here
            if patients_EditMode = true then
              begin
                getPreviousRecords(var_AnswerBAse_ID,ALC_TBL_ANSWERS_INI_FOLLOWUP,'AnswerBaseID');
              end;
           { TransparentFlashPlayerControl3.Visible := false;
            panel8.Visible := false;   }
            setDDLookupSourceNEA(ALC_TBL_Centres.FieldByName('NearVisualAcuityScaleID').AsInteger);
            setDDLookupSourceDIS(ALC_TBL_Centres.FieldByName('DistanceVisualAcuityScaleID').AsInteger);
            DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_ODCloseUp(nil);
            DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OSCloseUp(nil);
            PageControl1.ActivePage := TabSheet5;
            title.Caption := 'Ini and Follow up visit, patientID #' + IntToStr(var_Patient_ID);
            CurrentScreen := ScreenID;
        end;
    6 : begin
          //Your page description here
            
              setDDLookupSourceFOLLOWUP(var_Patient_ID,var_EpisodeNum);
          PageControl1.ActivePage := TabSheet6;
          title.Caption := 'follow Up, patientID #' + IntToStr(var_Patient_ID);
           CurrentScreen := ScreenID;
        end;

    7 : begin
          //Your page description here
          PageControl1.ActivePage := TabSheet7;
          title.Caption := 'discharge, patientID #' + IntToStr(var_Patient_ID);
           CurrentScreen := ScreenID;
        end;

    8 : begin
          //Your page description here
          RadioButton2Click(nil);
          PageControl1.ActivePage := TabSheet8;
          title.Caption := 'Previous Patients';
           CurrentScreen := ScreenID;
        end;

    9 : begin
          //Your page description here
          if label130.Caption = 'No visit found' then
            begin
              button19.Visible := true;
              panel7.Visible := false;
            end
          else
            begin
              button19.Visible := false;
            //  button35.Visible := true;
              button37.Visible := true;
              if ScrollBox2.ControlCount = 0 then
                begin
                  ScrollBox2.Visible := false;
                end
              else
                begin
                  ScrollBox2.Visible := true;
                end;
              panel7.Visible := true;
            end;
            {  if label135.Caption = '' then
                button23.Visible := true
              else
                button23.Visible := false;

              if label136.Caption = '' then
                button24.Visible := true
              else
                button24.Visible := false;

              if label137.Caption = '' then
                button25.Visible := true
              else
                button25.Visible := false;

              if label138.Caption = '' then
                button26.Visible := true
              else
                button26.Visible := false;

              if label139.Caption = '' then
                button27.Visible := true
              else
                button27.Visible := false;
            end;  }

          activateDBTables;
          getPreviousRecords((var_Patient_ID),ALC_TBL_Patients,'patientID');
          ALC_TBL_Patients.Edit;
          lab_Prev_PatientID.Caption := '';
          lab_Prev_PatientID.Caption := 'Patient ID: #';
          lab_Prev_Patient_Visits.Caption := '';
          lab_Prev_Patient_Visits.Caption := 'Patient ID: #';
          tempString := copy(lab_Prev_PatientID.Caption,0,pos('#',lab_Prev_PatientID.Caption)) + IntToStr(var_Patient_ID);
          lab_Prev_PatientID.Caption := tempString;
          lab_Prev_Patient_Visits.Caption := tempString + ' previous visits';
          //lab_Prev_PatientID
          PageControl1.ActivePage := TabSheet9;
          title.Caption := 'Previous Patient records';
           CurrentScreen := ScreenID;
        end;

  end;
end;

procedure TfrmDBControls.NavigateTo_FollowUp(ScreenID: Integer);
var
  TitleSheetNo, TitleColNo, TitleRowNo: Integer;
  pageTotal : string;
  pageTitle: string;
  doUpdate: boolean;
   I : integer;
begin
  if (ScreenID = 6) then
    begin
     // button15.Visible := false;
    end
  else
    begin
     // button15.Visible := true;
     // button16.Visible := true;
    end;

  if (ScreenID = 1) then
    begin
     // button15.Visible := false;
     // button16.Visible := false;
    end;


  case ScreenID of

    1 : begin
          //Your page description here
            if patients_EditMode = true then
              begin
                getPreviousRecords(var_AnswerBAse_ID,ALC_TBL_ANSWERS_INI_FOLLOWUP,'AnswerBaseID');
              end;
            setDDLookupSourceNEA(ALC_TBL_Centres.FieldByName('NearVisualAcuityScaleID').AsInteger);
           setDDLookupSourceDIS(ALC_TBL_Centres.FieldByName('DistanceVisualAcuityScaleID').AsInteger);
        {  TransparentFlashPlayerControl3.Visible := false;
          panel8.Visile := false; }
          DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_ODCloseUp(nil);
            DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OSCloseUp(nil);
          PageControl1.ActivePage := TabSheet5;
          title.Caption := 'Ini and Follow up visit, patientID #' + IntToStr(var_Patient_ID);
          CurrentScreen := ScreenID;
        end;
    2 : begin
          //Your page description here
            if patients_EditMode = true then
              begin

              end
            else
              begin
                //insertNewPatient(6);
              end;
              setDDLookupSourceFOLLOWUP(var_Patient_ID,var_EpisodeNum);
          PageControl1.ActivePage := TabSheet6;
          title.Caption := 'follow Up, patientID #' + IntToStr(var_Patient_ID);
           CurrentScreen := ScreenID;
        end;

    3 : begin
          //Your page description here
            if patients_EditMode = true then
              begin
                if ALC_TBL_DISCHARGE.RecordCount <> 0 then
                  begin
                    getPreviousRecords(var_AnswerBAse_ID,ALC_TBL_DISCHARGE,'AnswerBaseID');
                  end
                else
                  begin
                    //insertNewPatient(7);
                  end;
              end
            else
              begin
                //insertNewPatient(7);
              end;
             // setDDLookupSourceFOLLOWUP(var_Patient_ID,var_EpisodeNum);

          PageControl1.ActivePage := TabSheet7;
          title.Caption := 'Discharge, patientID #' + IntToStr(var_Patient_ID);
          CurrentScreen := ScreenID;
        end;

    4 : begin
          //Your page description here
          sectionFinish('This concludes the visit');
        end;

  end;

end;

procedure TfrmDBControls.NavigateTo_Initial(ScreenID: Integer);
var
  TitleSheetNo, TitleColNo, TitleRowNo: Integer;
  pageTotal : string;
  pageTitle: string;
  doUpdate: boolean;
   I : integer;
begin
  if (ScreenID = 6) then
    begin
     // button15.Visible := false;
    end
  else
    begin
     // button15.Visible := true;
      //button16.Visible := true;
    end;

  if (ScreenID = 1) then
    begin
     // button15.Visible := false;
     // button16.Visible := false;
    end;


  case ScreenID of
    1 : begin
          PageControl1.ActivePage := TabSheet3;
          title.Caption := 'Medical History, patientID #' + IntToStr(var_Patient_ID);
          CurrentScreen := ScreenID;
        end;

    2 : begin
          if patients_EditMode = true then
            begin
                  getPreviousRecords(var_AnswerBAse_ID,ALC_TBL_ANSWERS_INI_VISIT,'AnswerBaseID');
                  IniVisitCheckBoxCheck(1);
                  IniVisitCheckBoxCheck(2);
                  IniVisitCheckBoxCheck(3);
                  IniVisitCheckBoxCheck(4);
            end
          else
            begin
              //insertNewPatient(4);
            end;
             button14.Visible := true;
          PageControl1.ActivePage := TabSheet4;
          title.Caption := 'ini visit, patientID #' + IntToStr(var_Patient_ID);
          CurrentScreen := ScreenID;
        end;

    3 : begin
          //Your page description here
         { if patients_EditMode = false then
            begin
              defaultCheckBoxes(ALC_TBL_Medical,tabsheet3,false);
            end;   }
          if patients_EditMode = true then
            begin
              getPreviousRecords(var_AnswerBAse_ID,ALC_TBL_Medical,'patientID');
              requiredFieldCheck(DBLookupComboBox_Medical_SourceOfReferalID,Label102);
              requiredFieldCheck(DBLookupComboBox_Medical_ReasonForReferalID,Label103);
               MedicalCheckBoxCheck(1);
               MedicalCheckBoxCheck(2);
               MedicalCheckBoxCheck(3);
            end;

          PageControl1.ActivePage := TabSheet3;
          title.Caption := 'Medical History, patientID #' + IntToStr(var_Patient_ID);
          CurrentScreen := ScreenID;
        end;


    4 : begin
          //Your page description here
         { if patients_EditMode = false then
            begin
              defaultCheckBoxes(ALC_TBL_ANSWERS_INI_VISIT,tabsheet4,false);
            end;  }
            if patients_EditMode = true then
              begin



                  getPreviousRecords(var_AnswerBAse_ID,ALC_TBL_ANSWERS_INI_VISIT,'AnswerBaseID');
                  IniVisitCheckBoxCheck(1);
                  IniVisitCheckBoxCheck(2);
                  IniVisitCheckBoxCheck(3);
                  IniVisitCheckBoxCheck(4);
              end
            else
              begin
                //insertNewPatient(4);
              end;

          PageControl1.ActivePage := TabSheet4;
          title.Caption := 'Ini visist, patientID #' + IntToStr(var_Patient_ID);
           CurrentScreen := ScreenID;
        end;
    5 : begin
          //Your page description here
            if patients_EditMode = true then
              begin
                getPreviousRecords(var_AnswerBAse_ID,ALC_TBL_ANSWERS_INI_FOLLOWUP,'AnswerBaseID');
              end
            else
              begin
                //insertNewPatient(5);
              end;
           setDDLookupSourceNEA(ALC_TBL_Centres.FieldByName('NearVisualAcuityScaleID').AsInteger);
           setDDLookupSourceDIS(ALC_TBL_Centres.FieldByName('DistanceVisualAcuityScaleID').AsInteger);
          DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_ODCloseUp(nil);
            DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OSCloseUp(nil);
          PageControl1.ActivePage := TabSheet5;
         title.Caption := 'Ini and Follow up visit, patientID #' + IntToStr(var_Patient_ID);
          CurrentScreen := ScreenID;
        end;
    6 : begin
          //Your page description here
          showmessage('This concludes the initial visit');
          {PageControl1.ActivePage := TabSheet6;
          title.Caption := 'Ini end';
           CurrentScreen := ScreenID; }
        end;
  end;

end;

procedure TfrmDBControls.onLabClick(aSender: Tobject);
Var
  ID : String;
  iniVisitFound, followUpVisitFound : boolean;

  FollowUpRec_Label : TLabel;
  I : integer;
  ageID : integer;
  genderID : integer;
  ageDesc, genderDesc : String;
  FollowUpRecLabel_Count : Integer;
begin
//  ID := copy(TLabel(aSender).Caption,(pos(':',TLabel(aSender).Caption)+1),pos('|',TLabel(aSender).Caption));
  ID :=  inttostr(TLabel(aSender).Tag);
  var_Patient_ID := (TLabel(aSender).Tag);
  frmDBControls.qryPatientUUIDByPatientID.Close;
  frmDBControls.qryPatientUUIDByPatientID.Parameters.ParamByName('PatientID').Value := frmDBControls.var_Patient_ID;
  frmDBControls.qryPatientUUIDByPatientID.Open;
  frmDBControls.var_Patient_UUID := frmDBControls.qryPatientUUIDByPatientID.FieldByName('PatientUUID').AsString;
  ALC_TBL_ANSWERS_BASE.Active;
  ALC_TBL_ANSWERS_BASE.Open;
  ALC_TBL_ANSWERS_BASE.First;

  iniVisitFound := false;
  followUpVisitFound := false;
  label130.Caption := '';
  label135.Caption := '';
  label136.Caption := '';
  label137.Caption := '';
  label138.Caption := '';
  label139.Caption := '';

  FollowUpRecLabel_Count := 0;

  while ALC_TBL_ANSWERS_BASE.Eof <> true do
    begin
      if Trim(ALC_TBL_ANSWERS_BASE.FieldByName('patientID').AsString) = Trim(ID) then
        begin
          var_AnswerBAse_ID := ALC_TBL_ANSWERS_BASE.FieldByName('AnswerBaseID').AsInteger;
          if ALC_TBL_ANSWERS_BASE.FieldByName('EpisodeNumber').AsInteger > 1 then
            begin
                FollowUpRec_Label := Tlabel.Create(self);
                FollowUpRec_Label.Name := 'FollowUpRec_Label' + IntToStr(Random(789));
                FollowUpRec_Label.Tag := ALC_TBL_ANSWERS_BASE.FieldByName('EpisodeNumber').AsInteger;
                FollowUpRec_Label.Caption := ALC_TBL_ANSWERS_BASE.FieldByName('episodeDate').AsString + ' ' + 'edit';
                FollowUpRec_Label.Font.Name := 'Arial';
                FollowUpRec_Label.Font.size := 12;
                FollowUpRec_Label.Transparent := true;
                FollowUpRec_Label.Cursor := crHandPoint;
                FollowUpRec_Label.OnClick := onVisitLabClick;
                for I := 0 to ScrollBox2.ControlCount - 1 do
                  begin
                    if ScrollBox2.Controls[I].ClassType = TLabel Then
                      begin
                        if pos('FollowUpRec_Label',TLabel(ScrollBox2.Controls[I]).Name) <> 0 then
                          begin
                           FollowUpRecLabel_Count := FollowUpRecLabel_Count + 1;
                              if FollowUpRecLabel_Count = 0 then
                                begin
                                  FollowUpRec_Label.Top := 0;
                                  FollowUpRec_Label.Left := 0;
                                end
                              else
                                begin
                                  FollowUpRec_Label.Top := TLabel(ScrollBox2.Controls[I]).Top + TLabel(ScrollBox2.Controls[I]).height + 10;
                                  FollowUpRec_Label.Left := TLabel(ScrollBox2.Controls[I]).Left;
                                end;
                          end;
                      end;
                  end;

                  if FollowUpRecLabel_Count = 0 then
                    begin
                     FollowUpRec_Label.Top := 0;
                     FollowUpRec_Label.Left := 0;
                    end;
                  FollowUpRec_Label.Parent := ScrollBox2;
                  FollowUpRec_Label.Visible := true;

            end
          else
            begin
               label130.Caption := ALC_TBL_ANSWERS_BASE.FieldByName('episodeDate').AsString + ' ' + 'edit';
               iniVisitFound := true;
            end;


             //var_AnswerBAse_ID := (ALC_TBL_ANSWERS_BASE.FieldByName('AnswerBaseID').AsString);

            ALC_TBL_ANSWERS_BASE.Next;
         //Break;
        end
      else
        begin
          ALC_TBL_ANSWERS_BASE.Next;
        end;
    end;


    if iniVisitFound = false then
      label130.Caption := 'No visit found';

    if followUpVisitFound = false then
      begin
        //label132.Caption := 'No visit found';
        ScrollBox2.Visible := false;
        button37.Visible := true;
      end
    else
      begin
        button37.Visible := true;
        ScrollBox2.Visible := true;
      end;



        patients_EditMode := true;
        button12.Visible := true;
        FrmDBControls.NavigateTo(9);
end;

procedure TfrmDBControls.onVisitLabClick(aSender: Tobject);
begin
      //FOLLOW UP VISIT EDIT CLICK
      activateDBTables;
      in_Initial_Visit := false;
      in_FollowUp_Visit := true;
      patients_EditMode := true;
      ALC_TBL_Patients.Active := true;
      ALC_TBL_Patients.Edit;
      ALC_TBL_Patients.Post;
      var_EpisodeNum := Tlabel(aSender).tag;//returnEpisodeNum(Tlabel(aSender).tag{ALC_TBL_Patients.FieldByName('patientID').AsInteger},true);

          ALC_TBL_ANSWERS_BASE.First;
          while ALC_TBL_ANSWERS_BASE.Eof <> true do
            begin
              if ALC_TBL_ANSWERS_BASE.FieldByName('patientID').AsInteger = var_Patient_ID then
                begin
                  if ALC_TBL_ANSWERS_BASE.FieldByName('EpisodeNumber').AsInteger = var_EpisodeNum then
                    begin
                      var_AnswerBAse_ID := ALC_TBL_ANSWERS_BASE.FieldByName('AnswerBaseID').AsInteger;
                      Break;
                    end
                  else
                    ALC_TBL_ANSWERS_BASE.next;
                end
              else
               ALC_TBL_ANSWERS_BASE.next;
            end;

      frmEpisodeDatePicker.DateTimePicker1.DateTime := StrToDate(copy(TLabel(aSender).Caption,0,pos('edit',TLabel(aSender).Caption)-1));
      DataModule2.canShowFadeForm := true;
      Mainform.showPopUp(frmEpisodeDatePicker);
end;

procedure TfrmDBControls.PageControl1Change(Sender: TObject);
begin
  {Force the user to insert some centre details before moving on}
  //CentreCheck;
   if PageControl1.ActivePage = TabSheet9 then
    begin
      Button46.Visible := true;
    end
   else
    begin
      Button46.Visible := false;
    end;

end;

function TfrmDBControls.PatientCheck: Boolean;
var
  MsgString : String;
begin
{
  ************************************************************************
  *                                                                      *
  * FUNCTION VERSION NO: 1.0.0;                                          *
  * ------------------------------------------------------------------   *
  * DESCRIPTION: Function to Check if a Patient record has been inserted *
  *               and all of the required fields have been entered       *
  * ------------------------------------------------------------------   *
  * PARAMS: None;                                                        *
  * ------------------------------------------------------------------   *
  * RESULT: Boolean (True if Patient found/False if no Patients found;   *
  * ------------------------------------------------------------------   *
  * NOTES:  ""                                                           *
  * ------------------------------------------------------------------   *
  * ABOUT: | DATE:      || AUTHOR: ||  ACTION:                           *
  *        | 03/10/2013 || DanS;   ||  Created;                          *
  *                                                                      *
  ************************************************************************
}

  MsgString := '';

     ALC_TBL_Patients.Last;
      if ((DBEdit_Patient_EnteredBy.Text = '') or
          (DBLookupComboBox_Patient_Gender.Text = '') or
          (DBComboBox_Patient_Age.Text = '') )
      then
        begin
          MsgString := 'The system has detected that not all the required patient details have been entered.' + sLineBreak;

           if (DBEdit_Patient_EnteredBy.Text = '') then
            begin
              label96.Visible := true;
              MsgString := MsgString + 'Please type who the data is being inserted by.' + sLineBreak;
            end
           else
            begin
              label96.Visible := false;
              MsgString := MsgString + '';
            end;

           if (DBLookupComboBox_Patient_Gender.Text = '') then
            begin
              label99.Visible := true;
              MsgString := MsgString + 'Please select the patients gender.' + sLineBreak;
            end
           else
            begin
              label99.Visible := false;
              MsgString := MsgString + '';
            end;

           if (DBComboBox_Patient_Age.Text = '') then
            begin
              label100.Visible := true;
              MsgString := MsgString + 'Please select the age range for this patient.' + sLineBreak;
            end
           else
            begin
              label100.Visible := false;
              MsgString := MsgString + '';
            end;

           if (DBEdit_Patinet_GUID.Text = '') then
            begin
            end
           else
            begin
              MsgString := MsgString + '';
            end;

          Result := false;
          frmDBControls.PageControl1.ActivePage := frmDBControls.TabSheet2;
          showmessage(MsgString);
        end
      else
        if (DBEdit_Patinet_GUID.Text = '') then
        begin
          MsgString := 'Please click "Save" before navigating to the next page' + sLineBreak;
          Result := false;
          patientSaved := false;
        end
      else
        begin
          patientSaved := true;
          Result := true;
        end;




end;

function TfrmDBControls.patientDischarged(aAnswerBaseID, EpiSetID : Integer): boolean;
begin
  frmDBControls.activateDBTables;
  frmDBControls.ALC_TBL_DISCHARGE.First;
  if frmDBControls.ALC_TBL_DISCHARGE.RecordCount <> 0 then
    begin
      while frmDBControls.ALC_TBL_DISCHARGE.eof <> true do
        begin
          if frmDBControls.ALC_TBL_DISCHARGE.FieldByName('AnswerBaseID').AsInteger = aAnswerBaseID then
            begin
                begin
                  result := true;
                  Break;
                end;
            end
          else
            begin
              result := false;
              frmDBControls.ALC_TBL_DISCHARGE.Next;
            end;
        end;
    end
  else
    Result := false;


  if aAnswerBaseID = 0 then
    Result:= FALSE;

   if Result = false then
    begin
      Mainform.btn_Ini_Edit.Visible := true;
      Mainform.btn_edit_patient_details.Visible := true;
      Mainform.btn_Add_New_FollowUp.Visible := true;
      Mainform.btn_edit_FollowUp.Visible := true;
     // Mainform.label10.Visible := false;
    //  Mainform.FlashButtonEx6.Visible := false; {Manage episodes and create new buttons}
     // Mainform.FlashButtonEx8.Visible := false;
       Mainform.pan_mangeSets_holder.Visible := false;
      Mainform.edit_btns_holder.Visible := true;
      Mainform.add_btn_holder.Visible := true;
    end
   else
    begin
      Mainform.btn_Ini_Edit.Visible := false;
      Mainform.btn_edit_patient_details.Visible := false;
      Mainform.btn_Add_New_FollowUp.Visible := false;
      Mainform.btn_edit_FollowUp.Visible := false;
     // Mainform.label10.Visible := true;
     // Mainform.FlashButtonEx6.Visible := true; {Manage episodes and create new buttons}
      //Mainform.FlashButtonEx8.Visible := true;
      Mainform.edit_btns_holder.Visible := false;
      Mainform.add_btn_holder.Visible := false;
      Mainform.pan_mangeSets_holder.Visible := true;
    end;
end;

function TfrmDBControls.proposedTxRequiredFieldCheck: boolean;
var
  requiredFieldComplete : Boolean;
begin
  requiredFieldComplete := false;

  if DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OD.Text = '' then
    begin
     requiredFieldComplete := false;
    end
  else
    begin
      requiredFieldComplete := true;
    end;

  if DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OS.Text = '' then
    begin
     requiredFieldComplete := false;
    end
  else
    begin
      requiredFieldComplete := true;
    end;

    if requiredFieldComplete = false then
      begin
        label124.Visible := true;
      end
    else
      begin
        label124.Visible := false;
      end;

      result :=  requiredFieldComplete;
end;

procedure TfrmDBControls.RadioButton1Click(Sender: TObject);
begin
  if RadioButton1.Checked = true then
    begin
      button18.Visible := true;
      RadioButton2.Checked := false;
      panel5.Visible := false;
    end
  else
    begin
      button18.Visible := false;
    end;

end;

procedure TfrmDBControls.RadioButton2Click(Sender: TObject);
begin
  if RadioButton2.Checked = true then
    begin
      RadioButton1.Checked := false;
      if ScrollBox1.ControlCount <> 0 then
        destroyRecLabels;
      if ScrollBox2.ControlCount <> 0 then
      destroyFollowUpLabels;

        GetPreviousPatientRecords;

        button18.Visible := false;

        if ScrollBox1.ControlCount = 0 then
          label150.Caption := 'Previous paitents: No records found. Please insert a new patient'
        else
          label150.Caption := 'Previous patients: Click one of the patients below to view episodes';

        panel5.Visible := true;
    end
  else
    panel5.Visible := false;
end;

function TfrmDBControls.requiredFieldCheck(aDBObject: TWinControl;
  aLabel: TLabel) : Boolean;
begin
 {
  ************************************************************************
  *                                                                      *
  * FUNCTION VERSION NO: 1.0.0;                                          *
  * ------------------------------------------------------------------   *
  * DESCRIPTION: The procedure will check the DBobject passed to         *
  *  see if its blank.If blank then it will make the label passed        *
  *  visible (the label will have a red asterix as it's caption          *
  *  to indicate a required field). If the DBobject has a selection,     *
  *  then the label passed will be made visible false;                   *
  * ------------------------------------------------------------------   *
  * PARAMS: #1 - aDBObject (DBEdit/DBCheckBox/DBDropDown) TWinControl    *
  *         #2 - aLabel (TLabel);                                        *
  * ------------------------------------------------------------------   *
  * RESULT: If aDBObject selection/text is blank, then make aLabel       *
  *         visible indicating a required field and return false;        *
  * ------------------------------------------------------------------   *
  * NOTES:  ""                                                           *
  * ------------------------------------------------------------------   *
  * ABOUT: | DATE:      || AUTHOR: ||  ACTION:                           *
  *        | 30/09/2013 || DanS;   ||  Created;                          *
  *                                                                      *
  *                                                                      *
  ************************************************************************
}
  if aDBObject.ClassType = TDBEdit then
    begin
      if TEdit(aDBObject).Text = '' then
        begin
          aLabel.Visible := true;
          Result := false;
        end
      else
        begin
          aLabel.Visible := false;
          Result := true;
        end;

    end;

  if aDBObject.ClassType = TDBCheckBox then
    begin

    end;

  if ((aDBObject.ClassType = TDBComboBox) or (aDBObject.ClassType = TDBLookupComboBox)) then
    begin
      if TDBComboBox(aDBObject).Text = '' Then
        begin
          aLabel.Visible := true;
          Result := false;
        end
      else
        begin
          aLabel.Visible := false;
          Result := True;
        end;
      if TDBLookupComboBox(aDBObject).Text = '' Then
        begin
          aLabel.Visible := true;
          Result := false;
        end
      else
        begin
          aLabel.Visible := false;
          Result := True;
        end;
    end;
end;

function TfrmDBControls.returnEpisodeNum(aPatinetID: integer;
  followup: boolean): integer;
  var
    nodeNum : integer;
begin
  {  if followup = true then
      nodeNum := 2
    else   }
      nodeNum := 1;


   ALC_TBL_ANSWERS_BASE.Active := true;
   ALC_TBL_ANSWERS_BASE.First;
   while ALC_TBL_ANSWERS_BASE.eof <> true do
    begin
      if followup = true then
        begin
          if ALC_TBL_ANSWERS_BASE.FieldByName('patientID').AsInteger = aPatinetID then
            begin
              if ALC_TBL_ANSWERS_BASE.FieldByName('EpisodeNumber').AsInteger = var_EpisodeNum then
                if patients_EditMode = false then
                  nodeNum := ALC_TBL_ANSWERS_BASE.FieldByName('EpisodeNumber').AsInteger + 1
                else
                 nodeNum := ALC_TBL_ANSWERS_BASE.FieldByName('EpisodeNumber').AsInteger;
            end;
        end;
       ALC_TBL_ANSWERS_BASE.Next;
    end;

    if nodeNum = 1 then
      nodeNum := 2;

   Result := nodeNum;
end;

function TfrmDBControls.SecondCatRequiredFieldCheck: boolean;
var
  requiredFieldComplete : boolean;
begin
   requiredFieldComplete := false;


  {Check if all required fields have been entered}
end;

procedure TfrmDBControls.sectionFinish(aTitle : String);
begin
{ aTransFlashPlayer.Width := frmDBControls.Width;
 aTransFlashPlayer.Height := frmDBControls.height;
 aTransFlashPlayer.Top := 0;
 aTransFlashPlayer.Left := 0;
 aTransFlashPlayer.Movie := DataModule2.AppPath + 'Animation\ALC_MASK.swf';

// aPanel.top := round((frmDBControls.Height - aPanel.Height)/2);
 //aPanel.Left := round((frmDBControls.width - aPanel.Height)/2);

 aTransFlashPlayer.Visible := true;
 aPanel.Visible := true;           }
 frmEndSection.lab_title.Caption := aTitle;
 DataModule2.canShowFadeForm := true;
 mainform.showPopUp(frmEndSection);
end;

procedure TfrmDBControls.setDDLookupSourceDIS(aScaleIndex: Integer);
var
  DIS_list_Field_Str, DIS_key_Field_Str : String;
begin
  case aScaleIndex of
    1 : begin
          DIS_list_Field_Str := 'SnellenFeet_20';
          DIS_key_Field_Str := 'VisualAcuityMatrixID';
      end;

    2 : begin
          DIS_list_Field_Str := 'SnellenMeter_6';
          DIS_key_Field_Str := 'VisualAcuityMatrixID';
    end;

    3 : begin
          DIS_list_Field_Str := 'Decimal';
          DIS_key_Field_Str := 'VisualAcuityMatrixID';
    end;

    4 : begin
          DIS_list_Field_Str := 'LogMar';
          DIS_key_Field_Str := 'VisualAcuityMatrixID';
    end;

    5 : begin
          DIS_list_Field_Str := 'LineNumber';
          DIS_key_Field_Str := 'VisualAcuityMatrixID';
    end;

     6 : begin
          DIS_list_Field_Str := 'Jaeger';
          DIS_key_Field_Str := 'VisualAcuityMatrixID';
    end;

    7 : begin
          DIS_list_Field_Str := 'Inches_14';
          DIS_key_Field_Str := 'VisualAcuityMatrixID';
    end;

    8 : begin
          DIS_list_Field_Str := 'Centimeters_35';
          DIS_key_Field_Str := 'VisualAcuityMatrixID';
    end;


  end;
    
end;

procedure TfrmDBControls.setDDLookupSourceFOLLOWUP(aPatientID, anEpisodeID : integer);
var
  FOLLOW_OD_list_Field_Str, FOLLWO_OD_key_Field_Str : String;
  FOLLOW_OS_list_Field_Str, FOLLWO_OS_key_Field_Str, dbFieldName : String;
  I : integer;
  ID : integer;
  Floaters_OD,flashOFLight_OD,DisVision_OD,smallObjects_OD,blackImage_OD,readingAtNight_OD,blurredVision_OD : boolean;
  visualReduction_OD, otherSymp_OD, notRelavent_OD : boolean;
  Floaters_OS,flashOFLight_OS,DisVision_OS,smallObjects_OS,blackImage_OS,readingAtNight_OS,blurredVision_OS : boolean;
  visualReduction_OS, otherSymp_OS, notRelavent_OS, one_Found : boolean;
begin
  dbFieldName := '';
  activateDBTables;
  ALC_TBL_ANSWERS_BASE.Close;
  ALC_TBL_ANSWERS_BASE.open;
  ALC_TBL_ANSWERS_BASE.First;
  ALC_TBL_ANSWERS_INI_VISIT.First;

  while ALC_TBL_ANSWERS_BASE.Eof <> true do
    begin
      if ALC_TBL_ANSWERS_BASE.FieldByName('patientID').AsInteger = aPatientID then
        begin
          if ALC_TBL_ANSWERS_BASE.FieldByName('EpisodeNumber').AsInteger = 1 then
            begin
              //if ALC_TBL_ANSWERS_BASE.FieldByName('EpisodeNumber').AsInteger = anEpisodeID then
                begin
                  ID := ALC_TBL_ANSWERS_BASE.FieldByName('AnswerBaseID').Asinteger;
                  Break;
                end;
              //else
               // begin
                 //  ALC_TBL_ANSWERS_BASE.Next;
               // end;
            end
          else
            begin
              ALC_TBL_ANSWERS_BASE.Next;
            end;
        end
      else
        begin
          ALC_TBL_ANSWERS_BASE.Next;
        end;
    end;


 //ID := aPatientID;
 one_Found := false;

  while ALC_TBL_ANSWERS_INI_VISIT.Eof <> true do
    begin
      if ALC_TBL_ANSWERS_INI_VISIT.FieldByName('AnswerBaseID').AsInteger = ID then
        begin
          {Floaters}
          if ALC_TBL_ANSWERS_INI_VISIT.FieldByName('SymptomsFloaters_OD').AsBoolean = false then
            begin
              one_Found := true;
              Floaters_OD := false;
            end
          else
            begin
              one_Found := true;
              Floaters_OD := true;
            end;
          if ALC_TBL_ANSWERS_INI_VISIT.FieldByName('SymptomsFloaters_OS').AsBoolean = false then
            begin
              one_Found := true;
              Floaters_OS := false;
            end
          else
            begin
              one_Found := true;
              Floaters_OS := true;
            end;
           {Floaters end}
          {flash of light}
          if ALC_TBL_ANSWERS_INI_VISIT.FieldByName('SymptomsFlashesOfLight_OD').AsBoolean = false then
            begin
              one_Found := true;
              flashOFLight_OD := false;
            end
          else
            begin
              one_Found := true;
              flashOFLight_OD := true;
            end;
          if ALC_TBL_ANSWERS_INI_VISIT.FieldByName('SymptomsFlashesOfLight_OS').AsBoolean = false then
            begin
              one_Found := true;
              flashOFLight_OS := false;
            end
          else
            begin
              one_Found := true;
              flashOFLight_OS := true;
            end;
           {flash of light end}
          {Distorted Vision}
          if ALC_TBL_ANSWERS_INI_VISIT.FieldByName('SymptomsDistortedVision_OD').AsBoolean = false then
            begin
              one_Found := true;
              DisVision_OD := false;
            end
          else
            begin
              one_Found := true;
              DisVision_OD := true;
            end;
          if ALC_TBL_ANSWERS_INI_VISIT.FieldByName('SymptomsDistortedVision_OS').AsBoolean = false then
            begin
              one_Found := true;
              DisVision_OS := false;
            end
          else
            begin
              one_Found := true;
              DisVision_OS := true;
            end;
           {Distorted Vision end}
          {Small objects}
          if ALC_TBL_ANSWERS_INI_VISIT.FieldByName('SymptomsObjectsAppearSmaller_OD').AsBoolean = false then
            begin
              one_Found := true;
              smallObjects_OD := false;
            end
          else
            begin
              one_Found := true;
              smallObjects_OD := true;
            end;
          if ALC_TBL_ANSWERS_INI_VISIT.FieldByName('SymptomsObjectsAppearSmaller_OS').AsBoolean = false then
            begin
              one_Found := true;
              smallObjects_OS:= false;
            end
          else
            begin
              one_Found := true;
              smallObjects_OS:= true;
            end;
           {Small objects end}
          {Black image}
          if ALC_TBL_ANSWERS_INI_VISIT.FieldByName('SymptomsCentralBlackImage_OD').AsBoolean = false then
            begin
              one_Found := true;
              blackImage_OD := false;
            end
          else
            begin
              one_Found := true;
              blackImage_OD := true;
            end;
          if ALC_TBL_ANSWERS_INI_VISIT.FieldByName('SymptomsCentralBlackImage_OS').AsBoolean = false then
            begin
              one_Found := true;
              blackImage_OS := false;
            end
          else
            begin
              one_Found := true;
              blackImage_OS := true;
            end;
           {Black image end}
          {reading night}
          if ALC_TBL_ANSWERS_INI_VISIT.FieldByName('SymptomsDifficultyReadingAtNight_OD').AsBoolean = false then
            begin
              one_Found := true;
              readingAtNight_OD := false;
            end
          else
            begin
              one_Found := true;
              readingAtNight_OD := true;
            end;
          if ALC_TBL_ANSWERS_INI_VISIT.FieldByName('SymptomsDifficultyReadingAtNight_OS').AsBoolean = false then
            begin
              one_Found := true;
              readingAtNight_OS := false;
            end
          else
            begin
              one_Found := true;
              readingAtNight_OS := true;
            end;
           {reading night end}
          {blurred vision}
          if ALC_TBL_ANSWERS_INI_VISIT.FieldByName('SymptomsBlurredVision_OD').AsBoolean = false then
            begin
              one_Found := true;
              blurredVision_OD:= false;
            end
          else
            begin
              one_Found := true;
              blurredVision_OD:= true;
            end;
          if ALC_TBL_ANSWERS_INI_VISIT.FieldByName('SymptomsBlurredVision_OS').AsBoolean = false then
            begin
              one_Found := true;
              blurredVision_OS := false;
            end
          else
            begin
            one_Found := true;
              blurredVision_OS := true;
            end;
           {blurred vision end}
          {visual reduction}
          if ALC_TBL_ANSWERS_INI_VISIT.FieldByName('SymptomsVisualReduction_OD').AsBoolean = false then
            begin
            one_Found := true;
              visualReduction_OD := false;
            end
          else
            begin
            one_Found := true;
              visualReduction_OD := true;
            end;
          if ALC_TBL_ANSWERS_INI_VISIT.FieldByName('SymptomsVisualReduction_OS').AsBoolean = false then
            begin
            one_Found := true;
              visualReduction_OS := false;
            end
          else
            begin
            one_Found := true;
              visualReduction_OS := true;
            end;
           {visual reduction end}
          {SymptomsOther}
          if ALC_TBL_ANSWERS_INI_VISIT.FieldByName('SymptomsOther_OD').AsBoolean = false then
            begin
            one_Found := true;
              otherSymp_OD := false;
            end
          else
            begin
            one_Found := true;
              otherSymp_OD := true;
            end;
          if ALC_TBL_ANSWERS_INI_VISIT.FieldByName('SymptomsOther_OS').AsBoolean = false then
            begin
            one_Found := true;
              otherSymp_OS := false;
            end
          else
            begin
            one_Found := true;
              otherSymp_OS := true;
            end;
           {SymptomsOther end}
          {Not relevant}
          if ALC_TBL_ANSWERS_INI_VISIT.FieldByName('SymptomsNotRelevant_OD').AsBoolean = false then
            begin
            one_Found := true;
               notRelavent_OD := false;
            end
          else
            begin
            one_Found := true;
              notRelavent_OD := true;
            end;
          if ALC_TBL_ANSWERS_INI_VISIT.FieldByName('SymptomsNotRelevant_OS').AsBoolean = false then
            begin
            one_Found := true;
              notRelavent_OS := false;
            end
          else
            begin
            one_Found := true;
              notRelavent_OS := true;
            end;
           {Not relevant end}
           ALC_TBL_ANSWERS_INI_VISIT.Next;
        end
      else
        begin
         ALC_TBL_ANSWERS_INI_VISIT.Next;
        end;
    end;
  {  if one_Found = false  then
      begin
        setDDLookupSourceFOLLOWUP_plus(MAinform.var_New_Patient_ID,1);
      end;    }
end;

procedure TfrmDBControls.setDDLookupSourceFOLLOWUP_plus(aPatientID,
  anEpisodeID: integer);
var
  FOLLOW_OD_list_Field_Str, FOLLWO_OD_key_Field_Str : String;
  FOLLOW_OS_list_Field_Str, FOLLWO_OS_key_Field_Str : String;
  I : integer;
  ID : integer;
  Floaters_OD,flashOFLight_OD,DisVision_OD,smallObjects_OD,blackImage_OD,readingAtNight_OD,blurredVision_OD : boolean;
  visualReduction_OD, otherSymp_OD, notRelavent_OD : boolean;
  Floaters_OS,flashOFLight_OS,DisVision_OS,smallObjects_OS,blackImage_OS,readingAtNight_OS,blurredVision_OS : boolean;
  visualReduction_OS, otherSymp_OS, notRelavent_OS, one_Found : boolean;
begin

  activateDBTables;
  ALC_TBL_ANSWERS_BASE.Close;
  ALC_TBL_ANSWERS_BASE.open;
  ALC_TBL_ANSWERS_BASE.First;

  ID := 0;

  while ALC_TBL_ANSWERS_BASE.Eof <> true do
    begin
      if ALC_TBL_ANSWERS_BASE.FieldByName('patientID').AsInteger = aPatientID then
        begin
          if ALC_TBL_ANSWERS_BASE.FieldByName('EpisodeNumber').AsInteger = ((anEpisodeID)-1) then
            begin
              //if ALC_TBL_ANSWERS_BASE.FieldByName('EpisodeNumber').AsInteger = anEpisodeID then
                begin
                  ID := ALC_TBL_ANSWERS_BASE.FieldByName('AnswerBaseID').Asinteger;
                  Break;
                end;
              //else
               // begin
                 //  ALC_TBL_ANSWERS_BASE.Next;
               // end;
            end
          else
            begin
              ALC_TBL_ANSWERS_BASE.Next;
            end;
        end
      else
        begin
          ALC_TBL_ANSWERS_BASE.Next;
        end;
    end;

end;

procedure TfrmDBControls.setDDLookupSourceNEA(aScaleIndex: Integer);
var
  NEA_list_Field_Str, NEA_key_Field_Str : String;
begin
  case aScaleIndex of
    1 : begin
          NEA_list_Field_Str := 'SnellenFeet_20';
          NEA_key_Field_Str := 'VisualAcuityMatrixID';
      end;

    2 : begin
          NEA_list_Field_Str := 'SnellenMeter_6';
          NEA_key_Field_Str := 'VisualAcuityMatrixID';
    end;

    3 : begin
          NEA_list_Field_Str := 'Decimal';
          NEA_key_Field_Str := 'VisualAcuityMatrixID';
    end;

    4 : begin
          NEA_list_Field_Str := 'LogMar';
          NEA_key_Field_Str := 'VisualAcuityMatrixID';
    end;

    5 : begin
          NEA_list_Field_Str := 'LineNumber';
          NEA_key_Field_Str := 'VisualAcuityMatrixID';
    end;

     6 : begin
          NEA_list_Field_Str := 'Jaeger';
          NEA_key_Field_Str := 'VisualAcuityMatrixID';
    end;

    7 : begin
          NEA_list_Field_Str := 'Inches_14';
          NEA_key_Field_Str := 'VisualAcuityMatrixID';
    end;

    8 : begin
          NEA_list_Field_Str := 'Centimeters_35';
          NEA_key_Field_Str := 'VisualAcuityMatrixID';
    end;
  end;
    

end;

procedure TfrmDBControls.ShowDatabaseError(aSender: TObject; anException: Exception; tableName,
  errorDescription: AnsiString);
var
  sFileName: string;
  errLogList: TStringList;
  aMessage, aTitle: AnsiString;
begin
  aMessage := 'Your data has not been submitted to the database:' +
              sLineBreak + 'Table: ' + tableName +
              sLineBreak  + 'Error type: ' + errorDescription +
              sLineBreak  + sLineBreak  + 'Error Class Name (generated by the OS): ' + anException.ClassName +
              sLineBreak + 'Error message  (generated by the OS): ' + anException.Message;
  aTitle := 'Database Error';
  ViewText(aSender, aMessage, aTitle);

  // if error occurs create an entry in the log error file
  sFileName := ExtractFilePath(Application.EXEName) + 'System\error.log';

  errLogList := TStringList.Create;
  try
    if FileExists(sFileName) then
      errLogList.LoadFromFile(sFileName);
    with errLogList do
      begin
        Add('Error Time Stamp: ' + FormatDateTime('hh:nn am/pm', Now) + ' on ' +
          FormatDateTime('mm/dd/yy', Now));
        Add('Error Description: ' + tableName);
        Add('Error Description: ' + errorDescription);
        Add('Error Class Name (generated by the OS): ' + anException.ClassName);
        Add('Error Message (generated by the OS): ' + anException.Message);
        Add('');
        SaveToFile(sFileName);
      end; // with
  finally
    errLogList.Free;
  end;
end;

procedure TfrmDBControls.ResetPatientDetailsScreen;
begin
  MainForm.lblPatientRequired1.Visible := False;
  MainForm.lblPatientRequired2.Visible := False;
  MainForm.lblPatientRequiredWarning.Visible := False;
end;

procedure TfrmDBControls.ResetCentresScreen;
begin
  MainForm.lblCentreRequired1.Visible := False;
  MainForm.lblCentreRequired2.Visible := False;
  MainForm.lblCentreRequired3.Visible := False;
  MainForm.lblCentreRequiredWarning.Visible := False;
end;

function TfrmDBControls.showDisCharge(aPatientID: integer): boolean;
begin
  activateDBTables;
  ALC_TBL_ANSWERS_INI_FOLLOWUP.First;

  while ALC_TBL_ANSWERS_INI_FOLLOWUP.Eof <> true do
    begin
      if ALC_TBL_ANSWERS_INI_FOLLOWUP.FieldByName('AnswerBaseID').AsInteger = aPatientID then
        begin
          if ((ALC_TBL_ANSWERS_INI_FOLLOWUP.FieldByName('ProposedTreatmentID_OD').AsInteger = 8) or (ALC_TBL_ANSWERS_INI_FOLLOWUP.FieldByName('ProposedTreatmentID_OS').AsInteger = 8)) then
           begin
             Result := true;
             Break;
           end
          else
            begin
              Result := false;
              ALC_TBL_ANSWERS_INI_FOLLOWUP.Next;
            end;
        end
      else
        begin
          ALC_TBL_ANSWERS_INI_FOLLOWUP.Next;
        end;
    end;
end;

procedure TfrmDBControls.ViewText(Sender: TObject; HTMLText, aTitle: string);
begin
  Reffrm.FlashRefInfo.movie := DataModule2.AppPath + 'Animation\ALC_REF.swf';
  Reffrm.FormPaint(Sender);
  Reffrm.Show;

  Reffrm.FlashRefInfo.CallFunction('<invoke name="setRef" returntype="xml"><arguments><string>open</string><string>yes</string><string>'+HTMLText+'</string><string>'+aTitle+'</string></arguments></invoke>')

end;

function TfrmDBControls.visualAcuityRequiredFieldCheck: boolean;
var
  requiredFieldComplete : boolean;
begin
  requiredFieldComplete := false;

  if DBLookupComboBox_INI_FOLLOW_VisualAcuityDistance_OD.Text = '' then
    begin
     requiredFieldComplete := false;
    end
  else
    begin
      requiredFieldComplete := true;
    end;


  if DBLookupComboBox_INI_FOLLOW_VisualAcuityDistance_OS.Text = '' then
    begin
     requiredFieldComplete := false;
    end
  else
    begin
      requiredFieldComplete := true;
    end;

  if requiredFieldComplete = false then
    Label120.Visible := true
  else
    Label120.Visible := false;

  result := requiredFieldComplete;

end;

function TfrmDBControls.VMTRequiredFieldCheck: boolean;
var
  requiredFieldComplete : boolean;
begin
   requiredFieldComplete := false;

  

  result := requiredFieldComplete;


end;

end.
