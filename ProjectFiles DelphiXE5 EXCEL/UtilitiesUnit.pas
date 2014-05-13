unit UtilitiesUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TfrmUtilities = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUtilities: TfrmUtilities;

implementation

uses Unit1, DataModuleUnit2;

{$R *.DFM}

procedure TfrmUtilities.Button1Click(Sender: TObject);
begin
  MainForm.ViewModelSpreadsheet1Click(self);
  Close;
end;

procedure TfrmUtilities.Button2Click(Sender: TObject);
begin
  MainForm.ViewPopulationSpreadsheet1Click(self);
  Close;
end;

procedure TfrmUtilities.Button3Click(Sender: TObject);
begin
  MainForm.LabelsSpProperties1Click(self);
  Close;
end;

procedure TfrmUtilities.Button4Click(Sender: TObject);
begin
  MainForm.EditsSPProperties1Click(self);
  Close;
end;

procedure TfrmUtilities.Button5Click(Sender: TObject);
begin
  MainForm.ComboBoxesProperties1Click(Self);
  Close;
end;

procedure TfrmUtilities.Button6Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmUtilities.Button7Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmUtilities.Button8Click(Sender: TObject);
begin
  MainForm.GraphicDimentions1Click(Sender);
  Close;
end;

procedure TfrmUtilities.Button9Click(Sender: TObject);
begin
  DataModule2.updateTabSheet(MainForm.PageControl1.ActivePage);
  Close;
end;

procedure TfrmUtilities.Button10Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
