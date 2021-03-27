unit Translator4D;

interface

uses
  Translator4D.Interfaces;

type
  TTranslator4D = class(TInterfacedObject, iTranslator4D)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iTranslator4D;
      function Google : iTranslator4DService;
  end;


implementation

uses
  System.SysUtils,
  Translator4D.Google;

constructor TTranslator4D.Create;
begin
  //
end;

destructor TTranslator4D.Destroy;
begin

  inherited;
end;

function TTranslator4D.Google: iTranslator4DService;
begin
  Result := TTranslator4DGoogle.New;
end;

class function TTranslator4D.New: iTranslator4D;
begin
  Result := Self.Create;
end;

end.
