unit About;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, jpeg,shellapi, CustomESpLabelUnit;

type
  TAboutbox = class(TForm)
    imgAbout: TImage;
    lblClient: TSpFormatLabel;
    lblProjectName: TSpFormatLabel;
    lblVersionNo: TSpFormatLabel;
    lblLaunchDate: TSpFormatLabel;
    lblProjectManager: TSpFormatLabel;
    lblProgrammer: TSpFormatLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Aboutbox: TAboutbox;

implementation

{$R *.DFM}
uses functions, unit1;


procedure TAboutbox.FormCreate(Sender: TObject);
var
  componentCounter: Integer;
begin
  for componentCounter := 0 to Self.ComponentCount - 1 do
    begin
      if Components[componentCounter].ClassType = TSpFormatLabel then
        TSpFormatLabel(Components[componentCounter]).Read;
    end;
end;

end.
