unit ref;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls;

type
  TReferences = class(TForm)
    Panel1: TPanel;
    RichEdit2: TRichEdit;
    Panel2: TPanel;
    RichEdit1: TRichEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    procedure Panel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  References: TReferences;

implementation

uses Unit1, DataModuleUnit2;

{$R *.DFM}

procedure TReferences.Panel1Click(Sender: TObject);
var start : integer;
  endpoint : integer;
begin
  richedit1.Clear;
  richedit1.readonly := false;

  // Loads in the reference file *.rtf from a specified directory
  richedit2.lines.LoadFromFile(DataModule2.AppPath+'System\Ref.rtf');

  // sets the start variable to the beginning of the specified reference by
  // searching on the specified key held in mainform.refer

  // Please not the *****50000**** in the line below is the amount of characters, this will need expanding
  // if there is a large number of references
  start := richedit2.FindText(mainform.Refer,0,50000,[stMatchCase]) ;
  richedit2.SelStart := (start+(length(mainform.Refer))){+4} ;

  // sets the end of the reference as above
  endpoint := richedit2.FindText('xx',richedit2.SelStart,50000,[stMatchCase]);

  // Selects the range to copy
  richedit2.SelLENGTH := endpoint-richedit2.selstart;
  richedit2.CopyToClipboard;

  // pastes the relavent reference in to the visible rtf
  richedit1.PasteFromClipboard;
  richedit1.visible := true;
  richedit1.readonly := true;
  richedit1.Lines[0] := richedit1.Lines[0];
end;

end.