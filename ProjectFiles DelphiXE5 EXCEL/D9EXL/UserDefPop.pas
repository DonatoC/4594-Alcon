unit UserDefPop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, FlashPlayerControl, ImgList, CustomEFlashButtonUnit, CustomESpLabelUnit,
  CustomEFlashTableUnit;

type
  TfrmUserDefPop = class(TForm)
    Shape3: TShape;
    Shape1: TShape;
    spLabel1: TSpFormatLabel;
    SpFormatLabel1: TSpFormatLabel;
    FlashButtonEx3: TFlashButtonEx;
    FlashButtonEx1: TFlashButtonEx;
    FlashButtonEx4: TFlashButtonEx;
    FlashButtonEx5: TFlashButtonEx;
    FlashButtonEx6: TFlashButtonEx;
    FlashButtonEx2: TFlashButtonEx;
    FlashButtonEx7: TFlashButtonEx;
    RegionListBox: TListBox;
    Button1: TButton;
    SpFormatLabel2: TSpFormatLabel;
    HAListBox: TListBox;
    SpFormatLabel3: TSpFormatLabel;
    PCOListBox: TListBox;
    SpFormatLabel4: TSpFormatLabel;
    TotalListBox: TListBox;
    SpFormatLabel5: TSpFormatLabel;
    SpFormatLabel6: TSpFormatLabel;
    EFlashTable25: TEFlashTable;
    EFlashTable1: TEFlashTable;
    EFlashTable2: TEFlashTable;
    EFlashTable3: TEFlashTable;
    procedure SpFormatLabel1Click(Sender: TObject);
    procedure RegionListBoxMeasureItem(Control: TWinControl; Index: Integer;
      var Height: Integer);
    procedure RegionListBoxDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure Button1Click(Sender: TObject);
    procedure RegionListBoxClick(Sender: TObject);
    procedure HAListBoxClick(Sender: TObject);
    procedure FlashButtonEx6Click(Sender: TObject);
    procedure FlashButtonEx2Click(Sender: TObject);
    procedure FlashButtonEx7Click(Sender: TObject);
    procedure FlashButtonEx5Click(Sender: TObject);
    procedure FlashButtonEx4Click(Sender: TObject);
    procedure FlashButtonEx1Click(Sender: TObject);
    procedure FlashButtonEx3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUserDefPop: TfrmUserDefPop;

implementation

uses Unit1, functions, DataModuleUnit2, uFadeForm;

{$R *.dfm}

procedure TfrmUserDefPop.Button1Click(Sender: TObject);
var
count : integer;
begin
//datamodule2.population.ClearRange(100,2,299,2,1);
datamodule2.population.ClearRangeF(2,'B100:B299');

TotalListBox.Items.Clear;
RegionListBox.Items.Clear;
HAListBox.Items.Clear;
PCOListBox.Items.Clear;


IntToSP(datamodule2.population,2,2,51,1);
IntToSP(datamodule2.population,2,6,51,1);
IntToSP(datamodule2.population,2,11,51,1);

SpFormatLabel3.Read;
SpFormatLabel4.Read;
SpFormatLabel6.Read;


//region
 for count := 58 to 62 do
    begin

      if SptoStr(datamodule2.population,2,2,count) <> '' then
      begin



        //RegionListBox.Items.Add(datamodule2.population.Text);

        RegionListBox.Items.Add(SptoStr(datamodule2.population,2,2,count));
      end;
    end;

//ha
 for count := 58 to 72 do
    begin
      if SptoStr(datamodule2.population,2,7,count) <> '' then
        //HAListBox.Items.Add(datamodule2.population.Text);
        HAListBox.Items.Add(SptoStr(datamodule2.population,2,7,count));
    end;

//pco
    for count := 58 to 89 do
    begin
      if SptoStr(datamodule2.population,2,12,count) <> '' then
       // PCOListBox.Items.Add(datamodule2.population.Text);
       PCOListBox.Items.Add(SptoStr(datamodule2.population,2,7,count));
    end;
end;

procedure TfrmUserDefPop.FlashButtonEx1Click(Sender: TObject);
begin
    frmFadeForm.close;
close;
end;

procedure TfrmUserDefPop.FlashButtonEx2Click(Sender: TObject);
var Count, RowNo, selCount : Integer;
begin

if TotalListBox.Count < 200 then
begin
        selCount := 0;
        RowNo := 100;

           while (SptoStr(datamodule2.population,2,2,RowNo) <> '') and (RowNo <= 299) do
            begin
              inc(RowNo);
            end;


            for count := 0 to HAListBox.count-1 do
            begin
              if HAListBox.Selected[count] = true then
                Begin
               // TotalListBox.Items.Add(HAListBox.Items.Strings[count]);
                //StrtoSp(mainform.population,2,2,RowNo,HAListBox.Items.Strings[count]);
                StrtoSp(datamodule2.population,2,2,RowNo+selCount,HAListBox.Items.Strings[count]+' : ' + SpNotoStrFormat(datamodule2.population,2,5,RowNo+selCount,'#,##0'));
              TotalListBox.Items.Add(HAListBox.Items.Strings[count]+' : ' + SpNotoStrFormat(datamodule2.population,2,5,RowNo+selCount,'#,##0'));
                inc(selCount);
                End;
            end;
         SpFormatLabel6.Read;
end
else
showmessage('You cannot add any more items.');
end;

procedure TfrmUserDefPop.FlashButtonEx3Click(Sender: TObject);
begin
mainform.editPopSize.Text :=  SpFormatLabel6.Caption;
mainform.editPopSize.write;

mainform.editPopName.text := 'Combined';
IntToSP(datamodule2.defaultsp,15,2,100,6);

if datamodule2.isLoading = false then
begin
StrtoSp(datamodule2.defaultsp,16,5,13, '');
StrtoSp(datamodule2.defaultsp,16,5,13, SptoStr(datamodule2.Population,2,15,50));
StrtoSp(datamodule2.defaultsp,16,5,14, SptoStr(datamodule2.Population,2,15,50));
//mainform.FlowSetPerPOP;
end;

frmFadeForm.close;
close;
end;

procedure TfrmUserDefPop.FlashButtonEx4Click(Sender: TObject);
var count : integer;
begin



 //Delete changes the ordinal position of the remaining items in the list,
 //when deleting items from the list using the for loop you need to start
 //iterating from the end of the list. IE counting backwards
     for count := -1 + TotalListBox.Items.Count downto 0 do
      begin
      if TotalListBox.Selected[count] then
        TotalListBox.Items.Delete(count);
      end;


//clear sp
 //datamodule2.population.ClearRange(100,2,299,2,1);
 datamodule2.population.ClearRangeF(2,'B100:B299');

  //Loop through total list box and put whats left after delete back in sp
 for count := 0 to TotalListBox.count-1 do
    begin
      StrtoSp(datamodule2.population,2,2,100+count,TotalListBox.Items.Strings[count]);
    end;

SpFormatLabel6.Read;

end;

procedure TfrmUserDefPop.FlashButtonEx5Click(Sender: TObject);
begin
TotalListBox.Items.Clear;
//datamodule2.population.ClearRange(100,2,299,2,1);
datamodule2.population.ClearRangeF(2,'B100:B299');
SpFormatLabel6.Read;
end;

procedure TfrmUserDefPop.FlashButtonEx6Click(Sender: TObject);
var Count, selCount, RowNo : Integer;
begin

if TotalListBox.Count < 200 then
begin
      selCount := 0;
      RowNo := 100;

         while (SptoStr(datamodule2.population,2,2,RowNo) <> '') and (RowNo <= 299) do
          begin
            inc(RowNo);
          end;


          for count := 0 to RegionListBox.count-1 do
          begin
          if RegionListBox.Selected[count] = true then
              Begin
              StrtoSp(datamodule2.population,2,2,RowNo+selCount,RegionListBox.Items.Strings[count]+' : ' + SpNotoStrFormat(datamodule2.population,2,5,RowNo+selCount,'#,##0'));
              TotalListBox.Items.Add(RegionListBox.Items.Strings[count]+' : ' + SpNotoStrFormat(datamodule2.population,2,5,RowNo+selCount,'#,##0'));
              inc(selCount);
              End;
          end;

       SpFormatLabel6.Read;
end
else
showmessage('You cannot add any more items.');

end;

procedure TfrmUserDefPop.FlashButtonEx7Click(Sender: TObject);
var Count, selCount, RowNo : Integer;
begin
if TotalListBox.Count < 200 then
begin
      selCount := 0;
      RowNo := 100;

         while (SptoStr(datamodule2.population,2,2,RowNo) <> '') and (RowNo <= 299) do
          begin
            inc(RowNo);
          end;

          for count := 0 to PCOListBox.count-1 do
          begin
          if PCOListBox.Selected[count] = true then
              Begin
             // TotalListBox.Items.Add(PCOListBox.Items.Strings[count]);
             // StrtoSp(mainform.population,2,2,RowNo,PCOListBox.Items.Strings[count]);
             StrtoSp(datamodule2.population,2,2,RowNo+selCount,PCOListBox.Items.Strings[count]+' : ' + SpNotoStrFormat(datamodule2.population,2,5,RowNo+selCount,'#,##0'));
              TotalListBox.Items.Add(PCOListBox.Items.Strings[count]+' : ' + SpNotoStrFormat(datamodule2.population,2,5,RowNo+selCount,'#,##0'));
              inc(selCount);
              End;
          end;
          SpFormatLabel6.Read;

end
else
showmessage('You cannot add any more items.');
end;

procedure TfrmUserDefPop.HAListBoxClick(Sender: TObject);
var
count : integer;
begin

IntToSP(datamodule2.population,2,6,51,HAListBox.ItemIndex+1);

PCOListBox.Items.Clear;


//pco
    for count := 58 to 89 do
    begin
      if SptoStr(datamodule2.population,2,12,count) <> '' then
        //PCOListBox.Items.Add(datamodule2.population.Text);
        PCOListBox.Items.Add(SptoStr(datamodule2.population,2,12,count));

    end;

    SpFormatLabel3.read;
SpFormatLabel4.read;
end;

procedure TfrmUserDefPop.RegionListBoxClick(Sender: TObject);
var
count : integer;
begin
IntToSP(datamodule2.population,2,2,51,RegionListBox.ItemIndex+1);

HAListBox.Items.Clear;
PCOListBox.Items.Clear;

//ha
 for count := 58 to 72 do
    begin
      if SptoStr(datamodule2.population,2,7,count) <> '' then
       // HAListBox.Items.Add(datamodule2.population.Text);
        HAListBox.Items.Add(SptoStr(datamodule2.population,2,7,count));

    end;

//pco
    for count := 58 to 89 do
    begin
      if SptoStr(datamodule2.population,2,12,count) <> '' then
       // PCOListBox.Items.Add(datamodule2.population.Text);
        PCOListBox.Items.Add(SptoStr(datamodule2.population,2,12,count));
    end;

SpFormatLabel3.read;
SpFormatLabel4.read;

end;

procedure TfrmUserDefPop.RegionListBoxDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var
CenterText : integer;

begin
{
ListBox1.Canvas.FillRect (rect);

// now draw
ImageList1.Draw(ListBox1.Canvas,rect.Left + 4, rect.Top + 4, index );

// you have to center the text vertically besidethe bitmap, or it will appear a little heigher
CenterText := ( rect.Bottom - rect.Top - ListBox1.Canvas.TextHeight(text)) div 2 ;

ListBox1.Canvas.TextOut (rect.left + ImageList1.Width + 8 , rect.Top + CenterText,
ListBox1.Items.Strings[index]);      }

end;

procedure TfrmUserDefPop.RegionListBoxMeasureItem(Control: TWinControl;
  Index: Integer; var Height: Integer);
begin
{height := ImageList1.Height +4 ;   }

end;

procedure TfrmUserDefPop.SpFormatLabel1Click(Sender: TObject);
begin
   frmFadeForm.close;
close;
end;

end.
