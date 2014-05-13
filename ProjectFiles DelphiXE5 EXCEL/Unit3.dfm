object DBDataModule: TDBDataModule
  OldCreateOrder = False
  Height = 711
  Width = 1187
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=\\vmware-host\Share' +
      'd Folders\Documents\AbacusWorkingFiles\Alcon\Setup Source Files ' +
      'DelphiXE5\SET\System\db.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 168
    Top = 40
  end
  object ADODataSet1: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from tblPatients'
    Parameters = <>
    Left = 264
    Top = 40
    object ADODataSet1patientID: TAutoIncField
      FieldName = 'patientID'
      ReadOnly = True
    end
    object ADODataSet1patientGUID: TWideStringField
      FieldName = 'patientGUID'
      Size = 36
    end
    object ADODataSet1centreID: TIntegerField
      FieldName = 'centreID'
    end
    object ADODataSet1genderID: TIntegerField
      FieldName = 'genderID'
    end
    object ADODataSet1ageID: TIntegerField
      FieldName = 'ageID'
    end
    object ADODataSet1archived: TBooleanField
      FieldName = 'archived'
    end
    object ADODataSet1dateAdded: TDateTimeField
      FieldName = 'dateAdded'
    end
    object ADODataSet1dateUpdated: TDateTimeField
      FieldName = 'dateUpdated'
    end
    object ADODataSet1IndicationID: TIntegerField
      FieldName = 'IndicationID'
    end
    object ADODataSet1centreGUID: TWideStringField
      FieldName = 'centreGUID'
      Size = 36
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = ADODataSet1
    Left = 368
    Top = 40
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 368
    Top = 104
    object ClientDataSet1patientID: TAutoIncField
      FieldName = 'patientID'
      ReadOnly = True
    end
    object ClientDataSet1patientGUID: TWideStringField
      FieldName = 'patientGUID'
      Size = 36
    end
    object ClientDataSet1centreID: TIntegerField
      FieldName = 'centreID'
    end
    object ClientDataSet1genderID: TIntegerField
      FieldName = 'genderID'
    end
    object ClientDataSet1ageID: TIntegerField
      FieldName = 'ageID'
    end
    object ClientDataSet1archived: TBooleanField
      FieldName = 'archived'
    end
    object ClientDataSet1dateAdded: TDateTimeField
      FieldName = 'dateAdded'
    end
    object ClientDataSet1dateUpdated: TDateTimeField
      FieldName = 'dateUpdated'
    end
    object ClientDataSet1IndicationID: TIntegerField
      FieldName = 'IndicationID'
    end
    object ClientDataSet1centreGUID: TWideStringField
      FieldName = 'centreGUID'
      Size = 36
    end
  end
end
