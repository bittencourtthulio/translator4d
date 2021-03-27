unit Translator4D.Params;

interface

uses
  Translator4D.Interfaces;

type
  TTranslator4DParams = class(TInterfacedObject, iTranslator4DParams)
    private
      [weak]
      FParent : iTranslator4DService;
      FQuery : String;
      FSource : String;
      FTarget : String;
    public
      constructor Create( aParent : iTranslator4DService );
      destructor Destroy; override;
      class function New (aParent : iTranslator4DService) : iTranslator4DParams;
      function Query ( aValue : String ) : iTranslator4DParams; overload;
      function Source( aValue : String ) : iTranslator4DParams; overload;
      function Target( aValue : String ) : iTranslator4DParams; overload;
      function Query : String; overload;
      function Source : String; overload;
      function Target : String; overload;
      function &End : iTranslator4DService;
  end;

implementation

{ TTranslator4DParams }

constructor TTranslator4DParams.Create(aParent: iTranslator4DService);
begin
  FParent := aParent;
end;

destructor TTranslator4DParams.Destroy;
begin

  inherited;
end;

function TTranslator4DParams.&End: iTranslator4DService;
begin
  Result := FParent;
end;

class function TTranslator4DParams.New(
  aParent: iTranslator4DService): iTranslator4DParams;
begin
  Result := Self.Create(aParent);
end;

function TTranslator4DParams.Query(aValue: String): iTranslator4DParams;
begin
  Result := self;
  FQuery := aValue;
end;

function TTranslator4DParams.Query: String;
begin
  Result := FQuery;
end;

function TTranslator4DParams.Source(aValue: String): iTranslator4DParams;
begin
  Result := Self;
  FSource := aValue;
end;

function TTranslator4DParams.Source: String;
begin
  Result := FSource;
end;

function TTranslator4DParams.Target(aValue: String): iTranslator4DParams;
begin
  Result := Self;
  FTarget := aValue;
end;

function TTranslator4DParams.Target: String;
begin
  Result := FTarget;
end;

end.
