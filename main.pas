unit Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  ExtCtrls, ComCtrls, StdCtrls, frLoad;

type

  { TForm1 }

  TForm1 = class(TForm)
    Frame1_1: TFrame1;
    MainMenu1: TMainMenu;
    mmFileExit: TMenuItem;
    mmFileNew: TMenuItem;
    mmFileOpen: TMenuItem;
    mmFile: TMenuItem;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure mmFileExitClick(Sender: TObject);
    procedure mmFileOpenClick(Sender: TObject);
    procedure mmFileClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.mmFileClick(Sender: TObject);
begin

end;

procedure TForm1.mmFileOpenClick(Sender: TObject);
var
  filename: string;
begin
     if OpenDialog1.Execute then
  begin
    filename := OpenDialog1.Filename;
    ShowMessage(filename);
  end;


end;

procedure TForm1.mmFileExitClick(Sender: TObject);
begin
   Halt (1);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

end.

