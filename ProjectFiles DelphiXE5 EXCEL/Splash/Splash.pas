unit Splash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, jpeg, ComCtrls;

type
  TSplashscreen = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Image1: TImage;
    ProgressBar1: TProgressBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Splashscreen: TSplashscreen;
  COUNT : INTEGER;
  STATE : BOOLEAN;

implementation


{$R *.DFM}

end.