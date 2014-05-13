unit UnitDBExpress;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Datasnap.Provider,
  Datasnap.DBClient, StrUtils, IniFiles, DBXDataExpressMetaDataProvider;

type
  TDMDBexpress = class(TDataModule)
  private
    { Private declarations }
    TableName: String;
    AllTables: TStringList;  //list of database tables
    FMetaDataProvider: TDBXDataExpressMetaDataProvider;
  public
    { Public declarations }
  end;

const
  sDefaultFilterText = 'Filter (* as wild)';

var
  DMDBexpress: TDMDBexpress;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
