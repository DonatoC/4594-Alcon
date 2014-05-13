Unit Unit1;

interface

uses
    Graphics, Controls, Forms, Dialogs, StdCtrls, AxCtrls, VCIF1Lib_TLB, Menus,
    Math, ShellAPI, SysUtils,
    FlashPlayerControl,
    OleCtrls, ComCtrls, OleServer,
    IBEEdit, AntialiasEdit, Httpapp,Variants, Excel2000, Word2000, FlashGraphSimpleUnit,
    CustomEFlashButtonUnit, CustomESpEditUnit, CustomEFlashTableUnit,
    CustomESpComboBoxUnit, CustomESpLabelUnit, CustomSpreadsheetUnit,
    CustomESpEditStdUnit, ExtCtrls, Classes, Windows, DBCtrls, Mask, db,
  Grids, DBGrids, dbtables;

type
  TMainForm = class(TForm)
    Notebook1: TNotebook;
    Panel5: TPanel;
    Image1: TImage;
    Label3: TLabel;
    Label4: TLabel;
    MainFormBackGround: TPanel;
    PageControl1: TPageControl;
    Poppage: TTabSheet;
    SPPage: TTabSheet;
    data: TMemo;
    PG_SECTION_SELECT: TTabSheet;
    pg_CentreDetails: TTabSheet;
    pg_Patient_Options: TTabSheet;
    pg_Previous_Patients_Overview: TTabSheet;
    pg_Patient_Details: TTabSheet;
    pg_Medical_History: TTabSheet;
    pg_Ini_Visit: TTabSheet;
    pg_Ini_FollowUp_Visit: TTabSheet;
    pg_FollowUp_Visit: TTabSheet;
    BottomMenu: TTransparentFlashPlayerControl;
    Utilities: TButton;
    TopMenu: TTransparentFlashPlayerControl;
    Timer1: TTimer;
    flashTitle: TTransparentFlashPlayerControl;
    ExcelApplication1: TExcelApplication;
    dxfProgressBar1: TProgressBar;
    RefButton: TTransparentFlashPlayerControl;
    InfoButton1: TTransparentFlashPlayerControl;
    EFlashButton1: TEFlashButton;
    TransparentFlashPlayerControl1: TTransparentFlashPlayerControl;
    TransparentFlashPlayerControl2: TTransparentFlashPlayerControl;
    SpFormatLabel1: TSpFormatLabel;
    lblUserPopName: TLabel;
    lblUserPopSize: TLabel;
    EFlashTable25: TEFlashTable;
    ESpLabel13: TESpLabel;
    lblSelectRegion: TESpLabel;
    lblSelectCBSHA: TESpLabel;
    lblSelectCBPCT: TESpLabel;
    EFlashButton2: TEFlashButton;
    TransparentFlashPlayerControl45: TTransparentFlashPlayerControl;
    editPopName: TESpEditStd;
    editPopSize: TESpEditStd;
    SpCBSHA: TESpComboBox;
    SpCBPCT: TESpComboBox;
    SpCBRegions: TESpComboBox;
    EFlashTable1: TEFlashTable;
    TFP_SECTION_SELECT: TTransparentFlashPlayerControl;
    TFP_REPORTING_CLICK_AREA: TTransparentFlashPlayerControl;
    TFP_CENTRE_CLICK: TTransparentFlashPlayerControl;
    TFP_INPUT_CLICK: TTransparentFlashPlayerControl;
    Label140: TLabel;
    DBComboBox_Centre_NearScaleID: TDBLookupComboBox;
    EFlashTable2: TEFlashTable;
    Label1: TLabel;
    DBComboBox_Centre_DistanceScaleID: TDBLookupComboBox;
    Label5: TLabel;
    DBEdit_Centre_Pop: TDBEdit;
    Label2: TLabel;
    DBEdit_Centre_Machines: TDBEdit;
    lblCentreRequired3: TLabel;
    lblCentreRequired2: TLabel;
    lblCentreRequired1: TLabel;
    button_Confirm_Centre: TFlashButtonEx;
    Panel2: TPanel;
    Label144: TLabel;
    btn_CreateNew: TFlashButtonEx;
    btn_Review: TFlashButtonEx;
    EFlashTable3: TEFlashTable;
    EFlashTable4: TEFlashTable;
    Label6: TLabel;
    ScrollBox_previous_audits: TScrollBox;
    pg_Discharge: TTabSheet;
    lab_PatientID: TLabel;
    Label13: TLabel;
    DBLookupComboBox_Patient_Gender: TDBLookupComboBox;
    EFlashTable5: TEFlashTable;
    btn_Confirm_Patient: TFlashButtonEx;
    pg_VisitsOverview: TTabSheet;
    EFlashTable6: TEFlashTable;
    prev_Visits_Lab: TLabel;
    pan_InitialVisit_Holder: TPanel;
    iniVisit_ScrollBox: TScrollBox;
    pan_FollowUpVisit_Holder: TPanel;
    FollowUpVisit_ScrollBox: TScrollBox;
    Label8: TLabel;
    Label9: TLabel;
    Panel4: TPanel;
    Title: TLabel;
    btn_edit_FollowUp: TFlashButtonEx;
    btn_Add_New_FollowUp: TFlashButtonEx;
    FlashButtonEx3: TFlashButtonEx;
    FlashButtonEx4: TFlashButtonEx;
    btn_followUp_Visit_Post: TFlashButtonEx;
    FlashButtonEx7: TFlashButtonEx;
    pg_EpisodeSets: TTabSheet;
    EFlashTable7: TEFlashTable;
    Label7: TLabel;
    FlashButtonEx1: TFlashButtonEx;
    Panel7: TPanel;
    ScrollBox_EpisodeSets: TScrollBox;
    FlashButtonEx2: TFlashButtonEx;
    Label12: TLabel;
    FlashButtonEx9: TFlashButtonEx;
    PageControl2: TPageControl;
    pg_Ini_FollowUp_3: TTabSheet;
    pg_Ini_FollowUp_2: TTabSheet;
    EFlashTable13: TEFlashTable;
    Label44: TLabel;
    DateTimePicker5: TDateTimePicker;
    DateTimePicker6: TDateTimePicker;
    Label26: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    panel_Rationale_Holder: TPanel;
    EFlashTable14: TEFlashTable;
    Label31: TLabel;
    EFlashTable15: TEFlashTable;
    Label116: TLabel;
    Label157: TLabel;
    EFlashTable16: TEFlashTable;
    FlashButtonEx10: TFlashButtonEx;
    FlashButtonEx5: TFlashButtonEx;
    DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OD: TDBLookupComboBox;
    DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OS: TDBLookupComboBox;
    Label51: TLabel;
    Label52: TLabel;
    Label156: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    DBLookupComboBox_Medical_ReasonForReferalID: TDBLookupComboBox;
    DBLookupComboBox_Medical_SourceOfReferalID: TDBLookupComboBox;
    EFlashTable17: TEFlashTable;
    EFlashTable19: TEFlashTable;
    Label105: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    DBCheckBox_Medical_WetAMD_OD: TDBCheckBox;
    DBCheckBox_Medical_WetAMD_OS: TDBCheckBox;
    DBCheckBox_Medical_DryAMD_OD: TDBCheckBox;
    DBCheckBox_Medical_DryAMD_OS: TDBCheckBox;
    DBCheckBox_Medical_DME_OD: TDBCheckBox;
    DBCheckBox_Medical_DME_OS: TDBCheckBox;
    DBCheckBox_Medical_RetinalVeinOcclusion_OD: TDBCheckBox;
    DBCheckBox_Medical_RetinalVeinOcclusion_OS: TDBCheckBox;
    DBCheckBox_Medical_RetinalDetachment_OD: TDBCheckBox;
    DBCheckBox_Medical_RetinalDetachment_OS: TDBCheckBox;
    DBCheckBox_Medical_Other_OD: TDBCheckBox;
    DBCheckBox_Medical_Other_OS: TDBCheckBox;
    DBCheckBox_Medical_NotRelevant_OD: TDBCheckBox;
    DBCheckBox_Medical_NotRelevant_OS: TDBCheckBox;
    EFlashTable20: TEFlashTable;
    EFlashTable21: TEFlashTable;
    Label83: TLabel;
    Label108: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label110: TLabel;
    Label115: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label125: TLabel;
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
    Label114: TLabel;
    Label167: TLabel;
    Label169: TLabel;
    Label170: TLabel;
    DBCheckBox_DISCHARGE_LostToFollowup: TDBCheckBox;
    DBLookupComboBox_DISCHARGE_DischargeReasonID: TDBLookupComboBox;
    DateTimePicker1: TDateTimePicker;
    EFlashTable23: TEFlashTable;
    Label171: TLabel;
    DBEdit_DISCHARGE_DischargeDate: TDBEdit;
    edit_btns_holder: TPanel;
    btn_Ini_Edit: TFlashButtonEx;
    btn_edit_patient_details: TFlashButtonEx;
    add_Btn_holder: TPanel;
    btn_Ini_Add: TFlashButtonEx;
    pan_mangeSets_holder: TPanel;
    Label10: TLabel;
    FlashButtonEx6: TFlashButtonEx;
    FlashButtonEx12: TFlashButtonEx;
    FlashButtonEx14: TFlashButtonEx;
    Label178: TLabel;
    no_Ini_Visit_Found_Lab: TESpLabel;
    no_follow_Visit_Found_Lab: TESpLabel;
    Label11: TESpLabel;
    Title2: TLabel;
    Button1: TButton;
    Timer2: TTimer;
    Button3: TButton;
    Timer3: TTimer;
    ini_Visit_Complete: TCheckBox;
    Edit1: TEdit;
    Label179: TLabel;
    TransparentFlashPlayerControl3: TTransparentFlashPlayerControl;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    Label19: TLabel;
    editJumpTo: TEdit;
    FlashButtonEx8: TFlashButtonEx;
    Label14: TLabel;
    DBComboBox_Patient_Age: TDBLookupComboBox;
    lblCentreRequiredWarning: TLabel;
    lblPatientRequiredWarning: TLabel;
    lblPatientRequired2: TLabel;
    lblPatientRequired1: TLabel;
    DBCheckBox_Medical_Glaucoma_OD: TDBCheckBox;
    DBCheckBox_Medical_Glaucoma_OS: TDBCheckBox;
    Label65: TLabel;
    EFlashTable18: TEFlashTable;
    Label76: TLabel;
    Label79: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label102: TLabel;
    Metamorphopsia_OD: TDBCheckBox;
    Metamorphopsia_OS: TDBCheckBox;
    Label71: TLabel;
    Label68: TLabel;
    Scotoma_OD: TDBCheckBox;
    Scotoma_OS: TDBCheckBox;
    Label69: TLabel;
    Cataract_surgery_OD: TDBCheckBox;
    Cataract_surgery_OS: TDBCheckBox;
    Glaucoma_filtration_surgery_OD: TDBCheckBox;
    Glaucoma_filtration_surgery_OS: TDBCheckBox;
    Other_surgery_OD: TDBCheckBox;
    Other_surgery_OS: TDBCheckBox;
    Macula_lase_photocoagulation_OD: TDBCheckBox;
    Macula_lase_photocoagulation_OS: TDBCheckBox;
    Peripheral_laser_photocoagulation_OD: TDBCheckBox;
    Peripheral_laser_photocoagulation_OS: TDBCheckBox;
    Intravitreal_anti_VEGF_OD: TDBCheckBox;
    Intravitreal_anti_VEGF_OS: TDBCheckBox;
    Intravitreal_steroid_liquid_implant_OD: TDBCheckBox;
    Intravitreal_steroid_liquid_implant_OS: TDBCheckBox;
    not_relevant_OD: TDBCheckBox;
    not_relevant_OS: TDBCheckBox;
    Vitrectomy_in_the_fellow_eye_OD: TDBCheckBox;
    Vitrectomy_in_the_fellow_eye_OS: TDBCheckBox;
    Label70: TLabel;
    Label82: TLabel;
    EFlashTable24: TEFlashTable;
    EFlashTable26: TEFlashTable;
    Label23: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    DBCheckBox29: TDBCheckBox;
    DBCheckBox30: TDBCheckBox;
    DBCheckBox31: TDBCheckBox;
    DBCheckBox32: TDBCheckBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBCheckBox33: TDBCheckBox;
    DBCheckBox34: TDBCheckBox;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBCheckBox35: TDBCheckBox;
    DBCheckBox36: TDBCheckBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBEdit_INI_FOLLOW_ProposedTreatmentDate_OS: TDBEdit;
    DBEdit_INI_FOLLOW_ProposedTreatmentDate_OD: TDBEdit;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label49: TLabel;
    Label25: TLabel;
    Label50: TLabel;
    Label54: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label106: TLabel;
    Label111: TLabel;
    Label15: TLabel;
    DBLookupComboBox9: TDBLookupComboBox;
    DBLookupComboBox10: TDBLookupComboBox;
    Label16: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    DBLookupComboBox11: TDBLookupComboBox;
    Label21: TLabel;
    Label22: TLabel;
    DBLookupComboBox12: TDBLookupComboBox;
    Label24: TLabel;
    Label28: TLabel;
    EFlashTable8: TEFlashTable;
    DBCheckBox37: TDBCheckBox;
    DBCheckBox38: TDBCheckBox;
    DBCheckBox39: TDBCheckBox;
    DBCheckBox40: TDBCheckBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBCheckBox41: TDBCheckBox;
    DBCheckBox42: TDBCheckBox;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBCheckBox43: TDBCheckBox;
    DBCheckBox44: TDBCheckBox;
    Label35: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label53: TLabel;
    EFlashTable9: TEFlashTable;
    EFlashTable10: TEFlashTable;
    EFlashTable11: TEFlashTable;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label17: TLabel;
    Label104: TLabel;
    Label112: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure SaveAs1Click(Sender: TObject);
    procedure Reset1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure btnNextClick(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure References1Click(Sender: TObject);
    procedure PrescribingInformation1Click(Sender: TObject);
    procedure UserGuide1Click(Sender: TObject);
    procedure IBStartButtonClick(Sender: TObject);
    procedure ViewModelSpreadsheet1Click(Sender: TObject);
    procedure ViewPopulationSpreadsheet1Click(Sender: TObject);
    procedure LabelsSpProperties1Click(Sender: TObject);
    procedure EditsSPProperties1Click(Sender: TObject);
    procedure ComboBoxesProperties1Click(Sender: TObject);
    procedure MainForm1Click(Sender: TObject);
    procedure GotoSpreadsheetPage1Click(Sender: TObject);
    procedure GraphicDimentions1Click(Sender: TObject);
    procedure imgTitleClick(Sender: TObject);
    procedure UtilitiesClick(Sender: TObject);
    procedure BottomMenuFSCommand(ASender: TObject; const command,
      args: WideString);
    procedure TopMenuFSCommand(ASender: TObject; const command,
      args: WideString);
    procedure Timer1Timer(Sender: TObject);
    procedure flashTitleFSCommand(ASender: TObject; const command,
      args: WideString);
    procedure FormPaint(Sender: TObject);
    procedure editPopNameChange(Sender: TObject);
    procedure SpCBRegionsChange(Sender: TObject);
    procedure SpCBSHAChange(Sender: TObject);
    procedure SpCBPCTChange(Sender: TObject);
    procedure EFlashButton2Click(Sender: TObject);
    procedure TFP_SECTION_SELECTFSCommand(ASender: TObject; const command,
      args: WideString);
    procedure TFP_SECTION_SELECTClick(Sender: TObject);
    procedure TFP_SECTION_SELECTDblClick(Sender: TObject);
    procedure TFP_SECTION_SELECTFlashCall(ASender: TObject;
      const request: WideString);
    procedure TFP_CENTRE_CLICKClick(Sender: TObject);
    procedure TFP_INPUT_CLICKClick(Sender: TObject);
    procedure button_Confirm_CentreClick(Sender: TObject);
    procedure btn_BackClick(Sender: TObject);
    procedure btn_NextClick(Sender: TObject);
    procedure btn_CreateNewClick(Sender: TObject);
    procedure btn_ReviewClick(Sender: TObject);
    procedure btn_Confirm_PatientClick(Sender: TObject);
    procedure btn_Ini_AddClick(Sender: TObject);
    procedure FlashButtonEx3Click(Sender: TObject);
    procedure FlashButtonEx4Click(Sender: TObject);
    procedure FlashButtonEx5Click(Sender: TObject);
    procedure btn_Ini_EditClick(Sender: TObject);
    procedure btn_edit_patient_detailsClick(Sender: TObject);
    procedure btn_Add_New_FollowUpClick(Sender: TObject);
    procedure btn_edit_FollowUpClick(Sender: TObject);
    procedure btn_followUp_Visit_PostClick(Sender: TObject);
    procedure FlashButtonEx7Click(Sender: TObject);
    procedure FlashButtonEx2Click(Sender: TObject);
    procedure FlashButtonEx1Click(Sender: TObject);
    procedure FlashButtonEx6Click(Sender: TObject);
    procedure FlashButtonEx9Click(Sender: TObject);
    procedure FlashButtonEx8Click(Sender: TObject);
    procedure DBCheckBox_INI_FOLLOW_SecCateractPresence_ODClick(
      Sender: TObject);
    procedure DBCheckBox_INI_FOLLOW_SecCateractPresence_OSClick(
      Sender: TObject);
    procedure DBLookupComboBox_INI_FOLLOW_VisualAcuityNear_ODCloseUp(
      Sender: TObject);
    procedure DBLookupComboBox_INI_FOLLOW_VisualAcuityNear_OSCloseUp(
      Sender: TObject);
    procedure FlashButtonEx10Click(Sender: TObject);
    procedure DateTimePicker5Change(Sender: TObject);
    procedure DateTimePicker6Change(Sender: TObject);
    procedure DBEdit_INI_FOLLOW_ProposedTreatmentDate_ODChange(Sender: TObject);
    procedure DBEdit_INI_FOLLOW_ProposedTreatmentDate_OSChange(Sender: TObject);
    procedure DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_ODCloseUp(
      Sender: TObject);
    procedure DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OSCloseUp(
      Sender: TObject);
    procedure FlashButtonEx11Click(Sender: TObject);
    procedure DBLookupComboBox_Medical_SourceOfReferalIDCloseUp(
      Sender: TObject);
    procedure DBCheckBox_Medical_WetAMD_ODClick(Sender: TObject);
    procedure DBCheckBox_Medical_DryAMD_ODClick(Sender: TObject);
    procedure DBCheckBox_Medical_DME_ODClick(Sender: TObject);
    procedure DBCheckBox_Medical_ProliferativeDiabeticRetinopathy_ODClick(
      Sender: TObject);
    procedure DBCheckBox_Medical_RetinalVeinOcclusion_ODClick(Sender: TObject);
    procedure DBCheckBox_Medical_RetinalDetachment_ODClick(Sender: TObject);
    procedure DBCheckBox_Medical_Other_ODClick(Sender: TObject);
    procedure DBCheckBox_Medical_NotRelevant_ODClick(Sender: TObject);
    procedure DBCheckBox_Medical_WetAMD_OSClick(Sender: TObject);
    procedure DBCheckBox_Medical_DryAMD_OSClick(Sender: TObject);
    procedure DBCheckBox_Medical_DME_OSClick(Sender: TObject);
    procedure DBCheckBox_Medical_ProliferativeDiabeticRetinopathy_OSClick(
      Sender: TObject);
    procedure DBCheckBox_Medical_RetinalVeinOcclusion_OSClick(Sender: TObject);
    procedure DBCheckBox_Medical_RetinalDetachment_OSClick(Sender: TObject);
    procedure DBCheckBox_Medical_Other_OSClick(Sender: TObject);
    procedure DBCheckBox_Medical_NotRelevant_OSClick(Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsFloaters_ODClick(Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsFlashesOfLight_ODClick(Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsObjectsAppearSmaller_ODClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsDifficultyReadingAtNight_ODClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsBlurredVision_ODClick(Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsVisualReduction_ODClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsOther_ODClick(Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsNotRelevant_ODClick(Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsNotRelevant_OSClick(Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsOther_OSClick(Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsVisualReduction_OSClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsBlurredVision_OSClick(Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsDifficultyReadingAtNight_OSClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsObjectsAppearSmaller_OSClick(
      Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsFlashesOfLight_OSClick(Sender: TObject);
    procedure DBCheckBox_AnsIni_SymptomsFloaters_OSClick(Sender: TObject);
    procedure DBCheckBox_AnsIni_PrevTreatNotRelevant_ODClick(Sender: TObject);
    procedure DBCheckBox_AnsIni_PrevTreatNotRelevant_OSClick(Sender: TObject);
    procedure DBLookupComboBox_FOLLOWUP_OccularSymptomsFloatersID_ODCloseUp(
      Sender: TObject);
    procedure DBLookupCB_FOLLOWUP_OccularSymptomsFloatersID_OSCloseUp(
      Sender: TObject);
    procedure DBLookupComboBox_FOLLOWUP_OccularSymptomsFlashesOfLightID_ODCloseUp(
      Sender: TObject);
    procedure DBLookupCB_FOLLOWUP_OccularSymptomsFlashesOfLightID_OSCloseUp(
      Sender: TObject);
    procedure DBLookupComboBox_FOLLOWUP_OccularSymptomsDistortedVisionID_ODCloseUp(
      Sender: TObject);
    procedure DBLookupCB_FOLLOWUP_OccularSymptomsDistortedVisionID_OSCloseUp(
      Sender: TObject);
    procedure DBLookupCB_FOLLOWUP_OccularSymptomsObjectsAppearSmallerID_ODCloseUp(
      Sender: TObject);
    procedure DBLookupCB_FOLLOWUP_OccularSymptomsObjectsAppearSmallerID_OSCloseUp(
      Sender: TObject);
    procedure DBLookupCB_FOLLOWUP_OccularSymptomsCentralBlackImageID_ODCloseUp(
      Sender: TObject);
    procedure DBLookupCB_FOLLOWUP_OccularSymptomsCentralBlackImageID_OSCloseUp(
      Sender: TObject);
    procedure DBLookupComboBox_DifficultyReading_ODCloseUp(Sender: TObject);
    procedure DBLookupComboBox_DifficultyReading_OSCloseUp(Sender: TObject);
    procedure DBLookupCB_FOLLOWUP_OccularSymptomsBlurredVisionID_ODCloseUp(
      Sender: TObject);
    procedure DBLookupCB_FOLLOWUP_OccularSymptomsBlurredVisionID_OSCloseUp(
      Sender: TObject);
    procedure DBLookupCB_FOLLOWUP_OccularSymptomsVisualReductionID_ODCloseUp(
      Sender: TObject);
    procedure DBLookupCB_FOLLOWUP_OccularSymptomsVisualReductionID_OSCloseUp(
      Sender: TObject);
    procedure DBLookupCB_FOLLOWUP_OccularSymptomsOtherID_ODCloseUp(
      Sender: TObject);
    procedure DBLookupCB_FOLLOWUP_OccularSymptomsOtherID_OSCloseUp(
      Sender: TObject);
    procedure DBEdit_DISCHARGE_DischargePlannedDateChange(Sender: TObject);
    procedure FlashButtonEx12Click(Sender: TObject);
    procedure FlashButtonEx14Click(Sender: TObject);
    procedure FlashButtonEx16Click(Sender: TObject);
    procedure FlashButtonEx17Click(Sender: TObject);
    procedure FlashButtonEx18Click(Sender: TObject);
    procedure FlashButtonEx19Click(Sender: TObject);
    procedure FlashButtonEx20Click(Sender: TObject);
    procedure FlashButtonEx15Click(Sender: TObject);
    procedure FlashButtonEx21Click(Sender: TObject);
    procedure FlashButtonEx22Click(Sender: TObject);
    procedure TFP_REPORTING_CLICK_AREAClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBCheckBox_Medical_Non_ProliferativeDiabeticRetinopathy_ODClick(
      Sender: TObject);
    procedure DBCheckBox_Medical_Non_ProliferativeDiabeticRetinopathy_OSClick(
      Sender: TObject);
    procedure DBCheckBox6Click(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure DBCheckBox7Click(Sender: TObject);
    procedure DBCheckBox5Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBCheckBox_Medical_Glaucoma_ODClick(Sender: TObject);
    procedure DBCheckBox_Medical_Glaucoma_OSClick(Sender: TObject);
    procedure DBLookupComboBox_Medical_ReasonForReferalIDCloseUp(
      Sender: TObject);
    procedure Metamorphopsia_ODClick(Sender: TObject);
    procedure Scotoma_ODClick(Sender: TObject);
    procedure Metamorphopsia_OSClick(Sender: TObject);
    procedure Cataract_surgery_ODClick(Sender: TObject);
    procedure Glaucoma_filtration_surgery_ODClick(Sender: TObject);
    procedure Other_surgery_ODClick(Sender: TObject);
    procedure Macula_lase_photocoagulation_ODClick(Sender: TObject);
    procedure Peripheral_laser_photocoagulation_ODClick(Sender: TObject);
    procedure Intravitreal_anti_VEGF_ODClick(Sender: TObject);
    procedure Intravitreal_steroid_liquid_implant_ODClick(Sender: TObject);
    procedure Vitrectomy_in_the_fellow_eye_ODClick(Sender: TObject);
    procedure Cataract_surgery_OSClick(Sender: TObject);
    procedure Glaucoma_filtration_surgery_OSClick(Sender: TObject);
    procedure Other_surgery_OSClick(Sender: TObject);
    procedure Macula_lase_photocoagulation_OSClick(Sender: TObject);
    procedure Peripheral_laser_photocoagulation_OSClick(Sender: TObject);
    procedure Intravitreal_anti_VEGF_OSClick(Sender: TObject);
    procedure Intravitreal_steroid_liquid_implant_OSClick(Sender: TObject);
    procedure Vitrectomy_in_the_fellow_eye_OSClick(Sender: TObject);
    procedure not_relevant_ODClick(Sender: TObject);
    procedure not_relevant_OSClick(Sender: TObject);


  private
    { Private declarations }
    procedure CreateParams(var Params: TCreateParams); override;
  protected
    { Protected declarations }

  public
    { Public declarations }
    sizeset : boolean;
    AppPath : string;
    infoOrRef : string;
    SmoothFonts : boolean;
    fromTotPopulation: Boolean;
    refer :string;
    PopRunningTotal : real;
    ReferenceButtonPath, BackGroundImagePath, BigBulletImagePath, SmallBulletImagePath, AboutBoxImagePath, bottomBarImagePath: String;
    IconImagePath: String;
    ParentDirectory: string;
    ModelSelected: string;
    SideBarColour: TColor;
    MainFormColour: TColor;
    TopFormColour: TColor;
    StatusBarColour: TColor;
    EditBoxesColour: TColor;
    EditBoxesOnChangeColor: TColor;
    ButtonsPanelColour: TColor;
    firsttime : Boolean;
    multires : Boolean;
    SetFontSize1stTime : Boolean;
    CurrentScreen, currentScreen_Ini, currentScreen_FollowUp : Integer;
    canICloseNow : boolean;
    var_Make_All_DBControls_ReadOnly : Boolean;
    var_New_AnswerBase_ID, var_New_EpisodeNum, var_New_EpiSetNum : integer;
    var_In_EDIT_MODE, in_Initial_Visit, in_FollowUpVisit, in_Main_Section, followUp_Visit_CB_Checked, EpiSet_CB_Checked : Boolean;
    canTerminate : Boolean;
    epiSetNum_Title_Str : String;
    captureDelay2 : integer;
    inputTool_UserName , inputTool_Password : String;
    varPrimaryAffectedEye : String;
    inDischarge : Boolean;
    lastHighlightedLab : TLabel;
    function GetLastID(var Query: TQuery): Integer;
    procedure DoShowHint(var HintStr: string; var CanShow: Boolean; var HintInfo: Controls.THintInfo);
    procedure resizeForm;
    function ExtractFormat(AnEdit:TspFormatEditEx):String;
    procedure showPopUp(aPopupForm: TForm);
    procedure NavigateTo_Main(ScreenID: Integer);
    procedure NavigateTo_FollowUp(ScreenID: Integer);
    procedure NavigateTo_Ini(ScreenID: Integer);
    procedure setupComps(aForm: TForm; ScaleUp: boolean);
    procedure insertNewPatientOLD;
    procedure insertNewAnswerBase;
    procedure insertNewIniVisit;
    procedure insertNewMedicalHistory;
    procedure insertNewIniFollowUp;
    procedure insertNewFollowUp;
    procedure insertNewDischarge;
    procedure destroyRecLabels(AScrollBox : TScrollBox);
    procedure getVisitRecords(anID : Integer);
    procedure getAuditRecords;
    procedure getEpisodeSetRecords(anID : Integer);
    procedure onAuditLabClick(aSender : Tobject);
    procedure onDeleteBtnClick(asSender : Tobject);
    procedure unCheckOtherVisits(aSender : TObject);
    procedure unCheckOtherEpiSets(aSender : TObject);
    function returnAnserBaseID(aPatientID : Integer):integer;
    function iniFollowUpVisit_RequiredFieldCheck(aTag : integer; aTabSheet : TTabSheet) : Boolean;
    procedure setDBControlsToReadOnly(aBool : Boolean; aTabSheet : TTabSheet);
    function hasThePatientBeenDischarge(aPatientID : Integer) : Boolean;
    procedure recordComplete(anAnswerBaseID : integer);
    function isCentreComplete : boolean; //Returns true if all of the centre details have been completed
    function allowAddEpisode : Boolean;
    procedure jumpToRecord;
    procedure setPrimeEye(PrimeEye : String);
    procedure deleteSelectedRecord(aPatientID : Integer);
    function insertNewEpisodeSet: boolean;
  end;


var
  MainForm: TMainForm;

implementation

uses About, Functions, ref, PI, DataModuleUnit2, Splash,
  UsrDefPopulation, FlashRefunit, frmConfrimExitU, UtilitiesUnit, newAboutUnit,
  RegistrationUnit, UserDefPop, uFadeForm, unitDBControls,
  frm_frmSpreadsheetUnit, uniEpisodeDatePicker, uniSectionEnd,
  unitDBControlsForReport, Report, unitWindowCapture, uniImagesToCapture,
  uniGen, uniNewID, unitReportUserOptions, unitUltimateSplash, uConfirmDelete,
  UnitDBExpress;

var

  Eyetem, PCGID, HAID, RID   : Integer;
  PopRunningTotal : real;
  NavForward : Boolean;
  FlashCodeStream: TFileStream;


{$R *.DFM}
function LTrim(Str: String): String;
var
  strlen, a : integer;
  dest :string;
  {var len: Byte absolute Str;
  i: Integer;}
begin
  delete(str,1,2);
  result := str;
end {LTrim};


procedure TMainForm.DateTimePicker5Change(Sender: TObject);
begin
 DBEdit_INI_FOLLOW_ProposedTreatmentDate_OD.Text := DateToStr(DateTimePicker5.DateTime);
end;

procedure TMainForm.DateTimePicker6Change(Sender: TObject);
begin
 DBEdit_INI_FOLLOW_ProposedTreatmentDate_OS.Text := DateToStr(DateTimePicker6.DateTime);
end;

procedure TMainForm.DBCheckBox1Click(Sender: TObject);
begin
     if DBCheckBox1.Checked = true then
   DBCheckBox_Medical_NotRelevant_OD.Checked := false;

   frmDBControls.MedicalCheckBoxCheck(2);
end;

procedure TMainForm.Metamorphopsia_ODClick(Sender: TObject);
begin
  if DBCheckBox_AnsIni_SymptomsObjectsAppearSmaller_OD.Checked = true then
    DBCheckBox_AnsIni_SymptomsNotRelevant_OD.Checked := false;
  frmDBControls.IniVisitCheckBoxCheck(1);
end;

procedure TMainForm.Metamorphopsia_OSClick(Sender: TObject);
begin
  if Metamorphopsia_OS.Checked = true then
    Metamorphopsia_OS.Checked := false;
  frmDBControls.IniVisitCheckBoxCheck(2);
end;

procedure TMainForm.DBCheckBox5Click(Sender: TObject);
begin
     if DBCheckBox5.Checked = true then
   DBCheckBox_Medical_NotRelevant_OD.Checked := false;

   frmDBControls.MedicalCheckBoxCheck(3);
end;

procedure TMainForm.DBCheckBox6Click(Sender: TObject);
begin
    if DBCheckBox6.Checked = true then
   DBCheckBox_Medical_NotRelevant_OD.Checked := false;

   frmDBControls.MedicalCheckBoxCheck(2);
end;

procedure TMainForm.DBCheckBox7Click(Sender: TObject);
begin
    if DBCheckBox7.Checked = true then
   DBCheckBox_Medical_NotRelevant_OD.Checked := false;

   frmDBControls.MedicalCheckBoxCheck(3);
end;

procedure TMainForm.DBCheckBox_AnsIni_PrevTreatNotRelevant_ODClick(
  Sender: TObject);
begin
  {Untick all other}

end;

procedure TMainForm.DBCheckBox_AnsIni_PrevTreatNotRelevant_OSClick(
  Sender: TObject);
begin
  {Untick all other}

end;

procedure TMainForm.DBCheckBox_AnsIni_SymptomsBlurredVision_ODClick(
  Sender: TObject);
begin
  if DBCheckBox_AnsIni_SymptomsBlurredVision_OD.Checked = true then
    DBCheckBox_AnsIni_SymptomsNotRelevant_OD.Checked := false;
  frmDBControls.IniVisitCheckBoxCheck(1);
end;

procedure TMainForm.DBCheckBox_AnsIni_SymptomsBlurredVision_OSClick(
  Sender: TObject);
begin
  if DBCheckBox_AnsIni_SymptomsBlurredVision_OS.Checked = true then
    DBCheckBox_AnsIni_SymptomsNotRelevant_OS.Checked := false;
  frmDBControls.IniVisitCheckBoxCheck(2);
end;

procedure TMainForm.DBCheckBox_AnsIni_SymptomsDifficultyReadingAtNight_ODClick(
  Sender: TObject);
begin
  if DBCheckBox_AnsIni_SymptomsDifficultyReadingAtNight_OD.Checked = true then
    DBCheckBox_AnsIni_SymptomsNotRelevant_OD.Checked := false;
 frmDBControls.IniVisitCheckBoxCheck(1);
end;

procedure TMainForm.DBCheckBox_AnsIni_SymptomsDifficultyReadingAtNight_OSClick(
  Sender: TObject);
begin
  if DBCheckBox_AnsIni_SymptomsDifficultyReadingAtNight_OS.Checked = true then
    DBCheckBox_AnsIni_SymptomsNotRelevant_OS.Checked := false;
  frmDBControls.IniVisitCheckBoxCheck(2);
end;

procedure TMainForm.DBCheckBox_AnsIni_SymptomsFlashesOfLight_ODClick(
  Sender: TObject);
begin
  if DBCheckBox_AnsIni_SymptomsFlashesOfLight_OD.Checked = true then
    DBCheckBox_AnsIni_SymptomsNotRelevant_OD.Checked := false;
 frmDBControls.IniVisitCheckBoxCheck(1);
end;

procedure TMainForm.DBCheckBox_AnsIni_SymptomsFlashesOfLight_OSClick(
  Sender: TObject);
begin
  if DBCheckBox_AnsIni_SymptomsFlashesOfLight_OS.Checked = true then
    DBCheckBox_AnsIni_SymptomsNotRelevant_OS.Checked := false;
  frmDBControls.IniVisitCheckBoxCheck(2);
end;

procedure TMainForm.DBCheckBox_AnsIni_SymptomsFloaters_ODClick(Sender: TObject);
begin
  if DBCheckBox_AnsIni_SymptomsFloaters_OD.Checked = true then
    DBCheckBox_AnsIni_SymptomsNotRelevant_OD.Checked := false;

frmDBControls.IniVisitCheckBoxCheck(1);
end;

procedure TMainForm.DBCheckBox_AnsIni_SymptomsFloaters_OSClick(Sender: TObject);
begin
  if DBCheckBox_AnsIni_SymptomsFloaters_OS.Checked = true then
    DBCheckBox_AnsIni_SymptomsNotRelevant_OS.Checked := false;
  frmDBControls.IniVisitCheckBoxCheck(2);
end;

procedure TMainForm.DBCheckBox_AnsIni_SymptomsNotRelevant_ODClick(
  Sender: TObject);
begin
  {Untick all others }
  if DBCheckBox_AnsIni_SymptomsNotRelevant_OD.Checked = true then
    begin
      Metamorphopsia_OD.Checked := false;
      DBCheckBox_AnsIni_SymptomsBlurredVision_OD.Checked := false;
      DBCheckBox_AnsIni_SymptomsObjectsAppearSmaller_OD.Checked := false;
      DBCheckBox_AnsIni_SymptomsFloaters_OD.Checked := false;
      DBCheckBox_AnsIni_SymptomsFlashesOfLight_OD.Checked := false;
      DBCheckBox_AnsIni_SymptomsDifficultyReadingAtNight_OD.Checked := false;
      Scotoma_OD.Checked := false;
      DBCheckBox_AnsIni_SymptomsVisualReduction_OD.Checked := false;
      DBCheckBox_AnsIni_SymptomsOther_OD.Checked := false;
    end;

  frmDBControls.IniVisitCheckBoxCheck(1);
end;

procedure TMainForm.DBCheckBox_AnsIni_SymptomsNotRelevant_OSClick(
  Sender: TObject);
begin
  {Untick all others }
  if DBCheckBox_AnsIni_SymptomsNotRelevant_OS.Checked = true then
    begin
      Metamorphopsia_OS.Checked := false;
      DBCheckBox_AnsIni_SymptomsBlurredVision_OS.Checked := false;
      DBCheckBox_AnsIni_SymptomsObjectsAppearSmaller_OS.Checked := false;
      DBCheckBox_AnsIni_SymptomsFloaters_OS.Checked := false;
      DBCheckBox_AnsIni_SymptomsFlashesOfLight_OS.Checked := false;
      DBCheckBox_AnsIni_SymptomsDifficultyReadingAtNight_OS.Checked := false;
      Scotoma_OS.Checked := false;
      DBCheckBox_AnsIni_SymptomsVisualReduction_OS.Checked := false;
      DBCheckBox_AnsIni_SymptomsOther_OS.Checked := false;
    end;
  frmDBControls.IniVisitCheckBoxCheck(2);
end;

procedure TMainForm.DBCheckBox_AnsIni_SymptomsObjectsAppearSmaller_ODClick(
  Sender: TObject);
begin
  if DBCheckBox_AnsIni_SymptomsObjectsAppearSmaller_OD.Checked = true then
    DBCheckBox_AnsIni_SymptomsNotRelevant_OD.Checked := false;
  frmDBControls.IniVisitCheckBoxCheck(1);
end;

procedure TMainForm.DBCheckBox_AnsIni_SymptomsObjectsAppearSmaller_OSClick(
  Sender: TObject);
begin
   if DBCheckBox_AnsIni_SymptomsObjectsAppearSmaller_OS.Checked = true then
    DBCheckBox_AnsIni_SymptomsNotRelevant_OS.Checked := false;
  frmDBControls.IniVisitCheckBoxCheck(2);
end;

procedure TMainForm.DBCheckBox_AnsIni_SymptomsOther_ODClick(Sender: TObject);
begin
  if DBCheckBox_AnsIni_SymptomsOther_OD.Checked = true then
    DBCheckBox_AnsIni_SymptomsNotRelevant_OD.Checked := false;
  frmDBControls.IniVisitCheckBoxCheck(1);
end;

procedure TMainForm.DBCheckBox_AnsIni_SymptomsOther_OSClick(Sender: TObject);
begin
    if DBCheckBox_AnsIni_SymptomsOther_OS.Checked = true then
    DBCheckBox_AnsIni_SymptomsNotRelevant_OS.Checked := false;
  frmDBControls.IniVisitCheckBoxCheck(2);
end;

procedure TMainForm.DBCheckBox_AnsIni_SymptomsVisualReduction_ODClick(
  Sender: TObject);
begin
  if DBCheckBox_AnsIni_SymptomsVisualReduction_OD.Checked = true then
    DBCheckBox_AnsIni_SymptomsNotRelevant_OD.Checked := false;
  frmDBControls.IniVisitCheckBoxCheck(1);
end;

procedure TMainForm.DBCheckBox_AnsIni_SymptomsVisualReduction_OSClick(
  Sender: TObject);
begin
  if DBCheckBox_AnsIni_SymptomsVisualReduction_OS.Checked = true then
    DBCheckBox_AnsIni_SymptomsNotRelevant_OS.Checked := false;
   frmDBControls.IniVisitCheckBoxCheck(2);
end;

procedure TMainForm.DBCheckBox_Medical_Glaucoma_ODClick(Sender: TObject);
begin
if DBCheckBox_Medical_Glaucoma_OD.Checked = true then
   DBCheckBox_Medical_NotRelevant_OD.Checked := false;
frmDBControls.MedicalCheckBoxCheck(2);
end;

procedure TMainForm.DBCheckBox_Medical_Glaucoma_OSClick(Sender: TObject);
begin
if DBCheckBox_Medical_Glaucoma_OS.Checked = true then
   DBCheckBox_Medical_NotRelevant_OS.Checked := false;
frmDBControls.MedicalCheckBoxCheck(3);
end;

procedure TMainForm.DBCheckBox_INI_FOLLOW_SecCateractPresence_ODClick(
  Sender: TObject);
begin
//  frmDBControls.SecondCatRequiredFieldCheck;
end;

procedure TMainForm.DBCheckBox_INI_FOLLOW_SecCateractPresence_OSClick(
  Sender: TObject);
begin
 // frmDBControls.SecondCatRequiredFieldCheck;
end;

procedure TMainForm.DBCheckBox_Medical_DME_ODClick(Sender: TObject);
begin
if DBCheckBox_Medical_DME_OD.Checked = true then
   DBCheckBox_Medical_NotRelevant_OD.Checked := false;
frmDBControls.MedicalCheckBoxCheck(2);
end;

procedure TMainForm.DBCheckBox_Medical_DME_OSClick(Sender: TObject);
begin
    if DBCheckBox_Medical_DME_OS.Checked = true then
   DBCheckBox_Medical_NotRelevant_OS.Checked := false;
frmDBControls.MedicalCheckBoxCheck(3);
end;

procedure TMainForm.DBCheckBox_Medical_DryAMD_ODClick(Sender: TObject);
begin
if DBCheckBox_Medical_DryAMD_OD.Checked = true then
   DBCheckBox_Medical_NotRelevant_OD.Checked := false;
frmDBControls.MedicalCheckBoxCheck(2);
end;

procedure TMainForm.DBCheckBox_Medical_DryAMD_OSClick(Sender: TObject);
begin
if DBCheckBox_Medical_DryAMD_OS.Checked = true then
   DBCheckBox_Medical_NotRelevant_OS.Checked := false;
frmDBControls.MedicalCheckBoxCheck(3);
end;

procedure TMainForm.DBCheckBox_Medical_Non_ProliferativeDiabeticRetinopathy_ODClick(
  Sender: TObject);
begin
 { if DBCheckBox_Medical_Non_ProliferativeDiabeticRetinopathy_OD.Checked = true then
    DBCheckBox_Medical_NotRelevant_OD.Checked := false;

  frmDBControls.MedicalCheckBoxCheck(2);  }
end;

procedure TMainForm.DBCheckBox_Medical_Non_ProliferativeDiabeticRetinopathy_OSClick(
  Sender: TObject);
begin
   { if DBCheckBox_Medical_Non_ProliferativeDiabeticRetinopathy_OS.Checked = true then
      DBCheckBox_Medical_NotRelevant_OS.Checked := false;

    frmDBControls.MedicalCheckBoxCheck(3);   }
end;

procedure TMainForm.DBCheckBox_Medical_NotRelevant_ODClick(Sender: TObject);
begin
{Untick all others}
if DBCheckBox_Medical_NotRelevant_OD.Checked = true then
  begin
    DBCheckBox_Medical_Glaucoma_OD.Checked := false;
    DBCheckBox_Medical_WetAMD_OD.Checked := false;
    DBCheckBox_Medical_DryAMD_OD.Checked := false;
    DBCheckBox_Medical_DME_OD.Checked := false;
    DBCheckBox_Medical_RetinalVeinOcclusion_OD.Checked := false;
    DBCheckBox_Medical_RetinalDetachment_OD.Checked := false;
    DBCheckBox_Medical_Other_OD.Checked := false;
    DBCheckBox1.Checked := false;
    DBCheckBox6.Checked := false;
  end;

 frmDBControls.MedicalCheckBoxCheck(2);
end;

procedure TMainForm.DBCheckBox_Medical_NotRelevant_OSClick(Sender: TObject);
begin
{Untick all others}
if DBCheckBox_Medical_NotRelevant_OS.Checked = true then
  begin
    DBCheckBox_Medical_Glaucoma_OS.Checked := false;
    DBCheckBox_Medical_WetAMD_OS.Checked := false;
    DBCheckBox_Medical_DryAMD_OS.Checked := false;
    DBCheckBox_Medical_DME_OS.Checked := false;
    DBCheckBox5.Checked := false;
    DBCheckBox7.Checked := false;
    DBCheckBox_Medical_RetinalVeinOcclusion_OS.Checked := false;
    DBCheckBox_Medical_RetinalDetachment_OS.Checked := false;
    DBCheckBox_Medical_Other_OS.Checked := false;
  end;

frmDBControls.MedicalCheckBoxCheck(3);
end;

procedure TMainForm.DBCheckBox_Medical_Other_ODClick(Sender: TObject);
begin
    if DBCheckBox_Medical_Other_OD.Checked = true then
   DBCheckBox_Medical_NotRelevant_OD.Checked := false;
frmDBControls.MedicalCheckBoxCheck(2);
end;

procedure TMainForm.DBCheckBox_Medical_Other_OSClick(Sender: TObject);
begin
    if DBCheckBox_Medical_Other_OS.Checked = true then
   DBCheckBox_Medical_NotRelevant_OS.Checked := false;
frmDBControls.MedicalCheckBoxCheck(3);
end;

procedure TMainForm.DBCheckBox_Medical_ProliferativeDiabeticRetinopathy_ODClick(
  Sender: TObject);
begin
   { if DBCheckBox_Medical_ProliferativeDiabeticRetinopathy_OD.Checked = true then
    DBCheckBox_Medical_NotRelevant_OD.Checked := false;
    frmDBControls.MedicalCheckBoxCheck(2);
                                                }



end;

procedure TMainForm.DBCheckBox_Medical_ProliferativeDiabeticRetinopathy_OSClick(
  Sender: TObject);
begin
  {  if DBCheckBox_Medical_ProliferativeDiabeticRetinopathy_OS.Checked = true then
   DBCheckBox_Medical_NotRelevant_OS.Checked := false;
    frmDBControls.MedicalCheckBoxCheck(3);  }




end;

procedure TMainForm.DBCheckBox_Medical_RetinalDetachment_ODClick(
  Sender: TObject);
begin
    if DBCheckBox_Medical_RetinalDetachment_OD.Checked = true then
   DBCheckBox_Medical_NotRelevant_OD.Checked := false;
frmDBControls.MedicalCheckBoxCheck(2);
end;

procedure TMainForm.DBCheckBox_Medical_RetinalDetachment_OSClick(
  Sender: TObject);
begin
    if DBCheckBox_Medical_RetinalDetachment_OS.Checked = true then
   DBCheckBox_Medical_NotRelevant_OS.Checked := false;
frmDBControls.MedicalCheckBoxCheck(3);
end;

procedure TMainForm.DBCheckBox_Medical_RetinalVeinOcclusion_ODClick(
  Sender: TObject);
begin
    if DBCheckBox_Medical_RetinalVeinOcclusion_OD.Checked = true then
   DBCheckBox_Medical_NotRelevant_OD.Checked := false;
frmDBControls.MedicalCheckBoxCheck(2);
end;

procedure TMainForm.DBCheckBox_Medical_RetinalVeinOcclusion_OSClick(
  Sender: TObject);
begin
    if DBCheckBox_Medical_RetinalVeinOcclusion_OS.Checked = true then
   DBCheckBox_Medical_NotRelevant_OS.Checked := false;
frmDBControls.MedicalCheckBoxCheck(3);
end;

procedure TMainForm.DBCheckBox_Medical_WetAMD_ODClick(Sender: TObject);
begin
    if DBCheckBox_Medical_WetAMD_OD.Checked = true then
   DBCheckBox_Medical_NotRelevant_OD.Checked := false;
frmDBControls.MedicalCheckBoxCheck(2);
end;

procedure TMainForm.DBCheckBox_Medical_WetAMD_OSClick(Sender: TObject);
begin
     if DBCheckBox_Medical_WetAMD_OS.Checked = true then
   DBCheckBox_Medical_NotRelevant_OS.Checked := false;
frmDBControls.MedicalCheckBoxCheck(3);
end;

procedure TMainForm.DBEdit_DISCHARGE_DischargePlannedDateChange(
  Sender: TObject);
begin
    if DBEdit_DISCHARGE_DischargeDate.Text <> '' then
  DateTimePicker1.Date := StrToDate(DBEdit_DISCHARGE_DischargeDate.Text)
  else
    DateTimePicker1.Date := frmEpisodeDatePicker.DateTimePicker1.Date;

 //  DateTimePicker1.MinDate := frmEpisodeDatePicker.DateTimePicker1.Date;


end;

procedure TMainForm.DBEdit_INI_FOLLOW_ProposedTreatmentDate_ODChange(
  Sender: TObject);
begin
 if DBEdit_INI_FOLLOW_ProposedTreatmentDate_OD.Text <> '' then
  begin
    DateTimePicker5.MinDate := strtoDate('10/10/1900');
    DateTimePicker5.Date := strtoDate(DBEdit_INI_FOLLOW_ProposedTreatmentDate_OD.Text);
   // DateTimePicker5.MinDate := DateTimePicker5.Date;//frmEpisodeDatePicker.DateTimePicker1.Date;
  end;

 {if DBEdit_INI_FOLLOW_ProposedTreatmentDate_OD.Text <> '' then
  begin
    if strtodate(DBEdit_INI_FOLLOW_ProposedTreatmentDate_OD.Text) >= DateTimePicker5.MinDate then
      DateTimePicker5.Date := StrtoDate(DBEdit_INI_FOLLOW_ProposedTreatmentDate_OD.Text)
    else
      begin
        DateTimePicker5.MinDate := strtoDate('10/10/1900');
        DateTimePicker5.Date := frmEpisodeDatePicker.DateTimePicker1.Date;
        DateTimePicker5.MinDate := frmEpisodeDatePicker.DateTimePicker1.Date;
      end;
  end
 else
  begin
        DateTimePicker5.MinDate := strtoDate('10/10/1900');
        DateTimePicker5.Date := frmEpisodeDatePicker.DateTimePicker1.Date;
        DateTimePicker5.MinDate := frmEpisodeDatePicker.DateTimePicker1.Date;
  end;
   // DateTimePicker6.MinDate := DateTimePicker6.date;

  }


end;

procedure TMainForm.DBEdit_INI_FOLLOW_ProposedTreatmentDate_OSChange(
  Sender: TObject);
begin
 if DBEdit_INI_FOLLOW_ProposedTreatmentDate_OS.Text <> '' then
  begin
    DateTimePicker6.MinDate := strtoDate('10/10/1900');
    DateTimePicker6.Date := strtoDate(DBEdit_INI_FOLLOW_ProposedTreatmentDate_OS.Text);
    //DateTimePicker6.MinDate := DateTimePicker6.Date;//frmEpisodeDatePicker.DateTimePicker1.Date;
  end;
 { begin
    if strtodate(DBEdit_INI_FOLLOW_ProposedTreatmentDate_OS.Text) >= DateTimePicker6.MinDate then
      DateTimePicker6.Date := StrtoDate(DBEdit_INI_FOLLOW_ProposedTreatmentDate_OS.Text)
    else
      begin
        DateTimePicker6.MinDate := strtoDate('10/10/1900');
        DateTimePicker6.Date := frmEpisodeDatePicker.DateTimePicker1.Date;
        DateTimePicker6.MinDate := frmEpisodeDatePicker.DateTimePicker1.Date;
      end;
  end
 else
  begin

        DateTimePicker6.MinDate := strtoDate('10/10/1900');
        DateTimePicker6.Date := frmEpisodeDatePicker.DateTimePicker1.Date;
        DateTimePicker6.MinDate := frmEpisodeDatePicker.DateTimePicker1.Date;
      end;
          }

end;

procedure TMainForm.DBLookupCB_FOLLOWUP_OccularSymptomsBlurredVisionID_ODCloseUp(
  Sender: TObject);
begin
{if DBLookupCB_FOLLOWUP_OccularSymptomsBlurredVisionID_OD.Text <> '' then
Label154.Visible := false
else
  Label153.Visible := true;}
end;

procedure TMainForm.DBLookupCB_FOLLOWUP_OccularSymptomsBlurredVisionID_OSCloseUp(
  Sender: TObject);
begin
{if DBLookupCB_FOLLOWUP_OccularSymptomsBlurredVisionID_OS.Text <> '' then
Label155.Visible := false
else
  Label155.Visible := true;  }
end;

procedure TMainForm.DBLookupCB_FOLLOWUP_OccularSymptomsCentralBlackImageID_ODCloseUp(
  Sender: TObject);
begin
{if DBLookupCB_FOLLOWUP_OccularSymptomsCentralBlackImageID_OD.Text <> '' then
Label150.Visible := false
else
 Label150.Visible := true;  }
end;

procedure TMainForm.DBLookupCB_FOLLOWUP_OccularSymptomsCentralBlackImageID_OSCloseUp(
  Sender: TObject);
begin
{if DBLookupCB_FOLLOWUP_OccularSymptomsCentralBlackImageID_OS.Text <> '' then
Label151.Visible := false
else
 Label151.Visible := true;  }
end;

procedure TMainForm.DBLookupCB_FOLLOWUP_OccularSymptomsDistortedVisionID_OSCloseUp(
  Sender: TObject);
begin
{if DBLookupCB_FOLLOWUP_OccularSymptomsDistortedVisionID_OS.Text <> '' then
Label147.Visible := false
else
 Label147.Visible := true; }
end;

procedure TMainForm.DBLookupCB_FOLLOWUP_OccularSymptomsFlashesOfLightID_OSCloseUp(
  Sender: TObject);
begin
{if DBLookupCB_FOLLOWUP_OccularSymptomsFlashesOfLightID_OS.Text <> '' then
Label145.Visible := false
else
 Label145.Visible := true;  }
end;

procedure TMainForm.DBLookupCB_FOLLOWUP_OccularSymptomsFloatersID_OSCloseUp(
  Sender: TObject);
begin
{if DBLookupCB_FOLLOWUP_OccularSymptomsFloatersID_OS.Text <> '' then
Label142.Visible := false
else
 Label142.Visible := true;   }
end;

procedure TMainForm.DBLookupCB_FOLLOWUP_OccularSymptomsObjectsAppearSmallerID_ODCloseUp(
  Sender: TObject);
begin
{if DBLookupCB_FOLLOWUP_OccularSymptomsObjectsAppearSmallerID_OD.Text <> '' then
Label148.Visible := false
else
 Label148.Visible := true; }
end;

procedure TMainForm.DBLookupCB_FOLLOWUP_OccularSymptomsObjectsAppearSmallerID_OSCloseUp(
  Sender: TObject);
begin
{if DBLookupCB_FOLLOWUP_OccularSymptomsObjectsAppearSmallerID_OS.Text <> '' then
Label149.Visible := false
else
 Label149.Visible := true;  }
end;

procedure TMainForm.DBLookupCB_FOLLOWUP_OccularSymptomsOtherID_ODCloseUp(
  Sender: TObject);
begin
{if DBLookupCB_FOLLOWUP_OccularSymptomsOtherID_OD.Text <> '' then
Label165.Visible := false
else
  Label165.Visible := true;   }
end;

procedure TMainForm.DBLookupCB_FOLLOWUP_OccularSymptomsOtherID_OSCloseUp(
  Sender: TObject);
begin
{if DBLookupCB_FOLLOWUP_OccularSymptomsOtherID_OS.Text <> '' then
Label166.Visible := false
else
  Label166.Visible := true;  }
end;

procedure TMainForm.DBLookupCB_FOLLOWUP_OccularSymptomsVisualReductionID_ODCloseUp(
  Sender: TObject);
begin
{if DBLookupComboBox_FOLLOWUP_OccularSymptomsFloatersID_OD.Text <> '' then
Label163.Visible := false
else
  Label163.Visible := true;    }
end;

procedure TMainForm.DBLookupCB_FOLLOWUP_OccularSymptomsVisualReductionID_OSCloseUp(
  Sender: TObject);
begin
{if DBLookupCB_FOLLOWUP_OccularSymptomsVisualReductionID_OS.Text <> '' then
Label164.Visible := false
  else
  Label164.Visible := true;  }
end;

procedure TMainForm.DBLookupComboBox_DifficultyReading_ODCloseUp(
  Sender: TObject);
begin
{if DBLookupComboBox_DifficultyReading_OD.Text <> '' then
Label152.Visible := false
else
 Label152.Visible := true;   }
end;

procedure TMainForm.DBLookupComboBox_DifficultyReading_OSCloseUp(
  Sender: TObject);
begin
{if DBLookupComboBox_DifficultyReading_OS.Text <> '' then
Label153.Visible := false
  else
 Label153.Visible := true;    }
end;

procedure TMainForm.DBLookupComboBox_FOLLOWUP_OccularSymptomsDistortedVisionID_ODCloseUp(
  Sender: TObject);
begin
{if DBLookupComboBox_FOLLOWUP_OccularSymptomsDistortedVisionID_OD.Text <> '' then
Label146.Visible := false
else
 Label146.Visible := true;}
end;

procedure TMainForm.DBLookupComboBox_FOLLOWUP_OccularSymptomsFlashesOfLightID_ODCloseUp(
  Sender: TObject);
begin
{if DBLookupComboBox_FOLLOWUP_OccularSymptomsFlashesOfLightID_OD.Text <> '' then
Label143.Visible := false
else
 Label143.Visible := true;  }
end;

procedure TMainForm.DBLookupComboBox_FOLLOWUP_OccularSymptomsFloatersID_ODCloseUp(
  Sender: TObject);
begin
{if DBLookupComboBox_FOLLOWUP_OccularSymptomsFloatersID_OD.Text <> '' then
  Label19.Visible := false
else
 Label19.Visible := true;    }
end;

procedure TMainForm.DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_ODCloseUp(
  Sender: TObject);
begin
   if DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OD.Text <> '' then
  label33.Visible := false
  else
  Label33.Visible := true;

    if LowerCase(DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OD.Text) = 'discharge' then
    begin
      frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP.FieldByName('ProposedTreatmentID_OS').AsInteger := 8;
      DateTimePicker5.Visible := false;
      DateTimePicker6.Visible := false;

      DBEdit_INI_FOLLOW_ProposedTreatmentDate_OS.Text := '';
      DBEdit_INI_FOLLOW_ProposedTreatmentDate_OD.Text := '';

      label34.Visible := false;
      Label178.Visible := true;
    end
  else
     Label178.Visible := false;


    if LowerCase(DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OD.Text) = 'not applicable' then
    begin
      frmDBControls.ALC_TBL_ANSWERS_INI_VISIT.edit;
      frmDBControls.ALC_TBL_ANSWERS_INI_VISIT.FieldByName('ProposedTreatmentRationalID_OD').AsInteger := 1;
      DateTimePicker5.Visible := false;
      DBEdit_INI_FOLLOW_ProposedTreatmentDate_OD.Text := '';
    end;


  if ((LowerCase(DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OD.text) = 'not applicable') or (LowerCase(DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OD.text) = 'watchful waiting / no treatment') or
     (LowerCase(DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OD.text) = 'other') or (LowerCase(DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OD.text) = 'discharge')) then
     begin
       DateTimePicker5.Visible := false;
      DBEdit_INI_FOLLOW_ProposedTreatmentDate_OD.Text := '';
     end
  else
    begin
      DateTimePicker5.Visible := true;
    end;


end;

procedure TMainForm.DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OSCloseUp(
  Sender: TObject);
begin
   if DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OS.Text <> '' then
    label34.Visible := false
   else
    Label34.Visible := true;

    if LowerCase(DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OS.text) = 'discharge' then
    begin
      frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP.FieldByName('ProposedTreatmentID_OD').AsInteger := 8;
      DateTimePicker5.Visible := false;
      DateTimePicker6.Visible := false;
      DBEdit_INI_FOLLOW_ProposedTreatmentDate_OS.Text := '';
      DBEdit_INI_FOLLOW_ProposedTreatmentDate_OD.Text := '';
      Label178.Visible := true;
    end
  else
     Label178.Visible := false;

    if LowerCase(DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OS.Text) = 'not applicable' then
    begin
      frmDBControls.ALC_TBL_ANSWERS_INI_VISIT.edit;
      frmDBControls.ALC_TBL_ANSWERS_INI_VISIT.FieldByName('ProposedTreatmentRationalID_OS').AsInteger := 1;
      DateTimePicker6.Visible := false;
      DBEdit_INI_FOLLOW_ProposedTreatmentDate_OS.Text := '';
      Label32.Visible := false;
    end;


  if ((LowerCase(DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OS.text) = 'not applicable') or (LowerCase(DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OS.text) = 'watchful waiting / no treatment') or
     (LowerCase(DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OS.text) = 'other') or (LowerCase(DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OS.text) = 'discharge')) then
     begin
       DateTimePicker6.Visible := false;
       DBEdit_INI_FOLLOW_ProposedTreatmentDate_OS.Text := '';
     end
  else
    begin
      DateTimePicker6.Visible := true;
    end;
end;

procedure TMainForm.DBLookupComboBox_INI_FOLLOW_VisualAcuityNear_ODCloseUp(
  Sender: TObject);
begin
   //Code disabled by Donato Cappiello
   {
   if DBLookupComboBox_INI_FOLLOW_VisualAcuityNear_OD.Text <> '' then
    Label120.Visible := false
   else
    label120.Visible := true;
   }
end;

procedure TMainForm.DBLookupComboBox_INI_FOLLOW_VisualAcuityNear_OSCloseUp(
  Sender: TObject);
begin
  //code disabled by Donato Cappiello
  {
   if DBLookupComboBox_INI_FOLLOW_VisualAcuityNear_OS.Text <> '' then
    Label23.Visible := false
   else
     Label23.Visible := true;
   }
end;

procedure TMainForm.DBLookupComboBox_Medical_ReasonForReferalIDCloseUp(
  Sender: TObject);
begin
    frmDBControls.requiredFieldCheck(DBLookupComboBox_Medical_ReasonForReferalID,Label17);
end;

procedure TMainForm.DBLookupComboBox_Medical_SourceOfReferalIDCloseUp(
  Sender: TObject);
begin
  frmDBControls.requiredFieldCheck(DBLookupComboBox_Medical_SourceOfReferalID,Label50);
end;

procedure TMainForm.deleteSelectedRecord(aPatientID: Integer);
var
  a,b,c, cMe : integer;
  splitThis, splitThat : String;
  SL : TStringList;
begin
  frmUltimateSplash.ProgressBar1.Position := 0;
  frmUltimateSplash.label1.Caption := 'Deleting records...';
  frmUltimateSplash.label3.Caption := '0%';
  DataModule2.canShowFadeForm := true;
  Mainform.showPopUp(frmUltimateSplash);
  frmUltimateSplash.Update;


  SL := TStringList.Create;
  cMe := 0;
 //Activate tables
 try
    frmDBControls.activateDBTables;
  except
    on E: Exception do
      begin
        frmDBControls.ShowDatabaseError(nil, E, 'All Tables', 'ACTIVATE TABLES ERROR: the procedure deleteSelectedRecord failed to activate database tables');
      end;
  end; // end try

 //Go to first patient record
 frmDBControls.ALC_TBL_Patients.First;

 //Loop the patients table.
 while frmDBControls.ALC_TBL_Patients.eof <> true do
  begin
    if frmDBControls.ALC_TBL_Patients.FieldByName('patientID').AsInteger = aPatientID then
      begin
        frmDBControls.ALC_TBL_Patients.Delete;
      end
    else
      frmDBControls.ALC_TBL_Patients.next;
  end;

  frmUltimateSplash.label3.Caption := '10%';
  frmUltimateSplash.Update;
   //Go to first med history record
    frmDBControls.ALC_TBL_Medical.First;

 //Loop the med history table.
 while frmDBControls.ALC_TBL_Medical.eof <> true do
  begin
    if frmDBControls.ALC_TBL_Medical.FieldByName('patientID').AsInteger = aPatientID then
      begin
        frmDBControls.ALC_TBL_Medical.Delete;
      end
    else
      frmDBControls.ALC_TBL_Medical.next;
  end;

  frmUltimateSplash.label3.Caption := '15%';
  frmUltimateSplash.Update;
   //Go to first med history record
    frmDBControls.ALC_TBL_EPISODESETS.First;

 //Loop the med history table.
 while frmDBControls.ALC_TBL_EPISODESETS.eof <> true do
  begin
    if frmDBControls.ALC_TBL_EPISODESETS.FieldByName('patientID').AsInteger = aPatientID then
      begin
        frmDBControls.ALC_TBL_EPISODESETS.Delete;
      end
    else
      frmDBControls.ALC_TBL_EPISODESETS.next;
  end;

  splitThis := '';
  frmUltimateSplash.label3.Caption := '29%';
  frmUltimateSplash.Update;
   //Go to first answer base record
    frmDBControls.ALC_TBL_ANSWERS_BASE.Last;
    frmDBControls.ALC_TBL_ANSWERS_BASE.First;

 //Loop the answer base table.
 while frmDBControls.ALC_TBL_ANSWERS_BASE.eof <> true do
  begin
    if frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('patientID').AsInteger = aPatientID then
      begin
        splitThis := splitThis + inttostr(frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('AnswerBaseID').AsInteger) + '|';
        frmDBControls.ALC_TBL_ANSWERS_BASE.delete;
        //frmDBControls.ALC_TBL_ANSWERS_BASE.next;
      end
    else
    frmDBControls.ALC_TBL_ANSWERS_BASE.next;
  end;

    frmUltimateSplash.label3.Caption := '42%';
  frmUltimateSplash.Update;
  sleep(1000);

  Reffrm.Split('|',splitThis,SL);

  //Go to first ini visit record
  frmDBControls.ALC_TBL_ANSWERS_INI_VISIT.First;

   //Loop the ini visit table.
 while frmDBControls.ALC_TBL_ANSWERS_INI_VISIT.eof <> true do
  begin
    for b := 0 to SL.Count - 1 do
      begin
        if frmDBControls.ALC_TBL_ANSWERS_INI_VISIT.FieldByName('AnswerBaseID').AsString = SL[b] then
          begin
            frmDBControls.ALC_TBL_ANSWERS_INI_VISIT.delete;
          end;
      end;
      frmDBControls.ALC_TBL_ANSWERS_INI_VISIT.Next;
      b := 0;
  end;

   frmUltimateSplash.label3.Caption := '57%';
  frmUltimateSplash.Update;
  sleep(1000);
  b := 0;

  //Go to first iniFollowUp visit record
  frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP.First;

   //Loop the iniFollowUp visit table.
 while frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP.eof <> true do
  begin
    for b := 0 to SL.Count - 1 do
      begin
        if frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP.FieldByName('AnswerBaseID').AsString = SL[b] then
          begin
            frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP.delete;
          end;
      end;
      frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP.Next;
      b := 0;
  end;

    frmUltimateSplash.label3.Caption := '71%';
  frmUltimateSplash.Update;
  sleep(1000);
  b := 0;

  //Go to first iniFollowUp visit record
  frmDBControls.ALC_TBL_DISCHARGE.First;

 //Loop the iniFollowUp visit table.
 while frmDBControls.ALC_TBL_DISCHARGE.eof <> true do
  begin
    for b := 0 to SL.Count - 1 do
      begin
        if frmDBControls.ALC_TBL_DISCHARGE.FieldByName('AnswerBaseID').AsString = SL[b] then
          begin
            frmDBControls.ALC_TBL_DISCHARGE.delete;
          end;
      end;
      frmDBControls.ALC_TBL_DISCHARGE.Next;
      b := 0;
  end;


    frmUltimateSplash.label3.Caption := '83%';
  frmUltimateSplash.Update;
  sleep(1000);
  b := 0;

  

  frmDBControls.ALC_TBL_Patients.Refresh;

  frmUltimateSplash.label3.Caption := '92%';
  frmUltimateSplash.label1.Caption := 'Cleaning database....';
  frmUltimateSplash.Update;
  sleep(1000);
  frmUltimateSplash.label3.Caption := '94%';
     frmUltimateSplash.Update;
  sleep(1000);
  frmUltimateSplash.label3.Caption := '97%';
     frmUltimateSplash.Update;
  sleep(1000);
  frmUltimateSplash.label3.Caption := '99%';
     frmUltimateSplash.Update;
  sleep(1000);

  destroyRecLabels(ScrollBox_previous_audits);
  getAuditRecords;
  frmUltimateSplash.label1.Caption := 'Records deleted....';
  frmUltimateSplash.label3.Caption := '100%';
  frmUltimateSplash.Update;
  sleep(1000);
  frmUltimateSplash.Close;
end;

procedure TMainForm.destroyRecLabels(AScrollBox : TScrollBox);
Var
  I : Integer;
begin
  {Destroy any labels found in the scrollbox passed.
  The labels will be recreated with getVisits procedure}

  if AScrollBox.ControlCount <> 0 then
    begin
      for I := AScrollBox.ControlCount -1 downto 0 do
        begin
           if AScrollBox.Controls[I].ClassType = TLabel Then
            begin
                begin
                  TLabel(AScrollBox.Controls[I]).Free;
                end;
            end
           else
               if AScrollBox.Controls[I].ClassType = TCheckBox Then
                begin
                  TCheckbox(AScrollBox.Controls[I]).Free;
                end
           else
               if AScrollBox.Controls[I].ClassType = TFlashButtonEx Then
                begin
                  TFlashButtonEx(AScrollBox.Controls[I]).Free;
                end
        end;
    end;
end;

procedure TMainForm.Scotoma_ODClick(Sender: TObject);
begin
  if Scotoma_OD.Checked = true then
    Scotoma_OD.Checked := false;
  frmDBControls.IniVisitCheckBoxCheck(1);
end;

procedure Tmainform.DoShowHint(var HintStr: string; var CanShow: Boolean; var HintInfo: Controls.THintInfo);
begin
  with HintInfo do
    begin
      HintColor := $00EFD7C7;{ Changes only for this hint }
      HintMaxWidth := 200;{Hint text word wraps if width is greater than 120 }
    end;
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := False;

  {if DataModule2.IsTaskBarautoHideOn = False then
    begin
      DataModule2.ABData.cbSize := sizeof(tappbardata);
      DataModule2.ABData.hWnd := FindWindow('SHELL_TRAYWND', nil);
      DataModule2.ABData.lParam := LParam(ABS_ALWAYSONTOP or ABS_AUTOHIDE);
      SHAppBarMessage($0000000a, DataModule2.ABData);
      DataModule2.hasAutoHideChanged := True;
    end;}

  CanClose := True;
end;

procedure TMainForm.FormCreate(Sender: TObject);
var
  Mybitmap : Tbitmap;
  count,n : integer;
  aSmallInt: Smallint;
  parentDirectory: string;
begin
  captureDelay2 := 0;
  Application.ShowHint := false;
  HintWindowClass := TMyHintWindow;
  Application.ShowHint := True;

  //SystemParametersInfo(SPI_GETFONTSMOOTHING, 1, @SmoothFonts, 0);
  ShellExecute(Handle, Pchar('open'), PChar(AppPath+'System\Smooth.exe'), pchar('/on'), nil, SW_HIDE);

  ShowMsgSwitched('Message N: use the following lines to define the sheet, col, row in the spreadsheet' + #10#13 +
              'where to write the population name and the population size. When you add code to' + #10#13 +
              'modify the population use these coordinate. DO NOT HARDCODE VALUES and unless' + #10#13 +
              'strictly necessary DO NOT MODIFY THE POPULATIO LOGIC.');
  //DataModule2.populationNameSheet := 'your sheet(integer)';
  //DataModule2.populationNameCol := 'your col(integer)';
  //DataModule2.populationNameRow := 'your row(integer)';
  //DataModule2.populationSizeSheet := 'your sheet(integer)';
  //DataModule2.populationSizeCol := 'your col(integer)';
  //DataModule2.populationSizeRow := 'your row(integer)';

  Multires := true;

  SetFontSize1stTime := true;

  if multires = true then
    begin
      MainForm.Width  := screen.Width;
      MainForm.height := screen.height;
    end;

  mainform.Top := 0;
  mainform.Left := 0;

  // Get the factors each element needs to be multiplied by
  if Screen.Width <> 1024 then
    begin
      DataModule2.GlobalWidthFactor := Screen.Width/1024;
    end
  else
    DataModule2.GlobalWidthFactor := 1;

  if Screen.Height <> 768 then
    begin
      DataModule2.GlobalHeightFactor := Screen.Height/768;
    end
  else
    DataModule2.GlobalHeightFactor := 1;

  DataModule2.FontSizeFacter := min(Screen.Width/1024, Screen.height/768);
end;

procedure TMainForm.FormPaint(Sender: TObject);
begin
  if sizeset = false then
  begin
    MainForm.Width  := screen.Width;
    MainForm.height := screen.height;
    mainform.Top := 0;
    mainform.Left := 0;
    sizeset := true;
  end;

end;

procedure TMainForm.getAuditRecords;
var
  Rec_Label : TLabel;
  recLabelDeleteBTN : TFlashButtonEx;
  I : integer;
  ageID : integer;
  genderID : integer;
  ageDesc, genderDesc : String;
  labColor : TColor;
  OpenSets, noVisits : boolean;
  progressValue, totalRecords, currentRecordCount : Integer;
begin
  if ScrollBox_previous_audits.ControlCount > 1 then
    destroyRecLabels(ScrollBox_previous_audits);

  Application.ProcessMessages;

  FrmDBControls.ALC_TBL_Patients.refresh;

  frmDBControls.ADOQuery4.Active;
  frmDBControls.ADOQuery4.Close;
  frmDBControls.ADOQuery4.Open;
  frmDBControls.ADOQuery4.first;

  frmDBControls.ALC_TBL_Patients.Active := true;
  frmDBControls.ALC_TBL_Patients.First;

  totalRecords := FrmDBControls.ALC_TBL_Patients.RecordCount;
  progressValue := 0;
  frmUltimateSplash.ProgressBar1.Position := 0;
  currentRecordCount := 0;
  frmUltimateSplash.label1.Caption := 'Gathering previous records...';
  frmUltimateSplash.label3.Caption := '0%';
  DataModule2.canShowFadeForm := true;
  Mainform.showPopUp(frmUltimateSplash);
  frmUltimateSplash.Update;

  //Loop through patients table
  while ((FrmDBControls.ADOQuery4.Eof <> true)) do
    begin
      OpenSets := false;
      noVisits := false;

      if FrmDBControls.ADOQuery4.FieldByName('patientID').AsString <> '' then
        begin
          Rec_Label := Tlabel.Create(self);
          Rec_Label.Name := 'Rec_Label' + inttostr(FrmDBControls.Rec_Label_Count);
          Rec_Label.Tag := FrmDBControls.ADOQuery4.FieldByName('patientID').AsInteger;
          ageDesc := FrmDBControls.ADOQuery4.FieldByName('ageRangeDesc').AsString;
          genderDesc := FrmDBControls.ADOQuery4.FieldByName('gender').AsString;
          FrmDBControls.ALC_TBL_Patients.Refresh;
          currentRecordCount := currentRecordCount + 1;
          Rec_Label.Caption := 'SET ID: ' + FrmDBControls.ADOQuery4.FieldByName('patientID').AsString;
          Rec_Label.Caption :=  Rec_Label.Caption + '   || Gender: ' + genderDesc;
          Rec_Label.Caption :=  Rec_Label.Caption + '   || Age: ' + ageDesc;
          Rec_Label.Parent := ScrollBox_previous_audits;
          Rec_Label.Font.Name := 'Arial';
          Rec_Label.Font.size := 12;
          Rec_Label.Transparent := true;
          Rec_Label.Cursor := crHandPoint;

          Rec_Label.OnClick := onAuditLabClick;
          for I := 0 to ScrollBox_previous_audits.ControlCount - 1 do
            begin
              if ScrollBox_previous_audits.Controls[I].ClassType = TLabel Then
                begin
                  if pos('Rec_Label',TLabel(ScrollBox_previous_audits.Controls[I]).Name) <> 0 then
                    begin
                      FrmDBControls.Rec_Label_Count := FrmDBControls.Rec_Label_Count + 1;

                      if FrmDBControls.Rec_Label_Count = 1 then
                        begin
                          Rec_Label.Top := 10;
                          Rec_Label.Left := 5;
                        end
                      else
                        begin
                          Rec_Label.Top := TLabel(ScrollBox_previous_audits.Controls[I]).Top + TLabel(ScrollBox_previous_audits.Controls[I]).height + 10;
                          Rec_Label.Left := TLabel(ScrollBox_previous_audits.Controls[I]).Left;
                        end;
                    end;
                end;
            end;

            frmDBControls.ADOQuery2.Active;
            frmDBControls.ADOQuery2.Close;
            frmDBControls.ADOQuery2.Open;
            frmDBControls.ADOQuery2.first;

            while frmDBControls.ADOQuery2.Eof <> true do   //Query will return all patients with no visits
              begin
                if FrmDBControls.ADOQuery4.FieldByName('patientID').Asinteger = frmDBControls.ADOQuery2.FieldByName('patientID').AsInteger then
                  begin
                    noVisits := true;
                    Break;
                  end
                else
                  begin
                    noVisits := false;
                    frmDBControls.ADOQuery2.Next;
                  end;
              end;

            if noVisits = false then
              begin
                frmDBControls.ADOQuery3.Active;
                frmDBControls.ADOQuery3.Close;
                frmDBControls.ADOQuery3.Open;
                frmDBControls.ADOQuery3.first;

                while frmDBControls.ADOQuery3.Eof <> true do    //Query returns patients with open epsiode sets
                  begin
                    if FrmDBControls.ADOQuery4.FieldByName('patientID').Asinteger = frmDBControls.ADOQuery3.FieldByName('PatientID').AsInteger then
                      begin
                        OpenSets := true;
                        Break;
                      end
                    else
                      begin
                        OpenSets := false;
                        frmDBControls.ADOQuery3.Next;
                      end;
                  end;
              end;

            if noVisits = false then
              begin
                if OpenSets = false then
                  begin
                    Rec_Label.Caption := Rec_Label.Caption + ' (DISCHARGED)';
                  end;
               end;

            if FrmDBControls.Rec_Label_Count = 0 then
              begin
                Rec_Label.Top := 10;
                //Rec_Label.Left := 10;
              end;

            Rec_Label.Parent := ScrollBox_previous_audits;
            Rec_Label.Visible := true;

            if pos('DISCHARGED',Rec_Label.Caption) = 0  then
              Rec_Label.Font.Color := $002D2D2D
            else
              Rec_Label.Font.Color := $002D2D2D;

            Rec_Label.Width := ScrollBox_previous_audits.Width - Rec_Label.Left;
        end;

      FrmDBControls.ADOQuery4.Next;
      progressValue := round((currentRecordCount / totalRecords)*100);
      frmUltimateSplash.ProgressBar1.Position := progressValue;
      frmUltimateSplash.label3.Caption := IntToStr(progressValue) + '%';
      frmUltimateSplash.Update;
    end;

  frmUltimateSplash.label3.Caption := '100%';
  frmUltimateSplash.Update;
  sleep(500);
  frmUltimateSplash.Close;
  ScrollBox_previous_audits.HorzScrollBar.Visible := false;
end;

procedure TMainForm.getEpisodeSetRecords(anID: Integer);
var
  episodeSet_CB : TCheckBox;
  episodeSet_Count, I : integer;
begin
  {loop through episode sets table and return any found matching the ID passed}
  try
    frmDBControls.activateDBTables;
  except
    on E: Exception do
      begin
        frmDBControls.ShowDatabaseError(nil, E, 'All Tables', 'ACTIVATE TABLES ERROR: the procedure getEpisodeSetRecords failed to activate database tables');
      end;
  end; // end try
  frmDBControls.ALC_TBL_EPISODESETS.First;
  episodeSet_Count := 0;
  EpiSet_CB_Checked := false;


  while frmDBControls.ALC_TBL_EPISODESETS.Eof <> true do
    begin
      if frmDBControls.ALC_TBL_EPISODESETS.FieldByName('patientID').AsInteger = anID then
        begin
              episodeSet_Count := episodeSet_Count + 1;
              //create a label, place in ScrollBox_EpisodeSets showing the episode sets
                episodeSet_CB := TCheckBox.Create(self);
                  // episodeSet_CB PROPERTIES
                    episodeSet_CB.Name := 'episodeSet_CB' + inttostr(ScrollBox_EpisodeSets.ControlCount);
                    episodeSet_CB.Caption := 'Episode group #' + inttostr(episodeSet_Count);
                    episodeSet_CB.Color := $00DBF2E3;
                    episodeSet_CB.Cursor := crHandPoint;
                    episodeSet_CB.Font.Size := 12;

                    episodeSet_CB.Parent := ScrollBox_EpisodeSets;
                   // episodeSet_CB.Left := 10;

                   { if ScrollBox_EpisodeSets.ControlCount = 2 then //new lab plus no records lab
                      episodeSet_CB.Top := 10
                    else
                      episodeSet_CB.Top := Round(((episodeSet_CB.height)) * ((ScrollBox_EpisodeSets.ControlCount)-1) + 20);
                     }

                  frmDBControls.ADOQuery1.Active;
                  frmDBControls.ADOQuery1.Close;
                  frmDBControls.ADOQuery1.Open;

                 //if hasThePatientBeenDischarge(FrmDBControls.ALC_TBL_EPISODESETS.FieldByName('patientID').AsInteger) = true then
                  while frmDBControls.ADOQuery1.Eof <> true do
                    begin
                      if frmDBControls.ALC_TBL_EPISODESETS.FieldByName('episodeSetID').AsInteger = frmDBControls.ADOQuery1.FieldByName('episodeSetID').AsInteger then
                        begin
                          episodeSet_CB.Caption := episodeSet_CB.Caption + ' (DISCHARGED)';
                          frmDBControls.ADOQuery1.Next;
                        end
                      else
                        begin
                          frmDBControls.ADOQuery1.Next;
                        end;
                    end;


                  //episodeSet_CB.Caption := episodeSet_CB.Caption + ' (DISCHARGED)';



                for I := 0 to ScrollBox_EpisodeSets.ControlCount - 1 do
                  begin
                    if ScrollBox_EpisodeSets.Controls[I].ClassType = TCheckBox Then
                      begin
                        if pos('episodeSet_CB',TCheckBox(ScrollBox_EpisodeSets.Controls[I]).Name) <> 0 then
                          begin

                              if episodeSet_Count = 1 then
                                begin
                                  episodeSet_CB.Top := 5;
                                  episodeSet_CB.Left := 5;
                                end
                              else
                                begin
                                  episodeSet_CB.Top := TCheckBox(ScrollBox_EpisodeSets.Controls[I]).Top + TCheckBox(ScrollBox_EpisodeSets.Controls[I]).height + 5;
                                  episodeSet_CB.Left := TCheckBox(ScrollBox_EpisodeSets.Controls[I]).Left;
                                end;
                                episodeSet_CB.Width := Round(((ScrollBox_EpisodeSets.Width)) - TCheckBox(ScrollBox_EpisodeSets.Controls[I]).Left);
                          end;
                      end;
                  end;


                   episodeSet_CB.height := 30;
                   if pos('DISCHARGED',episodeSet_CB.Caption) = 0  then
                    episodeSet_CB.Font.Color := $002D2D2D
                   else
                    episodeSet_CB.Font.Color := clRed;

                    episodeSet_CB.Tag := frmDBControls.ALC_TBL_EPISODESETS.FieldByName('episodeSetID').AsInteger;
                    episodeSet_CB.OnClick := unCheckOtherEpiSets;
                    episodeSet_CB.Visible := true;
                  // episodeSet_CB PROPERTIES END
                   frmDBControls.ALC_TBL_EPISODESETS.next;
        end
      else
        begin
          frmDBControls.ALC_TBL_EPISODESETS.next;
        end;
    end;

    if episodeSet_Count = 0 then
      begin
        Label11.Visible := true;  //No episode sets label
      end
    else
      begin
        Label11.Visible := false; //No episode sets label
      end;
end;

function TMainForm.GetLastID(var Query: TQuery): Integer;
begin
  result := -1;
  try
    Query.SQL.clear;
    Query.SQL.Add('SELECT @@IDENTITY');
    Query.Active := True;
    Query.First;
    result := Query.Fields.Fields[0].AsInteger;
  finally
    Query.Active := False;
    Query.SQL.clear;
  end;
end;

procedure TMainForm.getVisitRecords(anID: Integer);
var
  local_AB_ID, I : Integer;
  visitsFound, ini_Visit_Found, followUp_Visist_Found : Boolean;
  ini_Visit_Label : TLabel;
  followUp_Visit_Label : TCheckBox;
  ini_Visit_Epi_Date , followUp_Visit_Epi_Date : String;
begin
  {acitvate answer base table
    Search the table for the ID passed
      if found then create labels in the appropriate scrollboxes}

  {Initialise vars}
  local_AB_ID := 0;
  visitsFound := false;
  ini_Visit_Found := false;
  followUp_Visist_Found := false;
  followUp_Visit_CB_Checked := false;

  try
    frmDBControls.activateDBTables;
  except
    on E: Exception do
      begin
        frmDBControls.ShowDatabaseError(nil, E, 'All Tables', 'ACTIVATE TABLES ERROR: the procedure getVisitRecords failed to activate database tables');
      end;
  end; // end try

  frmDBControls.ALC_TBL_ANSWERS_BASE.first; //Go to the first record

  While frmDBControls.ALC_TBL_ANSWERS_BASE.Eof <> true do //if not last record do
    begin
      if ((frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('patientID').AsInteger = anID) and (frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('episodeSetID').AsInteger = var_New_EpiSetNum)) then  //found the record we are looking for
        begin
          local_AB_ID := frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('AnswerBaseID').AsInteger;  //Store the local answer base
          visitsFound := true; //visits found

          if frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('EpisodeNumber').AsInteger > 1 then //Check if initail or follow up visit
            begin
              followUp_Visist_Found := true;
              followUp_Visit_Epi_Date := frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('episodeDate').AsString;

              //create a label, place in ini scrollbox showing the episode (appointment Date)
                followUp_Visit_Label := TCheckBox.Create(self);
                  // followUp_Visit_Label PROPERTIES
                    followUp_Visit_Label.Name := 'followUp_Visit_CB' + inttostr(FollowUpVisit_ScrollBox.ControlCount);
                    followUp_Visit_Label.Caption := followUp_Visit_Epi_Date;
                    followUp_Visit_Label.Color := $00DBF2E3;
                    followUp_Visit_Label.Cursor := crHandPoint;
                    followUp_Visit_Label.Font.Size := 12;
                    followUp_Visit_Label.Font.Color := $002D2D2D;
                    followUp_Visit_Label.Parent := FollowUpVisit_ScrollBox;

                    //Left/Top position START
                    for I := 0 to FollowUpVisit_ScrollBox.ControlCount - 1 do
                      begin
                        if FollowUpVisit_ScrollBox.Controls[I].ClassType = TCheckBox Then
                          begin
                            if pos('followUp_Visit_CB',TCheckBox(FollowUpVisit_ScrollBox.Controls[I]).Name) <> 0 then
                              begin

                                  if FollowUpVisit_ScrollBox.ControlCount = 2 then
                                    begin
                                      followUp_Visit_Label.Top := 5;
                                      followUp_Visit_Label.Left := 10;
                                    end
                                  else
                                    begin
                                      followUp_Visit_Label.Top := TCheckBox(FollowUpVisit_ScrollBox.Controls[I]).Top + TCheckBox(FollowUpVisit_ScrollBox.Controls[I]).height + 5;
                                      followUp_Visit_Label.Left := TCheckBox(FollowUpVisit_ScrollBox.Controls[I]).Left;
                                    end;
                              end;
                          end;
                      end;
                     //Left/Top position END

                    followUp_Visit_Label.Width := FollowUpVisit_ScrollBox.Width;
                    followUp_Visit_Label.Tag := frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('AnswerBaseID').AsInteger;
                    followUp_Visit_Label.OnClick := unCheckOtherVisits;
                    followUp_Visit_Label.Visible := true;
                  // followUp_Visit_Label PROPERTIES END
            end
          else
            begin
              ini_Visit_Found := true;
              ini_Visit_Epi_Date := frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('episodeDate').AsString;

              //create a label, place in ini scrollbox showing the episode (appointment Date)
                ini_Visit_Label := Tlabel.Create(self);
                  // ini_Visit_Label PROPERTIES
                    ini_Visit_Label.Name := 'ini_Visit_Label' + inttostr(iniVisit_ScrollBox.ControlCount);
                    ini_Visit_Label.AutoSize := true;
                    ini_Visit_Label.Caption := ini_Visit_Epi_Date;
                    ini_Visit_Label.Color := ClWhite;
                    ini_Visit_Label.Transparent := true;
                    ini_Visit_Label.Cursor := crHandPoint;
                    ini_Visit_Label.Font.Size := 12;
                    ini_Visit_Label.Font.Color := $002D2D2D;
                    ini_Visit_Label.Parent := iniVisit_ScrollBox;
                    ini_Visit_Label.Left := 10;
                    ini_Visit_Label.Top := 10;
                    ini_Visit_Label.Visible := true;
                    ini_Visit_Label.Tag := frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('AnswerBaseID').AsInteger;
                  // ini_Visit_Label PROPERTIES END

            end;
           frmDBControls.ALC_TBL_ANSWERS_BASE.next; //move to the next record in case there are multiple records for the ID passed
        end
      else
        begin
          frmDBControls.ALC_TBL_ANSWERS_BASE.next; //move to the next record if not the correct record
        end;
    end;

    if ini_Visit_Found = true then
      begin
         no_Ini_Visit_Found_Lab.Visible := false; //Do not need this label if ini visit found
         btn_Ini_Add.Visible := false; //User can only have one ini visit so do not need this button if ini visit already found
         btn_Ini_Edit.Visible := true; //Make sure the user can edit a previous ini visit
         add_Btn_holder.visible := false; //Add btn is not need so turn off panel
         pan_FollowUpVisit_Holder.Visible := true; //follow up visit buttons need to be visible to the user

         if followUp_Visist_Found = true then
          begin
            no_follow_Visit_Found_Lab.Visible := false; //Do not need this label if follow up visit found
            btn_edit_FollowUp.Visible := true; //The user must be able to add/edit follow up visits
            btn_add_new_FollowUp.Visible := true;
          end
         else
          begin
            no_follow_Visit_Found_Lab.Visible := true; //Turn this on to inform the user if no follow ups found
            btn_edit_FollowUp.Visible := false; //You cannot edit nothing
          end;

      end
    else
      begin  //No visits
        no_Ini_Visit_Found_Lab.Visible := true;
        btn_Ini_Add.Visible := true;
        btn_Ini_Edit.Visible := false;
        btn_add_new_FollowUp.Visible := false;
        btn_edit_FollowUp.Visible := false;
        add_Btn_holder.visible := true;
        pan_FollowUpVisit_Holder.Visible := true;
      end;


end;

procedure TMainForm.Open1Click(Sender: TObject);
begin

  DataModule2.isLoading := True;
  DataModule2.LoadFile(False);
  DataModule2.isLoading := False;
  DataModule2.updateTabSheet(PageControl1.ActivePage);
end;

procedure TMainForm.Other_surgery_ODClick(Sender: TObject);
begin
  if Other_surgery_OD.Checked = true then
    not_relevant_OD.Checked := false;
  frmDBControls.IniVisitCheckBoxCheck(3);
end;

procedure TMainForm.Other_surgery_OSClick(Sender: TObject);
begin
  if Other_surgery_OS.Checked = true then
    not_relevant_OD.Checked := false;
  frmDBControls.IniVisitCheckBoxCheck(4);
end;

procedure TMainForm.SaveAs1Click(Sender: TObject);
begin
  DataModule2.SaveFile;
end;

procedure TMainForm.setDBControlsToReadOnly(aBool : Boolean; aTabSheet : TTabSheet);
var
  I, P : integer;
  checkBoxEnbled : Boolean;
begin
   if aBool = false then
    checkBoxEnbled := true
   else
    checkBoxEnbled := false;

      for I := 0 to aTabSheet.ControlCount - 1 do
        begin
          //DBCheclboxes
          if aTabSheet.Controls[I].ClassType = TDBCheckBox then
            begin
               TDBCheckBox(aTabSheet.Controls[I]).enabled := checkBoxEnbled;
               TDBCheckBox(aTabSheet.Controls[I]).cursor := crHandPoint;
            end;

          //DBCEdits
          if aTabSheet.Controls[I].ClassType = TDBEdit then
            begin
              TDBEdit(aTabSheet.Controls[I]).enabled := checkBoxEnbled;
              TDBEdit(aTabSheet.Controls[I]).cursor := crHandPoint;
            end;

          //DBComboLookUps
          if aTabSheet.Controls[I].ClassType = TDBLookupComboBox then
            begin
              TDBLookupComboBox(aTabSheet.Controls[I]).enabled := checkBoxEnbled;
              TDBLookupComboBox(aTabSheet.Controls[I]).cursor := crHandPoint;
            end;
        end;
end;

procedure TMainForm.setPrimeEye(PrimeEye: String);
begin
  if PrimeEye = 'od' then
    begin
    {Underline and Bold all OD labels}

      Label66.Font.Style := [fsUnderline, fsBold];
      Label123.Font.Style := [fsUnderline, fsBold];
      Label121.Font.Style := [fsUnderline, fsBold];
      Label51.Font.Style := [fsUnderline, fsBold];
      Label26.Font.Style := [fsUnderline, fsBold];

    {Remove Underline and Bold all OS labels}

      Label125.Font.Style := [];
      Label122.Font.Style := [];
      Label52.Font.Style := [];

      Label27.Font.Style := [];
      Label67.Font.Style := [];
    end;
   if PrimeEye = 'os' then
    begin
//      DBCheckBox_Medical_PrimaryAffectedEye_OS.Font.Style := [fsUnderline, fsBold];

      Label125.Font.Style := [fsUnderline, fsBold];
      Label122.Font.Style := [fsUnderline, fsBold];
      Label52.Font.Style := [fsUnderline, fsBold];

      Label27.Font.Style := [fsUnderline, fsBold];
      Label67.Font.Style := [fsUnderline, fsBold];



      Label66.Font.Style := [];
      Label123.Font.Style := [];
      Label121.Font.Style := [];
      Label51.Font.Style := [];
      Label26.Font.Style := [];
    end;
  if PrimeEye = 'both' then
    begin

      Label125.Font.Style := [fsUnderline, fsBold];
      Label122.Font.Style := [fsUnderline, fsBold];
      Label52.Font.Style := [fsUnderline, fsBold];

      Label27.Font.Style := [fsUnderline, fsBold];
      Label67.Font.Style := [fsUnderline, fsBold];



      Label66.Font.Style := [fsUnderline, fsBold];
      Label123.Font.Style := [fsUnderline, fsBold];
      Label121.Font.Style := [fsUnderline, fsBold];
      Label51.Font.Style := [fsUnderline, fsBold];
      Label26.Font.Style := [fsUnderline, fsBold];
    end;
end;

procedure TMainForm.setupComps(aForm: TForm; ScaleUp: boolean);
var
  aFormComponentCounter: Integer;
  TempStr : STring;

  {
  // Label colour vars
  LabelMainFontColour, LabelMainFontColourNegative, LabelHeaderFontColour,
  LabelHeaderFontColourNegative, LabelTertiaryFontColour,
  LabelTertiaryFontColourNegative,

  // Edit colour vars
  EditFontColour, EditOnChangeFontColour, EditColour, EditBorderColour,
  EditOnChangeColour,

  // Table colour vars
  TableAltRowColour, TableTopBorderFillColour, TableTopBorderStrokeColour,
  TableMainFillColour, TableHeaderGradientStartColour, TableHeaderGradientEndColour,

  // Popup colour vars
  PopupColour, PopupBGColour,

  // ComboBox colour vars
  CBArrowColour, CBBorderColour, CBButtonColour, CBColour, CBTextColour,
  CBSelectedTextColour, CBItemColour, CBSelectedItemColour

  : TColor;

  // Other setting vars
  TableHeaderGradient, TableAltRowColours : Boolean;

  TableTLBorderRadius, TableTRBorderRadius, TableBLBorderRadius,
  TableBRBorderRadius : Integer;

  CBStyle : TComboBoxStyle;
  CBCursor, EditCursor : TCursor;
  }


begin
  ShowMsgSwitched('Message K: Define font color for labels and table path in these procedure');
  //This procedure sets needs to be run before load procedure

  // Label Settings.
  // Tag = 0
  datamodule2.LabelMainFontColour := $002D2D2D;
  datamodule2.LabelMainFontColourNegative := $002D2D2D;

  // Tag = 1
  datamodule2.LabelHeaderFontColour := $002D2D2D;
  datamodule2.LabelHeaderFontColourNegative := $002D2D2D;

  // Tag = 2
  datamodule2.LabelTertiaryFontColour := $002D2D2D;
  datamodule2.LabelTertiaryFontColourNegative := $002D2D2D;

  // Edit Settings.
  datamodule2.EditFontColour := $002D2D2D; // Font colour.
  datamodule2.EditOnChangeFontColour := $002D2D2D; // Font colour when entering data.
  datamodule2.EditColour := $00FDF8ED; // Background colour.
  datamodule2.EditBorderColour := $0033CCFF;
  datamodule2.EditOnChangeColour := $00FDF8ED;
  datamodule2.EditCursor := crHandPoint; // Sets the cursor icon on mouse over.

  // Table Settings.
  datamodule2.TableAltRowColours := False; // When set to true, will give alternate rows another colour.
  datamodule2.TableAltRowColour := $00333333; // Sets the colour of the alternate rows.
  datamodule2.TableTopBorderFillColour := $0033CCFF; // Table header colour.
  datamodule2.TableTopBorderStrokeColour := $0033CCFF; // Table header border colour.
  datamodule2.TableMainFillColour := clWhite; // Table background colour.

  // Table Header Gradient.
  datamodule2.TableHeaderGradient := True; // Setting to true will replace the table header colour with a gradient.
  datamodule2.TableHeaderGradientStartColour := $0033CCFF; // Starts at the left of the table.
  datamodule2.TableHeaderGradientEndColour := $000099CC; // Starts from the right of the table.

  // Table Border Radius.
  datamodule2.TableTLBorderRadius := 0; // Top Left Corner
  datamodule2.TableTRBorderRadius := 0; // Top Right Corner
  datamodule2.TableBLBorderRadius := 0; // Bottom Left Corner
  datamodule2.TableBRBorderRadius := 0; // Bottom Right Corner

  // Popup Colour Settings.
  datamodule2.PopupColour := $000099CC;
  datamodule2.PopupBGColour := clWhite; // Sets the brush colour of th TShape with a tag 0
                            // meaning that the top bar tag must be set to 1.

  // ComboBox Settings.
  datamodule2.CBArrowColour := $00F5F3E0;
  datamodule2.CBBorderColour := $0033CCFF;
  datamodule2.CBButtonColour := $0033CCFF;
  datamodule2.CBColour := clWhite;
  datamodule2.CBTextColour := $0033CCFF;
  datamodule2.CBSelectedTextColour := $0033CCFF;
  datamodule2.CBItemColour := clWhite;
  datamodule2.CBSelectedItemColour:= clWhite;
  datamodule2.CBStyle := csDropDownList; // Sets how the combobox acts.
  datamodule2.CBCursor := crHandPoint; // Sets the cursor icon on mouse over.

  // Shouldn't be needed for the main components/controls but left here just in case.
  datamodule2.FontColor1 := $00C08000;
  datamodule2.FontColor2 := $00898584;
  datamodule2.FontColor3 := clWhite;
  datamodule2.FontColor1Negative := $00C08000;
  datamodule2.FontColor2Negative := $00898584;
  datamodule2.FontColor3Negative := clWhite;



  //ShowMessage(DataModule2.AppPath);
  for aFormComponentCounter := 0 to aForm.ComponentCount -1 do
    begin
      if (aForm.Components[aFormComponentCounter].InheritsFrom(Tcontrol) or (aForm.Components[aFormComponentCounter].ClassType = TFlashGraphSimple))  then
        begin
          // If the component is any type of Tcontrol, panel button etc rezise it only
          //only resize if main form. Pass true or false to this procedure to enable/disbale resizing of components
          if  ((ScaleUp = True) and (not(aForm.Components[aFormComponentCounter].ClassType = TFlashGraphSimple))) then
            begin
              Tcontrol(aForm.Components[aFormComponentCounter]).width := math.floor(Tcontrol(aForm.Components[aFormComponentCounter]).width * datamodule2.GlobalWidthFactor);
              Tcontrol(aForm.Components[aFormComponentCounter]).Height := math.floor(Tcontrol(aForm.Components[aFormComponentCounter]).Height * datamodule2.GlobalHeightFactor);
              Tcontrol(aForm.Components[aFormComponentCounter]).Left := math.floor(Tcontrol(aForm.Components[aFormComponentCounter]).Left * datamodule2.GlobalWidthFactor);
              Tcontrol(aForm.Components[aFormComponentCounter]).Top := math.floor(Tcontrol(aForm.Components[aFormComponentCounter]).Top * datamodule2.GlobalHeightFactor);
            end;

          TempStr := aForm.Components[aFormComponentCounter].name;

          //****************** File paths load in from local path *************************************************************

          if (aForm.Components[aFormComponentCounter].classtype = TFlashGraphSimple)  then
            begin
              TFlashGraphSimple(aForm.Components[aFormComponentCounter]).Moviepath :=  DataModule2.Makepathlocal(TFlashplayercontrol(aForm.Components[aFormComponentCounter]),TFlashGraphSimple(aForm.Components[aFormComponentCounter]).Moviepath);
            end;

          if aForm.Components[aFormComponentCounter].InheritsFrom(TFlashplayercontrol) then
            begin
              TFlashplayercontrol(aForm.Components[aFormComponentCounter]).Movie :=  DataModule2.Makepathlocal(TFlashplayercontrol(aForm.Components[aFormComponentCounter]),TFlashplayercontrol(aForm.Components[aFormComponentCounter]).Movie);
                if ScaleUp = True then
                  begin
                    //TFlashplayercontrol(aForm.Components[aFormComponentCounter]).width := math.floor(TFlashplayercontrol(aForm.Components[aFormComponentCounter]).width * GlobalWidthFactor);
                    //TFlashplayercontrol(aForm.Components[aFormComponentCounter]).height := math.floor(TFlashplayercontrol(aForm.Components[aFormComponentCounter]).height * GlobalheightFactor);
                  end;
            end;

          if aForm.Components[aFormComponentCounter].InheritsFrom(TTransparentFlashplayercontrol) then
            begin
              if ((pos('REF',RawByteString(TTransparentFlashplayercontrol(aForm.Components[aFormComponentCounter]).Movie)) <> 0) or (pos('INFO',RawByteString(TTransparentFlashplayercontrol(aForm.Components[aFormComponentCounter]).Movie)) <> 0)) then
                begin
                  //showmessage(TTransparentFlashplayercontrol(aForm.Components[aFormComponentCounter]).name);
                    TTransparentFlashplayercontrol(aForm.Components[aFormComponentCounter]).ScaleMode := 0;
                    TTransparentFlashplayercontrol(aForm.Components[aFormComponentCounter]).movie := TTransparentFlashplayercontrol(aForm.Components[aFormComponentCounter]).movie;
                end;

                TTransparentFlashplayercontrol(aForm.Components[aFormComponentCounter]).movie :=  DataModule2.Makepathlocal(TTransparentFlashplayercontrol(aForm.Components[aFormComponentCounter]),TTransparentFlashplayercontrol(aForm.Components[aFormComponentCounter]).movie);

              if ScaleUp = True then
                begin
                 // TTransparentFlashplayercontrol(aForm.Components[aFormComponentCounter]).width := math.floor(TTransparentFlashplayercontrol(aForm.Components[aFormComponentCounter]).width * GlobalWidthFactor);
                //  TTransparentFlashplayercontrol(aForm.Components[aFormComponentCounter]).height := math.floor(TTransparentFlashplayercontrol(aForm.Components[aFormComponentCounter]).height * GlobalHeightFactor);
                end;
            end ;

          if (aForm.Components[aFormComponentCounter].classtype = TFlashButtonEX)  then
            begin
              TFlashButtonEX(aForm.Components[aFormComponentCounter]).Moviepath :=  DataModule2.Makepathlocal(TEFlashButton(aForm.Components[aFormComponentCounter]),TEFlashButton(aForm.Components[aFormComponentCounter]).Moviepath);
              if ScaleUp = True then
                Begin
                  //TFlashButton(aForm.Components[aFormComponentCounter]).width := math.floor(TFlashButton(aForm.Components[aFormComponentCounter]).width * GlobalWidthFactor);
                  //TFlashButton(aForm.Components[aFormComponentCounter]).height := math.floor(TFlashButton(aForm.Components[aFormComponentCounter]).height * GlobalHeightFactor);
                end;
            end;


          if (aForm.Components[aFormComponentCounter].classtype = TEFlashTable) then
            begin
              //TEFlashTable(aForm.Components[aFormComponentCounter]).Moviepath :=  DataModule2.Makepathlocal(TEFlashTable(aForm.Components[aFormComponentCounter]),TEFlashTable(aForm.Components[aFormComponentCounter]).Moviepath);
              TEFlashTable(aForm.Components[aFormComponentCounter]).Moviepath := DataModule2.AppPath + '\Animation\ALC_Table.swf';
                if ScaleUp = True then
                  Begin
                    TEFlashTable(aForm.Components[aFormComponentCounter]).lhColumnWidth := math.floor(TEFlashTable(aForm.Components[aFormComponentCounter]).lhColumnWidth * datamodule2.GlobalWidthFactor);
                    TEFlashTable(aForm.Components[aFormComponentCounter]).topBorderHeight := math.Ceil(TEFlashTable(aForm.Components[aFormComponentCounter]).topBorderHeight * datamodule2.GlobalHeightFactor);
                    TEFlashTable(aForm.Components[aFormComponentCounter]).bottomMargin := math.Ceil(TEFlashTable(aForm.Components[aFormComponentCounter]).bottomMargin * datamodule2.GlobalHeightFactor);
                    TEFlashTable(aForm.Components[aFormComponentCounter]).topMargin := math.Ceil(TEFlashTable(aForm.Components[aFormComponentCounter]).topMargin * datamodule2.GlobalHeightFactor);
                    TEFlashTable(aForm.Components[aFormComponentCounter]).leftMargin := math.Ceil(TEFlashTable(aForm.Components[aFormComponentCounter]).leftMargin * datamodule2.GlobalWidthFactor);
                    TEFlashTable(aForm.Components[aFormComponentCounter]).rightMargin := math.Ceil(TEFlashTable(aForm.Components[aFormComponentCounter]).rightMargin * datamodule2.GlobalWidthFactor);
                  end;

             // TEFlashTable(aForm.Components[aFormComponentCounter]).topBorderFill := datamodule2.TableTopBorderFillColour;
            //  TEFlashTable(aForm.Components[aFormComponentCounter]).topBorderStroke := datamodule2.TableTopBorderStrokeColour;

             // TEFlashTable(aForm.Components[aFormComponentCounter]).mainFill := datamodule2.TableMainFillColour;
             // TEFlashTable(aForm.Components[aFormComponentCounter]).alternateRowColours := datamodule2.TableAltRowColours;
             // TEFlashTable(aForm.Components[aFormComponentCounter]).alternateRowColour := datamodule2.TableAltRowColour;

            //  TEFlashTable(aForm.Components[aFormComponentCounter]).headerGradient := datamodule2.TableHeaderGradient;
           //   TEFlashTable(aForm.Components[aFormComponentCounter]).headerGradientStartColour := datamodule2.TableHeaderGradientStartColour;
           //   TEFlashTable(aForm.Components[aFormComponentCounter]).headerGradientEndColour := datamodule2.TableHeaderGradientEndColour;

              TEFlashTable(aForm.Components[aFormComponentCounter]).topLeftCornerRadius := datamodule2.TableTLBorderRadius;
              TEFlashTable(aForm.Components[aFormComponentCounter]).topRightCornerRadius := datamodule2.TableTRBorderRadius;
              TEFlashTable(aForm.Components[aFormComponentCounter]).bottomLeftCornerRadius := datamodule2.TableBLBorderRadius;
              TEFlashTable(aForm.Components[aFormComponentCounter]).bottomRightCornerRadius := datamodule2.TableBRBorderRadius;

              TEFlashTable(aForm.Components[aFormComponentCounter]).CallFunction('<invoke name="drawTable" returntype="xml"><arguments><string>Introduction</string></arguments></invoke>');
            end;

//******* TESpEditStd  START*************************************************************************************************************8
          if (aForm.Components[aFormComponentCounter].ClassType = TESpEditStd) then
            begin
              // size : only resize if main form. Pass true or false to this procedure to enable/disbale resizing of components
              if ScaleUp = True then
                TESpEditStd(aForm.Components[aFormComponentCounter]).Font.Size := math.floor(TESpEditStd(aForm.Components[aFormComponentCounter]).Font.Size * datamodule2.FontSizeFacter);

                TESpEditStd(aForm.Components[aFormComponentCounter]).Color := datamodule2.EditColour;
                TESpEditStd(aForm.Components[aFormComponentCounter]).Font.Color := datamodule2.editFontColour;
                TESpEditStd(aForm.Components[aFormComponentCounter]).onChangeColor := datamodule2.EditOnChangeColour;
                TESpEditStd(aForm.Components[aFormComponentCounter]).onChangeFontColor := datamodule2.EditOnChangeFontColour;
                TESpEditStd(aForm.Components[aFormComponentCounter]).borderColour := datamodule2.EditBorderColour;
            end;
//******* TESpEditStd END *************************************************************************************************************8

//******* TESpLabel *************************************************************************************************************8
          if (aForm.Components[aFormComponentCounter].ClassType = (TESpLabel)) then
            begin
              { TODO : Define font color for labels and table path }
                if TESpLabel(aForm.Components[aFormComponentCounter]).Tag = 0 then
                  begin
                   { TESpLabel(aForm.Components[aFormComponentCounter]).Font.Color := datamodule2.LabelMainFontColour;
                    TESpLabel(aForm.Components[aFormComponentCounter]).SetOriginalColour(datamodule2.LabelMainFontColour);
                    TESpLabel(aForm.Components[aFormComponentCounter]).negativeColor := datamodule2.LabelMainFontColourNegative;   }
                    //TESpLabel(aForm.Components[aFormComponentCounter]).Font.Style := [fsBold];
                  end
                else if TESpLabel(aForm.Components[aFormComponentCounter]).Tag = 1  then
                  begin
                   { TESpLabel(aForm.Components[aFormComponentCounter]).Font.Color := datamodule2.LabelHeaderFontColour;
                    TESpLabel(aForm.Components[aFormComponentCounter]).SetOriginalColour(datamodule2.LabelHeaderFontColour);
                    TESpLabel(aForm.Components[aFormComponentCounter]).negativeColor := datamodule2.LabelHeaderFontColourNegative;    }
                    //TESpLabel(aForm.Components[aFormComponentCounter]).Font.Style := [fsBold];
                  end
                else if TESpLabel(aForm.Components[aFormComponentCounter]).Tag = 2  then
                  begin
                    {TESpLabel(aForm.Components[aFormComponentCounter]).Font.Color := datamodule2.LabelTertiaryFontColour;
                    TESpLabel(aForm.Components[aFormComponentCounter]).SetOriginalColour(datamodule2.LabelTertiaryFontColour);
                    TESpLabel(aForm.Components[aFormComponentCounter]).negativeColor := datamodule2.LabelTertiaryFontColourNegative;   }
                   // TESpLabel(aForm.Components[aFormComponentCounter]).Font.Style := [fsBold];
                  end;

              if ScaleUp = True then
                TESpLabel(aForm.Components[aFormComponentCounter]).Font.Size := math.floor(TSpFormatLabel(aForm.Components[aFormComponentCounter]).Font.Size * datamodule2.FontSizeFacter);

              if MainForm.Height = 800 then
                TESpLabel(aForm.Components[aFormComponentCounter]).Font.Size := TESpLabel(aForm.Components[aFormComponentCounter]).Font.Size + 1;
            end ;
//******* TESpLabel END *************************************************************************************************************8

//********TShape START****************************************************************
  if (aForm.Components[aFormComponentCounter].ClassType = (TShape)) then
  begin
    TShape(aForm.Components[aFormComponentCounter]).Pen.Color := datamodule2.PopupColour;

    if (TShape(aForm.Components[aFormComponentCounter]).Tag = 1) then
    begin
      TShape(aForm.Components[aFormComponentCounter]).Brush.Color := datamodule2.PopupColour;
    end
    else
    begin
      TShape(aForm.Components[aFormComponentCounter]).Brush.Color := datamodule2.PopupBGColour;
    end;
  end;
//********TShape END******************************************************************

          if (aForm.Components[aFormComponentCounter].ClassType = (TLabel)) then
            begin
              { TODO : Define font color for labels and table path }
             // TLabel(aForm.Components[aFormComponentCounter]).Font.Size := math.floor(TLabel(aForm.Components[aFormComponentCounter]).Font.Size * DataModule2.FontSizeFacter);
               TLabel(aForm.Components[aFormComponentCounter]).AutoSize := false;
               if pos('OD',TLabel(aForm.Components[aFormComponentCounter]).Caption) <> 0 then
                begin
                  TLabel(aForm.Components[aFormComponentCounter]).ShowHint := True;
                  TLabel(aForm.Components[aFormComponentCounter]).Hint := 'oculus dexter';
                end;

               if pos('OS',TLabel(aForm.Components[aFormComponentCounter]).Caption) <> 0 then
                begin
                  TLabel(aForm.Components[aFormComponentCounter]).ShowHint := True;
                  TLabel(aForm.Components[aFormComponentCounter]).Hint := 'oculus sinister';
                end;

            end;

          if (aForm.Components[aFormComponentCounter].ClassType = (TDBCheckBox)) then
            begin
              { TODO : Define font color for labels and table path }
              //TDBCheckBox(aForm.Components[aFormComponentCounter]).Font.Size := math.floor(TDBCheckBox(aForm.Components[aFormComponentCounter]).Font.Size * DataModule2.FontSizeFacter);
              //TDBCheckBox(aForm.Components[aFormComponentCounter]).height := math.floor(TDBCheckBox(aForm.Components[aFormComponentCounter]).Height * DataModule2.GlobalHeightFactor);
              //TDBCheckBox(aForm.Components[aFormComponentCounter]).width := math.floor(TDBCheckBox(aForm.Components[aFormComponentCounter]).width * DataModule2.GlobalWidthFactor);
            end ;

          if (aForm.Components[aFormComponentCounter].ClassType = (TDBLookupComboBox)) then
            begin
              { TODO : Define font color for labels and table path }
              //TDBLookupComboBox(aForm.Components[aFormComponentCounter]).Font.Size := math.floor(TDBLookupComboBox(aForm.Components[aFormComponentCounter]).Font.Size * DataModule2.FontSizeFacter);
             // TDBLookupComboBox(aForm.Components[aFormComponentCounter]).height
            end ;

          if (aForm.Components[aFormComponentCounter].ClassType = (TDateTimePicker)) then
            begin
              { TODO : Define font color for labels and table path }
              //TDateTimePicker(aForm.Components[aFormComponentCounter]).Font.Size := math.floor(TSpFormatLabel(aForm.Components[aFormComponentCounter]).Font.Size * DataModule2.FontSizeFacter);
            end ;

          if aForm.Components[aFormComponentCounter].ClassType = TESpComboBox then
          begin
            TESpComboBox(aForm.Components[aFormComponentCounter]).Color := datamodule2.CBColour;
            TESpComboBox(aForm.Components[aFormComponentCounter]).Font.Color := datamodule2.CBTextColour;
            TESpComboBox(aForm.Components[aFormComponentCounter]).itemColor := datamodule2.CBItemColour;
            TESpComboBox(aForm.Components[aFormComponentCounter]).selectedItemColor := datamodule2.CBSelectedItemColour;
            TESpComboBox(aForm.Components[aFormComponentCounter]).selectedTextColor := datamodule2.CBSelectedTextColour;
            TESpComboBox(aForm.Components[aFormComponentCounter]).textColor := datamodule2.CBTextColour;
            TESpComboBox(aForm.Components[aFormComponentCounter]).ArrowColor := datamodule2.CBArrowColour;
            TESpComboBox(aForm.Components[aFormComponentCounter]).BorderColor := datamodule2.CBBorderColour;
            TESpComboBox(aForm.Components[aFormComponentCounter]).ButtonColor := datamodule2.CBButtonColour;
            TESpComboBox(aForm.Components[aFormComponentCounter]).Cursor := datamodule2.CBCursor;
            TESpComboBox(aForm.Components[aFormComponentCounter]).Style := datamodule2.CBStyle;
          end;

          if aForm.Components[aFormComponentCounter].ClassType = TSpComboBoxConnector then
          begin
            TSpComboBoxConnector(aForm.Components[aFormComponentCounter]).Color := datamodule2.CBColour;
            TSpComboBoxConnector(aForm.Components[aFormComponentCounter]).Font.Color := datamodule2.CBTextColour;
            TSpComboBoxConnector(aForm.Components[aFormComponentCounter]).itemColor := datamodule2.CBItemColour;
            TSpComboBoxConnector(aForm.Components[aFormComponentCounter]).selectedItemColor := datamodule2.CBSelectedItemColour;
            TSpComboBoxConnector(aForm.Components[aFormComponentCounter]).selectedTextColor := datamodule2.CBSelectedTextColour;
            TSpComboBoxConnector(aForm.Components[aFormComponentCounter]).textColor := datamodule2.CBTextColour;
            TSpComboBoxConnector(aForm.Components[aFormComponentCounter]).ArrowColor := datamodule2.CBArrowColour;
            TSpComboBoxConnector(aForm.Components[aFormComponentCounter]).BorderColor := datamodule2.CBBorderColour;
            TSpComboBoxConnector(aForm.Components[aFormComponentCounter]).ButtonColor := datamodule2.CBButtonColour;
            TSpComboBoxConnector(aForm.Components[aFormComponentCounter]).Cursor := datamodule2.CBCursor;
            TSpComboBoxConnector(aForm.Components[aFormComponentCounter]).Style := datamodule2.CBStyle;
          end;

          if ScaleUp = True then
            Begin
              if aForm.Components[aFormComponentCounter].ClassType = TComboBox then
                begin
                  TComboBox(aForm.Components[aFormComponentCounter]).Font.Size := math.floor(TComboBox(aForm.Components[aFormComponentCounter]).Font.Size * datamodule2.FontSizeFacter);
                end ;

               if aForm.Components[aFormComponentCounter].ClassType = TDBLookupComboBox then
                begin
                  TDBLookupComboBox(aForm.Components[aFormComponentCounter]).Font.Size := math.floor(TDBLookupComboBox(aForm.Components[aFormComponentCounter]).Font.Size * datamodule2.FontSizeFacter);
                end ;

              if aForm.Components[aFormComponentCounter].ClassType = TListBox then
                begin
                  TListBox(aForm.Components[aFormComponentCounter]).Font.Size := math.floor(TListBox(aForm.Components[aFormComponentCounter]).Font.Size * datamodule2.FontSizeFacter);
                  TListBox(aForm.Components[aFormComponentCounter]).Font.Color := datamodule2.FontColor1;
                end;

              if aForm.Components[aFormComponentCounter].ClassType = TLabel then
                begin
                  TLabel(aForm.Components[aFormComponentCounter]).Font.Size := math.floor(TLabel(aForm.Components[aFormComponentCounter]).Font.Size * datamodule2.FontSizeFacter);
                end ;

              if aForm.Components[aFormComponentCounter].ClassType = TEdit then
                begin
                  TEdit(aForm.Components[aFormComponentCounter]).Font.Size := math.floor(TEdit(aForm.Components[aFormComponentCounter]).Font.Size * datamodule2.FontSizeFacter);
                end;

              if aForm.Components[aFormComponentCounter].ClassType = TDBEdit then
                begin
                  TDBEdit(aForm.Components[aFormComponentCounter]).Font.Size := math.floor(TDBEdit(aForm.Components[aFormComponentCounter]).Font.Size * datamodule2.FontSizeFacter);
                end;

              if aForm.Components[aFormComponentCounter].ClassType = TESpComboBox then
                begin
                  TESpComboBox(aForm.Components[aFormComponentCounter]).Font.Size := math.floor(TESpComboBox(aForm.Components[aFormComponentCounter]).Font.Size * datamodule2.FontSizeFacter);
                end;

              if aForm.Components[aFormComponentCounter].ClassType = TSpComboBoxConnector then
                begin
                  TSpComboBoxConnector(aForm.Components[aFormComponentCounter]).Font.Size := math.floor(TSpComboBoxConnector(aForm.Components[aFormComponentCounter]).Font.Size * datamodule2.FontSizeFacter);
                end;
            end;
      end;
    end;

end;

procedure TMainForm.showPopUp(aPopupForm: TForm);
begin
  if DataModule2.canShowFadeForm then
  begin
  Application.CreateForm(TfrmFadeForm, frmFadeForm);
    aPopUpForm.PrintScale := poPrintToFit;
    Mainform.Enabled := false;
    frmFadeForm.Enabled := false;
    frmFadeForm.Show;
    sleep(250);
    Application.ProcessMessages;
    aPopUpForm.Show;
  end
  else
  begin
    aPopUpForm.Show;
  end;
end;

procedure TMainForm.SpCBPCTChange(Sender: TObject);
begin
  if DataModule2.isLoading then
    Exit;

  editPopName.Text := SptoStr(DataModule2.population,2,3,7);
  editPopName.Write;
  editPopSize.Text := SptoStr(DataModule2.population,2,8,7);
  editPopSize.Write;
  editPopSize.FormatValue;

  lblSelectRegion.Read;
  lblSelectCBSHA.Read;
  lblSelectCBPCT.Read;
end;

procedure TMainForm.SpCBRegionsChange(Sender: TObject);
var
  numberOfSHA, numberOfPCT, n : integer;
begin
  if DataModule2.isLoading then
    Exit;

  // Hides the last ComboBox if either Scotland or Northern Ireland is selected in the first ComboBox.
  if (SpCBRegions.ItemIndex = 3) or (SpCBRegions.ItemIndex = 4) then
    begin
      lblSelectCBPCT.Visible := False;
      SpCBPCT.Visible := False;
    end
  else
    begin
      lblSelectCBPCT.Visible := True;
      SpCBPCT.Visible := True;
    end;

  numberOfSHA := 0;
  numberOfPCT := 0;

  for n := 58 to 72 do
    begin
      if SptoStr(DataModule2.Population,2,7,n) <> '' then
        numberOfSHA := numberOfSHA + 1;
    end;

  for n := 58 to 89 do
    begin
      if SptoStr(DataModule2.Population,2,12,n) <> '' then
        numberOfPCT := numberOfPCT + 1;
    end;

  SpCBSHA.lastRow := SpCBSHA.firstRow + numberOfSHA - 1;
  SpCBPCT.lastRow := SpCBPCT.firstRow + numberOfPCT - 1;

  SpCBSHA.Connect;

  SpCBPCT.Connect;

  IntToSP(DataModule2.Population,2,6,51,1);
  IntToSP(DataModule2.Population,2,11,51,1);

  editPopName.Text := SptoStr(DataModule2.Population,2,3,7);
  editPopName.Write;
  editPopSize.Text := SptoStr(DataModule2.Population,2,8,7);
  editPopSize.Write;
  editPopSize.FormatValue;

  lblSelectRegion.Read;
  lblSelectCBSHA.Read;
  lblSelectCBPCT.Read;
end;

procedure TMainForm.SpCBSHAChange(Sender: TObject);
var
  numberOfSHA, numberOfPCT, n : integer;
begin
  if DataModule2.isLoading then
    Exit;

  numberOfPCT := 0;

  for n := 58 to 89 do
    begin
      if SptoStr(DataModule2.Population,2,12,n) <> '' then
        numberOfPCT := numberOfPCT + 1;
    end;

  SpCBPCT.lastRow := SpCBPCT.firstRow + numberOfPCT - 1;
  SpCBPCT.Connect;
  SpCBPCT.ItemIndex := -1;

  IntToSP(DataModule2.Population,2,11,51,1);

  editPopName.Text := SptoStr(DataModule2.Population,2,3,7);
  editPopName.Write;
  editPopSize.Text := SptoStr(DataModule2.Population,2,8,7);
  editPopSize.Write;
  editPopSize.FormatValue;

  lblSelectRegion.Read;
  lblSelectCBSHA.Read;
  lblSelectCBPCT.Read;
end;

procedure TMainForm.Reset1Click(Sender: TObject);
begin
  DataModule2.isLoading := True;
  DataModule2.LoadFile(True);
  DataModule2.isLoading := False;
  DataModule2.updateTabSheet(PageControl1.ActivePage);
end;

procedure TMainForm.Label1Click(Sender: TObject);
var
  pchURL: array[0..255] of Char;
begin
  StrPcopy(pchURL, 'www.Abacusint.com');
  ShellExecute(Application.Handle, nil, pchURL, nil, nil, SW_ShowNormal);
end;

procedure TMainForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
    '0' .. '9': ;
    '.':  begin
            if FormatSettings.DecimalSeparator = ',' then
              Key := #0;
          end;
    ',':  begin
            if FormatSettings.DecimalSeparator = '.' then
              Key := #0;
          end;
    '-': ;
    #8: ;
  else
    Key := #0;
  end;

end;

procedure TMainForm.btnNextClick(Sender: TObject);
begin
  NavForward := true;
  PageControl1.ActivePage := Poppage;
end;

procedure TMainForm.btn_Add_New_FollowUpClick(Sender: TObject);
begin
  if ini_Visit_Complete.Checked = true then
    begin
      var_Make_All_DBControls_ReadOnly := false;
       if no_Ini_Visit_Found_Lab.Visible <> true then
         begin
          {Set the date time to now when adding a new record}
          var_In_EDIT_MODE := false;
          in_Initial_Visit := false;
          in_FollowUpVisit := true;
          frmEpisodeDatePicker.DBEdit_Patient_EnteredBy.Text := '';
          frmEpisodeDatePicker.DateTimePicker1.MinDate := strtodate('01/01/1900');
          frmEpisodeDatePicker.DateTimePicker1.Date := Now;
          frmEpisodeDatePicker.DateTimePicker1.Visible := true;

          var_New_EpisodeNum := 2 + ((FollowUpVisit_ScrollBox.ControlCount)-1);

          frmEpisodeDatePicker.btn_Confirm_FollowUp.Visible := True;
          frmEpisodeDatePicker.btn_Confirm_FollowUp.BringToFront;
          frmEpisodeDatePicker.btn_Confirm_Ini.Visible := False;
          insertNewAnswerBase;
         end
       else
       frmDBControls.ViewText(Sender,'Please add a new initial record first','Information');
       // showmessage('Please add a new initial record first');
    end
  else
    begin
      frmDBControls.ViewText(Sender,'Please complete the initial visit first','Information');
    end;
end;

procedure TMainForm.btn_BackClick(Sender: TObject);
begin
 if PageControl1.ActivePage = pg_Previous_Patients_Overview then
  NavigateTo_Main(3) //So the user can insert a new patient
 else if PageControl1.ActivePage = pg_EpisodeSets then
  NavigateTo_Main(5) //So the user can insert a new patient
 else if PageControl1.ActivePage = pg_VisitsOverview then
  NavigateTo_Main(12) //So the user can insert a new patient
 else
 NavigateTo_Main(DataModule2.BackorNextScreen(Mainform.CurrentScreen,'back'));
end;

procedure TMainForm.btn_Confirm_PatientClick(Sender: TObject);
var
  Level: Integer;
  dbOperation: AnsiString;
begin
  // Check required fields. Returns true if all fields have been complete
  if frmDBControls.CanSubmitPatient = True then
    begin
      try
        // start database transaction
        Level := frmDBControls.ALC_Connection_1.BeginTrans;

        // saving or inserting a patient
        if (frmDBControls.var_Patient_ID = 0) then
          begin
            frmDBControls.ALC_TBL_Patients.Insert;
            frmDBControls.ALC_TBL_Patients.FieldByName('PatientUUID').AsString := frmDBControls.var_Patient_UUID;
            frmDBControls.ALC_TBL_Patients.FieldByName('CentreID').AsInteger := frmDBControls.var_Center_ID;
            frmDBControls.ALC_TBL_Patients.FieldByName('CentreUUID').AsString := frmDBControls.var_Center_UUID;
            frmDBControls.ALC_TBL_Patients.FieldByName('GenderID').AsInteger := DBLookupComboBox_Patient_Gender.KeyValue;
            frmDBControls.ALC_TBL_Patients.FieldByName('AgeID').AsInteger := DBComboBox_Patient_Age.KeyValue;
            frmDBControls.ALC_TBL_Patients.FieldByName('DateAdded').AsString := DateTimeToStr(Now);
            frmDBControls.ALC_TBL_Patients.FieldByName('DateUpdated').AsString := DateTimeToStr(Now);
            frmDBControls.ALC_TBL_Patients.FieldByName('Archived').AsBoolean := False;
            frmDBControls.ALC_TBL_Patients.FieldByName('AuthorID').AsString := DataModule2.author;
            dbOperation := 'INSERTING';
          end
        else
          begin
            frmDBControls.ALC_TBL_Patients.Edit;
            frmDBControls.ALC_TBL_Patients.FieldByName('GenderID').AsInteger := DBLookupComboBox_Patient_Gender.KeyValue;
            frmDBControls.ALC_TBL_Patients.FieldByName('AgeID').AsInteger := DBComboBox_Patient_Age.KeyValue;
            frmDBControls.ALC_TBL_Patients.FieldByName('DateUpdated').AsString := DateTimeToStr(Now);
            frmDBControls.ALC_TBL_Patients.FieldByName('AuthorID').AsString := DataModule2.author;
            dbOperation := 'UPDATING';
          end;

        frmDBControls.ALC_TBL_Patients.Post;

        // if database operations are successful, end transaction and commit data to database
        frmDBControls.ALC_Connection_1.CommitTrans;

        // set current patient details
        frmDBControls.var_Patient_ID := frmDBControls.ALC_TBL_Patients.FieldByName('PatientID').AsInteger;

        // select next page
        frmNewID.Label2.Caption := 'SET ID: ' + IntToStr(frmDBControls.var_Patient_ID);
        DataModule2.canShowFadeForm := true;
        showPopUp(frmNewID);
        NavigateTo_Main(6); { episosde groups }
      except
        on E: Exception do
          begin
            if dbOperation = 'INSERTING' then
              frmDBControls.ShowDatabaseError(nil, E, 'Patients Table', 'INSERTING ERROR: the Patients details have not been submitted')
            else
              frmDBControls.ShowDatabaseError(nil, E, 'Patients Table', 'UPDATING ERROR: the Patients details have not been submitted');

            if (frmDBControls.var_Patient_ID = 0) then
              frmDBControls.ALC_TBL_Patients.Delete;
            frmDBControls.ALC_Connection_1.RollbackTrans;

            NavigateTo_Main(4); { patient options }
          end;
      end; // end try
    end;
end;

procedure TMainForm.btn_CreateNewClick(Sender: TObject);
begin
  frmDBControls.ResetPatientDetailsScreen;
  frmDBControls.IntialiseNewPatient;

  try
    frmDBControls.activateDBTables;
  except
    on E: Exception do
      begin
        frmDBControls.ShowDatabaseError(nil, E, 'All Tables', 'ACTIVATE TABLES ERROR: the procedure btn_CreateNewClick failed to activate database tables');
      end;
  end; // end try

  DBLookupComboBox_Patient_Gender.KeyValue := null;
  DBComboBox_Patient_Age.KeyValue := null;
  NavigateTo_Main(1); { Patient Details }
end;

procedure TMainForm.btn_edit_patient_detailsClick(Sender: TObject);
begin
  var_Make_All_DBControls_ReadOnly := false;
  var_In_EDIT_MODE := true;
  in_Initial_Visit := true;
  in_FollowUpVisit := false;
  frmDBControls.getPreviousRecords((frmDBControls.var_Patient_ID),frmDBControls.ALC_TBL_Patients,'patientID');
  NavigateTo_Main(1);
end;

procedure TMainForm.btn_Ini_AddClick(Sender: TObject);
begin
  var_Make_All_DBControls_ReadOnly := false;
  {Set the date time to now when adding a new record}
  var_In_EDIT_MODE := false;
  in_Initial_Visit := true;
  in_FollowUpVisit := false;
  frmEpisodeDatePicker.DBEdit_Patient_EnteredBy.Text := '';
  frmEpisodeDatePicker.DateTimePicker1.MinDate := StrToDate('01/01/1900');
  frmEpisodeDatePicker.DateTimePicker1.MaxDate := StrToDate('01/01/2999');
  frmEpisodeDatePicker.DateTimePicker1.Date := Now;
  frmEpisodeDatePicker.DateTimePicker1.Visible := true;
  frmEpisodeDatePicker.btn_Confirm_FollowUp.Visible := false;
  frmEpisodeDatePicker.btn_Confirm_Ini.Visible := true;
  frmEpisodeDatePicker.btn_Confirm_Ini.BringToFront;
  insertNewAnswerBase;
end;

procedure TMainForm.btn_Ini_EditClick(Sender: TObject);
var
  I : integer;
begin
  if no_Ini_Visit_Found_Lab.Visible = false then   //You cannot edit a record if there are none
    begin
      var_In_EDIT_MODE := true;
      in_Initial_Visit := true;
      in_FollowUpVisit := false;

      for I := 0 to iniVisit_ScrollBox.ControlCount - 1 do
        begin
          if ((iniVisit_ScrollBox.Controls[I].ClassType = TLabel) and (pos('ini',iniVisit_ScrollBox.Controls[I].Name) <> 0)) then
            var_New_AnswerBase_ID := TLabel(iniVisit_ScrollBox.Controls[I]).Tag;
        end;

      frmDBControls.getPreviousRecords((Mainform.var_New_AnswerBase_ID),frmDBControls.ALC_TBL_ANSWERS_BASE,'AnswerBaseID');
      frmEpisodeDatePicker.btn_Confirm_FollowUp.Visible := false;
      frmEpisodeDatePicker.btn_Confirm_Ini.Visible := true;
      frmEpisodeDatePicker.btn_Confirm_Ini.BringToFront;
      DataModule2.canShowFadeForm := true;
      Mainform.showPopUp(frmEpisodeDatePicker);
    end;
end;

procedure TMainForm.btn_NextClick(Sender: TObject);
begin
 NavigateTo_Main(DataModule2.BackorNextScreen(Mainform.CurrentScreen,'next'));
end;

procedure TMainForm.btn_ReviewClick(Sender: TObject);
var
  Level: Integer;
begin
  try
    frmDBControls.activateDBTables;
  except
    on E: Exception do
      begin
        frmDBControls.ShowDatabaseError(nil, E, 'All Tables', 'ACTIVATE TABLES ERROR: the procedure btn_ReviewClick failed to activate database tables');
      end;
  end; // end try

  if frmDBControls.ALC_TBL_Patients.RecordCount <> 0 then
    NavigateTo_Main(5) //Rrevious Patients Overview
  else
   frmDBControls.ViewText(frmDBControls, 'No patient records found','Information');
end;

procedure TMainForm.Button3Click(Sender: TObject);
Var
  Hwnd : THandle;
begin
   DataModule2.canShowFadeForm := true;
   showPopUp(frmReportUserOptions);
end;

procedure TMainForm.Print1Click(Sender: TObject);
begin
  if DataModule2.PrintDialog1.execute then
    mainform.print;
end;

procedure TMainForm.recordComplete(anAnswerBaseID: integer);
begin
  frmDBControls.ALC_TBL_ANSWERS_BASE.Active; //activate table
  frmDBControls.ALC_TBL_ANSWERS_BASE.Close;  //Close and open - forces a refresh
  frmDBControls.ALC_TBL_ANSWERS_BASE.Open;
  frmDBControls.ALC_TBL_ANSWERS_BASE.first;  //go to first record

  while frmDBControls.ALC_TBL_ANSWERS_BASE.eof <> true do
    begin
      if frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('AnswerBaseID').AsInteger = anAnswerBaseID then
        begin
          frmDBControls.ALC_TBL_ANSWERS_BASE.Edit;
          frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('completed').AsBoolean := true;
          frmDBControls.ALC_TBL_ANSWERS_BASE.Post;
          Break;
        end
      else
        begin
          frmDBControls.ALC_TBL_ANSWERS_BASE.next;
        end;
    end;
end;

procedure TMainForm.About1Click(Sender: TObject);
begin
  aboutbox.showmodal;
end;

procedure TMainForm.References1Click(Sender: TObject);
begin
  MainForm.refer := 'Ref27';
  References.Panel1Click(Sender);
  References.Height := (20*References.RichEdit1.Lines.Count+28);
  References.RichEdit1.Height := References.Height;
  References.RichEdit1.SelStart := 0;
  References.Position := poScreenCenter;
  References.visible := true;
end;

procedure TMainForm.Peripheral_laser_photocoagulation_ODClick(Sender: TObject);
begin
  if Peripheral_laser_photocoagulation_OD.Checked = true then
    not_relevant_OD.Checked := false;
  frmDBControls.IniVisitCheckBoxCheck(3);
end;

procedure TMainForm.Peripheral_laser_photocoagulation_OSClick(Sender: TObject);
begin
  if Peripheral_laser_photocoagulation_OS.Checked = true then
    not_relevant_OD.Checked := false;
  frmDBControls.IniVisitCheckBoxCheck(4);
end;

procedure TMainForm.PrescribingInformation1Click(Sender: TObject);
begin
  PrescInfo.showmodal;
end;

procedure TMainForm.UserGuide1Click(Sender: TObject);
var pchURL: array[0..255] of Char;
begin
  ShellExecute(Handle, Pchar('open'), PChar(DataModule2.AppPath+'\System\UserManual.pdf'), nil, nil, SW_SHOWNORMAL);
end;

procedure TMainForm.IBStartButtonClick(Sender: TObject);
begin
  Notebook1.PageIndex := 1;
end;

procedure TMainForm.resizeForm;
var
  n: Integer;
begin
  MainForm.Top := (Screen.Height - MainForm.Height) div 2;
  MainForm.Left := (Screen.Width - MainForm.Width) div 2;
end;

function TMainForm.returnAnserBaseID(aPatientID: Integer): integer;
var
  ID_Found : boolean;
begin
  try
    frmDBControls.activateDBTables;
  except
    on E: Exception do
      begin
        frmDBControls.ShowDatabaseError(nil, E, 'All Tables', 'ACTIVATE TABLES ERROR: the procedure returnAnserBaseID failed to activate database tables');
      end;
  end; // end try

  frmDBControls.ALC_TBL_ANSWERS_BASE.First;
  ID_Found := false;


  while frmDBControls.ALC_TBL_ANSWERS_BASE.eof <> true do
    begin
      if ((frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('patientID').AsInteger = aPatientID) and (frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('episodeSetID').AsInteger = var_New_EpiSetNum)) then
        begin
          Result := frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('AnswerBaseID').AsInteger;
          frmDBControls.ALC_TBL_ANSWERS_BASE.next;
           ID_Found := true
        end
      else
        begin
          frmDBControls.ALC_TBL_ANSWERS_BASE.next;
        end;
    end;

    if ID_Found = false then
      Result := 0;


end;

procedure TMainForm.ViewModelSpreadsheet1Click(Sender: TObject);
begin
  DataModule2.DefaultSP.Visible := not(DataModule2.DefaultSP.Visible);
end;

procedure TMainForm.ViewPopulationSpreadsheet1Click(Sender: TObject);
begin
  DataModule2.Population.Visible := not(DataModule2.Population.Visible);
end;

procedure TMainForm.Vitrectomy_in_the_fellow_eye_ODClick(Sender: TObject);
begin
  if Vitrectomy_in_the_fellow_eye_OD.Checked = true then
    not_relevant_OD.Checked := false;
  frmDBControls.IniVisitCheckBoxCheck(3);
end;

procedure TMainForm.Vitrectomy_in_the_fellow_eye_OSClick(Sender: TObject);
begin
  if Vitrectomy_in_the_fellow_eye_OS.Checked = true then
    not_relevant_OD.Checked := false;
  frmDBControls.IniVisitCheckBoxCheck(4);
end;

procedure TMainForm.LabelsSpProperties1Click(Sender: TObject);
var
  n: Integer;
  SpEnabledStr: String;
begin
  for n := 0 to (PageControl1.ActivePage.ControlCount-1) do
    begin
      if not ((PageControl1.ActivePage.Controls[n].InheritsFrom(TCustomControl)) or (PageControl1.ActivePage.Controls[n].InheritsFrom(TScrollingWinControl)) or (PageControl1.ActivePage.Controls[n].InheritsFrom(TCustomTabControl))) then
        begin
          if (PageControl1.ActivePage.Controls[n].ClassType = TSpFormatLabel) then
            begin
              if TSpFormatLabel(PageControl1.ActivePage.Controls[n]).spEnabled then
                SpEnabledStr := 'True'
              else
                SpEnabledStr := 'False';

              MessageDlg( 'Label Name : ' + TSpFormatLabel(PageControl1.ActivePage.Controls[n]).Name + #13+#10 + #13+#10 +
                          'Caption: '  + TSpFormatLabel(PageControl1.ActivePage.Controls[n]).Caption + #13+#10 + #13+#10 +
                          'Sheet: '  + IntToStr(TSpFormatLabel(PageControl1.ActivePage.Controls[n]).sheetNo) + #13+#10 + #13+#10 +
                          'Column: '  + IntToStr(TSpFormatLabel(PageControl1.ActivePage.Controls[n]).colNo) + #13+#10 + #13+#10 +
                          'Row: '  + IntToStr(TSpFormatLabel(PageControl1.ActivePage.Controls[n]).rowNo) + #13+#10 + #13+#10 +
                          'SpEnabled: '  + SpEnabledStr
                          ,mtInformation, [mbOK], 0);
            end;
        end;
    end;
end;

procedure TMainForm.EditsSPProperties1Click(Sender: TObject);
var
  n: Integer;
  SpEnabledStr: String;
begin
  for n := 0 to (PageControl1.ActivePage.ControlCount-1) do
    begin
      if not ((PageControl1.ActivePage.Controls[n].InheritsFrom(TCustomControl)) or (PageControl1.ActivePage.Controls[n].InheritsFrom(TScrollingWinControl)) or (PageControl1.ActivePage.Controls[n].InheritsFrom(TCustomTabControl))) then
        begin
          if (PageControl1.ActivePage.Controls[n].ClassType = TSpFormatEditEx) then
            begin
              if TSpFormatEditEx(PageControl1.ActivePage.Controls[n]).spEnabled then
                SpEnabledStr := 'True'
              else
                SpEnabledStr := 'False';

              MessageDlg( 'Edit Box Name : ' + TSpFormatEditEx(PageControl1.ActivePage.Controls[n]).Name + #13+#10 + #13+#10 +
                          'Caption: '  + TSpFormatEditEx(PageControl1.ActivePage.Controls[n]).Text + #13+#10 + #13+#10 +
                          'Sheet: '  + IntToStr(TSpFormatEditEx(PageControl1.ActivePage.Controls[n]).sheetNo) + #13+#10 + #13+#10 +
                          'Column: '  + IntToStr(TSpFormatEditEx(PageControl1.ActivePage.Controls[n]).colNo) + #13+#10 + #13+#10 +
                          'Row: '  + IntToStr(TSpFormatEditEx(PageControl1.ActivePage.Controls[n]).rowNo) + #13+#10 + #13+#10 +
                          'SpEnabled: '  + SpEnabledStr
                          ,mtInformation, [mbOK], 0);
            end;
        end;
    end;
end;

procedure TMainForm.EFlashButton2Click(Sender: TObject);
begin
  DataModule2.canShowFadeForm := TRUE;
  frmUserDefPop.Button1Click(Sender);
  showPopUp(frmUserDefPop);
end;

procedure TMainForm.editPopNameChange(Sender: TObject);
begin
  DataModule2.UserManagementTool1.audience := editPopName.Text;
end;

procedure TMainForm.Cataract_surgery_ODClick(Sender: TObject);
begin
  if Cataract_surgery_OD.Checked = true then
    not_relevant_OD.Checked := false;
  frmDBControls.IniVisitCheckBoxCheck(3);
end;

procedure TMainForm.Cataract_surgery_OSClick(Sender: TObject);
begin
  if Cataract_surgery_OS.Checked = true then
    not_relevant_OD.Checked := false;
  frmDBControls.IniVisitCheckBoxCheck(4);
end;

procedure TMainForm.ComboBoxesProperties1Click(Sender: TObject);
var
  n: Integer;
  SpEnabledStr: String;
begin
  for n := 0 to (PageControl1.ActivePage.ControlCount-1) do
    begin
      if not ((PageControl1.ActivePage.Controls[n].InheritsFrom(TCustomControl)) or (PageControl1.ActivePage.Controls[n].InheritsFrom(TScrollingWinControl)) or (PageControl1.ActivePage.Controls[n].InheritsFrom(TCustomTabControl))) then
        begin
          if (PageControl1.ActivePage.Controls[n].ClassType = TSpComboBoxConnector) then
            begin
              if TSpComboBoxConnector(PageControl1.ActivePage.Controls[n]).spEnabled then
                SpEnabledStr := 'True'
              else
                SpEnabledStr := 'False';

              MessageDlg( 'SpComboBoxConnector Name : ' + TSpComboBoxConnector(PageControl1.ActivePage.Controls[n]).Name + #13+#10 + #13+#10 +
                          'Sheet: '  + IntToStr(TSpComboBoxConnector(PageControl1.ActivePage.Controls[n]).targetSheetNo) + #13+#10 + #13+#10 +
                          'Column: '  + IntToStr(TSpComboBoxConnector(PageControl1.ActivePage.Controls[n]).targetCol) + #13+#10 + #13+#10 +
                          'Row: '  + IntToStr(TSpComboBoxConnector(PageControl1.ActivePage.Controls[n]).targetRow) + #13+#10 + #13+#10 +
                          'Items List (Sheet, Col, FirstRow,LastRow): ' + IntToStr(TSpComboBoxConnector(PageControl1.ActivePage.Controls[n]).sheetNo) + ', ' + IntToStr(TSpComboBoxConnector(PageControl1.ActivePage.Controls[n]).firstCol) + ', ' + IntToStr(TSpComboBoxConnector(PageControl1.ActivePage.Controls[n]).firstRow) + ', ' + IntToStr(TSpComboBoxConnector(PageControl1.ActivePage.Controls[n]).lastRow) + #13+#10 + #13+#10
                          ,mtInformation, [mbOK], 0);
            end;
        end;
    end;
end;

procedure TMainForm.CreateParams(var Params: TCreateParams);
begin
  Inherited CreateParams(Params);
  WITH Params DO
    Style := (Style OR WS_POPUP) AND (NOT WS_DLGFRAME);
end;

procedure TMainForm.Macula_lase_photocoagulation_ODClick(Sender: TObject);
begin
  if Macula_lase_photocoagulation_OD.Checked = true then
    not_relevant_OD.Checked := false;
  frmDBControls.IniVisitCheckBoxCheck(3);
end;

procedure TMainForm.Macula_lase_photocoagulation_OSClick(Sender: TObject);
begin
  if Macula_lase_photocoagulation_OS.Checked = true then
    not_relevant_OD.Checked := false;
  frmDBControls.IniVisitCheckBoxCheck(4);
end;

procedure TMainForm.MainForm1Click(Sender: TObject);
begin
  DataModule2.AutomaticDataEntry(MainForm);
end;

procedure TMainForm.NavigateTo_FollowUp(ScreenID: Integer);
begin
   in_Main_Section := false;
   in_Initial_Visit := false;
   in_FollowUpVisit := True;

   //The epiSetNum_Title_Str is used for showing episode group number in the title
   if ((epiSetNum_Title_Str = '0') or  (epiSetNum_Title_Str = '')) then
     epiSetNum_Title_Str := '1';

  case ScreenID of
    1 : begin
          //Visits Overview START
          //Create new or edit previous visits for selected patient

          Mainform.Notebook1.ActivePage := 'Model';

          //Set the two title label captions to be used to set flash title txt
          Title.Caption := 'Visits: ';
          Title2.Caption := 'SET ID: ' + inttostr(frmDBControls.var_Patient_ID) + ' Episode group: ' +  TrimRight(epiSetNum_Title_Str);

          //Destroy any previous record labels in the ini and follow up visit scroll boxes (They will be recreated)
          destroyRecLabels(iniVisit_ScrollBox);
          destroyRecLabels(FollowUpVisit_ScrollBox);

          //Get previous record labels
          getVisitRecords(frmDBControls.var_Patient_ID);

          //Set table header caption
          prev_Visits_Lab.Caption := 'Clinic visits:';

          //Check if the record has been discharged
          frmDBControls.patientDischarged(var_New_AnswerBase_ID, var_New_EpiSetNum);

          //Set manage episode groups/sets panel visibility - visible false if not discharged
          pan_mangeSets_holder.Visible := var_Make_All_DBControls_ReadOnly;

          //Set active page
          PageControl1.ActivePage :=  pg_VisitsOverview;

          //Visits Overview END
        end;

    2 : begin
          //ini and follow up visit page 1 of 3 START
          Mainform.Notebook1.ActivePage := 'Model';
          Title.Caption := 'Initial visit 1/4';
          Title2.Caption := 'SET ID: ' + inttostr(frmDBControls.var_Patient_ID) + ' Episode group: ' +  epiSetNum_Title_Str;

          //If no record found then add one and set defaults
          if (frmDBControls.checkRecordExists(frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP,var_New_AnswerBase_ID) = false) then
            begin
              insertNewIniFollowUp; //insert new record
            end
          else if var_In_EDIT_MODE = True then
            begin
              //Get previous records and check any required fields
              frmDBControls.getPreviousRecords((var_New_AnswerBase_ID),frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP,'AnswerBaseID');

            end;

          //Dropdowns are dynamic and options depend on whats been selected for the centre details page
          frmDBControls.setDDLookupSourceNEA(frmDBControls.ALC_TBL_Centres.FieldByName('NearVisualAcuityScaleID').AsInteger);
          frmDBControls.setDDLookupSourceDIS(frmDBControls.ALC_TBL_Centres.FieldByName('DistanceVisualAcuityScaleID').AsInteger);


              DBLookupComboBox_INI_FOLLOW_VisualAcuityNear_ODCloseUp(nil);
              DBLookupComboBox_INI_FOLLOW_VisualAcuityNear_OSCloseUp(nil);

          //if the patient has been discharge then db controls need to be read-only

          //Set active page
          PageControl1.ActivePage :=  pg_Ini_FollowUp_Visit;

          //ini and follow up visit page 1 of 3 END
        end;


    3 : begin
          //ini and follow up visit page 2 of 3 START
          Mainform.Notebook1.ActivePage := 'Model';
          Title.Caption := 'Initial visit 2/4';
          Title2.Caption := 'SET ID: ' + inttostr(frmDBControls.var_Patient_ID) + ' Episode group: ' +  epiSetNum_Title_Str;

          FlashButtonEx10.ButtonCaption := 'Continue to ocular symptoms';

          //If no record found then add one and set defaults
          if (frmDBControls.checkRecordExists(frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP,var_New_AnswerBase_ID) = false) then
            begin
              insertNewIniFollowUp; //insert new record
              frmDBControls.defaultCheckBoxes(frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP,pg_Ini_FollowUp_2,false); //set defaults
            end
          else if var_In_EDIT_MODE = True then
            begin
              //Get previous records and check any required fields
              frmDBControls.getPreviousRecords((var_New_AnswerBase_ID),frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP,'AnswerBaseID');
            end;

          //if the patient has been discharge then db controls need to be read-only
          setDBControlsToReadOnly(var_Make_All_DBControls_ReadOnly, pg_Ini_FollowUp_2);

          //Set active page
          PageControl2.ActivePage := pg_Ini_FollowUp_2;
          PageControl1.ActivePage :=  pg_Ini_FollowUp_Visit;

          //ini and follow up visit page 2 of 3 END
        end;

    4 : begin
          //follow up visit START
          Mainform.Notebook1.ActivePage := 'Model';

          //Set the two title label captions to be used to set flash title txt
          Title.Caption := 'Follow Up visit 3/4';
          Title2.Caption :=  'SET ID: ' + inttostr(frmDBControls.var_Patient_ID) + ' Episode group: ' +  epiSetNum_Title_Str;

          

        //    ShowMessage(inttostr(var_New_AnswerBase_ID));

            //New episode num to equal 1 if first follow up visit;
            var_NEw_EpisodeNum := frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('EpisodeNumber').AsInteger;



            if var_NEw_EpisodeNum > 2 then
              frmDBControls.setDDLookupSourceFOLLOWUP_plus(frmDBControls.var_Patient_ID,var_NEw_EpisodeNum)
            else
             frmDBControls.setDDLookupSourceFOLLOWUP(frmDBControls.var_Patient_ID,var_NEw_EpisodeNum);

          //  frmDBControls.CallComboBoxes(pg_FollowUp_Visit);  //Call onClose up of all the combo boxes on the page

            setDBControlsToReadOnly(var_Make_All_DBControls_ReadOnly, pg_FollowUp_Visit);

          PageControl1.ActivePage :=  pg_FollowUp_Visit;
          //follow up visit END
        end;

    5 : begin
          //ini and follow up visit page 3 of 3 START
          Mainform.Notebook1.ActivePage := 'Model';
          Title.Caption := 'Initial visit 5/5';
          Title2.Caption := 'SET ID: ' + inttostr(frmDBControls.var_Patient_ID) + ' Episode group: ' +  epiSetNum_Title_Str;

          //If no record found then add one and set defaults
          if (frmDBControls.checkRecordExists(frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP,var_New_AnswerBase_ID) = false) then
            begin
              insertNewIniFollowUp; //insert new record
              frmDBControls.defaultCheckBoxes(frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP,pg_Ini_FollowUp_3,false); //set defaults
            end
          else if var_In_EDIT_MODE = True then
            begin
              //Get previous records and check any required fields
              frmDBControls.getPreviousRecords((var_New_AnswerBase_ID),frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP,'AnswerBaseID');
              //Setup date pickers
              mainform.DateTimePicker5.MinDate := frmEpisodeDatePicker.DateTimePicker1.Date;
              mainform.DateTimePicker6.MinDate := frmEpisodeDatePicker.DateTimePicker1.Date;

              DBEdit_INI_FOLLOW_ProposedTreatmentDate_ODChange(nil);
              DBEdit_INI_FOLLOW_ProposedTreatmentDate_OSChange(nil);
            end;


          DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_ODCloseUp(nil);
          DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OSCloseUp(nil);

          //if the patient has been discharge then db controls need to be read-only
          setDBControlsToReadOnly(var_Make_All_DBControls_ReadOnly, pg_Ini_FollowUp_3);

        {  if DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OD.Text <> '' then
            DateTimePicker5.Visible := true;

          if DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OS.Text <> '' then
            DateTimePicker6.Visible := true;      }

          //Set active page
          PageControl2.ActivePage := pg_Ini_FollowUp_3;
          PageControl1.ActivePage :=  pg_Ini_FollowUp_Visit;

          //ini and follow up visit page 3 of 3 END
        end;

  end;

   MainForm.currentScreen_FollowUp := ScreenID; //used in navigating back and fourth

   //Set the title
   MainForm.TopMenu.CallFunction('<invoke name="setFlashTitle" returntype="xml"><arguments><string>'+ Title.Caption +'</string><string>'+ Title2.Caption +'</string></arguments></invoke>');
end;

procedure TMainForm.NavigateTo_Ini(ScreenID: Integer);
begin
   in_Main_Section := false;
   in_Initial_Visit := true;
   in_FollowUpVisit := false;

   //The epiSetNum_Title_Str is used for showing episode group number in the title
   if ((epiSetNum_Title_Str = '0') or  (epiSetNum_Title_Str = '')) then
     epiSetNum_Title_Str := '1';

  case ScreenID of
    1 : begin
          //Visits Overview START
          //Create new or edit previous visits for selected patient

          Mainform.Notebook1.ActivePage := 'Model';

          //Set the two title label captions to be used to set flash title txt
          Title.Caption := 'Visits: ';
          Title2.Caption := 'SET ID: ' + inttostr(frmDBControls.var_Patient_ID) + ' Episode group: ' +  TrimRight(epiSetNum_Title_Str);

          //Destroy any previous record labels in the ini and follow up visit scroll boxes (They will be recreated)
          destroyRecLabels(iniVisit_ScrollBox);
          destroyRecLabels(FollowUpVisit_ScrollBox);

          //Get previous record labels
          getVisitRecords(frmDBControls.var_Patient_ID);

          //Set table header caption
          prev_Visits_Lab.Caption := 'Clinic visits:';

          //Check if the record has been discharged
          frmDBControls.patientDischarged(var_New_AnswerBase_ID, var_New_EpiSetNum);

          //Set manage episode groups/sets panel visibility - visible false if not discharged
          pan_mangeSets_holder.Visible := var_Make_All_DBControls_ReadOnly;

          //Set active page
          PageControl1.ActivePage :=  pg_VisitsOverview;

          //Visits Overview END
        end;

    2 : begin
          //Medical History START

          Mainform.Notebook1.ActivePage := 'Model';

          //Set the two title label captions to be used to set flash title txt
          Title.Caption := 'Initial visit 1/5';
          Title2.Caption := 'SET ID: ' + inttostr(frmDBControls.var_Patient_ID) + ' Episode group: ' +  epiSetNum_Title_Str;

          //If no record found then add one and set defaults
          if (frmDBControls.checkRecordExists(frmDBControls.ALC_TBL_Medical,var_New_AnswerBase_ID) = false) then
            begin
              insertNewMedicalHistory; //New medical history record insert
              frmDBControls.defaultCheckBoxes(frmDBControls.ALC_TBL_Medical,pg_Medical_History,false); //Set defaults
            end
          else if var_In_EDIT_MODE = True then
            begin
              //Get previous records and check any required fields
              frmDBControls.getPreviousRecords((frmDBControls.var_Patient_ID),frmDBControls.ALC_TBL_Medical,'patientID');
              frmDBControls.requiredFieldCheck(DBLookupComboBox_Medical_SourceOfReferalID,Label102);
              frmDBControls.MedicalCheckBoxCheck(1);
              frmDBControls.MedicalCheckBoxCheck(2);
              frmDBControls.MedicalCheckBoxCheck(3);
            end;

          //if the patient has been discharge then db controls need to be read-only
            setDBControlsToReadOnly(var_Make_All_DBControls_ReadOnly, pg_Medical_History);

          //Set active page
          PageControl1.ActivePage :=  pg_Medical_History;

          //Medical History END
        end;

    3 : begin
          //Ini visit START

          Mainform.Notebook1.ActivePage := 'Model';

          //Set the two title label captions to be used to set flash title txt
          Title.Caption := 'Initial visit 2/5';
          Title2.Caption := 'SET ID: ' + inttostr(frmDBControls.var_Patient_ID) + ' Episode group: ' +  epiSetNum_Title_Str ;

          //If no record found then add one and set defaults
          if (frmDBControls.checkRecordExists(frmDBControls.ALC_TBL_ANSWERS_INI_VISIT,var_New_AnswerBase_ID) = false) then
            begin
              insertNewIniVisit; //insert new record
              frmDBControls.defaultCheckBoxes(frmDBControls.ALC_TBL_ANSWERS_INI_VISIT,pg_Ini_Visit,false); //set defaults
            end
          else if var_In_EDIT_MODE = True then
            begin
              //Get previous records and check any required fields
              frmDBControls.getPreviousRecords((frmDBControls.var_AnswerBase_ID),frmDBControls.ALC_TBL_ANSWERS_INI_VISIT,'AnswerBaseID');
              frmDBControls.IniVisitCheckBoxCheck(1);
              frmDBControls.IniVisitCheckBoxCheck(2);
              frmDBControls.IniVisitCheckBoxCheck(3);
              frmDBControls.IniVisitCheckBoxCheck(4);
            end;

          //if the patient has been discharge then db controls need to be read-only
          setDBControlsToReadOnly(var_Make_All_DBControls_ReadOnly, pg_Ini_Visit);

          //Set active page
          PageControl1.ActivePage :=  pg_Ini_Visit;
        end;

    4 : begin
          //ini and follow up visit page 1 of 3 START
          Mainform.Notebook1.ActivePage := 'Model';
          Title.Caption := 'Initial visit 3/5';
          Title2.Caption := 'SET ID: ' + inttostr(frmDBControls.var_Patient_ID) + ' Episode group: ' +  epiSetNum_Title_Str;

          //If no record found then add one and set defaults
          if (frmDBControls.checkRecordExists(frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP,var_New_AnswerBase_ID) = false) then
            begin
              insertNewIniFollowUp; //insert new record //set defaults
            end
          else if var_In_EDIT_MODE = True then
            begin
              //Get previous records and check any required fields
              frmDBControls.getPreviousRecords((frmDBControls.var_AnswerBase_ID),frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP,'AnswerBaseID');
            end;

          //Dropdowns are dynamic and options depend on whats been selected for the centre details page
          frmDBControls.setDDLookupSourceNEA(frmDBControls.ALC_TBL_Centres.FieldByName('NearVisualAcuityScaleID').AsInteger);
          frmDBControls.setDDLookupSourceDIS(frmDBControls.ALC_TBL_Centres.FieldByName('DistanceVisualAcuityScaleID').AsInteger);

          DBLookupComboBox_INI_FOLLOW_VisualAcuityNear_ODCloseUp(nil);
          DBLookupComboBox_INI_FOLLOW_VisualAcuityNear_OSCloseUp(nil);

          //if the patient has been discharge then db controls need to be read-only

          //Set active page
          PageControl1.ActivePage :=  pg_Ini_FollowUp_Visit;

          //ini and follow up visit page 1 of 3 END
        end;

    5 : begin
          //ini and follow up visit page 2 of 3 START
          Mainform.Notebook1.ActivePage := 'Model';
          Title.Caption := 'Initial visit 4/5';
          Title2.Caption := 'SET ID: ' + inttostr(frmDBControls.var_Patient_ID) + ' Episode group: ' +  epiSetNum_Title_Str;

          FlashButtonEx10.ButtonCaption := 'Continue to proposed treatment';

          //If no record found then add one and set defaults
          if (frmDBControls.checkRecordExists(frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP,var_New_AnswerBase_ID) = false) then
            begin
              frmDBControls.defaultCheckBoxes(frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP,pg_Ini_FollowUp_2,false); //set defaults
            end
          else
            begin
              //Get previous records and check any required fields
              frmDBControls.getPreviousRecords((frmDBControls.var_AnswerBase_ID),frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP,'AnswerBaseID');
            end;

          //if the patient has been discharge then db controls need to be read-only
          setDBControlsToReadOnly(var_Make_All_DBControls_ReadOnly, pg_Ini_FollowUp_2);

          //Set active page
          PageControl2.ActivePage := pg_Ini_FollowUp_2;
          PageControl1.ActivePage :=  pg_Ini_FollowUp_Visit;

          //ini and follow up visit page 2 of 3 END
        end;

    6 : begin
          //ini and follow up visit page 3 of 3 START
          Mainform.Notebook1.ActivePage := 'Model';
          Title.Caption := 'Initial visit 5/5';
          Title2.Caption := 'SET ID: ' + inttostr(frmDBControls.var_AnswerBase_ID) + ' Episode group: ' +  epiSetNum_Title_Str;

          //If no record found then add one and set defaults
          if (frmDBControls.checkRecordExists(frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP,var_New_AnswerBase_ID) = false) then
            begin
              frmDBControls.defaultCheckBoxes(frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP,pg_Ini_FollowUp_3,false); //set defaults
            end
          else
            begin
              //Get previous records and check any required fields
              frmDBControls.getPreviousRecords(var_New_AnswerBase_ID,frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP,'AnswerBaseID');
              //Setup date pickers
              mainform.DateTimePicker5.MinDate := frmEpisodeDatePicker.DateTimePicker1.Date;
              mainform.DateTimePicker6.MinDate := frmEpisodeDatePicker.DateTimePicker1.Date;

              DBEdit_INI_FOLLOW_ProposedTreatmentDate_ODChange(nil);
              DBEdit_INI_FOLLOW_ProposedTreatmentDate_OSChange(nil);
            end;

            DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_ODCloseUp(nil);
            DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OSCloseUp(nil);

          //if the patient has been discharge then db controls need to be read-only
          setDBControlsToReadOnly(var_Make_All_DBControls_ReadOnly, pg_Ini_FollowUp_3);

         { if DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OD.Text <> '' then
            DateTimePicker5.Visible := true;

          if DBLookupComboBox_INI_FOLLOW_ProposedTreatmentID_OS.Text <> '' then
            DateTimePicker6.Visible := true;    }


          //Set active page
          PageControl2.ActivePage := pg_Ini_FollowUp_3;
          PageControl1.ActivePage :=  pg_Ini_FollowUp_Visit;

          //ini and follow up visit page 3 of 3 END
        end;
  end;

  MainForm.currentScreen_Ini := ScreenID; //used in navigating back and fourth

   //Set the title
   MainForm.TopMenu.CallFunction('<invoke name="setFlashTitle" returntype="xml"><arguments><string>'+ Title.Caption +'</string><string>'+ Title2.Caption +'</string></arguments></invoke>');
end;

procedure TMainForm.NavigateTo_Main(ScreenID: Integer);
var
  TitleSheetNo, TitleColNo, TitleRowNo: Integer;
  pageTotal : string;
  pageTitle: string;
  doUpdate: boolean;
  I : integer;
  tempString : String;
begin
  in_Main_Section := true;
  in_Initial_Visit := false;
  in_FollowUpVisit := false;

  if ((epiSetNum_Title_Str = '0') or  (epiSetNum_Title_Str = '')) then
    epiSetNum_Title_Str := '1';

  case ScreenID of
    0 : begin
          //HOME SCREEN
          Mainform.Notebook1.ActivePage := 'Title';
        end;

    1 : begin
          //PATIENT Details (Create new or edit previous)
          Mainform.Notebook1.ActivePage := 'Model';
          Title.Caption := 'Patient Details ';

          if (frmDBControls.var_Patient_ID = 0) then
            begin
              Title2.Caption := 'SET ID: patient not saved';
              lab_PatientID.Caption := 'Patient ID: #';
            end
          else
            begin
              Title2.Caption := 'SET ID: ' + inttostr(frmDBControls.var_Patient_ID);
              lab_PatientID.Caption := 'Patient ID: ' + inttostr(frmDBControls.var_Patient_ID);
              frmDBControls.ADOCmdSelectPatientByID.Parameters.ParamByName('PatientID').Value := frmDBControls.var_Patient_ID;
              frmDBControls.ADOCmdSelectPatientByID.Prepared := True;
              frmDBControls.ADOCmdSelectPatientByID.Execute;
            end;

          MainForm.TopMenu.CallFunction('<invoke name="setFlashTitle" returntype="xml"><arguments><string>'+ 'Center Details' +'</string></arguments></invoke>');

          PageControl1.ActivePage := pg_Patient_Details;
        end;

    2 : begin
          //CENTRE DETAILS
          Mainform.Notebook1.ActivePage := 'Model';
          Title.Caption := 'Centre Details';
          Title2.Caption := '';
          MainForm.TopMenu.CallFunction('<invoke name="setFlashTitle" returntype="xml"><arguments><string>'+ 'Center Details' +'</string></arguments></invoke>');
          PageControl1.ActivePage := pg_CentreDetails;
        end;

    3 : begin
          //SECTION SELECTION
          Mainform.Notebook1.ActivePage := 'Model';
          Title.Caption := 'Dashboard';
          Title2.Caption := '';
          MainForm.TopMenu.CallFunction('<invoke name="setFlashTitle" returntype="xml"><arguments><string>'+ 'Center Details' +'</string></arguments></invoke>');
          PageControl1.ActivePage := PG_SECTION_SELECT;
        end;

    4 : begin
          //PATIENT OPTIONS (Create new or edit previous)
          Mainform.Notebook1.ActivePage := 'Model';
          Title.Caption := 'Data Entry';
          Title2.Caption := '';
          MainForm.TopMenu.CallFunction('<invoke name="setFlashTitle" returntype="xml"><arguments><string>'+ 'Center Details' +'</string></arguments></invoke>');
          PageControl1.ActivePage := pg_Patient_Options;
        end;

     5 : begin
          //Previous Patients (Lists all the patients in the system)
          Mainform.Notebook1.ActivePage := 'Model';
          Title.Caption := 'Previous SET IDs';
          Title2.Caption := '';
          MainForm.TopMenu.CallFunction('<invoke name="setFlashTitle" returntype="xml"><arguments><string>'+ 'Center Details' +'</string></arguments></invoke>');
          //Destroy any previous record labels
          destroyRecLabels(ScrollBox_previous_audits);
          //Get previous record labels
          getAuditRecords;
          editJumpTo.Text := '-';
          PageControl1.ActivePage := pg_Previous_Patients_Overview;
        end;

    6 : begin
          //Episode Sets SCREEN
          Mainform.Notebook1.ActivePage := 'Model';
          Title.Caption := 'Episode groups ';
          Title2.Caption := 'SET ID: ' + inttostr(frmDBControls.var_Patient_ID);
          destroyRecLabels(ScrollBox_EpisodeSets);
          //Get previous record labels
          getEpisodeSetRecords(frmDBControls.var_Patient_ID);
          Label7.Caption := 'Episode groups';
          PageControl1.ActivePage :=  pg_EpisodeSets;
        end;

     7 : begin
          //Visits (Create new or edit previous visits for selected patient)
          Mainform.Notebook1.ActivePage := 'Model';
          Title.Caption := 'Visits: ';
          Title2.Caption := 'SET ID: ' + inttostr(frmDBControls.var_Patient_ID) + ' Episode group: ' +  TrimRight(epiSetNum_Title_Str);
          MainForm.TopMenu.CallFunction('<invoke name="setFlashTitle" returntype="xml"><arguments><string>'+ 'Center Details' +'</string></arguments></invoke>');
          //Destroy any previous record labels
          destroyRecLabels(iniVisit_ScrollBox);
          destroyRecLabels(FollowUpVisit_ScrollBox);
          //Get previous record labels
          getVisitRecords(frmDBControls.var_Patient_ID);
          prev_Visits_Lab.Caption := 'Clinic visits:';
          frmDBControls.patientDischarged(var_New_AnswerBase_ID, var_New_EpiSetNum);
          pan_mangeSets_holder.Visible := var_Make_All_DBControls_ReadOnly;
          PageControl1.ActivePage :=  pg_VisitsOverview;
        end;

    8 : begin
          //Discharge SCREEN
          Mainform.Notebook1.ActivePage := 'Model';
          if in_Initial_Visit = true then
            Title.Caption := 'Discharge (Initial visit) '
          else
           Title.Caption := 'Discharge (Follow up visit)';

          Title2.Caption := 'SET ID: ' + inttostr(frmDBControls.var_Patient_ID) + ' Episode group: ' +  epiSetNum_Title_Str;
          if ((var_In_EDIT_MODE = false) and (frmDBControls.ALC_TBL_DISCHARGE.RecordCount = 0) or (frmDBControls.checkRecordExists(frmDBControls.ALC_TBL_DISCHARGE,var_New_AnswerBase_ID) = false )) then
            begin
             insertNewDischarge;
             frmDBControls.defaultCheckBoxes(frmDBControls.ALC_TBL_DISCHARGE,pg_Discharge,false);
            end
          else
            begin
              if (frmDBControls.checkRecordExists(frmDBControls.ALC_TBL_DISCHARGE,var_New_AnswerBase_ID) = false ) then
                begin
                  insertNewDischarge;
                  frmDBControls.defaultCheckBoxes(frmDBControls.ALC_TBL_DISCHARGE,pg_Discharge,false);
                end;


              frmDBControls.getPreviousRecords((var_New_AnswerBase_ID),frmDBControls.ALC_TBL_DISCHARGE,'AnswerBaseID');
            end;
          {if var_Make_All_DBControls_ReadOnly = true then
            setDBControlsToReadOnly(false, pg_Discharge)
          else
            setDBControlsToReadOnly(true, pg_Discharge);  }

             setDBControlsToReadOnly(var_Make_All_DBControls_ReadOnly, pg_Discharge);


          DBEdit_DISCHARGE_DischargePlannedDateChange(nil);
          
          

          PageControl1.ActivePage :=  pg_Discharge;
        end;



  end;
    MainForm.CurrentScreen := ScreenID;
   MainForm.TopMenu.CallFunction('<invoke name="setFlashTitle" returntype="xml"><arguments><string>'+ Title.Caption +'</string><string>'+ Title2.Caption +'</string></arguments></invoke>');
end;


procedure TMainForm.not_relevant_ODClick(Sender: TObject);
begin
  if not_relevant_OD.Checked = true then
    begin
      Cataract_surgery_OD.Checked := false;
      Glaucoma_filtration_surgery_OD.Checked := false;
      Other_surgery_OD.Checked := false;
      Macula_lase_photocoagulation_OD.Checked := false;
      Peripheral_laser_photocoagulation_OD.Checked := false;
      Intravitreal_anti_VEGF_OD.Checked := false;
      Intravitreal_steroid_liquid_implant_OD.Checked := false;
      Vitrectomy_in_the_fellow_eye_OD.Checked := false;
    end;

  frmDBControls.IniVisitCheckBoxCheck(3);
end;

procedure TMainForm.not_relevant_OSClick(Sender: TObject);
begin
  if not_relevant_OS.Checked = true then
    begin
      Cataract_surgery_OS.Checked := false;
      Glaucoma_filtration_surgery_OS.Checked := false;
      Other_surgery_OS.Checked := false;
      Macula_lase_photocoagulation_OS.Checked := false;
      Peripheral_laser_photocoagulation_OS.Checked := false;
      Intravitreal_anti_VEGF_OS.Checked := false;
      Intravitreal_steroid_liquid_implant_OS.Checked := false;
      Vitrectomy_in_the_fellow_eye_OS.Checked := false;
    end;

  frmDBControls.IniVisitCheckBoxCheck(4);
end;

procedure TMainForm.onAuditLabClick(aSender: Tobject);
begin
  frmDBControls.var_Patient_ID := Tlabel(aSender).Tag;
  frmDBControls.qryPatientUUIDByPatientID.SQL.Text := 'SELECT PatientUUID FROM tblPatients WHERE PatientID = ' + IntToStr(frmDBControls.var_Patient_ID);
  frmDBControls.qryPatientUUIDByPatientID.Open;
  frmDBControls.var_Patient_UUID := frmDBControls.qryPatientUUIDByPatientID.FieldByName('PatientUUID').AsString;
  frmDbControls.ADOQuery1.Close;
  frmDbControls.ADOQuery1.Open;
  NavigateTo_Main(6);
end;

procedure TMainForm.onDeleteBtnClick(asSender: Tobject);
begin
  DataModule2.canShowFadeForm := true;
  frmConfirmDelete.label2.Caption := 'SET ID: #' + inttostr(TFlashButtonEx(asSender).Tag);
  showPopUp(frmConfirmDelete);
end;

procedure TMainForm.Glaucoma_filtration_surgery_ODClick(Sender: TObject);
begin
  if Glaucoma_filtration_surgery_OD.Checked = true then
    not_relevant_OD.Checked := false;
  frmDBControls.IniVisitCheckBoxCheck(3);
end;

procedure TMainForm.Glaucoma_filtration_surgery_OSClick(Sender: TObject);
begin
  if Glaucoma_filtration_surgery_OS.Checked = true then
    not_relevant_OD.Checked := false;
  frmDBControls.IniVisitCheckBoxCheck(4);
end;

procedure TMainForm.GotoSpreadsheetPage1Click(Sender: TObject);
begin
  PageControl1.ActivePage := SPPage;
end;

procedure TMainForm.GraphicDimentions1Click(Sender: TObject);
var
  titleWidth, titleHeight, backgroundWidth, backgroundHeight: string;
  sideBarWidth, sideBarHeight, topBarWidth, topBarHeight, bottomBarWidth, bottomBarHeight: string;
  logoWidth, logoHeight: string;
begin
{  backgroundWidth := IntToStr(BackGroundImg1.Width);
  backgroundHeight := IntToStr(BackGroundImg1.Height);  }
  titleWidth := IntToStr(flashTitle.Width);
  titleHeight := IntToStr(flashTitle.Height);

  MessageDlg('Background image width = ' + backgroundWidth + #13+#10+'Background image height = ' + backgroundHeight + #13+#10+''+#13+#10+'Title image  width = ' + titleWidth + #13+#10+'Title image height = ' + titleHeight + #13+#10+''+#13+#10+'Sidebar width = ' + sideBarWidth + #13+#10+'Sidebar height = ' + sideBarHeight + #13+#10+''+#13+#10+'Top Bar width = ' + topBarWidth + #13+#10+'Top Bar height = ' + topBarHeight + #13+#10+''+#13+#10+'Bottom Bar width = ' + bottomBarWidth + #13+#10+'Bottom Bar height = ' +  bottomBarHeight + #13+#10 + #13+#10 + 'Logo image width = ' + logoWidth + #13+#10+'Logo image height = ' + logoHeight, mtInformation, [mbOK], 0);
end;

function TMainForm.hasThePatientBeenDischarge(aPatientID: Integer): Boolean;
var
  Check_dischargeID : integer;
  patientDischarge : Boolean;
begin
  Check_dischargeID := 0;
  patientDischarge := false;
  frmDBControls.ALC_TBL_ANSWERS_BASE.Active := true;
  frmDBControls.ALC_TBL_ANSWERS_BASE.first;
  while frmDBControls.ALC_TBL_ANSWERS_BASE.eof <> true do
    begin
      if frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('patientID').AsInteger = aPatientID then
        begin
          Check_dischargeID := frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('AnswerBaseID').AsInteger;
          //CHECK DISCHARGE TABLE FOR ID
          frmDBControls.ALC_TBL_DISCHARGE.Active := true;
          frmDBControls.ALC_TBL_DISCHARGE.first;
          while frmDBControls.ALC_TBL_DISCHARGE.Eof <> true do
            begin
              if frmDBControls.ALC_TBL_DISCHARGE.FieldByName('AnswerBaseID').AsInteger = Check_dischargeID then
                begin
                  //Patient has been discharged
                  patientDischarge := true;
                  Break;
                end
              else
                frmDBControls.ALC_TBL_DISCHARGE.next;
            end;
           frmDBControls.ALC_TBL_ANSWERS_BASE.Next;
        end
      else
        begin
          frmDBControls.ALC_TBL_ANSWERS_BASE.Next;
        end;
    end;

    Result := patientDischarge;

end;

procedure TMainForm.imgTitleClick(Sender: TObject);
begin
  //Read parameters
 { MainForm.paramsString := '';

  if ParamStr(1) <> '' then
    MainForm.paramsString := MainForm.paramsString + ParamStr(1) + ' ';

  if ParamStr(2) <> '' then
    MainForm.paramsString := MainForm.paramsString + ParamStr(2) + ' ';

  if ParamStr(3) <> '' then
    MainForm.paramsString := MainForm.paramsString + ParamStr(3) + ' ';

  if ParamStr(4) <> '' then
    MainForm.paramsString := MainForm.paramsString + ParamStr(4);

  if (Pos('Utilities',MainForm.paramsString) <> 0) then
    MainForm.Utilities.Visible := true
  else
    MainForm.Utilities1.Visible := False;

  if (Pos('LanguageMenu',MainForm.paramsString) <> 0) then
    MainForm.SelectLanguage1.Visible := True
  else
    MainForm.SelectLanguage1.Visible := False;}

  Notebook1.PageIndex := 1;
end;

function TMainForm.iniFollowUpVisit_RequiredFieldCheck(aTag: integer;
  aTabSheet: TTabSheet): Boolean;
  Var
    I : integer;
begin
      if in_FollowUpVisit = True then {NOT REQUIRED FOR FOLLOW UP VISIT}
      begin
         label33.Visible := false;
         label34.Visible := false;
      end;

   for I := 0 to aTabSheet.ControlCount - 1 do
    begin
      if aTabSheet.Controls[I].ClassType = TLabel then
        begin
          if TLabel( aTabSheet.Controls[I]).Tag = aTag then
            begin
              if TLabel( aTabSheet.Controls[I]).Visible = true then
                begin
                  Result := false; {required fields incomplete}
                  Break;
                end
              else
                Result := true;
            end;
        end;
    end;



end;

procedure TMainForm.insertNewAnswerBase;
var
  Level: Integer;
begin
  // start database transaction
  Level := frmDBControls.ALC_Connection_1.BeginTrans;

  try
    //Insert a new answer Base record
    try
      frmDBControls.activateDBTables;
    except
      on E: Exception do
        begin
          frmDBControls.ShowDatabaseError(nil, E, 'All Tables', 'ACTIVATE TABLES ERROR: the procedure insertNewAnswerBase failed to activate database tables');
        end;
    end; // end try

    frmDBControls.ALC_TBL_ANSWERS_BASE.Insert;  //Call insert to place new record in table

    frmDBControls.ALC_TBL_ANSWERS_BASE.fieldByName('patientID').AsInteger := frmDBControls.var_Patient_ID; //insert patient ID from var_New_Patient_ID

    frmDBControls.ALC_TBL_ANSWERS_BASE.fieldByName('patientUUID').AsString := frmDBControls.var_Patient_UUID; //insert patient ID from var_New_Patient_UUID

    frmDBControls.ALC_TBL_ANSWERS_BASE.fieldByName('episodeSetID').AsInteger := var_New_EpiSetNum;

    frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('DateAdded').AsString := DateTimeToStr(Now);

    frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('DateUpdated').AsString := DateTimeToStr(Now);

    frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('Archived').AsBoolean := False;

    frmDBControls.ALC_TBL_ANSWERS_BASE.FieldByName('AuthorID').AsString := DataModule2.author;

    var_New_AnswerBase_ID := frmDBControls.ALC_TBL_ANSWERS_BASE.fieldByName('AnswerBaseID').AsInteger; //Store the current AnswerBaseID

    // if database operations are successful end transaction and commit data to database
    frmDBControls.ALC_Connection_1.CommitTrans;

    // select next page
    DataModule2.canShowFadeForm := True;
    Mainform.showPopUp(frmEpisodeDatePicker);
  except
    on E: Exception do
      begin
        frmDBControls.ShowDatabaseError(nil, E, 'AnswersBase Table', 'INSERTING ERROR: the AnswersBase details have not been submitted');
        frmDBControls.ALC_Connection_1.RollbackTrans;
      end;
  end; // end try
end;

procedure TMainForm.insertNewDischarge;
begin
  //Insert a new patient record
  try
    frmDBControls.activateDBTables;
  except
    on E: Exception do
      begin
        frmDBControls.ShowDatabaseError(nil, E, 'All Tables', 'ACTIVATE TABLES ERROR: the procedure insertNewDischarge failed to activate database tables');
      end;
  end; // end try

   frmDBControls.ALC_TBL_DISCHARGE.Insert;  //Call insert to place new record in table

   frmDBControls.ALC_TBL_DISCHARGE.FieldByName('AnswerBaseID').AsInteger :=  var_New_AnswerBase_ID; //
end;

function TMainForm.insertNewEpisodeSet: boolean;
var
  Level: Integer;
  canNavigateToNextPage: Boolean;
begin
  // start database transaction
  Level := frmDBControls.ALC_Connection_1.BeginTrans;

  try
    //InsertAssign a new set of visits to a patient
    try
      frmDBControls.activateDBTables;
    except
      on E: Exception do
        begin
          frmDBControls.ShowDatabaseError(nil, E, 'All Tables', 'ACTIVATE TABLES ERROR: the procedure insertNewEpisodeSet failed to activate database tables');
        end;
    end; // end try

    frmDBControls.ALC_TBL_EPISODESETS.Insert;  //Call insert to place new record in table

    frmDBControls.ALC_TBL_EPISODESETS.FieldByName('patientID').AsInteger :=  frmDBControls.var_Patient_ID;
    frmDBControls.ALC_TBL_EPISODESETS.FieldByName('patientUUID').AsString :=  frmDBControls.var_Patient_UUID;
    frmDBControls.ALC_TBL_EPISODESETS.FieldByName('DateAdded').AsString := DateTimeToStr(Now);
    frmDBControls.ALC_TBL_EPISODESETS.FieldByName('DateUpdated').AsString := DateTimeToStr(Now);
    frmDBControls.ALC_TBL_EPISODESETS.FieldByName('Archived').AsBoolean := False;
    frmDBControls.ALC_TBL_EPISODESETS.FieldByName('AuthorID').AsString := DataModule2.author;

    frmDBControls.ALC_TBL_EPISODESETS.Post;

    var_New_EpiSetNum :=  frmDBControls.ALC_TBL_EPISODESETS.FieldByName('episodeSetID').AsInteger;

    // if database operations are successful end transaction and commit data to database
    frmDBControls.ALC_Connection_1.CommitTrans;
    canNavigateToNextPage  := True;
 except
    on E: Exception do
      begin
        frmDBControls.ShowDatabaseError(nil, E, 'Episode Sets Table', 'INSERTING ERROR: the episode set details have not been submitted');
        frmDBControls.ALC_TBL_EPISODESETS.Delete;
        frmDBControls.ALC_Connection_1.RollbackTrans;
        canNavigateToNextPage := False;
      end;
  end; // end try

  Result := canNavigateToNextPage;
end;

procedure TMainForm.insertNewFollowUp;
begin
  //Insert a new patient record
  try
    frmDBControls.activateDBTables;
  except
    on E: Exception do
      begin
        frmDBControls.ShowDatabaseError(nil, E, 'All Tables', 'ACTIVATE TABLES ERROR: the procedure insertNewFollowUp failed to activate database tables');
      end;
  end; // end try

   {Turn on required fields on first page}
   {PLabel19.Visible := false;
   Label142.Visible := false;
   Label143.Visible := false;
   Label145.Visible := false;
   Label146.Visible := false;
   Label147.Visible := false;
   Label148.Visible := false;
   Label149.Visible := false;
   Label150.Visible := false;
   Label151.Visible := false;
   Label152.Visible := false;
   Label153.Visible := false;
   Label154.Visible := false;
   Label155.Visible := false;
   Label163.Visible := false;
   Label164.Visible := false;
   Label165.Visible := false;
   Label166.Visible := false;  }
end;

procedure TMainForm.insertNewIniFollowUp;
var
  Level: Integer;
begin
  // start database transaction
  Level := frmDBControls.ALC_Connection_1.BeginTrans;

  try
    frmDBControls.activateDBTables;
  except
    on E: Exception do
      begin
        frmDBControls.ShowDatabaseError(nil, E, 'All Tables', 'ACTIVATE TABLES ERROR: the procedure insertNewIniFollowUp failed to activate database tables');
      end;
  end; // end try

  // start database transaction
  Level := frmDBControls.ALC_Connection_1.BeginTrans;

  try
    frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP.Insert;  //Call insert to place new record in table

    frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP.FieldByName('AnswerBaseID').AsInteger :=  var_New_AnswerBase_ID; //

    // if database operations are successful end transaction and commit data to database
    frmDBControls.ALC_Connection_1.CommitTrans;

    // select next page
    // add next operation(s) code here...
  except
    on E: Exception do
      begin
        frmDBControls.ShowDatabaseError(nil, E, 'Answers Initial And Followup Visit Table', 'the Answers Initial And Followup Visit details have not been submitted');
        frmDBControls.ALC_Connection_1.RollbackTrans;
      end;
  end; // end try

  {Turn on required fields on first page}

  Label25.Visible := true;
end;

procedure TMainForm.insertNewIniVisit;
begin
  //Insert a new patient record
  try
    frmDBControls.activateDBTables;
  except
    on E: Exception do
      begin
        frmDBControls.ShowDatabaseError(nil, E, 'All Tables', 'ACTIVATE TABLES ERROR: the procedure insertNewIniVisit failed to activate database tables');
      end;
  end; // end try

   frmDBControls.ALC_TBL_ANSWERS_INI_VISIT.Insert;  //Call insert to place new record in table

   frmDBControls.ALC_TBL_ANSWERS_INI_VISIT.FieldByName('AnswerBaseID').AsInteger :=  var_New_AnswerBase_ID; //

   {Turn on required fields on first page}
   Label108.Visible := true;

   Label119.Visible := true;
   Label118.Visible := true;
  // frmDBControls.ALC_TBL_ANSWERS_INI_VISIT.post;
end;

procedure TMainForm.insertNewMedicalHistory;
var
  Level: Integer;
begin
  //Insert a new patient record
  try
    frmDBControls.activateDBTables;
  except
    on E: Exception do
      begin
        frmDBControls.ShowDatabaseError(nil, E, 'All Tables', 'ACTIVATE TABLES ERROR: the procedure insertNewMedicalHistory failed to activate database tables');
      end;
  end; // end try

  try
    // start database transaction
      Level := frmDBControls.ALC_Connection_1.BeginTrans;

    frmDBControls.ALC_TBL_Medical.Insert;  //Call insert to place new record in table

    frmDBControls.ALC_TBL_Medical.FieldByName('patientID').AsInteger :=  frmDBControls.var_Patient_ID; //

    frmDBControls.ALC_TBL_Medical.FieldByName('AnswerBaseID').AsInteger := var_New_AnswerBase_ID; //

    frmDBControls.ALC_TBL_CURRENT_LENS_STATUS.Close;
    frmDBControls.ALC_TBL_CURRENT_LENS_STATUS.Open;
    frmDBControls.ALC_TBL_CURRENT_LENS_STATUS.First;

    frmDBControls.ALC_TBL_Medical.FieldByName('CurrentLensStatus_OD').AsInteger := frmDBControls.ALC_TBL_CURRENT_LENS_STATUS.FieldByName('LensStatusID').Value;
    frmDBControls.ALC_TBL_Medical.FieldByName('CurrentLensStatus_OS').AsInteger := frmDBControls.ALC_TBL_CURRENT_LENS_STATUS.FieldByName('LensStatusID').Value;

    // if database operations are successful end transaction and commit data to database
    frmDBControls.ALC_Connection_1.CommitTrans;

    // select next page
    // add next operation(s) code here...
  except
    on E: Exception do
      begin
        frmDBControls.ShowDatabaseError(nil, E, 'Patients Medical History Table', 'INSERT DATABASE ERROR: the patients medical history details have not been submitted');
        frmDBControls.ALC_Connection_1.RollbackTrans;
      end;
  end; // end try

  {Turn on required fields on first page}
  Label50.Visible := true;
  Label17.Visible := true;
  Label104.Visible := true;
  Label112.Visible := true;
  Label25.Visible := true;
end;

procedure TMainForm.insertNewPatientOLD;
var
  Level: Integer;
begin
  // store new Patient and AnswerBase IDs
  frmDBControls.var_Patient_ID :=  frmDBControls.ALC_TBL_Patients.FieldByName('patientID').AsInteger; //Store the current patientID
  frmDBControls.qryPatientUUIDByPatientID.Close;
  frmDBControls.qryPatientUUIDByPatientID.Parameters.ParamByName('PatientID').Value := frmDBControls.var_Patient_ID;
  frmDBControls.qryPatientUUIDByPatientID.Open;
  frmDBControls.var_Patient_UUID := frmDBControls.qryPatientUUIDByPatientID.FieldByName('PatientUUID').AsString;
  var_New_AnswerBase_ID := 0; //Set this to zero to start, this will be updated once an answerbase has been inserted for this patient

  // start database transaction
  {Level := frmDBControls.ALC_Connection_1.BeginTrans;

  try
    //Insert a new patient record
    frmDBControls.activateDBTables;  //Active all tables including Patients table

    frmDBControls.ALC_TBL_Patients.Insert;  //Call insert to place new record in table
    frmDBControls.ALC_TBL_Patients.FieldByName('PatientUUID').AsString := frmDBControls.IDGen; //Generate a new GUID for this record
    frmDBControls.ALC_TBL_Patients.FieldByName('centreID').AsInteger := frmDBControls.var_Center_ID;
    frmDBControls.ALC_TBL_Patients.FieldByName('centreUUID').AsString := frmDBControls.var_Center_UUID;
    frmDBControls.ALC_TBL_Patients.FieldByName('DateAdded').AsString := DateTimeToStr(Now);
    frmDBControls.ALC_TBL_Patients.FieldByName('DateUpdated').AsString := DateTimeToStr(Now);
    frmDBControls.ALC_TBL_Patients.FieldByName('Archived').AsBoolean := False;
    frmDBControls.ALC_TBL_Patients.FieldByName('AuthorID').AsString := DataModule2.author;
    frmDBControls.ALC_TBL_Patients.Post; //Post the info we have (Patient UUID, PatientID, CentreID, CentreUUID)

    frmDBControls.ALC_Connection_1.CommitTrans;


  except
    on E: Exception do
      begin
        frmDBControls.ShowDatabaseError(nil, E, 'Patients table', 'patient has not been created');
        frmDBControls.ALC_Connection_1.RollbackTrans;
      end;
  end; }// end try
end;

procedure TMainForm.Intravitreal_anti_VEGF_ODClick(Sender: TObject);
begin
  if Intravitreal_anti_VEGF_OD.Checked = true then
    not_relevant_OD.Checked := false;
  frmDBControls.IniVisitCheckBoxCheck(3);
end;

procedure TMainForm.Intravitreal_anti_VEGF_OSClick(Sender: TObject);
begin
  if Intravitreal_anti_VEGF_OS.Checked = true then
    not_relevant_OD.Checked := false;
  frmDBControls.IniVisitCheckBoxCheck(4);
end;

procedure TMainForm.Intravitreal_steroid_liquid_implant_ODClick(
  Sender: TObject);
begin
  if Intravitreal_steroid_liquid_implant_OD.Checked = true then
    not_relevant_OD.Checked := false;
  frmDBControls.IniVisitCheckBoxCheck(3);
end;

procedure TMainForm.Intravitreal_steroid_liquid_implant_OSClick(
  Sender: TObject);
begin
  if Intravitreal_steroid_liquid_implant_OS.Checked = true then
    not_relevant_OD.Checked := false;
  frmDBControls.IniVisitCheckBoxCheck(4);
end;

function TMainForm.isCentreComplete: boolean;
begin
  //Result := ALC_TBL_Centres.fieldByName('').AsBoolean

end;

procedure TMainForm.jumpToRecord;
var
  controlCounter, scrollController, labSpacing : integer;
  recFound : boolean;
begin
  controlCounter := 0;
  labSpacing := 0;
  scrollController := 0;
  ScrollBox_previous_audits.VertScrollBar.Position := 0;
  recFound := false;

  if lastHighlightedLab <> nil then
    begin
      lastHighlightedLab.Font.Color := clblack;
      lastHighlightedLab.Font.Style := [];
    end;


    begin
      for controlCounter := 0 to ScrollBox_previous_audits.ControlCount - 1 do
        begin
          if ScrollBox_previous_audits.Controls[controlCounter].ClassType = TLabel then
            begin
              if controlCounter = 0 then
                begin
                  labSpacing := round((Tlabel(ScrollBox_previous_audits.Controls[0]).top +  Tlabel(ScrollBox_previous_audits.Controls[1]).top) - Tlabel(ScrollBox_previous_audits.Controls[0]).height);
                  scrollController :=  round((ScrollBox_previous_audits.height {+ Tlabel(ScrollBox_previous_audits.Controls[0]).height})/labSpacing);
                  {round((Tlabel(ScrollBox_previous_audits.Controls[0]).height)*2); }
                end;
              if pos('SET ID: ' + trim(editJumpTo.Text) + ' ', Tlabel(ScrollBox_previous_audits.Controls[controlCounter]).Caption) <> 0 then
                begin
                  Tlabel(ScrollBox_previous_audits.Controls[controlCounter]).Font.Color := clRed;
                  Tlabel(ScrollBox_previous_audits.Controls[controlCounter]).Font.Style := [fsBold];
                  lastHighlightedLab := Tlabel(ScrollBox_previous_audits.Controls[controlCounter]);
                  recFound := true;
                  if ((controlCounter)) > ((scrollController)-1) then
                    ScrollBox_previous_audits.VertScrollBar.Position := round((ScrollBox_previous_audits.VertScrollBar.Position + labSpacing));
                  break;
                end
              else
                begin
                  Tlabel(ScrollBox_previous_audits.Controls[controlCounter]).Font.Color := clblack;
                  Tlabel(ScrollBox_previous_audits.Controls[controlCounter]).Font.Style := [];
                  if ((controlCounter)) > ((scrollController)-1) then
                    ScrollBox_previous_audits.VertScrollBar.Position := round((ScrollBox_previous_audits.VertScrollBar.Position + labSpacing));
                end;
            end;
        end;
    end;

    if recFound = false then
      begin
        scrollBox_previous_audits.VertScrollBar.Position := 0;
        frmDBControls.ViewText(ScrollBox_previous_audits,'SET ID entered not found','Information');
      end;


end;

function TMainForm.ExtractFormat(AnEdit: TspFormatEditEx): String;
Var
DecimalPos : integer;
NumberOfDecimals, a  : integer;
StringLength : integer ;
StringFormatWithoutSymbol,StringFormatWithSymbol : String; //Without the Currency or possible % symbols attached
begin
  // Start with this common format string then add the decimals and then the currency or % symbols
  StringFormatWithoutSymbol := '#,###0';

  //Find the number of decimal places first by locating the last '.' symbols position
  //and taking this away from the length of the string.  If there are no '.' symbols detected there
  //can be no decimal places

  if Pos('.', AnEdit.Text) <> 0 then
    begin
      //Remove the spaces and % symbol from the end of the text to identify the correct number of decimals
      StringLength := Length(AnEdit.text);

      if Pos('%', AnEdit.Text) <> 0  then
        begin
          StringLength := StringLength -1;
          if Pos(' ', AnEdit.Text) <> 0  then
            StringLength := StringLength -1;
        end;

      DecimalPos := LastDelimiter('.',AnEdit.Text);
      NumberOfDecimals := StringLength - DecimalPos;
      StringFormatWithoutSymbol := StringFormatWithoutSymbol + '.';
    end
  else
    NumberOfDecimals :=0;

  //Add the number of decimal places to the format string
  for a := 1 to NumberOfDecimals do
    StringFormatWithoutSymbol :=  StringFormatWithoutSymbol + '0';

  //Add the number of decimal places to the format string
  if Pos('£', AnEdit.Text) <> 0 then
    StringFormatWithSymbol := '£ ' + StringFormatWithoutSymbol   +';' + '-£ ' + StringFormatWithoutSymbol
  else
    if Pos('%', AnEdit.Text) <> 0 then
      StringFormatWithSymbol := StringFormatWithoutSymbol +' %'   +';' + '-' + StringFormatWithoutSymbol +' %'
    else
      StringFormatWithSymbol := StringFormatWithoutSymbol;

  result := StringFormatWithSymbol;
end;

procedure TMainForm.btn_edit_FollowUpClick(Sender: TObject);
begin

 if ini_Visit_Complete.Checked = true then
  begin
    var_Make_All_DBControls_ReadOnly := false;
      if no_follow_Visit_Found_Lab.Visible = false then   //You cannot edit a record if there are none
        begin
          if followUp_Visit_CB_Checked = true then
            begin
              var_In_EDIT_MODE := true;
              in_Initial_Visit := false;
              in_FollowUpVisit := true;
              frmDBControls.getPreviousRecords((Mainform.var_New_AnswerBase_ID),frmDBControls.ALC_TBL_ANSWERS_BASE,'AnswerBaseID');
              frmEpisodeDatePicker.btn_Confirm_FollowUp.Visible := true;
              frmEpisodeDatePicker.btn_Confirm_FollowUp.BringToFront;
              frmEpisodeDatePicker.btn_Confirm_Ini.Visible := false;
              DataModule2.canShowFadeForm := true;
              Mainform.showPopUp(frmEpisodeDatePicker);
            end
          else
          frmDBControls.ViewText(frmDBControls, 'Please select a follow up visit to edit','Information');
        end
      else
        frmDBControls.ViewText(frmDBControls, 'Please add a follow up visit first', 'Information');  end
 else
  begin
    frmDBControls.ViewText(Sender,'Please complete the initial visit first','Information');
  end;

end;

procedure TMainForm.FlashButtonEx10Click(Sender: TObject);
begin
  if iniFollowUpVisit_RequiredFieldCheck(123,pg_Ini_FollowUp_2) = true then
    begin
        frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP.Post;

      if in_FollowUpVisit = true then
        panel_Rationale_Holder.Visible := false {Not required for follow up visit}
      else
        panel_Rationale_Holder.Visible := true;

      if in_Initial_Visit = true then
        mainform.NavigateTo_Ini(6)
      else
        mainform.NavigateTo_FollowUp(4);
    end
  else
    frmDBControls.ViewText(frmDBControls, 'Please make sure all required fields (*) are complete before continuing', 'Information');

end;

procedure TMainForm.FlashButtonEx11Click(Sender: TObject);
begin
   if true = true then
    begin
     { DBCheckBox_INI_FOLLOW_OCTVitreomacularAdhesion_ODClick(nil);
      DBCheckBox_INI_FOLLOW_OCTVitreomacularAdhesion_OSClick(nil);
      DBCheckBox_INI_FOLLOW_OCTFullThicknessMacularHole_ODClick(nil);
      DBCheckBox_INI_FOLLOW_OCTFullThicknessMacularHole_OSClick(nil);  }
      frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP.edit;
      frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP.Post;

      if in_Initial_Visit = true then
        mainform.NavigateTo_Ini(5)
      else
        mainform.NavigateTo_FollowUp(3);

    end
  else
    frmDBControls.ViewText(frmDBControls, 'Please make sure all required fields (*) are complete before continuing', 'Information');
end;

procedure TMainForm.FlashButtonEx12Click(Sender: TObject);
var
  I : integer;
begin

var_Make_All_DBControls_ReadOnly := true;

  if no_Ini_Visit_Found_Lab.Visible = false then   //You cannot edit a record if there are none
    begin
      var_In_EDIT_MODE := true;
      in_Initial_Visit := true;
      in_FollowUpVisit := false;

      for I := 0 to iniVisit_ScrollBox.ControlCount - 1 do
        begin
          if ((iniVisit_ScrollBox.Controls[I].ClassType = TLabel) and (pos('ini',iniVisit_ScrollBox.Controls[I].Name) <> 0)) then
            var_New_AnswerBase_ID := TLabel(iniVisit_ScrollBox.Controls[I]).Tag;
        end;

      frmDBControls.getPreviousRecords((Mainform.var_New_AnswerBase_ID),frmDBControls.ALC_TBL_ANSWERS_BASE,'AnswerBaseID');
      frmEpisodeDatePicker.btn_Confirm_FollowUp.Visible := false;
      frmEpisodeDatePicker.btn_Confirm_Ini.Visible := true;
      frmEpisodeDatePicker.btn_Confirm_Ini.BringToFront;
      DataModule2.canShowFadeForm := true;
      Mainform.showPopUp(frmEpisodeDatePicker);
    end;
end;

procedure TMainForm.FlashButtonEx14Click(Sender: TObject);
begin
var_Make_All_DBControls_ReadOnly := true;
  if no_follow_Visit_Found_Lab.Visible = false then   //You cannot edit a record if there are none
    begin
      if followUp_Visit_CB_Checked = true then
        begin
          var_In_EDIT_MODE := true;
          in_Initial_Visit := false;
          in_FollowUpVisit := true;
          frmDBControls.getPreviousRecords((Mainform.var_New_AnswerBase_ID),frmDBControls.ALC_TBL_ANSWERS_BASE,'AnswerBaseID');
          frmEpisodeDatePicker.btn_Confirm_FollowUp.Visible := true;
          frmEpisodeDatePicker.btn_Confirm_FollowUp.BringToFront;
          frmEpisodeDatePicker.btn_Confirm_Ini.Visible := false;
          DataModule2.canShowFadeForm := true;
          Mainform.showPopUp(frmEpisodeDatePicker);
        end
      else
      frmDBControls.ViewText(frmDBControls, 'Please select a follow up visit to edit', 'Information');
    end
  else
  frmDBControls.ViewText(frmDBControls, 'Please add a follow up visit first', 'Information');
   // showmessage('Please add a follow up visit first');
end;

procedure TMainForm.FlashButtonEx15Click(Sender: TObject);
begin
   NavigateTo_Main(12); //Go back to episode sets
end;

procedure TMainForm.FlashButtonEx16Click(Sender: TObject);
begin
   NavigateTo_Main(0); //Go back to home
end;

procedure TMainForm.FlashButtonEx17Click(Sender: TObject);
begin
  NavigateTo_Main(2); //Go back to section selection
end;

procedure TMainForm.FlashButtonEx18Click(Sender: TObject);
begin
   NavigateTo_Main(2); //Go back to section selection
end;

procedure TMainForm.FlashButtonEx19Click(Sender: TObject);
begin
   NavigateTo_Main(3); //Go back to patient options
end;

procedure TMainForm.FlashButtonEx1Click(Sender: TObject);
begin
  if label11.Visible = false then {Cannot edit records if none found}
    begin
      if EpiSet_CB_Checked = true then
        begin
          //frmDBControls.getPreviousRecords(inttostr(Mainform.var_New_Patient_ID),frmDBControls.ALC_TBL_Patients,'patientID');
          var_In_EDIT_MODE := false;
          var_New_AnswerBase_ID := returnAnserBaseID(frmDBControls.var_Patient_ID);
          frmDBControls.patientDischarged(var_New_AnswerBase_ID, var_New_EpiSetNum);
          NavigateTo_Main(7);
        end
      else
        begin
        frmDBControls.ViewText(frmDBControls, 'Please select the episode set to edit', 'Information');
         // showmessage('Please select the episode set to edit');
        end;
    end
  else
    begin
      frmDBControls.ViewText(frmDBControls, 'No episode groups available for editting', 'Information');
     // showmessage('No episode sets available for editting');
    end;
end;

procedure TMainForm.FlashButtonEx20Click(Sender: TObject);
begin
   NavigateTo_Main(3); //back to patient options
end;

procedure TMainForm.FlashButtonEx21Click(Sender: TObject);
begin
      if ((label102.Visible = true) or (label106.Visible = true) or (label104.Visible = true) or (label112.Visible = true)) then
        begin
          frmDBControls.ViewText(frmDBControls, 'Please make sure all required fields (*) are complete and you click "save", before leaving this page', 'Information');
          Label25.Visible := true;
          // Showmessage('Please make sure all required fields (*) are complete before saving');
        end
      else
        begin
          Label25.Visible := False;
          NavigateTo_Main(6);   //Go back to visits
        end;
end;

procedure TMainForm.FlashButtonEx22Click(Sender: TObject);
begin
 NavigateTo_Main(5);   //Go back to audits
end;

procedure TMainForm.FlashButtonEx2Click(Sender: TObject);
var
  canNavigateToNextPage: Boolean;
begin
  ini_Visit_Complete.Checked := false;
  canNavigateToNextPage := insertNewEpisodeSet;
  var_In_EDIT_MODE := false;
  Mainform.pan_mangeSets_holder.Visible := false;
  var_New_AnswerBase_ID := 0;
  var_Make_All_DBControls_ReadOnly := false;
  epiSetNum_Title_Str := inttostr(ScrollBox_EpisodeSets.ControlCount);
  if canNavigateToNextPage then
    NavigateTo_Main(7);
end;

procedure TMainForm.FlashButtonEx3Click(Sender: TObject);
var
  Level: Integer;
begin
  if ((label50.Visible = true) or (label17.Visible = true) or (label104.Visible = true) or (label112.Visible = true)) then
    begin
      Label25.Visible := true;
      frmDBControls.ViewText(frmDBControls, 'Please make sure all required fields (*) are complete before saving', 'Information');
    end
  else
    begin
      // start database transaction
      Level := frmDBControls.ALC_Connection_1.BeginTrans;

      try
        frmDBControls.ALC_TBL_Medical.FieldByName('DateAdded').AsString := DateTimeToStr(Now);
        frmDBControls.ALC_TBL_Medical.FieldByName('DateUpdated').AsString := DateTimeToStr(Now);
        frmDBControls.ALC_TBL_Medical.FieldByName('Archived').AsBoolean := False;
        frmDBControls.ALC_TBL_Medical.FieldByName('AuthorID').AsString := DataModule2.author;
        frmDBControls.ALC_TBL_Medical.Post;

        // if database operations are successful end transaction and commit data to database
        frmDBControls.ALC_Connection_1.CommitTrans;

        // select next page
        Label25.Visible := False;
        NavigateTo_Ini(3);
      except
        on E: Exception do
          begin
            frmDBControls.ShowDatabaseError(nil, E, 'Patients Table', 'the Patients details have not been submitted');
            frmDBControls.ALC_Connection_1.RollbackTrans;
          end;
      end; // end try
    end;
end;

procedure TMainForm.FlashButtonEx4Click(Sender: TObject);
var
  Level: Integer;
begin
    if ((label108.Visible = true) or (label54.Visible = true) or (label118.Visible = true) or (label119.Visible = true)) then
      begin
         frmDBControls.ViewText(frmDBControls, 'Please make sure all required fields (*) are complete before saving', 'Information');
      end
    else
      begin
        // start database transaction
        Level := frmDBControls.ALC_Connection_1.BeginTrans;

        try
          frmDBControls.ALC_TBL_ANSWERS_INI_VISIT.Post;

          // if database operations are successful end transaction and commit data to database
          frmDBControls.ALC_Connection_1.CommitTrans;

          // select next page
          // add next operation(s) code here...
        except
          on E: Exception do
            begin
              frmDBControls.ShowDatabaseError(nil, E, 'Answers Initial Visit Table', 'UPDATE DATABASE ERROR: the answers initial visit details have not been submitted');
              frmDBControls.ALC_Connection_1.RollbackTrans;
            end;
        end; // end try

        // start database transaction
        Level := frmDBControls.ALC_Connection_1.BeginTrans;

        try
          recordComplete(var_New_AnswerBase_ID);

          // if database operations are successful end transaction and commit data to database
          frmDBControls.ALC_Connection_1.CommitTrans;

          // select next page
          // add next operation(s) code here...
        except
          on E: Exception do
            begin
              frmDBControls.ShowDatabaseError(nil, E, 'Answers Base Table', 'UPDATE DATABASE ERROR: the answers base details details could not be checked');
              frmDBControls.ALC_Connection_1.RollbackTrans;
            end;
        end; // end try

        NavigateTo_Ini(4);
      end;
end;

procedure TMainForm.FlashButtonEx5Click(Sender: TObject);
begin
   if iniFollowUpVisit_RequiredFieldCheck(456,pg_Ini_FollowUp_3) = true then
    begin
      //if required fields are complete then post records
     { DBEdit_INI_FOLLOW_ProposedTreatmentDate_OD.Text := DateToStr(DateTimePicker5.DateTime);
      DBEdit_INI_FOLLOW_ProposedTreatmentDate_OS.Text := DateToStr(DateTimePicker6.DateTime);   }
      frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP.edit;
      frmDBControls.ALC_TBL_ANSWERS_INI_FOLLOWUP.Post;
      frmDBControls.ALC_TBL_ANSWERS_INI_VISIT.edit;
      frmDBControls.ALC_TBL_ANSWERS_INI_VISIT.Post;

      if in_Initial_Visit = true then
      ini_Visit_Complete.Checked := true; //Checkbox not visible to user. if checked false then NO follow up visit can be added

      //Check to see if the patient has been discharge as part of the proposed treatment
      if frmDBControls.showDisCharge(var_New_AnswerBase_ID) = true then
        begin //Patient discharged
          NavigateTo_Main(8); //Go to discharge table
        end
      else // Patient NOT discharged
       NavigateTo_Ini(1); //Go to visits overview for selected patient
    end
   else
    begin
      if in_Initial_Visit = true then
      ini_Visit_Complete.Checked := false; //Checkbox not visible to user. if checked false then NO follow up visit can be added

      frmDBControls.ViewText(frmDBControls, 'Please make sure all required fields (*) are complete before saving', 'Information');
    end;
end;

procedure TMainForm.FlashButtonEx6Click(Sender: TObject);
begin
   NavigateTo_Main(6);
end;

procedure TMainForm.FlashButtonEx7Click(Sender: TObject);
begin
  if DBLookupComboBox_DISCHARGE_DischargeReasonID.Text <> '' then
    begin
      frmDBControls.ALC_TBL_DISCHARGE.Post;
      recordComplete(var_New_AnswerBase_ID);
      var_Make_All_DBControls_ReadOnly := true;
      NavigateTo_main(7) //Go to visits overview for selected patient
    end
  else
  frmDBControls.ViewText(frmDBControls, 'Please give a reason for discharge', 'Information');
end;

procedure TMainForm.FlashButtonEx8Click(Sender: TObject);
begin
  if pos('-',trim(editJumpTo.Text)) = 0 then
    jumpToRecord
  else
   frmDBControls.ViewText(ScrollBox_previous_audits,'The SET ID entered is invalid','Information');
end;

procedure TMainForm.FlashButtonEx9Click(Sender: TObject);
begin
      var_In_EDIT_MODE := true;
      frmDBControls.getPreviousRecords((frmDBControls.var_Patient_ID),frmDBControls.ALC_TBL_Patients,'patientID');
      NavigateTo_Main(1);
end;

procedure TMainForm.btn_followUp_Visit_PostClick(Sender: TObject);
begin
    {  if ((label19.Visible = true) or (label142.Visible = true) or
          (label143.Visible = true) or (label145.Visible = true) or
          (label146.Visible = true) or (label147.Visible = true) or
          (label148.Visible = true) or (label149.Visible = true) or
          (label150.Visible = true) or (label151.Visible = true) or
          (label152.Visible = true) or (label153.Visible = true) or
          (label154.Visible = true) or (label155.Visible = true) or
          (label163.Visible = true) or (label164.Visible = true) or
          (label165.Visible = true) or (label166.Visible = true)) then
        begin
          frmDBControls.ViewText(frmDBControls, 'Please make sure all required fields (*) are complete before saving', 'Information');
        end
      else      }
        begin
          

          if in_Initial_Visit = true then
            begin
              //either back to visits or discharge screen
              if frmDBControls.showDisCharge(var_New_AnswerBase_ID) = true then
                begin
                  NavigateTo_Main(8) //Go to discharge page
                end
              else
                begin
                 NavigateTo_Ini(1); //Go to visits overview screen
                end;
            end
          else //FollowUp Visit
            begin
              frmDBControls.patientDischarged(var_New_AnswerBase_ID, var_New_EpiSetNum);
              recordComplete(var_New_AnswerBase_ID);
              mainform.NavigateTo_FollowUp(5);
            end;
        end;
end;


procedure TMainForm.button_Confirm_CentreClick(Sender: TObject);
var
  Level: Integer;
  computerName, userName: AnsiString;
  buffer: array[0..255] of char;
  size: dword;
  dbOperation: AnsiString;
begin
  Button1.SetFocus;

  // Check required fields. Returns true if all fields have been complete
  if frmDBControls.CanSubmitCentre = True then
    begin
      // start database transaction
      Level := frmDBControls.ALC_Connection_1.BeginTrans;

      try
        // CRUD operations
        if frmDBControls.centreFound then
          begin
            frmDBControls.ALC_TBL_Centres.Edit;
            frmDBControls.ALC_TBL_Centres.FieldByName('DateUpdated').AsString := DateTimeToStr(Now);
            frmDBControls.ALC_TBL_Centres.FieldByName('AuthorID').AsString := DataModule2.author;
            dbOperation := 'UPDATING';
          end
        else
          begin
            frmDBControls.ALC_TBL_Centres.Edit;
            frmDBControls.ALC_TBL_Centres.FieldByName('CentreUUID').AsString := frmDBControls.var_Center_UUID;
            frmDBControls.ALC_TBL_Centres.FieldByName('DateAdded').AsString := DateTimeToStr(Now);
            frmDBControls.ALC_TBL_Centres.FieldByName('DateUpdated').AsString := DateTimeToStr(Now);
            frmDBControls.ALC_TBL_Centres.FieldByName('Archived').AsBoolean := False;
            frmDBControls.ALC_TBL_Centres.FieldByName('AuthorID').AsString := DataModule2.author;
            dbOperation := 'INSERTING';
          end;

        frmDBControls.ALC_TBL_Centres.Post;
        frmDBControls.getCentresDetails;

        // if database operations are successful end transaction and commit data to database
        frmDBControls.ALC_Connection_1.CommitTrans;

        NavigateTo_Main(3); // Section Selection page
      except
        on E: Exception do
          begin
            if dbOperation = 'INSERTING' then
              frmDBControls.ShowDatabaseError(nil, E, 'Centres table', 'INSERTING ERROR: centre details have not being submitted')
            else
              frmDBControls.ShowDatabaseError(nil, E, 'Centres table', 'UPDATIG ERROR: centre details have not being submitted');

            if not(frmDBControls.centreFound) then
              frmDBControls.ALC_TBL_Centres.Delete;
            frmDBControls.ALC_Connection_1.RollbackTrans;
          end;
      end; // end try

      // refresh datasets
      frmDBControls.ALC_TBL_Centres.Active := False;
      frmDBControls.ALC_TBL_Centres.Active := True;
    end;
end;

procedure TMainForm.UtilitiesClick(Sender: TObject);
begin
  frmUtilities.ShowModal;
end;

function TMainForm.allowAddEpisode: Boolean;
Var
  I : Integer;
begin

end;

procedure TMainForm.BottomMenuFSCommand(ASender: TObject;
  const command, args: WideString);
var
  GotoPage : String;
  CanSubmitCentre: Boolean;
begin
   //if command equals back
   if pos('back',RawByteString(command)) > 0 then
    begin
      //Check which section of the tool we are in to determine which navigation to use
      if in_Main_Section = true then
        begin
          //if on dashboard page then
          if (PageControl1.ActivePage = PG_SECTION_SELECT) then
            begin
              NavigateTo_Main(0);
              Exit;
            end;

          if (PageControl1.ActivePage = pg_CentreDetails) then
            begin
              // refresh datasets
              frmDBControls.ALC_TBL_Centres.Active := False;
              frmDBControls.ALC_TBL_Centres.Active := True;
              frmDBControls.ResetCentresScreen;
              Exit;
            end;

          if (PageControl1.ActivePage = pg_Patient_Details) then
            begin
              NavigateTo_Main(4); { patient options }
              Exit;
            end;

          if (PageControl1.ActivePage = pg_Patient_Options) then
            begin
              NavigateTo_Main(3);
              Exit;
            end;
        end
      else if in_Initial_Visit = true then
        begin
           if Mainform.currentScreen_Ini = 0 then
               NavigateTo_Main(6)
           else
            NavigateTo_Ini(DataModule2.BackorNextScreen(Mainform.currentScreen_Ini,command));
        end
      else if in_FollowUpVisit = true then
        begin
          if Mainform.currentScreen_FollowUp = 0 then
               NavigateTo_Main(6)
           else
          NavigateTo_FollowUp(DataModule2.BackorNextScreen(Mainform.currentScreen_FollowUp,command));
        end;
    end;
end;

procedure TMainForm.TopMenuFSCommand(ASender: TObject;
  const command, args: WideString);
begin
  //showmessage(command);


  //Close
  if command = 'exit' then
    begin
      frmDbControls.closeDBTables;
      close;
    end;

  // Min
  if command = 'minimise' then
    begin
      ShowWindow(Application.Handle, SW_SHOWMINIMIZED);
    end;

  // Min
  if command = 'centre details' then
    begin
      TFP_CENTRE_CLICKClick(nil);
    end;

  // Min
  if command = 'new patient' then
    begin
      TFP_INPUT_CLICKClick(nil);
    end;

  // Min
  if command = 'review' then
    begin
      //btn_ReviewClick(nil);
      TFP_REPORTING_CLICK_AREAClick(nil);
    end;

  if command = 'section' then
    begin
      NavigateTo_Main(3);
    end;
end;

procedure TMainForm.unCheckOtherEpiSets(aSender: TObject);
Var
  I : integer;
begin
  if TCheckbox(aSender).Checked = true  then
    begin
      for I := 0 to ScrollBox_EpisodeSets.ControlCount - 1 do
        begin
          if ScrollBox_EpisodeSets.Controls[I].ClassType = TCheckBox then
            begin
              if TCheckBox(ScrollBox_EpisodeSets.Controls[I]).Tag <> TCheckbox(aSender).Tag then
                begin
                  TCheckBox(ScrollBox_EpisodeSets.Controls[I]).Checked := false;
                end;
            end;
        end;


       var_New_EpiSetNum := TCheckbox(aSender).Tag;
       epiSetNum_Title_Str := copy(TCheckbox(aSender).Caption,pos('#',TCheckbox(aSender).Caption)+1,2);
       EpiSet_CB_Checked := true;

       if pos('DISCHARGED',TCheckbox(aSender).Caption) <> 0 then
          var_Make_All_DBControls_ReadOnly := true
       else
          var_Make_All_DBControls_ReadOnly := false;
    end;
end;

procedure TMainForm.unCheckOtherVisits(aSender: TObject);
Var
  I : integer;
begin
if TCheckbox(aSender).Checked = true  then
  begin
    for I := 0 to FollowUpVisit_ScrollBox.ControlCount - 1 do
      begin
        if FollowUpVisit_ScrollBox.Controls[I].ClassType = TCheckBox then
          begin
            if TCheckBox(FollowUpVisit_ScrollBox.Controls[I]).Tag <> TCheckbox(aSender).Tag then
              begin
                TCheckBox(FollowUpVisit_ScrollBox.Controls[I]).Checked := false;
              end;
          end;
      end;
       var_New_AnswerBase_ID := TCheckbox(aSender).Tag;
       followUp_Visit_CB_Checked := true;
  end;
end;

procedure TMainForm.TFP_CENTRE_CLICKClick(Sender: TObject);
var
  I : integer;
  Level: Integer;
begin
      // start database transaction
      Level := frmDBControls.ALC_Connection_1.BeginTrans;

      try
        // activate all tables
        try
          frmDBControls.activateDBTables;
        except
          on E: Exception do
            begin
              frmDBControls.ShowDatabaseError(nil, E, 'All Tables', 'ACTIVATE TABLES ERROR: the procedure TFP_CENTRE_CLICKClick failed to activate database tables');
            end;
        end; // end try

        // if database operations are successful, end transaction and commit data to database
        frmDBControls.ALC_Connection_1.CommitTrans;
      except
        on E: Exception do
          begin
            frmDBControls.ShowDatabaseError(nil, E, 'all tables' ,'the database tables have not been activated');
            frmDBControls.ALC_Connection_1.RollbackTrans;
            application.Terminate;
          end;
      end; // end try

 {2a}  if frmDBControls.centreFound = True then
        begin
          frmDBControls.ALC_TBL_Centres.Edit;
          frmDBControls.button17.Visible := True;
        end
      else
 {2b}   begin
          frmDBControls.button17.Visible := true;
        end;

    NavigateTo_Main(2); //CENTRE DETAILS PAGE

end;

procedure TMainForm.TFP_INPUT_CLICKClick(Sender: TObject);
begin
  frmDBControls.ALC_TBL_Centres.Active := true;

  if frmDBControls.ALC_TBL_Centres.RecordCount = 0 then
    begin
      frmDBControls.ViewText(frmDBControls, 'The system has detected that no centre details have been entered.' + sLineBreak+
                  'Please visit the centre details section of the tool first.', 'Information');
    end
  else
    begin
      NavigateTo_Main(4); //Options page
  end;

end;

procedure TMainForm.TFP_REPORTING_CLICK_AREAClick(Sender: TObject);
Var
  DelayCapture : integer;
begin

   FrmDBControls.ALC_TBL_Patients.Active;
   FrmDBControls.ALC_TBL_Patients.Open;

//Check if any patient records are present - if no patient records then do not run the report
  if FrmDBControls.ALC_TBL_Patients.RecordCount <> 0 then
    begin
      button3Click(nil);
    end
  else
    begin
      frmDBControls.ViewText(Sender,'Please input some patient records before running the reports', 'Information');
    end;
 // frmDBControls.ViewText(Sender,'In dev', 'Information');

end;

procedure TMainForm.TFP_SECTION_SELECTClick(Sender: TObject);
begin
  TFP_SECTION_SELECT.GotoFrame(1);  {Currently forcing the flash player to frame 1 as
                                      clicking sends to frame 2 which is intro text that we do not need}
end;

procedure TMainForm.TFP_SECTION_SELECTDblClick(Sender: TObject);
begin
  TFP_SECTION_SELECT.GotoFrame(1);  {Currently forcing the flash player to frame 1 as
                                      clicking sends to frame 2 which is intro text that we do not need}
end;

procedure TMainForm.TFP_SECTION_SELECTFlashCall(ASender: TObject;
  const request: WideString);
begin
  TFP_SECTION_SELECT.GotoFrame(1);  {Currently forcing the flash player to frame 1 as
                                      clicking sends to frame 2 which is intro text that we do not need}
end;

procedure TMainForm.TFP_SECTION_SELECTFSCommand(ASender: TObject; const command,
  args: WideString);
begin
  //showmessage(command);
  if command = 'data' then
    begin
      TFP_INPUT_CLICKClick(nil);
    end;

  if command = 'reporting' then
    begin
      TFP_REPORTING_CLICK_AREAClick(nil);
    end;

  if command = 'centre' then
    begin
      frmDBControls.ResetCentresScreen;
      TFP_CENTRE_CLICKClick(nil);
    end;
end;

procedure TMainForm.Timer1Timer(Sender: TObject);
begin
  SetProcessWorkingSetSize(GetCurrentProcess(), 4294967295, 4294967295);

end;

procedure TMainForm.Timer2Timer(Sender: TObject);
begin
 {  captureDelay2 := captureDelay2 + 1;
    if captureDelay2 = 1 then
    begin
     frmImagesToCapture.Left := -100000;
     frmImagesToCapture.Show;
     frmGen.updateLabels('Gathering report data','5%');
     frmImagesToCapture.generateCharts(1,frmImagesToCapture.FlashPlayerControl1);
     frmImagesToCapture.generateCharts(2,frmImagesToCapture.FlashPlayerControl2);
     frmImagesToCapture.generateCharts(3,frmImagesToCapture.FlashPlayerControl3);
     frmImagesToCapture.generateCharts(4,frmImagesToCapture.FlashPlayerControl4);
     frmGen.updateLabels('Gathering report data','10%');
     frmImagesToCapture.generateCharts(5,frmImagesToCapture.FlashPlayerControl5);
     frmImagesToCapture.generateCharts(6,frmImagesToCapture.FlashPlayerControl6);
     frmImagesToCapture.generateCharts(7,frmImagesToCapture.FlashPlayerControl7);
     frmGen.updateLabels('Gathering report data','15%');
     frmImagesToCapture.generateCharts(8,frmImagesToCapture.FlashPlayerControl8);
     frmImagesToCapture.generateCharts(9,frmImagesToCapture.FlashPlayerControl9);
     frmImagesToCapture.generateCharts(10,frmImagesToCapture.FlashPlayerControl10);
     frmImagesToCapture.generateCharts(11,frmImagesToCapture.FlashPlayerControl11);
     frmImagesToCapture.generateCharts(12,frmImagesToCapture.FlashPlayerControl12);
     frmGen.updateLabels('Gathering report data','20%');
//     frmImagesToCapture.generateCharts(13,frmImagesToCapture.FlashPlayerControl13);
//     frmImagesToCapture.generateCharts(14,frmImagesToCapture.FlashPlayerControl14);
//     frmImagesToCapture.generateCharts(15,frmImagesToCapture.FlashPlayerControl15);
     //frmImagesToCapture.generateCharts(5,frmImagesToCapture.FlashPlayerControl5);

    end;


  if captureDelay2 = 3 then
    begin
      captureDelay2 := 0;
      Timer2.Enabled := false;
      frmImagesToCapture.timer1.Enabled := true;
      frmGen.updateLabels('Preparing to export reports','25%');
    end;    }
end;

procedure TMainForm.flashTitleFSCommand(ASender: TObject; const command,
  args: WideString);
  var
     SL : TStringList;
begin
 //showmessage('command= ' + command);

  trim(command);


   //Username and Password login disbaled. Awaiting confirmation regards passwords - Ask Rachel Livermore
  {if ((command <> 'exit') and (command <> 'minimise')) then
    begin
       SL := TStringList.Create;
       Reffrm.Split('|',command,SL);
       //showmessage(SL[0]);
       if ((SL[0] = '') or (SL[1] = '')) then
        begin
          frmDBControls.ViewText(ASender,'Please insert the username and password','Information');
        end
       else if ((trim(lowerCase(SL[0])) <>  trim(lowerCase(Mainform.inputTool_UserName))) or (SL[1] <>  Mainform.inputTool_Password)) then
            begin

              frmDBControls.ViewText(ASender,'The login details provided are incorrect. Please check and try again.' +sLineBreak + 'If you cannot remember your login details, please contact a member of the Abacus International development team (%2B44 (0)1869 241281)','Information');
            end

       else if ((trim(lowerCase(SL[0])) =  trim(lowerCase(Mainform.inputTool_UserName))) and (SL[1] = Mainform.inputTool_Password)) then
           Mainform.NavigateTo_Main(2); {Call the navigateTo procedure to enter the model and go to the first page which sould be the section selector}

   // end;


  if pos('|',command) <> 0 then
    begin
      //frmDBControls.ViewText(ASender,'Please insert the username and password','Information');
       Mainform.NavigateTo_Main(3); //Dashboard
    end;

  if command = 'enter' then
    begin
     Mainform.NavigateTo_Main(3); {Call the navigateTo procedure to enter the model and go to the first page which sould be the dashboard}
    end;

  if command = 'exit' then
    begin
      mainform.Close;
    end;

  if command = 'minimise' then
    begin
      ShowWindow(Application.Handle, SW_SHOWMINIMIZED);
    end;

end;

initialization
  FlashCodeStream := TFileStream.Create(ExtractFilePath(Application.ExeName)+'System\Flash9b.ocx', fmOpenRead or fmShareDenyNone);
  FlashPlayerControl.LoadFlashOCXCodeFromStream(FlashCodeStream);
  FlashCodeStream.Free;
end.
