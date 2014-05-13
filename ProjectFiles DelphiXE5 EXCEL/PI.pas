unit PI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls;

type
  TPrescInfo = class(TForm)
    RichEdit1: TRichEdit;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrescInfo: TPrescInfo;

implementation

uses Unit1, DataModuleUnit2;

{$R *.DFM}

procedure TPrescInfo.FormActivate(Sender: TObject);
begin
  RichEdit1.ReadOnly := false;
  RichEdit1.Lines.LoadFromFile(DataModule2.appPath+'\system\PI.rtf');
  RichEdit1.ReadOnly := true;
end;

end.
