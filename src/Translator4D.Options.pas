unit Translator4D.Options;

interface

uses
  Translator4D.Interfaces;

type
  TTranslator4DOptions = class(TInterfacedObject, iTranslator4DOptions)
    private
      [weak]
      FParent : iTranslator4DService;
      FCache : Boolean;
    public
      constructor Create( aParent : iTranslator4DService);
      destructor Destroy; override;
      class function New( aParent : iTranslator4DService) : iTranslator4DOptions;
      function Cache(aValue : Boolean ) : iTranslator4DOptions; overload;
      function Cache : Boolean; overload;
      function &End : iTranslator4DService;
  end;

implementation

{ TTranslator4DOptions }

function TTranslator4DOptions.Cache(aValue: Boolean): iTranslator4DOptions;
begin
  Result := Self;
  FCache := aValue;
end;

function TTranslator4DOptions.Cache: Boolean;
begin
  Result := FCache;
end;

constructor TTranslator4DOptions.Create(aParent: iTranslator4DService);
begin
  FParent := aParent;
  FCache := False;
end;

destructor TTranslator4DOptions.Destroy;
begin

  inherited;
end;

function TTranslator4DOptions.&End: iTranslator4DService;
begin
  Result := FParent;
end;

class function TTranslator4DOptions.New(
  aParent: iTranslator4DService): iTranslator4DOptions;
begin
  Result := Self.Create(aParent);
end;

end.
