unit UsrDefPopulation;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, inifiles, FlashPlayerControl, IBEEdit, AntialiasEdit,
  CustomESpEditUnit, CustomEFlashButtonUnit, CustomESpLabelUnit;

type
  TfrmPopulation = class(TForm)
    btnApply: TEFlashButton;
    btnClose: TEFlashButton;
    lblUserPopName: TESpLabel;
    edNewName: TESpEdit;
    lblUserPopSize: TESpLabel;
    edNewSize: TESpEdit;
    ESpLabel1: TESpLabel;
    Shape1: TShape;
    Shape2: TShape;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    oldName: string;
    oldSize: integer;
  end;

var
  frmPopulation: TfrmPopulation;

implementation

uses Unit1, functions, DataModuleUnit2;

{$R *.DFM}

procedure TfrmPopulation.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
    '0' .. '9': ;
    '.':  begin
            if FormatSettings.DecimalSeparator = ',' then
              Key := #0;
          end;
    ',':  begin
            if FormatSettings.DecimalSeparator = '.' then
              Key := #0;
          end;
    '-': ;
    #8: ;
  else
    Key := #0;
  end;

end;

procedure TfrmPopulation.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
