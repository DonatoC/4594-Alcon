unit uniSectionEnd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, FlashPlayerControl;

type
  TfrmEndSection = class(TForm)
    Panel8: TPanel;
    Shape46: TShape;
    Shape47: TShape;
    lab_title: TLabel;
    Label47: TLabel;
    Button40: TButton;
    Button41: TButton;
    Button42: TButton;
    procedure Button42Click(Sender: TObject);
    procedure Button40Click(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEndSection: TfrmEndSection;

implementation

uses Unit1, uFadeForm, unitDBControls;

{$R *.dfm}

procedure TfrmEndSection.Button40Click(Sender: TObject);
begin
    Mainform.TFP_INPUT_CLICKClick(nil);
    frmDBControls.RadioButton2.Checked := true;
  Close;


end;

procedure TfrmEndSection.Button41Click(Sender: TObject);
begin
  frmDBControls.Close;
  Close;
end;

procedure TfrmEndSection.Button42Click(Sender: TObject);
begin
    Mainform.TFP_CENTRE_CLICKClick(nil);
  Close;

end;

procedure TfrmEndSection.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if frmFadeForm.Visible = true then
    begin
      frmFadeForm.Close;
    end;
end;

end.
