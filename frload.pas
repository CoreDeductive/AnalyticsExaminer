unit frLoad;

{$mode objfpc}{$H+}

interface

uses
  Classes, Math, SysUtils,  FileUtil, Forms, Controls, StdCtrls, Dialogs,
  unLoadingEngine, Grids, DbCtrls, DBGrids, datahandler;

type

  { TFrame1 }

  TFrame1 = class(TFrame)
    Button1: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    OpenDialog1: TOpenDialog;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

implementation

{$R *.lfm}

{ TFrame1 }

procedure TFrame1.Button1Click(Sender: TObject);

begin

end;

procedure TFrame1.Button2Click(Sender: TObject);
var
  Grid: TStringGrid;
  filename,padstr: string;
  i,j:integer;
  zeropad,pad:integer;
begin
  grid:=Tstringgrid.Create(self);
  try
    if OpenDialog1.Execute then
      begin
        filename := OpenDialog1.Filename;
        LoadGridFromCSVFile(StringGrid1,filename,chr(9),true,true);
        StringGrid1.InsertColRow(true,0);
        zeropad:=trunc(log10(StringGrid1.RowCount*1.0));

        for i:= 0 to StringGrid1.RowCount-1 do
            begin
              pad:=zeropad-trunc(log10(i*1));
              padstr:='';
              for j:=1 to pad do
                  padstr:='0'+padstr;
              StringGrid1.Cells[0,i]:=padstr+inttostr(i);
            end;


      end;
  finally
    grid.free;
  end;
end;

procedure TFrame1.CheckBox1Change(Sender: TObject);
begin

end;

procedure TFrame1.CheckBox1Click(Sender: TObject);
begin
  if checkBox1.Checked then begin
      DataModule1.DataSource1.DataSet.Active:=true;
  end else begin
      DataModule1.DataSource1.DataSet.Active:=false;
  end
end;


//  procedure LoadGridFromCSVFile(Grid: TStringGrid;AFilename: string;
//  ADelimiter:Char=','; WithHeader:boolean=true; AddRows:boolean=true);
// Loads (quasi)CSV document in AFilename into Grid, using ADelimiter as
// delimiter. If WithHeader is true, it won't import the first row.
// If AddRows is true, it will add rows if the existing grid is too short.


end.

