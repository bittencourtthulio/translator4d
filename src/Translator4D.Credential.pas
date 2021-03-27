unit Translator4D.Credential;

interface

uses
  Translator4D.Interfaces;

type
  TTranslator4DCredential = class(TInterfacedObject, iTranslator4DCredential)
    private
      [weak]
      FParent : iTranslator4DService;
      FKey : String;
    public
      constructor Create( aParent : iTranslator4DService);
      destructor Destroy; override;
      class function New ( aParent : iTranslator4DService) : iTranslator4DCredential;
      function Key ( aValue : String ) : iTranslator4DCredential; overload;
      function Key : String; overload;
      function &End : iTranslator4DService;
  end;
implementation

{ TTranslator4DCredential }

constructor TTranslator4DCredential.Create(aParent: iTranslator4DService);
begin
  FParent := aParent;
end;

destructor TTranslator4DCredential.Destroy;
begin

  inherited;
end;

function TTranslator4DCredential.&End: iTranslator4DService;
begin
  Result := FParent;
end;

function TTranslator4DCredential.Key: String;
begin
  Result := FKey;
end;

function TTranslator4DCredential.Key(aValue: String): iTranslator4DCredential;
begin
  Result := Self;
  FKey := aValue;
end;

class function TTranslator4DCredential.New(
  aParent: iTranslator4DService): iTranslator4DCredential;
begin
  Result := Self.Create(aParent);
end;

end.
