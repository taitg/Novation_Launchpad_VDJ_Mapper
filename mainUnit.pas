unit mainUnit;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,
  Menus,
  aboutUnit;

type
  TDynStringArray = array of string;

  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    GroupBox1: TGroupBox;
    T1: TButton;
    T2: TButton;
    T3: TButton;
    T4: TButton;
    B11: TButton;
    T5: TButton;
    B12: TButton;
    B13: TButton;
    B14: TButton;
    B15: TButton;
    T6: TButton;
    T7: TButton;
    T8: TButton;
    B16: TButton;
    B17: TButton;
    B18: TButton;
    B21: TButton;
    B22: TButton;
    B23: TButton;
    B24: TButton;
    B25: TButton;
    B26: TButton;
    B27: TButton;
    B28: TButton;
    B31: TButton;
    B32: TButton;
    B33: TButton;
    B34: TButton;
    B35: TButton;
    B36: TButton;
    B37: TButton;
    B38: TButton;
    R1: TButton;
    R2: TButton;
    R3: TButton;
    B41: TButton;
    B42: TButton;
    B43: TButton;
    B44: TButton;
    B45: TButton;
    B46: TButton;
    B47: TButton;
    B48: TButton;
    R4: TButton;
    B51: TButton;
    B52: TButton;
    B53: TButton;
    B54: TButton;
    B55: TButton;
    B56: TButton;
    B57: TButton;
    B58: TButton;
    R5: TButton;
    B61: TButton;
    B62: TButton;
    B71: TButton;
    B81: TButton;
    B82: TButton;
    B72: TButton;
    B63: TButton;
    B64: TButton;
    B73: TButton;
    B65: TButton;
    B74: TButton;
    B83: TButton;
    B84: TButton;
    B75: TButton;
    B85: TButton;
    B66: TButton;
    B67: TButton;
    B76: TButton;
    B68: TButton;
    B77: TButton;
    B86: TButton;
    B87: TButton;
    B78: TButton;
    B88: TButton;
    R6: TButton;
    R7: TButton;
    R8: TButton;
    LoadMapper1: TMenuItem;
    About1: TMenuItem;
    Sort1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure LoadMapper1Click(Sender: TObject);
    procedure T1Click(Sender: TObject);
    procedure T2Click(Sender: TObject);
    procedure T3Click(Sender: TObject);
    procedure T4Click(Sender: TObject);
    procedure T5Click(Sender: TObject);
    procedure T6Click(Sender: TObject);
    procedure T7Click(Sender: TObject);
    procedure T8Click(Sender: TObject);
    procedure B11Click(Sender: TObject);
    procedure B12Click(Sender: TObject);
    procedure B13Click(Sender: TObject);
    procedure B14Click(Sender: TObject);
    procedure B15Click(Sender: TObject);
    procedure B16Click(Sender: TObject);
    procedure B17Click(Sender: TObject);
    procedure B18Click(Sender: TObject);
    procedure R1Click(Sender: TObject);
    procedure B21Click(Sender: TObject);
    procedure B22Click(Sender: TObject);
    procedure B23Click(Sender: TObject);
    procedure B24Click(Sender: TObject);
    procedure B25Click(Sender: TObject);
    procedure B26Click(Sender: TObject);
    procedure B27Click(Sender: TObject);
    procedure B28Click(Sender: TObject);
    procedure R2Click(Sender: TObject);
    procedure B31Click(Sender: TObject);
    procedure B32Click(Sender: TObject);
    procedure B33Click(Sender: TObject);
    procedure B34Click(Sender: TObject);
    procedure B35Click(Sender: TObject);
    procedure B36Click(Sender: TObject);
    procedure B37Click(Sender: TObject);
    procedure B38Click(Sender: TObject);
    procedure R3Click(Sender: TObject);
    procedure B41Click(Sender: TObject);
    procedure B42Click(Sender: TObject);
    procedure B43Click(Sender: TObject);
    procedure B44Click(Sender: TObject);
    procedure B45Click(Sender: TObject);
    procedure B46Click(Sender: TObject);
    procedure B47Click(Sender: TObject);
    procedure B48Click(Sender: TObject);
    procedure R4Click(Sender: TObject);
    procedure B51Click(Sender: TObject);
    procedure B52Click(Sender: TObject);
    procedure B53Click(Sender: TObject);
    procedure B54Click(Sender: TObject);
    procedure B55Click(Sender: TObject);
    procedure B56Click(Sender: TObject);
    procedure B57Click(Sender: TObject);
    procedure B58Click(Sender: TObject);
    procedure R5Click(Sender: TObject);
    procedure B61Click(Sender: TObject);
    procedure B62Click(Sender: TObject);
    procedure B63Click(Sender: TObject);
    procedure B64Click(Sender: TObject);
    procedure B65Click(Sender: TObject);
    procedure B66Click(Sender: TObject);
    procedure B67Click(Sender: TObject);
    procedure B68Click(Sender: TObject);
    procedure R6Click(Sender: TObject);
    procedure B71Click(Sender: TObject);
    procedure B72Click(Sender: TObject);
    procedure B73Click(Sender: TObject);
    procedure B74Click(Sender: TObject);
    procedure B75Click(Sender: TObject);
    procedure B76Click(Sender: TObject);
    procedure B77Click(Sender: TObject);
    procedure B78Click(Sender: TObject);
    procedure R7Click(Sender: TObject);
    procedure B81Click(Sender: TObject);
    procedure B82Click(Sender: TObject);
    procedure B83Click(Sender: TObject);
    procedure B84Click(Sender: TObject);
    procedure B85Click(Sender: TObject);
    procedure B86Click(Sender: TObject);
    procedure B87Click(Sender: TObject);
    procedure B88Click(Sender: TObject);
    procedure R8Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure Sort1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  mapStrings: TStringList;
  strArr,tmpArr: TDynStringArray;
  iR,iA,iY,iG,iB: integer;
  changes: boolean;

implementation

{$R *.dfm}

uses
  editUnit;

// splits a string into an array via delimiter
function split(const delim,s: string; limit: integer = 0): TDynStringArray;
var
  len: integer;
  f,p: pchar;
begin
  setLength(result,0);
  if (s = '') or (limit < 0) then exit;
  if delim = '' then begin
    setLength(result,1);
    result[0] := s;
    exit;
  end;
  len := length(delim);
  p := pchar(s);
  while p^ <> #0 do begin
    f := p;
    p := ansiStrPos(p,pchar(delim));
    if (p = nil) or ((limit > 0) and (length(result) = limit-1)) then p := strEnd(f);
    setLength(result,length(result)+1);
    setString(result[high(result)],f,p-f);
    f := p;
    if p = delim then setLength(result,length(result)+1);
    while (p^ <> #0) and (p-f < len) do inc(p);
  end;
end;

procedure selectButton(button: string);
var
  i: integer;
begin
  Form3.Edit1.Text := '';
  Form3.Edit2.Text := '';
  Form3.Edit3.Text := '';
  Form3.Edit4.Text := '';
  Form3.Edit5.Text := '';
  iB := 0;
  iR := 0;
  iA := 0;
  iY := 0;
  iG := 0;
  Form3.controlLabel.Caption := button;
  if mapStrings.Count > 0 then begin
    for i := 0 to mapStrings.Count-1 do begin
      strArr := split('"',mapStrings[i]);
      tmpArr := split('_',strArr[1]);
      if (length(strArr) > 1) and (length(tmpArr) > 1) then
      if tmpArr[1] = button then begin
        Form3.Edit5.Text := strArr[3];
        iB := i;
      end
      else if tmpArr[2] = button then begin
        if tmpArr[1] = 'R' then begin
          Form3.Edit2.Text := strArr[3];
          iR := i;
        end
        else if tmpArr[1] = 'A' then begin
          Form3.Edit3.Text := strArr[3];
          iA := i;
        end
        else if tmpArr[1] = 'Y' then begin
          Form3.Edit4.Text := strArr[3];
          iY := i;
        end
        else if tmpArr[1] = 'G' then begin
          Form3.Edit1.Text := strArr[3];
          iG := i;
        end;
      end;
    end;
  end;
  changes := false;
end;

procedure enableButtons(action: boolean);
begin
  Form1.GroupBox1.Enabled := action;
end;

procedure checkSave;
begin
  if changes then begin
    if Form3.CheckBox1.Checked then begin
      Form3.Button1.Click;
      Form3.Button2.Click;
      Form3.Button3.Click;
      Form3.Button4.Click;
      Form3.Button5.Click;
    end
    else if messagedlg('You have made changes. Save all before continuing?',mtError,mbYesNo,0) = mrYes then begin
      Form3.Button1.Click;
      Form3.Button2.Click;
      Form3.Button3.Click;
      Form3.Button4.Click;
      Form3.Button5.Click;
    end;
  end;
end;

procedure TForm1.About1Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.B11Click(Sender: TObject);
begin
  checkSave;
  selectButton('1-1');
end;

procedure TForm1.B12Click(Sender: TObject);
begin
  checkSave;
  selectButton('1-2');
end;

procedure TForm1.B13Click(Sender: TObject);
begin
  checkSave;
  selectButton('1-3');
end;

procedure TForm1.B14Click(Sender: TObject);
begin
  checkSave;
  selectButton('1-4');
end;

procedure TForm1.B15Click(Sender: TObject);
begin
  checkSave;
  selectButton('1-5');
end;

procedure TForm1.B16Click(Sender: TObject);
begin
  checkSave;
  selectButton('1-6');
end;

procedure TForm1.B17Click(Sender: TObject);
begin
  checkSave;
  selectButton('1-7');
end;

procedure TForm1.B18Click(Sender: TObject);
begin
  checkSave;
  selectButton('1-8');
end;

procedure TForm1.B21Click(Sender: TObject);
begin
  checkSave;
  selectButton('2-1');
end;

procedure TForm1.B22Click(Sender: TObject);
begin
  checkSave;
  selectButton('2-2');
end;

procedure TForm1.B23Click(Sender: TObject);
begin
  checkSave;
  selectButton('2-3');
end;

procedure TForm1.B24Click(Sender: TObject);
begin
  checkSave;
  selectButton('2-4');
end;

procedure TForm1.B25Click(Sender: TObject);
begin
  checkSave;
  selectButton('2-5');
end;

procedure TForm1.B26Click(Sender: TObject);
begin
  checkSave;
  selectButton('2-6');
end;

procedure TForm1.B27Click(Sender: TObject);
begin
  checkSave;
  selectButton('2-7');
end;

procedure TForm1.B28Click(Sender: TObject);
begin
  checkSave;
  selectButton('2-8');
end;

procedure TForm1.B31Click(Sender: TObject);
begin
  checkSave;
  selectButton('3-1');
end;

procedure TForm1.B32Click(Sender: TObject);
begin
  checkSave;
  selectButton('3-2');
end;

procedure TForm1.B33Click(Sender: TObject);
begin
  checkSave;
  selectButton('3-3');
end;

procedure TForm1.B34Click(Sender: TObject);
begin
  checkSave;
  selectButton('3-4');
end;

procedure TForm1.B35Click(Sender: TObject);
begin
  checkSave;
  selectButton('3-5');
end;

procedure TForm1.B36Click(Sender: TObject);
begin
  checkSave;
  selectButton('3-6');
end;

procedure TForm1.B37Click(Sender: TObject);
begin
  checkSave;
  selectButton('3-7');
end;

procedure TForm1.B38Click(Sender: TObject);
begin
  checkSave;
  selectButton('3-8');
end;

procedure TForm1.B41Click(Sender: TObject);
begin
  checkSave;
  selectButton('4-1');
end;

procedure TForm1.B42Click(Sender: TObject);
begin
  checkSave;
  selectButton('4-2');
end;

procedure TForm1.B43Click(Sender: TObject);
begin
  checkSave;
  selectButton('4-3');
end;

procedure TForm1.B44Click(Sender: TObject);
begin
  checkSave;
  selectButton('4-4');
end;

procedure TForm1.B45Click(Sender: TObject);
begin
  checkSave;
  selectButton('4-5');
end;

procedure TForm1.B46Click(Sender: TObject);
begin
  checkSave;
  selectButton('4-6');
end;

procedure TForm1.B47Click(Sender: TObject);
begin
  checkSave;
  selectButton('4-7');
end;

procedure TForm1.B48Click(Sender: TObject);
begin
  checkSave;
  selectButton('4-8');
end;

procedure TForm1.B51Click(Sender: TObject);
begin
  checkSave;
  selectButton('5-1');
end;

procedure TForm1.B52Click(Sender: TObject);
begin
  checkSave;
  selectButton('5-2');
end;

procedure TForm1.B53Click(Sender: TObject);
begin
  checkSave;
  selectButton('5-3');
end;

procedure TForm1.B54Click(Sender: TObject);
begin
  checkSave;
  selectButton('5-4');
end;

procedure TForm1.B55Click(Sender: TObject);
begin
  checkSave;
  selectButton('5-5');
end;

procedure TForm1.B56Click(Sender: TObject);
begin
  checkSave;
  selectButton('5-6');
end;

procedure TForm1.B57Click(Sender: TObject);
begin
  checkSave;
  selectButton('5-7');
end;

procedure TForm1.B58Click(Sender: TObject);
begin
  checkSave;
  selectButton('5-8');
end;

procedure TForm1.B61Click(Sender: TObject);
begin
  checkSave;
  selectButton('6-1');
end;

procedure TForm1.B62Click(Sender: TObject);
begin
  checkSave;
  selectButton('6-2');
end;

procedure TForm1.B63Click(Sender: TObject);
begin
  checkSave;
  selectButton('6-3');
end;

procedure TForm1.B64Click(Sender: TObject);
begin
  checkSave;
  selectButton('6-4');
end;

procedure TForm1.B65Click(Sender: TObject);
begin
  checkSave;
  selectButton('6-5');
end;

procedure TForm1.B66Click(Sender: TObject);
begin
  checkSave;
  selectButton('6-6');
end;

procedure TForm1.B67Click(Sender: TObject);
begin
  checkSave;
  selectButton('6-7');
end;

procedure TForm1.B68Click(Sender: TObject);
begin
  checkSave;
  selectButton('6-8');
end;

procedure TForm1.B71Click(Sender: TObject);
begin
  checkSave;
  selectButton('7-1');
end;

procedure TForm1.B72Click(Sender: TObject);
begin
  checkSave;
  selectButton('7-2');
end;

procedure TForm1.B73Click(Sender: TObject);
begin
  checkSave;
  selectButton('7-3');
end;

procedure TForm1.B74Click(Sender: TObject);
begin
  checkSave;
  selectButton('7-4');
end;

procedure TForm1.B75Click(Sender: TObject);
begin
  checkSave;
  selectButton('7-5');
end;

procedure TForm1.B76Click(Sender: TObject);
begin
  checkSave;
  selectButton('7-6');
end;

procedure TForm1.B77Click(Sender: TObject);
begin
  checkSave;
  selectButton('7-7');
end;

procedure TForm1.B78Click(Sender: TObject);
begin
  checkSave;
  selectButton('7-8');
end;

procedure TForm1.B81Click(Sender: TObject);
begin
  checkSave;
  selectButton('8-1');
end;

procedure TForm1.B82Click(Sender: TObject);
begin
  checkSave;
  selectButton('8-2');
end;

procedure TForm1.B83Click(Sender: TObject);
begin
  checkSave;
  selectButton('8-3');
end;

procedure TForm1.B84Click(Sender: TObject);
begin
  checkSave;
  selectButton('8-4');
end;

procedure TForm1.B85Click(Sender: TObject);
begin
  checkSave;
  selectButton('8-5');
end;

procedure TForm1.B86Click(Sender: TObject);
begin
  checkSave;
  selectButton('8-6');
end;

procedure TForm1.B87Click(Sender: TObject);
begin
  checkSave;
  selectButton('8-7');
end;

procedure TForm1.B88Click(Sender: TObject);
begin
  checkSave;
  selectButton('8-8');
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  checkSave;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  mapStrings := TStringList.Create;
  changes := false;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Form1.Top := Screen.Height div 10;
  Form1.Left := Screen.Width div 2 - Form1.Width div 2;
  Form3.Show;
end;

procedure TForm1.LoadMapper1Click(Sender: TObject);
begin
  checkSave;
  mapStrings.Clear;
  if not fileExists('Novation Launchpad mapping.xml') then begin
    messagebox(0,'Cannot find file "Novation Launchpad mapping.xml".','Error',mb_ok+mb_iconerror);
    exit;
  end;

  mapStrings.LoadFromFile('Novation Launchpad mapping.xml');
  if mapStrings.Count > 0 then begin
    enableButtons(true);
  end;
end;

procedure TForm1.R1Click(Sender: TObject);
begin
  checkSave;
  selectButton('R-1');
end;

procedure TForm1.R2Click(Sender: TObject);
begin
  checkSave;
  selectButton('R-2');
end;

procedure TForm1.R3Click(Sender: TObject);
begin
  checkSave;
  selectButton('R-3');
end;

procedure TForm1.R4Click(Sender: TObject);
begin
  checkSave;
  selectButton('R-4');
end;

procedure TForm1.R5Click(Sender: TObject);
begin
  checkSave;
  selectButton('R-5');
end;

procedure TForm1.R6Click(Sender: TObject);
begin
  checkSave;
  selectButton('R-6');
end;

procedure TForm1.R7Click(Sender: TObject);
begin
  checkSave;
  selectButton('R-7');
end;

procedure TForm1.R8Click(Sender: TObject);
begin
  checkSave;
  selectButton('R-8');
end;

procedure TForm1.Sort1Click(Sender: TObject);
begin
  if messagedlg('Sort strings? (if you do not understand, click no)',mtInformation,mbYesNo,0) = mrYes then begin
    mapStrings.Sort;
    saveStrings;
  end;
end;

procedure TForm1.T1Click(Sender: TObject);
begin
  checkSave;
  selectButton('T-1');
end;

procedure TForm1.T2Click(Sender: TObject);
begin
  checkSave;
  selectButton('T-2');
end;

procedure TForm1.T3Click(Sender: TObject);
begin
  checkSave;
  selectButton('T-3');
end;

procedure TForm1.T4Click(Sender: TObject);
begin
  checkSave;
  selectButton('T-4');
end;

procedure TForm1.T5Click(Sender: TObject);
begin
  checkSave;
  selectButton('T-5');
end;

procedure TForm1.T6Click(Sender: TObject);
begin
  checkSave;
  selectButton('T-6');
end;

procedure TForm1.T7Click(Sender: TObject);
begin
  checkSave;
  selectButton('T-7');
end;

procedure TForm1.T8Click(Sender: TObject);
begin
  checkSave;
  selectButton('T-8');
end;

end.
