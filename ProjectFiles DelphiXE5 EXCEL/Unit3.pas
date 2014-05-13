unit Unit3;

interface

uses
  System.SysUtils, Data.Win.ADODB, System.Classes, Data.DB, Datasnap.DBClient,
  Datasnap.Provider;

type
  TDBDataModule = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADODataSet1: TADODataSet;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    ADODataSet1patientID: TAutoIncField;
    ADODataSet1patientGUID: TWideStringField;
    ADODataSet1centreID: TIntegerField;
    ADODataSet1genderID: TIntegerField;
    ADODataSet1ageID: TIntegerField;
    ADODataSet1archived: TBooleanField;
    ADODataSet1dateAdded: TDateTimeField;
    ADODataSet1dateUpdated: TDateTimeField;
    ADODataSet1IndicationID: TIntegerField;
    ADODataSet1centreGUID: TWideStringField;
    ClientDataSet1patientID: TAutoIncField;
    ClientDataSet1patientGUID: TWideStringField;
    ClientDataSet1centreID: TIntegerField;
    ClientDataSet1genderID: TIntegerField;
    ClientDataSet1ageID: TIntegerField;
    ClientDataSet1archived: TBooleanField;
    ClientDataSet1dateAdded: TDateTimeField;
    ClientDataSet1dateUpdated: TDateTimeField;
    ClientDataSet1IndicationID: TIntegerField;
    ClientDataSet1centreGUID: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DBDataModule: TDBDataModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
