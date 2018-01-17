program lpmaptool;

uses
  Forms,
  mainUnit in 'mainUnit.pas' {Form1},
  aboutUnit in 'aboutUnit.pas' {Form2},
  editUnit in 'editUnit.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
