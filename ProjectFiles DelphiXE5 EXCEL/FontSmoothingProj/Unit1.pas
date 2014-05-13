unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  MType : Cardinal;
  SmoothFonts : Cardinal;
implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin

form1.left := -1000;
form1.top := -1000;

//showmessage(ParamStr(1));
if ParamStr(1) = '/on' then
    begin
    SystemParametersInfo(SPI_GETFONTSMOOTHING, 1, @SmoothFonts, 0);

    if SmoothFonts = 0 then
    begin
    SystemParametersInfo(SPI_SETFONTSMOOTHING, 1, @SmoothFonts, SPIF_SENDCHANGE);
    end;

    //SystemParametersInfo(spi_GetFontSmoothingType, 1, @MType, 0);
    MType :=  FE_FONTSMOOTHINGCLEARTYPE;
    SystemParametersInfo(spi_SetFontSmoothingType, 0, Pointer(MType), SPIF_SENDCHANGE);

end;

if ParamStr(1) = '/off' then
begin
    SystemParametersInfo(SPI_GETFONTSMOOTHING, 1, @SmoothFonts, 0);


    if SmoothFonts = 1 then
    begin
    SystemParametersInfo(SPI_SETFONTSMOOTHING, 0, @SmoothFonts, SPIF_SENDCHANGE);
    end;
end;

 application.Terminate;

end;

end.
