object frmDBControlsForReport: TfrmDBControlsForReport
  Left = 580
  Top = 181
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'frmDBControlsForReport'
  ClientHeight = 854
  ClientWidth = 1089
  Color = clWhite
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label103: TLabel
    Left = 28
    Top = 21
    Width = 97
    Height = 19
    Caption = 'Main queries'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7368816
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 28
    Top = 493
    Width = 59
    Height = 19
    Caption = 'Helpers'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7368816
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Panel2: TPanel
    Left = 0
    Top = 794
    Width = 1089
    Height = 60
    Align = alBottom
    BevelOuter = bvNone
    Color = 3513907
    ParentBackground = False
    TabOrder = 0
  end
  object meanIOPMemo: TMemo
    Left = 28
    Top = 368
    Width = 133
    Height = 89
    TabOrder = 1
  end
  object meanVisualAcuityDistanceMemo: TMemo
    Left = 28
    Top = 368
    Width = 133
    Height = 89
    TabOrder = 2
  end
  object meanVisualAcuityNearMemo: TMemo
    Left = 28
    Top = 368
    Width = 133
    Height = 89
    TabOrder = 3
  end
  object ProportionOfPatientWithDistortionAndScotomaMemo: TMemo
    Left = 28
    Top = 368
    Width = 133
    Height = 89
    TabOrder = 4
  end
  object ProportionOfPatientWithOCTMemo: TMemo
    Left = 28
    Top = 368
    Width = 133
    Height = 89
    TabOrder = 5
  end
  object AverageVitreomacularAdhesionMemo: TMemo
    Left = 28
    Top = 368
    Width = 133
    Height = 89
    TabOrder = 6
  end
  object meanMacularHoleSizeMemo: TMemo
    Left = 28
    Top = 368
    Width = 133
    Height = 89
    TabOrder = 7
  end
  object SecondaryCataractPresenceMemo: TMemo
    Left = 28
    Top = 368
    Width = 133
    Height = 89
    TabOrder = 8
  end
  object ProposedTreatmentRationalMemo: TMemo
    Left = 28
    Top = 368
    Width = 133
    Height = 89
    TabOrder = 9
  end
  object ProportionOfPatientWithDistortionMemo: TMemo
    Left = 28
    Top = 368
    Width = 133
    Height = 89
    TabOrder = 10
  end
  object qryReport_Gender: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Count(tblPatients.patientID) AS CountOfpatientID, tblLook' +
        'upGender.gender'
      
        'FROM tblLookupGender INNER JOIN tblPatients ON tblLookupGender.g' +
        'enderID=tblPatients.genderID'
      'GROUP BY tblLookupGender.gender, tblPatients.archived'
      'HAVING (((tblPatients.archived)=False));')
    Left = 151
    Top = 14
    object qryReport_GenderCountOfpatientID: TIntegerField
      FieldName = 'CountOfpatientID'
    end
    object qryReport_Gendergender: TWideStringField
      FieldName = 'gender'
      Size = 6
    end
  end
  object qryReport_ProportionOfPatientsMovingFromWWToSurgeryOrInjections: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Count(tblPatients.patientID) AS CountOfpatientID, tbLooku' +
        'plIndication.IndicationDesc'
      
        'FROM tbLookuplIndication INNER JOIN tblPatients ON tbLookuplIndi' +
        'cation.IndicationID=tblPatients.IndicationID'
      
        'GROUP BY tbLookuplIndication.IndicationDesc, tblPatients.archive' +
        'd, tbLookuplIndication.Archived'
      
        'HAVING (((tblPatients.archived)=False) AND ((tbLookuplIndication' +
        '.Archived)=False))'
      'ORDER BY tbLookuplIndication.IndicationDesc;')
    Left = 786
    Top = 443
    object qryReport_ProportionOfPatientsMovingFromWWToSurgeryOrInjectionsCountOfpatientID: TIntegerField
      FieldName = 'CountOfpatientID'
    end
    object qryReport_ProportionOfPatientsMovingFromWWToSurgeryOrInjectionsIndicationDesc: TWideStringField
      FieldName = 'IndicationDesc'
      Size = 255
    end
  end
  object qryReport_averageTimeBetweeninitialVisitAndDischarge: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT qrySub_EpisodeSetsByProposedGroupDescOfFirstVisit.Propose' +
        'dTreatmentGroupDesc, AVG(qrySub_TimeDifferenceInitialAndDischarg' +
        'eByEpisodeSetID.TimeDifferenceBetweenInitialVisitAndDischarge) A' +
        'S AverageTimeBetweenInitialAndDischargeVisit'
      'FROM (SELECT '
      
        #9#9'qrySub_TimeDifferenceInitialAndDischargeByEpisodeSetID.TimeDif' +
        'ferenceBetweenInitialVisitAndDischarge, qrySub_EpisodeSetsByProp' +
        'osedGroupDescOfFirstVisit.ProposedTreatmentGroupDesc'
      #9'FROM '
      #9#9'qrySub_EpisodeSetsByProposedGroupDescOfFirstVisit '
      
        #9'INNER JOIN qrySub_TimeDifferenceInitialAndDischargeByEpisodeSet' +
        'ID ON qrySub_EpisodeSetsByProposedGroupDescOfFirstVisit.episodeS' +
        'etID = qrySub_TimeDifferenceInitialAndDischargeByEpisodeSetID.ep' +
        'isodeSetID'
      ')  AS [%$##@_Alias]'
      
        'GROUP BY qrySub_EpisodeSetsByProposedGroupDescOfFirstVisit.Propo' +
        'sedTreatmentGroupDesc;')
    Left = 786
    Top = 147
    object qryReport_averageTimeBetweeninitialVisitAndDischargeProposedTreatmentGroupDesc: TWideStringField
      FieldName = 'ProposedTreatmentGroupDesc'
      Size = 255
    end
    object qryReport_averageTimeBetweeninitialVisitAndDischargeAverageTimeBetweenInitialAndDischargeVisit: TFloatField
      FieldName = 'AverageTimeBetweenInitialAndDischargeVisit'
      ReadOnly = True
    end
  end
  object qryReport_VMTIncidence: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Count(tblPatients.patientID) AS CountOfpatientID, tbLooku' +
        'plIndication.IndicationDesc'
      
        'FROM tbLookuplIndication INNER JOIN tblPatients ON tbLookuplIndi' +
        'cation.IndicationID=tblPatients.IndicationID'
      
        'GROUP BY tbLookuplIndication.IndicationDesc, tblPatients.archive' +
        'd, tbLookuplIndication.Archived'
      
        'HAVING (((tblPatients.archived)=False) AND ((tbLookuplIndication' +
        '.Archived)=False))'
      'ORDER BY tbLookuplIndication.IndicationDesc;')
    Left = 786
    Top = 14
    object qryReport_VMTIncidenceCountOfpatientID: TIntegerField
      FieldName = 'CountOfpatientID'
    end
    object qryReport_VMTIncidenceIndicationDesc: TWideStringField
      FieldName = 'IndicationDesc'
      Size = 255
    end
  end
  object qryReport_Age: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Count(tblPatients.patientID) AS CountOfpatientID, tblLook' +
        'upAgeRange.ageRangeDesc'
      
        'FROM tblLookupAgeRange INNER JOIN tblPatients ON tblLookupAgeRan' +
        'ge.ageID = tblPatients.ageID'
      
        'GROUP BY tblLookupAgeRange.ageRangeDesc, tblPatients.archived, t' +
        'blLookupAgeRange.Archived'
      
        'HAVING (((tblPatients.archived)=False) AND ((tblLookupAgeRange.A' +
        'rchived)=False));')
    Left = 456
    Top = 14
    object qryReport_AgeCountOfpatientID: TIntegerField
      FieldName = 'CountOfpatientID'
    end
    object qryReport_AgeageRangeDesc: TWideStringField
      FieldName = 'ageRangeDesc'
      Size = 100
    end
  end
  object qryReport_ReasonForDischarge: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'qrySub_DischargeReasonsDescByAnswerID.episodeSetID'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT qrySub_EpisodeSetsByProposedGroupDescOfFirstVisit.Propose' +
        'dTreatmentGroupDesc, qrySub_DischargeReasonsDescByAnswerID.Disch' +
        'argeReasonDesc, COUNT(qrySub_DischargeReasonsDescByAnswerID.Disc' +
        'hargeReasonDesc) AS CountOfDischargeReasonDesc'
      
        'FROM qrySub_EpisodeSetsByProposedGroupDescOfFirstVisit INNER JOI' +
        'N qrySub_DischargeReasonsDescByAnswerID ON qrySub_EpisodeSetsByP' +
        'roposedGroupDescOfFirstVisit.episodeSetID = qrySub_DischargeReas' +
        'onsDescByAnswerID.episodeSetID'
      
        'GROUP BY qrySub_EpisodeSetsByProposedGroupDescOfFirstVisit.Propo' +
        'sedTreatmentGroupDesc, qrySub_DischargeReasonsDescByAnswerID.Dis' +
        'chargeReasonDesc;')
    Left = 456
    Top = 147
    object qryReport_ReasonForDischargeProposedTreatmentGroupDesc: TWideStringField
      FieldName = 'ProposedTreatmentGroupDesc'
      Size = 255
    end
    object qryReport_ReasonForDischargeDischargeReasonDesc: TWideStringField
      FieldName = 'DischargeReasonDesc'
      Size = 255
    end
    object qryReport_ReasonForDischargeCountOfDischargeReasonDesc: TIntegerField
      FieldName = 'CountOfDischargeReasonDesc'
    end
  end
  object qryReport_averageTimeBetweenInitialvisitAndTreatment: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'qrySub_DurationBetweenFirstVisitsAndTreatment.TimeInterval'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      
        #9'Count(qrySub_DurationBetweenFirstVisitsAndTreatment.AnswerBaseI' +
        'D) AS ItemsCount, qrySub_EpisodeSetsByProposedGroupDescOfFirstVi' +
        'sit.ProposedTreatmentGroupDesc, Avg(qrySub_DurationBetweenFirstV' +
        'isitsAndTreatment.TimeInterval) AS AverageDurationBetweenFirstVi' +
        'sitAndTreatment'
      'FROM '
      
        #9'qrySub_DurationBetweenFirstVisitsAndTreatment INNER JOIN qrySub' +
        '_EpisodeSetsByProposedGroupDescOfFirstVisit ON qrySub_DurationBe' +
        'tweenFirstVisitsAndTreatment.episodeSetID = qrySub_EpisodeSetsBy' +
        'ProposedGroupDescOfFirstVisit.episodeSetID'
      'GROUP BY '
      
        #9'qrySub_EpisodeSetsByProposedGroupDescOfFirstVisit.ProposedTreat' +
        'mentGroupDesc;')
    Left = 456
    Top = 198
    object qryReport_averageTimeBetweenInitialvisitAndTreatmentItemsCount: TIntegerField
      FieldName = 'ItemsCount'
    end
    object qryReport_averageTimeBetweenInitialvisitAndTreatmentProposedTreatmentGroupDesc: TWideStringField
      FieldName = 'ProposedTreatmentGroupDesc'
      Size = 255
    end
    object qryReport_averageTimeBetweenInitialvisitAndTreatmentAverageDurationBetweenFirstVisitAndTreatment: TFloatField
      FieldName = 'AverageDurationBetweenFirstVisitAndTreatment'
      ReadOnly = True
    end
  end
  object qryReport_AverageNoOfVisitsBetweenInitialVisitAndDischarge: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT qrySub_EpisodeSetsByProposedGroupDescOfFirstVisit.Propose' +
        'dTreatmentGroupDesc, AVG(CountOfepisodeSetID) AS AverageNoOfVisi' +
        'tsByProposedInitialTreatment'
      'FROM (SELECT '
      
        #9#9'tblAnswersBase.episodeSetID, Count(tblAnswersBase.episodeSetID' +
        ') - 1 AS CountOfepisodeSetID, qrySub_EpisodeSetsByProposedGroupD' +
        'escOfFirstVisit.ProposedTreatmentGroupDesc'
      #9'FROM '
      #9#9'qrySub_EpisodeSetsByProposedGroupDescOfFirstVisit '
      #9'INNER JOIN '
      
        #9#9'tblAnswersBase ON qrySub_EpisodeSetsByProposedGroupDescOfFirst' +
        'Visit.episodeSetID = tblAnswersBase.episodeSetID'
      'WHERE'
      
        #9#9'((tblAnswersBase.archived=FALSE) AND (tblAnswersBase.completed' +
        '=TRUE))'
      #9'GROUP BY '
      
        #9#9'tblAnswersBase.episodeSetID, qrySub_EpisodeSetsByProposedGroup' +
        'DescOfFirstVisit.ProposedTreatmentGroupDesc, tblAnswersBase.epis' +
        'odeSetID'
      ')  AS [%$##@_Alias]'
      
        'GROUP BY qrySub_EpisodeSetsByProposedGroupDescOfFirstVisit.Propo' +
        'sedTreatmentGroupDesc;')
    Left = 146
    Top = 155
    object qryReport_AverageNoOfVisitsBetweenInitialVisitAndDischargeProposedTreatmentGroupDesc: TWideStringField
      FieldName = 'ProposedTreatmentGroupDesc'
      Size = 255
    end
    object qryReport_AverageNoOfVisitsBetweenInitialVisitAndDischargeAverageNoOfVisitsByProposedInitialTreatment: TFloatField
      FieldName = 'AverageNoOfVisitsByProposedInitialTreatment'
      ReadOnly = True
    end
  end
  object qrySub_DischargedAnswersIDs: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Count(tblPatients.patientID) AS CountOfpatientID, tblLook' +
        'upGender.gender'
      
        'FROM tblLookupGender INNER JOIN tblPatients ON tblLookupGender.g' +
        'enderID=tblPatients.genderID'
      'GROUP BY tblLookupGender.gender, tblPatients.archived'
      'HAVING (((tblPatients.archived)=False));')
    Left = 127
    Top = 567
    object IntegerField7: TIntegerField
      FieldName = 'CountOfpatientID'
    end
    object WideStringField7: TWideStringField
      FieldName = 'gender'
      Size = 6
    end
  end
  object qrySub_EpisodesIdsOfDischargedAnswers: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Count(tblPatients.patientID) AS CountOfpatientID, tblLook' +
        'upGender.gender'
      
        'FROM tblLookupGender INNER JOIN tblPatients ON tblLookupGender.g' +
        'enderID=tblPatients.genderID'
      'GROUP BY tblLookupGender.gender, tblPatients.archived'
      'HAVING (((tblPatients.archived)=False));')
    Left = 407
    Top = 567
    object IntegerField8: TIntegerField
      FieldName = 'CountOfpatientID'
    end
    object WideStringField8: TWideStringField
      FieldName = 'gender'
      Size = 6
    end
  end
  object qrySub_AnswersIdOfInitialVisitsWithADischargedID: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Count(tblPatients.patientID) AS CountOfpatientID, tblLook' +
        'upGender.gender'
      
        'FROM tblLookupGender INNER JOIN tblPatients ON tblLookupGender.g' +
        'enderID=tblPatients.genderID'
      'GROUP BY tblLookupGender.gender, tblPatients.archived'
      'HAVING (((tblPatients.archived)=False));')
    Left = 671
    Top = 567
    object IntegerField14: TIntegerField
      FieldName = 'CountOfpatientID'
    end
    object WideStringField14: TWideStringField
      FieldName = 'gender'
      Size = 6
    end
  end
  object qryReport_SourceOfReferral: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Count(tblPatients.patientID) AS CountOfpatientID, tblLook' +
        'upSourceOfReferral.SourceOfReferralDesc'
      
        'FROM tblPatients INNER JOIN (tblLookupSourceOfReferral INNER JOI' +
        'N tblPatientMedicalHistory ON tblLookupSourceOfReferral.SourceOf' +
        'ReferralID = tblPatientMedicalHistory.SourceOfReferalID) ON tblP' +
        'atients.patientID = tblPatientMedicalHistory.patientID'
      
        'GROUP BY tblLookupSourceOfReferral.SourceOfReferralDesc, tblPati' +
        'ents.archived, tblPatientMedicalHistory.Archived, tblLookupSourc' +
        'eOfReferral.Archived'
      
        'HAVING (((tblPatients.archived)=False) AND ((tblPatientMedicalHi' +
        'story.Archived)=False) AND ((tblLookupSourceOfReferral.Archived)' +
        '=False))'
      'ORDER BY tblLookupSourceOfReferral.SourceOfReferralDesc;')
    Left = 151
    Top = 58
    object qryReport_SourceOfReferralCountOfpatientID: TIntegerField
      FieldName = 'CountOfpatientID'
    end
    object qryReport_SourceOfReferralSourceOfReferralDesc: TWideStringField
      FieldName = 'SourceOfReferralDesc'
      Size = 255
    end
  end
  object qryReport_ReasonforReferral: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Count(tblPatients.patientID) AS CountOfpatientID, tblLook' +
        'upReasonForReferral.ReasonForReferalDesc'
      
        'FROM tblLookupReasonForReferral INNER JOIN (tblPatients INNER JO' +
        'IN tblPatientMedicalHistory ON tblPatients.patientID = tblPatien' +
        'tMedicalHistory.patientID) ON tblLookupReasonForReferral.ReasonF' +
        'orReferalID = tblPatientMedicalHistory.ReasonForReferalID'
      
        'GROUP BY tblLookupReasonForReferral.ReasonForReferalDesc, tblPat' +
        'ients.archived, tblPatientMedicalHistory.Archived, tblLookupReas' +
        'onForReferral.Archived'
      'ORDER BY tblLookupReasonForReferral.ReasonForReferalDesc;')
    Left = 455
    Top = 58
    object qryReport_ReasonforReferralCountOfpatientID: TIntegerField
      FieldName = 'CountOfpatientID'
    end
    object qryReport_ReasonforReferralReasonForReferalDesc: TWideStringField
      FieldName = 'ReasonForReferalDesc'
      Size = 100
    end
  end
  object qryReport_PrimaryAffectedEye: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT qrySub_AffectedBoth.CountOfpatientID AS [Both], qrySub_Af' +
        'fectedBoth.CountOfpatientID AS AffectedOD, qrySub_AffectedOS.Cou' +
        'ntOfpatientID AS AffectedOS'
      'FROM qrySub_AffectedBoth, qrySub_AffectedOD, qrySub_AffectedOS;')
    Left = 786
    Top = 58
    object qryReport_PrimaryAffectedEyeBoth: TIntegerField
      FieldName = 'Both'
    end
    object qryReport_PrimaryAffectedEyeAffectedOD: TIntegerField
      FieldName = 'AffectedOD'
    end
    object qryReport_PrimaryAffectedEyeAffectedOS: TIntegerField
      FieldName = 'AffectedOS'
    end
  end
  object qryReport_ComorbiditiesPerc: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT SUM(IIF(IIf(PrimaryAffectedEye_OD, VitreomacularAdhesion_' +
        'OD, VitreomacularAdhesion_OS), 1, 0)) / ('
      #9#9'SELECT COUNT(patientID)'
      #9#9'FROM tblPatients'
      #9#9'WHERE tblPatients.archived = False'
      
        #9#9') * 100 AS VitreomacularAdhesion, SUM(IIF(IIf(PrimaryAffectedE' +
        'ye_OD, VitreomacularTraction_OD, VitreomacularTraction_OS), 1, 0' +
        ')) / ('
      #9#9'SELECT COUNT(patientID)'
      #9#9'FROM tblPatients'
      #9#9'WHERE tblPatients.archived = False'
      
        #9#9') * 100 AS VitreomacularTraction, SUM(IIF(IIf(PrimaryAffectedE' +
        'ye_OD, MacularHoleWithVMT_OD, MacularHoleWithVMT_OS), 1, 0)) / ('
      #9#9'SELECT COUNT(patientID)'
      #9#9'FROM tblPatients'
      #9#9'WHERE tblPatients.archived = False'
      
        #9#9') * 100 AS MacularHoleWithVMT, SUM(IIF(IIf(PrimaryAffectedEye_' +
        'OD, MacularHoleWithoutVMT_OD, MacularHoleWithoutVMT_OS), 1, 0)) ' +
        '/ ('
      #9#9'SELECT COUNT(patientID)'
      #9#9'FROM tblPatients'
      #9#9'WHERE tblPatients.archived = False'
      
        #9#9') * 100 AS MacularHoleWithoutVMT, SUM(IIF(IIf(PrimaryAffectedE' +
        'ye_OD, WetAMD_OD, WetAMD_OS), 1, 0)) / ('
      #9#9'SELECT COUNT(patientID)'
      #9#9'FROM tblPatients'
      #9#9'WHERE tblPatients.archived = False'
      
        #9#9') * 100 AS WetAMD, SUM(IIF(IIf(PrimaryAffectedEye_OD, DryAMD_O' +
        'D, DryAMD_OS), 1, 0)) / ('
      #9#9'SELECT COUNT(patientID)'
      #9#9'FROM tblPatients'
      #9#9'WHERE tblPatients.archived = False'
      
        #9#9') * 100 AS DryAMD, SUM(IIF(IIf(PrimaryAffectedEye_OD, DME_OD, ' +
        'DME_OS), 1, 0)) / ('
      #9#9'SELECT COUNT(patientID)'
      #9#9'FROM tblPatients'
      #9#9'WHERE tblPatients.archived = False'
      
        #9#9') * 100 AS DME, SUM(IIF(IIf(PrimaryAffectedEye_OD, Proliferati' +
        'veDiabeticRetinopathy_OD, ProliferativeDiabeticRetinopathy_OS), ' +
        '1, 0)) / ('
      #9#9'SELECT COUNT(patientID)'
      #9#9'FROM tblPatients'
      #9#9'WHERE tblPatients.archived = False'
      
        #9#9') * 100 AS ProliferativeDiabeticRetinopathy, SUM(IIF(IIf(Prima' +
        'ryAffectedEye_OD, Cataract_OD, Cataract_OS), 1, 0)) / ('
      #9#9'SELECT COUNT(patientID)'
      #9#9'FROM tblPatients'
      #9#9'WHERE tblPatients.archived = False'
      
        #9#9') * 100 AS Cataract, SUM(IIF(IIf(PrimaryAffectedEye_OD, Retina' +
        'lVeinOcclusion_OD, RetinalVeinOcclusion_OS), 1, 0)) / ('
      #9#9'SELECT COUNT(patientID)'
      #9#9'FROM tblPatients'
      #9#9'WHERE tblPatients.archived = False'
      
        #9#9') * 100 AS RetinalVeinOcclusion, SUM(IIF(IIf(PrimaryAffectedEy' +
        'e_OD, RetinalDetachment_OD, RetinalDetachment_OS), 1, 0)) / ('
      #9#9'SELECT COUNT(patientID)'
      #9#9'FROM tblPatients'
      #9#9'WHERE tblPatients.archived = False'
      
        #9#9') * 100 AS RetinalDetachment, SUM(IIF(IIf(PrimaryAffectedEye_O' +
        'D, HighMyopia_OD, HighMyopia_OS), 1, 0)) / ('
      #9#9'SELECT COUNT(patientID)'
      #9#9'FROM tblPatients'
      #9#9'WHERE tblPatients.archived = False'
      
        #9#9') * 100 AS HighMyopia, SUM(IIF(IIf(PrimaryAffectedEye_OD, Othe' +
        'r_OS), 1, 0)) / ('
      #9#9'SELECT COUNT(patientID)'
      #9#9'FROM tblPatients'
      #9#9'WHERE tblPatients.archived = False'
      
        #9#9') * 100 AS Other, SUM(IIF(IIf(PrimaryAffectedEye_OD, NotReleva' +
        'nt_OD, NotRelevant_OS), 1, 0)) / ('
      #9#9'SELECT COUNT(patientID)'
      #9#9'FROM tblPatients'
      #9#9'WHERE tblPatients.archived = False'
      #9#9') * 100 AS NotRelevant'
      
        'FROM tblPatients INNER JOIN tblPatientMedicalHistory ON tblPatie' +
        'nts.patientID = tblPatientMedicalHistory.patientID'
      'GROUP BY tblPatients.archived, tblPatientMedicalHistory.Archived'
      
        'HAVING (((tblPatients.archived) = False) AND (tblPatientMedicalH' +
        'istory.Archived = False) );')
    Left = 146
    Top = 110
    object qryReport_ComorbiditiesPercVitreomacularAdhesion: TFloatField
      FieldName = 'VitreomacularAdhesion'
      ReadOnly = True
    end
    object qryReport_ComorbiditiesPercVitreomacularTraction: TFloatField
      FieldName = 'VitreomacularTraction'
      ReadOnly = True
    end
    object qryReport_ComorbiditiesPercMacularHoleWithVMT: TFloatField
      FieldName = 'MacularHoleWithVMT'
      ReadOnly = True
    end
    object qryReport_ComorbiditiesPercMacularHoleWithoutVMT: TFloatField
      FieldName = 'MacularHoleWithoutVMT'
      ReadOnly = True
    end
    object qryReport_ComorbiditiesPercWetAMD: TFloatField
      FieldName = 'WetAMD'
      ReadOnly = True
    end
    object qryReport_ComorbiditiesPercDryAMD: TFloatField
      FieldName = 'DryAMD'
      ReadOnly = True
    end
    object qryReport_ComorbiditiesPercDME: TFloatField
      FieldName = 'DME'
      ReadOnly = True
    end
    object qryReport_ComorbiditiesPercProliferativeDiabeticRetinopathy: TFloatField
      FieldName = 'ProliferativeDiabeticRetinopathy'
      ReadOnly = True
    end
    object qryReport_ComorbiditiesPercCataract: TFloatField
      FieldName = 'Cataract'
      ReadOnly = True
    end
    object qryReport_ComorbiditiesPercRetinalVeinOcclusion: TFloatField
      FieldName = 'RetinalVeinOcclusion'
      ReadOnly = True
    end
    object qryReport_ComorbiditiesPercRetinalDetachment: TFloatField
      FieldName = 'RetinalDetachment'
      ReadOnly = True
    end
    object qryReport_ComorbiditiesPercHighMyopia: TFloatField
      FieldName = 'HighMyopia'
      ReadOnly = True
    end
    object qryReport_ComorbiditiesPercOther: TFloatField
      FieldName = 'Other'
      ReadOnly = True
    end
    object qryReport_ComorbiditiesPercNotRelevant: TFloatField
      FieldName = 'NotRelevant'
      ReadOnly = True
    end
  end
  object qryReport_OcularSymptomsPerc: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Sum(IIf(IIf(PrimaryAffectedEye_OD,SymptomsFloaters_OD,Sym' +
        'ptomsFloaters_OS),1,0))/(SELECT COUNT(patientID) FROM tblPatient' +
        's WHERE tblPatients.Archived = False'
      
        #9')*100 AS SymptomsFloaters, Sum(IIf(IIf(PrimaryAffectedEye_OD,Sy' +
        'mptomsFlashesOfLight_OD,SymptomsFlashesOfLight_OS),1,0))/(SELECT' +
        ' COUNT(patientID) FROM tblPatients WHERE tblPatients.Archived = ' +
        'False'
      
        #9')*100 AS SymptomsFlashesOfLight, Sum(IIf(IIf(PrimaryAffectedEye' +
        '_OD,SymptomsDistortedVision_OD,SymptomsDistortedVision_OS),1,0))' +
        '/(SELECT COUNT(patientID) FROM tblPatients WHERE tblPatients.Arc' +
        'hived = False'
      
        #9')*100 AS SymptomsDistortedVision, Sum(IIf(IIf(PrimaryAffectedEy' +
        'e_OD,SymptomsObjectsAppearSmaller_OD,SymptomsObjectsAppearSmalle' +
        'r_OS),1,0))/(SELECT COUNT(patientID) FROM tblPatients WHERE tblP' +
        'atients.Archived = False'
      
        #9')*100 AS SymptomsObjectsAppearSmaller, Sum(IIf(IIf(PrimaryAffec' +
        'tedEye_OD,SymptomsCentralBlackImage_OD,SymptomsCentralBlackImage' +
        '_OS),1,0))/(SELECT COUNT(patientID) FROM tblPatients WHERE tblPa' +
        'tients.Archived = False'
      
        #9')*100 AS SymptomsCentralBlackImage, Sum(IIf(IIf(PrimaryAffected' +
        'Eye_OD,SymptomsDifficultyReadingAtNight_OD,SymptomsDifficultyRea' +
        'dingAtNight_OS),1,0))/(SELECT COUNT(patientID) FROM tblPatients ' +
        'WHERE tblPatients.Archived = False'
      
        #9')*100 AS SymptomsDifficultyReadingAtNight, Sum(IIf(IIf(PrimaryA' +
        'ffectedEye_OD,SymptomsBlurredVision_OD,SymptomsBlurredVision_OS)' +
        ',1,0))/(SELECT COUNT(patientID) FROM tblPatients WHERE tblPatien' +
        'ts.Archived = False'
      
        #9')*100 AS SymptomsBlurredVision, Sum(IIf(IIf(PrimaryAffectedEye_' +
        'OD,SymptomsVisualReduction_OD,SymptomsVisualReduction_OS),1,0))/' +
        '(SELECT COUNT(patientID) FROM tblPatients WHERE tblPatients.Arch' +
        'ived = False'
      
        #9')*100 AS SymptomsVisualReduction, Sum(IIf(IIf(PrimaryAffectedEy' +
        'e_OD,SymptomsOther_OD,SymptomsOther_OS),1,0))/(SELECT COUNT(pati' +
        'entID) FROM tblPatients WHERE tblPatients.Archived = False'
      
        #9')*100 AS SymptomsOther, Sum(IIf(IIf(PrimaryAffectedEye_OD,Sympt' +
        'omsNotRelevant_OD,SymptomsNotRelevant_OS),1,0))/(SELECT COUNT(pa' +
        'tientID) FROM tblPatients WHERE tblPatients.Archived = False'
      #9')*100 AS SymptomsNotRelevant'
      
        'FROM ((tblPatients INNER JOIN tblAnswersBase ON tblPatients.pati' +
        'entID = tblAnswersBase.patientID) INNER JOIN tblAnswersInitialVi' +
        'sit ON tblAnswersBase.AnswerBaseID = tblAnswersInitialVisit.Answ' +
        'erBaseID) INNER JOIN tblPatientMedicalHistory ON tblPatients.pat' +
        'ientID = tblPatientMedicalHistory.patientID'
      
        'WHERE (((tblPatients.archived)=False) AND ((tblAnswersBase.archi' +
        'ved)=False) AND ((tblAnswersBase.[EpisodeNumber])=1) AND ((tblAn' +
        'swersInitialVisit.Archived)=False));')
    Left = 458
    Top = 102
    object qryReport_OcularSymptomsPercSymptomsFloaters: TFloatField
      FieldName = 'SymptomsFloaters'
      ReadOnly = True
    end
    object qryReport_OcularSymptomsPercSymptomsFlashesOfLight: TFloatField
      FieldName = 'SymptomsFlashesOfLight'
      ReadOnly = True
    end
    object qryReport_OcularSymptomsPercSymptomsDistortedVision: TFloatField
      FieldName = 'SymptomsDistortedVision'
      ReadOnly = True
    end
    object qryReport_OcularSymptomsPercSymptomsObjectsAppearSmaller: TFloatField
      FieldName = 'SymptomsObjectsAppearSmaller'
      ReadOnly = True
    end
    object qryReport_OcularSymptomsPercSymptomsCentralBlackImage: TFloatField
      FieldName = 'SymptomsCentralBlackImage'
      ReadOnly = True
    end
    object qryReport_OcularSymptomsPercSymptomsDifficultyReadingAtNight: TFloatField
      FieldName = 'SymptomsDifficultyReadingAtNight'
      ReadOnly = True
    end
    object qryReport_OcularSymptomsPercSymptomsBlurredVision: TFloatField
      FieldName = 'SymptomsBlurredVision'
      ReadOnly = True
    end
    object qryReport_OcularSymptomsPercSymptomsVisualReduction: TFloatField
      FieldName = 'SymptomsVisualReduction'
      ReadOnly = True
    end
    object qryReport_OcularSymptomsPercSymptomsOther: TFloatField
      FieldName = 'SymptomsOther'
      ReadOnly = True
    end
    object qryReport_OcularSymptomsPercSymptomsNotRelevant: TFloatField
      FieldName = 'SymptomsNotRelevant'
      ReadOnly = True
    end
  end
  object qryReport_PreviousInterventionPerc: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Sum(IIf(IIf(PrimaryAffectedEye_OD,PrevTreatCataractSurger' +
        'y_OD,PrevTreatCataractSurgery_OS),1,0))/(SELECT COUNT(patientID)' +
        ' FROM tblPatients WHERE tblPatients.Archived = False '#9')*100 AS P' +
        'revTreatCataractSurgery, Sum(IIf(IIf(PrimaryAffectedEye_OD,PrevT' +
        'reatGlaucomaFiltrationSurgery_OD,PrevTreatGlaucomaFiltrationSurg' +
        'ery_OS),1,0))/(SELECT COUNT(patientID) FROM tblPatients WHERE tb' +
        'lPatients.Archived = False '#9')*100 AS PrevTreatGlaucomaFiltration' +
        'Surgery, Sum(IIf(IIf(PrimaryAffectedEye_OD,PrevTreatVitrectomy_O' +
        'D,PrevTreatVitrectomy_OS),1,0))/(SELECT COUNT(patientID) FROM tb' +
        'lPatients WHERE tblPatients.Archived = False '#9')*100 AS PrevTreat' +
        'Vitrectomy, Sum(IIf(IIf(PrimaryAffectedEye_OD,PrevTreatMacularLa' +
        'serPhotocoagulation_OD,PrevTreatMacularLaserPhotocoagulation_OS)' +
        ',1,0))/(SELECT COUNT(patientID) FROM tblPatients WHERE tblPatien' +
        'ts.Archived = False '#9')*100 AS PrevTreatMacularLaserPhotocoagulat' +
        'ion, Sum(IIf(IIf(PrimaryAffectedEye_OD,PrevTreatPeripheralLaserP' +
        'hotocoagulation_OD,PrevTreatPeripheralLaserPhotocoagulation_OS),' +
        '1,0))/(SELECT COUNT(patientID) FROM tblPatients WHERE tblPatient' +
        's.Archived = False '#9')*100 AS PrevTreatPeripheralLaserPhotocoagul' +
        'ation, Sum(IIf(IIf(PrimaryAffectedEye_OD,PrevTreatOtherSurgery_O' +
        'D,PrevTreatOtherSurgery_OS),1,0))/(SELECT COUNT(patientID) FROM ' +
        'tblPatients WHERE tblPatients.Archived = False '#9')*100 AS PrevTre' +
        'atOtherSurgery, Sum(IIf(IIf(PrimaryAffectedEye_OD,PrevTreatIntra' +
        'vitrealAntiVEGF_OD,PrevTreatIntravitrealAntiVEGF_OS),1,0))/(SELE' +
        'CT COUNT(patientID) FROM tblPatients WHERE tblPatients.Archived ' +
        '= False '#9')*100 AS PrevTreatIntravitrealAntiVEGF, Sum(IIf(IIf(Pri' +
        'maryAffectedEye_OD,PrevTreatIntravitrealSteroidLiquid_OD,PrevTre' +
        'atIntravitrealSteroidLiquid_OS),1,0))/(SELECT COUNT(patientID) F' +
        'ROM tblPatients WHERE tblPatients.Archived = False '#9')*100 AS Pre' +
        'vTreatIntravitrealSteroidLiquid, Sum(IIf(IIf(PrimaryAffectedEye_' +
        'OD,PrevTreatIntravitrealSteroidImplant_OD,PrevTreatIntravitrealS' +
        'teroidImplant_OS),1,0))/(SELECT COUNT(patientID) FROM tblPatient' +
        's WHERE tblPatients.Archived = False '#9')*100 AS PrevTreatIntravit' +
        'realSteroidImplant, Sum(IIf(IIf(PrimaryAffectedEye_OD,PrevTreatO' +
        'therIntravitrealInjection_OD,PrevTreatOtherIntravitrealInjection' +
        '_OS),1,0))/(SELECT COUNT(patientID) FROM tblPatients WHERE tblPa' +
        'tients.Archived = False '#9')*100 AS PrevTreatOtherIntravitrealInje' +
        'ction, Sum(IIf(IIf(PrimaryAffectedEye_OD,PrevTreatNotRelevant_OD' +
        ',PrevTreatNotRelevant_OS),1,0))/(SELECT COUNT(patientID) FROM tb' +
        'lPatients WHERE tblPatients.Archived = False '#9')*100 AS PrevTreat' +
        'NotRelevant'
      
        'FROM ((tblPatients INNER JOIN tblPatientMedicalHistory ON tblPat' +
        'ients.patientID = tblPatientMedicalHistory.patientID) INNER JOIN' +
        ' tblAnswersBase ON tblPatients.patientID = tblAnswersBase.patien' +
        'tID) INNER JOIN tblAnswersInitialVisit ON tblAnswersBase.AnswerB' +
        'aseID = tblAnswersInitialVisit.AnswerBaseID'
      
        'WHERE (((tblPatients.archived)=False) AND ((tblPatientMedicalHis' +
        'tory.Archived)=False) AND ((tblAnswersBase.archived)=False) AND ' +
        '((tblAnswersInitialVisit.Archived)=False) AND ((tblAnswersBase.E' +
        'pisodeNumber)=1));')
    Left = 786
    Top = 94
    object qryReport_PreviousInterventionPercPrevTreatCataractSurgery: TFloatField
      FieldName = 'PrevTreatCataractSurgery'
      ReadOnly = True
    end
    object qryReport_PreviousInterventionPercPrevTreatGlaucomaFiltrationSurgery: TFloatField
      FieldName = 'PrevTreatGlaucomaFiltrationSurgery'
      ReadOnly = True
    end
    object qryReport_PreviousInterventionPercPrevTreatVitrectomy: TFloatField
      FieldName = 'PrevTreatVitrectomy'
      ReadOnly = True
    end
    object qryReport_PreviousInterventionPercPrevTreatMacularLaserPhotocoagulation: TFloatField
      FieldName = 'PrevTreatMacularLaserPhotocoagulation'
      ReadOnly = True
    end
    object qryReport_PreviousInterventionPercPrevTreatPeripheralLaserPhotocoagulation: TFloatField
      FieldName = 'PrevTreatPeripheralLaserPhotocoagulation'
      ReadOnly = True
    end
    object qryReport_PreviousInterventionPercPrevTreatOtherSurgery: TFloatField
      FieldName = 'PrevTreatOtherSurgery'
      ReadOnly = True
    end
    object qryReport_PreviousInterventionPercPrevTreatIntravitrealAntiVEGF: TFloatField
      FieldName = 'PrevTreatIntravitrealAntiVEGF'
      ReadOnly = True
    end
    object qryReport_PreviousInterventionPercPrevTreatIntravitrealSteroidLiquid: TFloatField
      FieldName = 'PrevTreatIntravitrealSteroidLiquid'
      ReadOnly = True
    end
    object qryReport_PreviousInterventionPercPrevTreatIntravitrealSteroidImplant: TFloatField
      FieldName = 'PrevTreatIntravitrealSteroidImplant'
      ReadOnly = True
    end
    object qryReport_PreviousInterventionPercPrevTreatOtherIntravitrealInjection: TFloatField
      FieldName = 'PrevTreatOtherIntravitrealInjection'
      ReadOnly = True
    end
    object qryReport_PreviousInterventionPercPrevTreatNotRelevant: TFloatField
      FieldName = 'PrevTreatNotRelevant'
      ReadOnly = True
    end
  end
  object qryReport_AverageDurationBetweenVisits: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'qrySub_DurationBetweenVisits.TimeInterval'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      
        #9'Count(qrySub_DurationBetweenVisits.AnswerBaseID) AS ItemsCount,' +
        ' qrySub_EpisodeSetsByProposedGroupDescOfFirstVisit.ProposedTreat' +
        'mentGroupDesc, Avg(qrySub_DurationBetweenVisits.TimeInterval) AS' +
        ' AverageDurationBetweenVisits'
      'FROM '
      
        #9'qrySub_DurationBetweenVisits INNER JOIN qrySub_EpisodeSetsByPro' +
        'posedGroupDescOfFirstVisit ON qrySub_DurationBetweenVisits.episo' +
        'deSetID = qrySub_EpisodeSetsByProposedGroupDescOfFirstVisit.epis' +
        'odeSetID'
      
        'GROUP BY qrySub_EpisodeSetsByProposedGroupDescOfFirstVisit.Propo' +
        'sedTreatmentGroupDesc;')
    Left = 144
    Top = 198
    object qryReport_AverageDurationBetweenVisitsItemsCount: TIntegerField
      FieldName = 'ItemsCount'
    end
    object qryReport_AverageDurationBetweenVisitsProposedTreatmentGroupDesc: TWideStringField
      FieldName = 'ProposedTreatmentGroupDesc'
      Size = 255
    end
    object qryReport_AverageDurationBetweenVisitsAverageDurationBetweenVisits: TFloatField
      FieldName = 'AverageDurationBetweenVisits'
      ReadOnly = True
    end
  end
  object qrySub_DurationBetweenFirstVisitsAndTreatment: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT tblAnswersBase.AnswerBaseID, tblAnswersBase.episodeSetID,' +
        ' tblAnswersBase.episodeDate, (SELECT '
      #9#9#9'TOP 1 episodeDate '
      #9#9'FROM '
      #9#9#9'tblAnswersBase AS P '
      #9#9'WHERE '
      
        #9#9#9'P.AnswerBaseID = tblAnswersBase.AnswerBaseID - 1 AND P.episod' +
        'eDate <= tblAnswersBase.episodeDate '
      #9#9'ORDER BY '
      #9#9#9'AnswerBaseID ASC'
      
        #9') AS PrevDate, IIf(IsNull([PrevDate]),0,[episodeDate]-[PrevDate' +
        ']) AS [Interval]'
      'FROM tblAnswersBase'
      
        'WHERE (((tblAnswersBase.[EpisodeNumber])<>1 And (tblAnswersBase.' +
        '[EpisodeNumber])=2))'
      
        'ORDER BY tblAnswersBase.AnswerBaseID, tblAnswersBase.episodeSetI' +
        'D, tblAnswersBase.episodeDate;')
    Left = 127
    Top = 613
    object qrySub_DurationBetweenFirstVisitsAndTreatmentAnswerBaseID: TAutoIncField
      FieldName = 'AnswerBaseID'
      ReadOnly = True
    end
    object qrySub_DurationBetweenFirstVisitsAndTreatmentepisodeSetID: TIntegerField
      FieldName = 'episodeSetID'
    end
    object qrySub_DurationBetweenFirstVisitsAndTreatmentepisodeDate: TDateTimeField
      FieldName = 'episodeDate'
    end
    object qrySub_DurationBetweenFirstVisitsAndTreatmentPrevDate: TDateTimeField
      FieldName = 'PrevDate'
    end
    object qrySub_DurationBetweenFirstVisitsAndTreatmentInterval: TFloatField
      FieldName = 'Interval'
      ReadOnly = True
    end
  end
  object qrySub_EpisodeSetsByProposedGroupDescOfFirstVisit: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT qrySub_EpisodeSetIDsAndAnswerBaseIDsOfFirstVisits.episode' +
        'SetID, qrySub_ProposedTreatmentGroupDescForODAndOSByAnswerID.Pro' +
        'posedTreatmentGroupDesc'
      
        'FROM qrySub_ProposedTreatmentGroupDescForODAndOSByAnswerID INNER' +
        ' JOIN qrySub_EpisodeSetIDsAndAnswerBaseIDsOfFirstVisits ON qrySu' +
        'b_ProposedTreatmentGroupDescForODAndOSByAnswerID.AnswerBaseID = ' +
        'qrySub_EpisodeSetIDsAndAnswerBaseIDsOfFirstVisits.AnswerBaseID'
      
        'GROUP BY qrySub_EpisodeSetIDsAndAnswerBaseIDsOfFirstVisits.episo' +
        'deSetID, qrySub_ProposedTreatmentGroupDescForODAndOSByAnswerID.P' +
        'roposedTreatmentGroupDesc;')
    Left = 407
    Top = 613
    object qrySub_EpisodeSetsByProposedGroupDescOfFirstVisitepisodeSetID: TIntegerField
      FieldName = 'episodeSetID'
    end
    object qrySub_EpisodeSetsByProposedGroupDescOfFirstVisitProposedTreatmentGroupDesc: TWideStringField
      FieldName = 'ProposedTreatmentGroupDesc'
      Size = 255
    end
  end
  object qrySub_DurationBetweenVisits: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT tblAnswersBase.AnswerBaseID, tblAnswersBase.episodeSetID,' +
        ' tblAnswersBase.episodeDate, ( '
      #9#9'SELECT '
      #9#9#9'TOP 1 episodeDate '
      #9#9'FROM '
      #9#9#9'tblAnswersBase AS P '
      #9#9'WHERE '
      
        #9#9#9'P.AnswerBaseID = tblAnswersBase.AnswerBaseID - 1 AND P.episod' +
        'eDate <= tblAnswersBase.episodeDate '
      #9#9'ORDER BY '
      #9#9#9'AnswerBaseID ASC'
      
        #9') AS PrevDate, IIf(IsNull([PrevDate]),0,[episodeDate]-[PrevDate' +
        ']) AS [Interval]'
      'FROM tblAnswersBase'
      'WHERE EpisodeNumber <> 1'
      
        'ORDER BY tblAnswersBase.AnswerBaseID, tblAnswersBase.episodeSetI' +
        'D, tblAnswersBase.episodeDate;')
    Left = 671
    Top = 613
    object qrySub_DurationBetweenVisitsAnswerBaseID: TAutoIncField
      FieldName = 'AnswerBaseID'
      ReadOnly = True
    end
    object qrySub_DurationBetweenVisitsepisodeSetID: TIntegerField
      FieldName = 'episodeSetID'
    end
    object qrySub_DurationBetweenVisitsepisodeDate: TDateTimeField
      FieldName = 'episodeDate'
    end
    object qrySub_DurationBetweenVisitsPrevDate: TDateTimeField
      FieldName = 'PrevDate'
    end
    object qrySub_DurationBetweenVisitsInterval: TFloatField
      FieldName = 'Interval'
      ReadOnly = True
    end
  end
  object qryReport_ClinicalMeasures_MeanIntraocularPressure: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT qrySub_IOPOverTime.ProposedTreatmentGroupDesc, qrySub_IOP' +
        'OverTime.IntervalFromFirstVisitInMonths, AVG(qrySub_IOPOverTime.' +
        'IOP) AS meanIOPOverTime'
      'FROM qrySub_IOPOverTime'
      
        'GROUP BY qrySub_IOPOverTime.ProposedTreatmentGroupDesc, qrySub_I' +
        'OPOverTime.IntervalFromFirstVisitInMonths;')
    Left = 784
    Top = 198
    object qryReport_ClinicalMeasures_MeanIntraocularPressureProposedTreatmentGroupDesc: TWideStringField
      FieldName = 'ProposedTreatmentGroupDesc'
      Size = 255
    end
    object qryReport_ClinicalMeasures_MeanIntraocularPressureIntervalFromFirstVisitInMonths: TIntegerField
      FieldName = 'IntervalFromFirstVisitInMonths'
    end
    object qryReport_ClinicalMeasures_MeanIntraocularPressuremeanIOPOverTime: TFloatField
      FieldName = 'meanIOPOverTime'
      ReadOnly = True
    end
  end
  object qryDelphi_MaxTimeIntervalForMeanIOP: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT MAX(qryReport_ClinicalMeasures_MeanIntraocularPressure.In' +
        'tervalFromFirstVisitInMonths) AS MaxTimeIntervalForMeanIOP'
      'FROM qryReport_ClinicalMeasures_MeanIntraocularPressure;')
    Left = 903
    Top = 567
    object qryDelphi_MaxTimeIntervalForMeanIOPMaxTimeIntervalForMeanIOP: TIntegerField
      FieldName = 'MaxTimeIntervalForMeanIOP'
    end
  end
  object qryReport_ClinicalMeasures_MeanChangeInIntraocularPressure: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT AVG(qrySub_IOPDifferenceBetweenFinalAndFisrtVisitByEpisod' +
        'eSetIDs.IOPDifference) AS MeanChangeInIOP, qrySub_IOPDifferenceB' +
        'etweenFinalAndFisrtVisitByEpisodeSetIDs.ProposedTreatmentGroupDe' +
        'sc'
      
        'FROM qrySub_IOPDifferenceBetweenFinalAndFisrtVisitByEpisodeSetID' +
        's'
      
        'GROUP BY qrySub_IOPDifferenceBetweenFinalAndFisrtVisitByEpisodeS' +
        'etIDs.ProposedTreatmentGroupDesc;')
    Left = 144
    Top = 246
    object qryReport_ClinicalMeasures_MeanChangeInIntraocularPressureMeanChangeInIOP: TFloatField
      FieldName = 'MeanChangeInIOP'
      ReadOnly = True
    end
    object qryReport_ClinicalMeasures_MeanChangeInIntraocularPressureProposedTreatmentGroupDesc: TWideStringField
      FieldName = 'ProposedTreatmentGroupDesc'
      Size = 255
    end
  end
  object qryReport_ClinicalMeasures_MeanVisualAcuityDistance: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT qrySub_VisualAcuityOverTime.ProposedTreatmentGroupDesc, q' +
        'rySub_VisualAcuityOverTime.IntervalFromFirstVisitInMonths, AVG(q' +
        'rySub_VisualAcuityOverTime.VisualAcuityDistance) AS meanVisuaAcu' +
        'ityOverTime'
      'FROM qrySub_VisualAcuityOverTime'
      
        'GROUP BY qrySub_VisualAcuityOverTime.ProposedTreatmentGroupDesc,' +
        ' qrySub_VisualAcuityOverTime.IntervalFromFirstVisitInMonths;')
    Left = 456
    Top = 246
    object qryReport_ClinicalMeasures_MeanVisualAcuityDistanceProposedTreatmentGroupDesc: TWideStringField
      FieldName = 'ProposedTreatmentGroupDesc'
      Size = 255
    end
    object qryReport_ClinicalMeasures_MeanVisualAcuityDistanceIntervalFromFirstVisitInMonths: TIntegerField
      FieldName = 'IntervalFromFirstVisitInMonths'
    end
    object qryReport_ClinicalMeasures_MeanVisualAcuityDistancemeanVisuaAcuityOverTime: TFloatField
      FieldName = 'meanVisuaAcuityOverTime'
      ReadOnly = True
    end
  end
  object qryDelphi_MaxTimeIntervalForMeanVisualAcuityDistance: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT MAX(qryReport_ClinicalMeasures_MeanVisualAcuityDistance.I' +
        'ntervalFromFirstVisitInMonths) AS MaxTimeIntervalForMeanVisualAc' +
        'uityDistance'
      'FROM qryReport_ClinicalMeasures_MeanVisualAcuityDistance;')
    Left = 911
    Top = 613
    object qryDelphi_MaxTimeIntervalForMeanVisualAcuityDistanceMaxTimeIntervalForMeanVisualAcuityDistance: TIntegerField
      FieldName = 'MaxTimeIntervalForMeanVisualAcuityDistance'
    end
  end
  object qryReport_ClinicalMeasures_MeanChangeInVisualAcuityDistance: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT AVG(qrySub_VisualAcuityDifferenceFinalAndFisrtVisitByEpis' +
        'odeSetIDs.VisualAcuityDistanceDifference) AS MeanChangeInVisualA' +
        'cuityDistance, qrySub_VisualAcuityDifferenceFinalAndFisrtVisitBy' +
        'EpisodeSetIDs.ProposedTreatmentGroupDesc'
      
        'FROM qrySub_VisualAcuityDifferenceFinalAndFisrtVisitByEpisodeSet' +
        'IDs'
      
        'GROUP BY qrySub_VisualAcuityDifferenceFinalAndFisrtVisitByEpisod' +
        'eSetIDs.ProposedTreatmentGroupDesc;')
    Left = 784
    Top = 246
    object qryReport_ClinicalMeasures_MeanChangeInVisualAcuityDistanceMeanChangeInVisualAcuityDistance: TFloatField
      FieldName = 'MeanChangeInVisualAcuityDistance'
      ReadOnly = True
    end
    object qryReport_ClinicalMeasures_MeanChangeInVisualAcuityDistanceProposedTreatmentGroupDesc: TWideStringField
      FieldName = 'ProposedTreatmentGroupDesc'
      Size = 255
    end
  end
  object qryReport_ClinicalMeasures_MeanVisualAcuityNear: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT qrySub_VisualAcuityNearOverTime.ProposedTreatmentGroupDes' +
        'c, qrySub_VisualAcuityNearOverTime.IntervalFromFirstVisitInMonth' +
        's, AVG(qrySub_VisualAcuityNearOverTime.VisualAcuityNear) AS mean' +
        'VisuaAcuityNearOverTime'
      'FROM qrySub_VisualAcuityNearOverTime'
      
        'GROUP BY qrySub_VisualAcuityNearOverTime.ProposedTreatmentGroupD' +
        'esc, qrySub_VisualAcuityNearOverTime.IntervalFromFirstVisitInMon' +
        'ths;')
    Left = 144
    Top = 302
    object qryReport_ClinicalMeasures_MeanVisualAcuityNearProposedTreatmentGroupDesc: TWideStringField
      FieldName = 'ProposedTreatmentGroupDesc'
      Size = 255
    end
    object qryReport_ClinicalMeasures_MeanVisualAcuityNearIntervalFromFirstVisitInMonths: TIntegerField
      FieldName = 'IntervalFromFirstVisitInMonths'
    end
    object qryReport_ClinicalMeasures_MeanVisualAcuityNearmeanVisuaAcuityNearOverTime: TFloatField
      FieldName = 'meanVisuaAcuityNearOverTime'
      ReadOnly = True
    end
  end
  object qryDelphi_MaxTimeIntervalForMeanVisualAcuityNear: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT MAX(qryReport_ClinicalMeasures_MeanVisualAcuityNear.Inter' +
        'valFromFirstVisitInMonths) AS MaxTimeIntervalForMeanVisualAcuity' +
        'Near'
      'FROM qryReport_ClinicalMeasures_MeanVisualAcuityNear')
    Left = 407
    Top = 522
    object qryDelphi_MaxTimeIntervalForMeanVisualAcuityNearMaxTimeIntervalForMeanVisualAcuityNear: TIntegerField
      FieldName = 'MaxTimeIntervalForMeanVisualAcuityNear'
    end
  end
  object qryReport_ClinicalMeasures_MeanChangeInVisualAcuityNear: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT AVG(qrySub_VisualAcuityNearDiffFinalAndFisrtVisitByEpisod' +
        'eSetIDs.VisualAcuityNearDifference) AS MeanChangeInVisualAcuityN' +
        'ear, qrySub_VisualAcuityNearDiffFinalAndFisrtVisitByEpisodeSetID' +
        's.ProposedTreatmentGroupDesc'
      
        'FROM qrySub_VisualAcuityNearDiffFinalAndFisrtVisitByEpisodeSetID' +
        's'
      
        'GROUP BY qrySub_VisualAcuityNearDiffFinalAndFisrtVisitByEpisodeS' +
        'etIDs.ProposedTreatmentGroupDesc;')
    Left = 456
    Top = 302
    object qryReport_ClinicalMeasures_MeanChangeInVisualAcuityNearMeanChangeInVisualAcuityNear: TFloatField
      FieldName = 'MeanChangeInVisualAcuityNear'
      ReadOnly = True
    end
    object qryReport_ClinicalMeasures_MeanChangeInVisualAcuityNearProposedTreatmentGroupDesc: TWideStringField
      FieldName = 'ProposedTreatmentGroupDesc'
      Size = 255
    end
  end
  object qryDelphi_MaxTimeIntervalForDistortionAndScotoma: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT MAX(qryReport_ClinicalMeasures_DistortionAndScotomaPresen' +
        'ceOverTime.IntervalFromFirstVisitInMonths) AS MaxTimeIntervalFor' +
        'DistortionAndScotoma'
      
        'FROM qryReport_ClinicalMeasures_DistortionAndScotomaPresenceOver' +
        'Time;')
    Left = 143
    Top = 522
    object qryDelphi_MaxTimeIntervalForDistortionAndScotomaMaxTimeIntervalForDistortionAndScotoma: TIntegerField
      FieldName = 'MaxTimeIntervalForDistortionAndScotoma'
    end
  end
  object qryReport_ClinicalMeasures_DistortionAndScotomaPresenceOverTime: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT qrySub_PatientsWithDistorsionAndScotomaODAndOSByPropTreat' +
        'ID.IntervalFromFirstVisitInMonths, Count(qrySub_PatientsWithDist' +
        'orsionAndScotomaODAndOSByPropTreatID.ProposedTreatmentGroupDesc)' +
        ' AS CountProposedTreatByTimeInterval, qrySub_PatientsWithDistors' +
        'ionAndScotomaODAndOSByPropTreatID.ProposedTreatmentGroupDesc, Ro' +
        'und([CountProposedTreatByTimeInterval]/[TotalNoOfVisits]*100,1) ' +
        'AS ProportionOfPatientsByTimeInterval'
      
        'FROM qrySub_PatientsWithDistorsionAndScotomaODAndOSByPropTreatID' +
        ' INNER JOIN qrySub_NoOfVisitsByTimeInterval ON qrySub_PatientsWi' +
        'thDistorsionAndScotomaODAndOSByPropTreatID.IntervalFromFirstVisi' +
        'tInMonths = qrySub_NoOfVisitsByTimeInterval.IntervalFromFirstVis' +
        'itInMonths'
      
        'GROUP BY qrySub_PatientsWithDistorsionAndScotomaODAndOSByPropTre' +
        'atID.IntervalFromFirstVisitInMonths, qrySub_PatientsWithDistorsi' +
        'onAndScotomaODAndOSByPropTreatID.ProposedTreatmentGroupDesc, qry' +
        'Sub_NoOfVisitsByTimeInterval.TotalNoOfVisits, qrySub_PatientsWit' +
        'hDistorsionAndScotomaODAndOSByPropTreatID.ProposedTreatmentGroup' +
        'Desc'
      
        'ORDER BY qrySub_PatientsWithDistorsionAndScotomaODAndOSByPropTre' +
        'atID.ProposedTreatmentGroupDesc, qrySub_PatientsWithDistorsionAn' +
        'dScotomaODAndOSByPropTreatID.IntervalFromFirstVisitInMonths;')
    Left = 784
    Top = 302
    object qryReport_ClinicalMeasures_DistortionAndScotomaPresenceOverTimeIntervalFromFirstVisitInMonths: TIntegerField
      FieldName = 'IntervalFromFirstVisitInMonths'
    end
    object qryReport_ClinicalMeasures_DistortionAndScotomaPresenceOverTimeCountProposedTreatByTimeInterval: TIntegerField
      FieldName = 'CountProposedTreatByTimeInterval'
    end
    object qryReport_ClinicalMeasures_DistortionAndScotomaPresenceOverTimeProposedTreatmentGroupDesc: TWideStringField
      FieldName = 'ProposedTreatmentGroupDesc'
      Size = 255
    end
    object qryReport_ClinicalMeasures_DistortionAndScotomaPresenceOverTimeProportionOfPatientsByTimeInterval: TFloatField
      FieldName = 'ProportionOfPatientsByTimeInterval'
      ReadOnly = True
    end
  end
  object qryDelphi_MaxTimeIntervalForOCTPresence: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT MAX(qryReport_ClinicalMeasures_OCTPresenceOverTime.Interv' +
        'alFromFirstVisitInMonths) AS MaxTimeIntervalFoOCTPresence'
      'FROM qryReport_ClinicalMeasures_OCTPresenceOverTime;')
    Left = 127
    Top = 666
    object qryDelphi_MaxTimeIntervalForOCTPresenceMaxTimeIntervalFoOCTPresence: TIntegerField
      FieldName = 'MaxTimeIntervalFoOCTPresence'
    end
  end
  object qryReport_ClinicalMeasures_OCTPresenceOverTime: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT qrySub_PatientsWithOCTODAndOSByPropTreatID.IntervalFromFi' +
        'rstVisitInMonths, Count(qrySub_PatientsWithOCTODAndOSByPropTreat' +
        'ID.ProposedTreatmentGroupDesc) AS CountProposedTreatByTimeInterv' +
        'al, qrySub_PatientsWithOCTODAndOSByPropTreatID.ProposedTreatment' +
        'GroupDesc, Round([CountProposedTreatByTimeInterval]/[TotalNoOfVi' +
        'sits]*100,1) AS ProportionOfPatientsByTimeInterval'
      
        'FROM qrySub_PatientsWithOCTODAndOSByPropTreatID INNER JOIN qrySu' +
        'b_NoOfVisitsByTimeInterval ON qrySub_PatientsWithOCTODAndOSByPro' +
        'pTreatID.IntervalFromFirstVisitInMonths = qrySub_NoOfVisitsByTim' +
        'eInterval.IntervalFromFirstVisitInMonths'
      
        'GROUP BY qrySub_PatientsWithOCTODAndOSByPropTreatID.IntervalFrom' +
        'FirstVisitInMonths, qrySub_PatientsWithOCTODAndOSByPropTreatID.P' +
        'roposedTreatmentGroupDesc, qrySub_NoOfVisitsByTimeInterval.Total' +
        'NoOfVisits, qrySub_PatientsWithOCTODAndOSByPropTreatID.ProposedT' +
        'reatmentGroupDesc'
      
        'ORDER BY qrySub_PatientsWithOCTODAndOSByPropTreatID.ProposedTrea' +
        'tmentGroupDesc, qrySub_PatientsWithOCTODAndOSByPropTreatID.Inter' +
        'valFromFirstVisitInMonths;')
    Left = 456
    Top = 350
    object qryReport_ClinicalMeasures_OCTPresenceOverTimeIntervalFromFirstVisitInMonths: TIntegerField
      FieldName = 'IntervalFromFirstVisitInMonths'
    end
    object qryReport_ClinicalMeasures_OCTPresenceOverTimeCountProposedTreatByTimeInterval: TIntegerField
      FieldName = 'CountProposedTreatByTimeInterval'
    end
    object qryReport_ClinicalMeasures_OCTPresenceOverTimeProposedTreatmentGroupDesc: TWideStringField
      FieldName = 'ProposedTreatmentGroupDesc'
      Size = 255
    end
    object qryReport_ClinicalMeasures_OCTPresenceOverTimeProportionOfPatientsByTimeInterval: TFloatField
      FieldName = 'ProportionOfPatientsByTimeInterval'
      ReadOnly = True
    end
  end
  object qryDelphi_MaxTimeIntervalForVitreomacularAdhesion: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT MAX(qryReport_ClinicalMeasures_MeanVitreomacularAdhesion.' +
        'IntervalFromFirstVisitInMonths) AS MaxTimeIntervalForVitreomacul' +
        'arAdhesion'
      'FROM qryReport_ClinicalMeasures_MeanVitreomacularAdhesion')
    Left = 407
    Top = 666
    object qryDelphi_MaxTimeIntervalForVitreomacularAdhesionMaxTimeIntervalForVitreomacularAdhesion: TIntegerField
      FieldName = 'MaxTimeIntervalForVitreomacularAdhesion'
    end
  end
  object qryReport_ClinicalMeasures_MeanVitreomacularAdhesion: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT qrySub_VMAOverTime.ProposedTreatmentGroupDesc, qrySub_VMA' +
        'OverTime.IntervalFromFirstVisitInMonths, AVG(qrySub_VMAOverTime.' +
        'VMASize) AS meanVMAOverTime'
      'FROM qrySub_VMAOverTime'
      
        'GROUP BY qrySub_VMAOverTime.ProposedTreatmentGroupDesc, qrySub_V' +
        'MAOverTime.IntervalFromFirstVisitInMonths;')
    Left = 784
    Top = 350
    object qryReport_ClinicalMeasures_MeanVitreomacularAdhesionProposedTreatmentGroupDesc: TWideStringField
      FieldName = 'ProposedTreatmentGroupDesc'
      Size = 255
    end
    object qryReport_ClinicalMeasures_MeanVitreomacularAdhesionIntervalFromFirstVisitInMonths: TIntegerField
      FieldName = 'IntervalFromFirstVisitInMonths'
    end
    object qryReport_ClinicalMeasures_MeanVitreomacularAdhesionmeanVMAOverTime: TFloatField
      FieldName = 'meanVMAOverTime'
      ReadOnly = True
    end
  end
  object qryDelphi_MaxTimeIntervalForMacularHoleSize: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT MAX(qryReport_ClinicalMeasures_MacularHoleSize.IntervalFr' +
        'omFirstVisitInMonths) AS MaxTimeIntervalForMacularHoleSize'
      'FROM qryReport_ClinicalMeasures_MacularHoleSize;')
    Left = 671
    Top = 666
    object qryDelphi_MaxTimeIntervalForMacularHoleSizeMaxTimeIntervalForMacularHoleSize: TIntegerField
      FieldName = 'MaxTimeIntervalForMacularHoleSize'
    end
  end
  object qryReport_ClinicalMeasures_MacularHoleSize: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT qrySub_OCTMHSOverTime.ProposedTreatmentGroupDesc, qrySub_' +
        'OCTMHSOverTime.IntervalFromFirstVisitInMonths, AVG(qrySub_OCTMHS' +
        'OverTime.OCTMacularHoleSize) AS meanMacularHoleSizeOverTime'
      'FROM qrySub_OCTMHSOverTime'
      
        'GROUP BY qrySub_OCTMHSOverTime.ProposedTreatmentGroupDesc, qrySu' +
        'b_OCTMHSOverTime.IntervalFromFirstVisitInMonths;')
    Left = 456
    Top = 398
    object qryReport_ClinicalMeasures_MacularHoleSizeProposedTreatmentGroupDesc: TWideStringField
      FieldName = 'ProposedTreatmentGroupDesc'
      Size = 255
    end
    object qryReport_ClinicalMeasures_MacularHoleSizeIntervalFromFirstVisitInMonths: TIntegerField
      FieldName = 'IntervalFromFirstVisitInMonths'
    end
    object qryReport_ClinicalMeasures_MacularHoleSizemeanMacularHoleSizeOverTime: TFloatField
      FieldName = 'meanMacularHoleSizeOverTime'
      ReadOnly = True
    end
  end
  object qryReport_ClinicalMeasures_SecondaryCataractPresenceOverTime: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT qrySub_PatientsWithSecondaryCataractODAndOSByPropTreatID.' +
        'IntervalFromFirstVisitInMonths, Count(qrySub_PatientsWithSeconda' +
        'ryCataractODAndOSByPropTreatID.ProposedTreatmentGroupDesc) AS Co' +
        'untProposedTreatByTimeInterval, qrySub_PatientsWithSecondaryCata' +
        'ractODAndOSByPropTreatID.ProposedTreatmentGroupDesc, Round([Coun' +
        'tProposedTreatByTimeInterval]/[TotalNoOfVisits]*100,1) AS Propor' +
        'tionOfPatientsByTimeInterval'
      
        'FROM qrySub_PatientsWithSecondaryCataractODAndOSByPropTreatID IN' +
        'NER JOIN qrySub_NoOfVisitsByTimeInterval ON qrySub_PatientsWithS' +
        'econdaryCataractODAndOSByPropTreatID.IntervalFromFirstVisitInMon' +
        'ths = qrySub_NoOfVisitsByTimeInterval.IntervalFromFirstVisitInMo' +
        'nths'
      
        'GROUP BY qrySub_PatientsWithSecondaryCataractODAndOSByPropTreatI' +
        'D.IntervalFromFirstVisitInMonths, qrySub_PatientsWithSecondaryCa' +
        'taractODAndOSByPropTreatID.ProposedTreatmentGroupDesc, qrySub_No' +
        'OfVisitsByTimeInterval.TotalNoOfVisits, qrySub_PatientsWithSecon' +
        'daryCataractODAndOSByPropTreatID.ProposedTreatmentGroupDesc'
      
        'ORDER BY qrySub_PatientsWithSecondaryCataractODAndOSByPropTreatI' +
        'D.ProposedTreatmentGroupDesc, qrySub_PatientsWithSecondaryCatara' +
        'ctODAndOSByPropTreatID.IntervalFromFirstVisitInMonths;')
    Left = 784
    Top = 398
    object qryReport_ClinicalMeasures_SecondaryCataractPresenceOverTimeIntervalFromFirstVisitInMonths: TIntegerField
      FieldName = 'IntervalFromFirstVisitInMonths'
    end
    object qryReport_ClinicalMeasures_SecondaryCataractPresenceOverTimeCountProposedTreatByTimeInterval: TIntegerField
      FieldName = 'CountProposedTreatByTimeInterval'
    end
    object qryReport_ClinicalMeasures_SecondaryCataractPresenceOverTimeProposedTreatmentGroupDesc: TWideStringField
      FieldName = 'ProposedTreatmentGroupDesc'
      Size = 255
    end
    object qryReport_ClinicalMeasures_SecondaryCataractPresenceOverTimeProportionOfPatientsByTimeInterval: TFloatField
      FieldName = 'ProportionOfPatientsByTimeInterval'
      ReadOnly = True
    end
  end
  object qryDelphi_MaxTimeIntervalForSecondaryCataractPresence: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT MAX(qryReport_ClinicalMeasures_SecondaryCataractPresenceO' +
        'verTime.IntervalFromFirstVisitInMonths) AS MaxTimeIntervalForSec' +
        'ondaryCataractPresence'
      
        'FROM qryReport_ClinicalMeasures_SecondaryCataractPresenceOverTim' +
        'e;')
    Left = 911
    Top = 666
    object qryDelphi_MaxTimeIntervalForSecondaryCataractPresenceMaxTimeIntervalForSecondaryCataractPresence: TIntegerField
      FieldName = 'MaxTimeIntervalForSecondaryCataractPresence'
    end
  end
  object qryReport_ProposedTreatmentRationalPerc: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Sum([PatientCount])/(SELECT qry_SubAffectedEyeCountByPati' +
        'ent.EyeCount'
      'FROM qry_SubAffectedEyeCountByPatient'
      
        #9#9')*100 AS PatientPerc, tblLookupProposedTreatmentGroup.Proposed' +
        'TreatmentGroupDesc'
      
        'FROM tblLookupProposedTreatmentGroup INNER JOIN (qrySub_Proposed' +
        'TreatmentRationalActual INNER JOIN tblLookupProposedTreatment ON' +
        ' qrySub_ProposedTreatmentRationalActual.ProposedTreatmentID = tb' +
        'lLookupProposedTreatment.ProposedTreatmentID) ON tblLookupPropos' +
        'edTreatmentGroup.ProposedTreatmentGroupID = tblLookupProposedTre' +
        'atment.ProposedTreatmentGroupID'
      
        'GROUP BY tblLookupProposedTreatmentGroup.ProposedTreatmentGroupD' +
        'esc;')
    Left = 458
    Top = 443
    object qryReport_ProposedTreatmentRationalPercPatientPerc: TFloatField
      FieldName = 'PatientPerc'
      ReadOnly = True
    end
    object qryReport_ProposedTreatmentRationalPercProposedTreatmentGroupDesc: TWideStringField
      FieldName = 'ProposedTreatmentGroupDesc'
      Size = 255
    end
  end
  object qryReport_ChangesToTreatment: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT qrySub_NumberOfPatientsMovingFromWWToSurgeryOrInjections.' +
        'PatientsMovingFromWWToSurgeryOrInjections, qrySub_TotalNumberOfE' +
        'pisodesSets.TotalNoOfPAtients, [PatientsMovingFromWWToSurgeryOrI' +
        'njections]/[TotalNoOfPAtients]*100 AS ProportionOfPatientsMoving' +
        'FromWWToSurgeryOrInjection'
      
        'FROM qrySub_TotalNumberOfEpisodesSets, qrySub_NumberOfPatientsMo' +
        'vingFromWWToSurgeryOrInjections;')
    Left = 786
    Top = 491
    object qryReport_ChangesToTreatmentPatientsMovingFromWWToSurgeryOrInjections: TIntegerField
      FieldName = 'PatientsMovingFromWWToSurgeryOrInjections'
    end
    object qryReport_ChangesToTreatmentTotalNoOfPAtients: TIntegerField
      FieldName = 'TotalNoOfPAtients'
    end
    object qryReport_ChangesToTreatmentProportionOfPatientsMovingFromWWToSurgeryOrInjection: TFloatField
      FieldName = 'ProportionOfPatientsMovingFromWWToSurgeryOrInjection'
      ReadOnly = True
    end
  end
  object qryReport_MacularHoleStageAtInitialVisit: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT qrySub_ProportionOfPatientsAtStage1.proportionOfPatientAt' +
        'STAGE1, qrySub_ProportionOfPatientsAtStage2.proportionOfPatientA' +
        'tSTAGE2, qrySub_ProportionOfPatientsAtStage3.proportionOfPatient' +
        'AtSTAGE3, qrySub_ProportionOfPatientsAtStage4.proportionOfPatien' +
        'tAtSTAGE4'
      
        'FROM qrySub_ProportionOfPatientsAtStage1, qrySub_ProportionOfPat' +
        'ientsAtStage2, qrySub_ProportionOfPatientsAtStage3, qrySub_Propo' +
        'rtionOfPatientsAtStage4;')
    Left = 554
    Top = 491
    object qryReport_MacularHoleStageAtInitialVisitproportionOfPatientAtSTAGE1: TFloatField
      FieldName = 'proportionOfPatientAtSTAGE1'
      ReadOnly = True
    end
    object qryReport_MacularHoleStageAtInitialVisitproportionOfPatientAtSTAGE2: TFloatField
      FieldName = 'proportionOfPatientAtSTAGE2'
      ReadOnly = True
    end
    object qryReport_MacularHoleStageAtInitialVisitproportionOfPatientAtSTAGE3: TFloatField
      FieldName = 'proportionOfPatientAtSTAGE3'
      ReadOnly = True
    end
    object qryReport_MacularHoleStageAtInitialVisitproportionOfPatientAtSTAGE4: TFloatField
      FieldName = 'proportionOfPatientAtSTAGE4'
      ReadOnly = True
    end
  end
  object qryDelphi_MaxTimeIntervalForDistortion: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT MAX(qryReport_ClinicalMeasures_DistortionPresenceOverTime' +
        '.IntervalFromFirstVisitInMonths) AS MaxTimeIntervalForDistortion'
      'FROM qryReport_ClinicalMeasures_DistortionPresenceOverTime;')
    Left = 127
    Top = 722
    object qryDelphi_MaxTimeIntervalForDistortionMaxTimeIntervalForDistortion: TIntegerField
      FieldName = 'MaxTimeIntervalForDistortion'
    end
  end
  object qryReport_ClinicalMeasures_DistortionPresenceOverTime: TADOQuery
    Connection = frmDBControls.ALC_Connection_1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT qrySub_PatientsWithDistortionODAndOSByPropTreatID.Interva' +
        'lFromFirstVisitInMonths, Count(qrySub_PatientsWithDistortionODAn' +
        'dOSByPropTreatID.ProposedTreatmentGroupDesc) AS CountProposedTre' +
        'atByTimeInterval, qrySub_PatientsWithDistortionODAndOSByPropTrea' +
        'tID.ProposedTreatmentGroupDesc, Round([CountProposedTreatByTimeI' +
        'nterval]/[TotalNoOfVisits]*100,1) AS ProportionOfPatientsByTimeI' +
        'nterval'
      
        'FROM qrySub_PatientsWithDistortionODAndOSByPropTreatID INNER JOI' +
        'N qrySub_NoOfVisitsByTimeInterval ON qrySub_PatientsWithDistorti' +
        'onODAndOSByPropTreatID.IntervalFromFirstVisitInMonths = qrySub_N' +
        'oOfVisitsByTimeInterval.IntervalFromFirstVisitInMonths'
      
        'GROUP BY qrySub_PatientsWithDistortionODAndOSByPropTreatID.Inter' +
        'valFromFirstVisitInMonths, qrySub_PatientsWithDistortionODAndOSB' +
        'yPropTreatID.ProposedTreatmentGroupDesc, qrySub_NoOfVisitsByTime' +
        'Interval.TotalNoOfVisits, qrySub_PatientsWithDistortionODAndOSBy' +
        'PropTreatID.ProposedTreatmentGroupDesc'
      
        'ORDER BY qrySub_PatientsWithDistortionODAndOSByPropTreatID.Propo' +
        'sedTreatmentGroupDesc, qrySub_PatientsWithDistortionODAndOSByPro' +
        'pTreatID.IntervalFromFirstVisitInMonths;')
    Left = 936
    Top = 510
    object qryReport_ClinicalMeasures_DistortionPresenceOverTimeIntervalFromFirstVisitInMonths: TIntegerField
      FieldName = 'IntervalFromFirstVisitInMonths'
    end
    object qryReport_ClinicalMeasures_DistortionPresenceOverTimeCountProposedTreatByTimeInterval: TIntegerField
      FieldName = 'CountProposedTreatByTimeInterval'
    end
    object qryReport_ClinicalMeasures_DistortionPresenceOverTimeProposedTreatmentGroupDesc: TWideStringField
      FieldName = 'ProposedTreatmentGroupDesc'
      Size = 255
    end
    object qryReport_ClinicalMeasures_DistortionPresenceOverTimeProportionOfPatientsByTimeInterval: TFloatField
      FieldName = 'ProportionOfPatientsByTimeInterval'
      ReadOnly = True
    end
  end
end
