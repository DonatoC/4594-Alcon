unit uFadeForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FlashPlayerControl, StdCtrls, ExtCtrls;

type
  TfrmFadeForm = class(TForm)
    TransparentFlashPlayerControl1: TTransparentFlashPlayerControl;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFadeForm: TfrmFadeForm;

implementation

uses Unit1, DataModuleUnit2;

{$R *.dfm}

procedure TfrmFadeForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DataModule2.canShowFadeForm then
    begin
      Mainform.Enabled := true;
      frmFadeForm.Enabled := true;
     // Action := caFree;
    end;
   // showmessage('Close Called');
end;

procedure TfrmFadeForm.FormCreate(Sender: TObject);
begin
  if DataModule2.canShowFadeForm then
    begin
      frmFadeForm.width := mainform.Width;
      frmFadeForm.height := mainform.height;
      frmFadeForm.top := mainform.top;
      frmFadeForm.left := mainform.left;

      frmFadeForm.TransparentFlashPlayerControl1.Movie := DataModule2.appPath + 'Animation\ALC_MASK.swf';
    end
  else
    begin
      frmFadeForm.width := 0;
      frmFadeForm.height := 0;
      frmFadeForm.top := 0;
      frmFadeForm.left := 0;
    end;
end;

procedure TfrmFadeForm.FormShow(Sender: TObject);
begin
 { panel1.Top := Round((frmFadeForm.Height - Panel1.Height) div 2);
  panel1.Left := Round((frmFadeForm.left - Panel1.left) div 2);  }
end;

end.



