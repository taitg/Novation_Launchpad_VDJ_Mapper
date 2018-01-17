unit editUnit;

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
  ClipBrd,
  mainUnit;

type
  TForm3 = class(TForm)
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    controlLabel: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button7: TButton;
    Edit6: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button8: TButton;
    Button6: TButton;
    CheckBox1: TCheckBox;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure saveStrings;
begin
  mapStrings.SaveToFile('Novation Launchpad mapping.xml');
  changes := false;
end;

procedure replaceString(field: integer);
var
  find,rep: string;
begin
  find := inputbox('Find string','Replace this string:','');
  if find <> '' then begin
    rep := inputbox('Replace string','With this string:','');
    if rep <> '' then begin

      if field = 1 then Form3.Edit5.Text := stringReplace(Form3.Edit5.Text,find,rep,[rfReplaceAll,rfIgnoreCase])
      else if field = 2 then Form3.Edit2.Text := stringReplace(Form3.Edit2.Text,find,rep,[rfReplaceAll,rfIgnoreCase])
      else if field = 3 then Form3.Edit3.Text := stringReplace(Form3.Edit3.Text,find,rep,[rfReplaceAll,rfIgnoreCase])
      else if field = 4 then Form3.Edit4.Text := stringReplace(Form3.Edit4.Text,find,rep,[rfReplaceAll,rfIgnoreCase])
      else if field = 5 then Form3.Edit1.Text := stringReplace(Form3.Edit1.Text,find,rep,[rfReplaceAll,rfIgnoreCase]);

    end;
  end;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form1.Close;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  Form3.Top := Form1.Top+Form1.Height+20;
  Form3.Left := Screen.Width div 2 - Form3.Width div 2;
end;

procedure TForm3.Button10Click(Sender: TObject);
begin
  replaceString(2);
end;

procedure TForm3.Button11Click(Sender: TObject);
begin
  replaceString(3);
end;

procedure TForm3.Button12Click(Sender: TObject);
begin
  replaceString(4);
end;

procedure TForm3.Button13Click(Sender: TObject);
begin
  replaceString(5);
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  if iB > 0 then begin
    mapStrings.Delete(iB);
    mapStrings.Insert(iB,'<map value="B_'+Form3.controlLabel.Caption+'" action="'+Form3.Edit5.Text+'" />');
  end
  else mapStrings.Insert(mapStrings.Count-2,'<map value="B_'+Form3.controlLabel.Caption+'" action="'+Form3.Edit5.Text+'" />');
  saveStrings;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  if iR > 0 then begin
    mapStrings.Delete(iR);
    mapStrings.Insert(iR,'<map value="LED_R_'+Form3.controlLabel.Caption+'" action="'+Form3.Edit2.Text+'" />');
  end
  else mapStrings.Insert(mapStrings.Count-2,'<map value="LED_R_'+Form3.controlLabel.Caption+'" action="'+Form3.Edit2.Text+'" />');
  saveStrings;
end;


procedure TForm3.Button3Click(Sender: TObject);
begin
  if iA > 0 then begin
    mapStrings.Delete(iA);
    mapStrings.Insert(iA,'<map value="LED_A_'+Form3.controlLabel.Caption+'" action="'+Form3.Edit3.Text+'" />');
  end
  else mapStrings.Insert(mapStrings.Count-2,'<map value="LED_A_'+Form3.controlLabel.Caption+'" action="'+Form3.Edit3.Text+'" />');
  saveStrings;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
  if iY > 0 then begin
    mapStrings.Delete(iY);
    mapStrings.Insert(iY,'<map value="LED_Y_'+Form3.controlLabel.Caption+'" action="'+Form3.Edit4.Text+'" />');
  end
  else mapStrings.Insert(mapStrings.Count-2,'<map value="LED_Y_'+Form3.controlLabel.Caption+'" action="'+Form3.Edit4.Text+'" />');
  saveStrings;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
  if iG > 0 then begin
    mapStrings.Delete(iG);
    mapStrings.Insert(iG,'<map value="LED_G_'+Form3.controlLabel.Caption+'" action="'+Form3.Edit1.Text+'" />');
  end
  else mapStrings.Insert(mapStrings.Count-2,'<map value="LED_G_'+Form3.controlLabel.Caption+'" action="'+Form3.Edit1.Text+'" />');
  saveStrings;
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
  Form3.Edit6.Text := '&apos;';
end;

procedure TForm3.Button7Click(Sender: TObject);
begin
  Form3.Edit6.Text := '&amp;';
end;

procedure TForm3.Button8Click(Sender: TObject);
begin
  Form3.Edit6.Text := '&quot;';
end;

procedure TForm3.Button9Click(Sender: TObject);
begin
  replaceString(1);
end;

procedure TForm3.CheckBox1Click(Sender: TObject);
begin
  if not CheckBox1.Checked then begin
    Button1.Enabled := true;
    Button2.Enabled := true;
    Button3.Enabled := true;
    Button4.Enabled := true;
    Button5.Enabled := true;
  end
  else begin
    Button1.Enabled := false;
    Button2.Enabled := false;
    Button3.Enabled := false;
    Button4.Enabled := false;
    Button5.Enabled := false;
  end;

end;

procedure TForm3.Edit1Change(Sender: TObject);
begin
  changes := true;
end;

procedure TForm3.Edit2Change(Sender: TObject);
begin
  changes := true;
end;

procedure TForm3.Edit3Change(Sender: TObject);
begin
  changes := true;
end;

procedure TForm3.Edit4Change(Sender: TObject);
begin
  changes := true;
end;

procedure TForm3.Edit5Change(Sender: TObject);
begin
  changes := true;
end;

procedure TForm3.Edit6Change(Sender: TObject);
begin
  Clipboard.AsText := Edit6.Text;
end;

end.
