unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Translator4D.Interfaces;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FTranslator4D : iTranslator4D;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  Translator4D;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  Memo2.Lines.Clear;
  Memo2.Lines.Add(
    FTranslator4D
        .Google
          .Credential
            .Key(Edit3.Text)
          .&End
          .Params
            .Query(Memo1.Text)
            .Source(Edit1.Text)
            .Target(Edit2.Text)
          .&End
        .Execute
  );
end;

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
  FTranslator4D.Google.Options.Cache(CheckBox1.Checked);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  FTranslator4D := TTranslator4D.New;
end;

end.
