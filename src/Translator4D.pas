unit Translator4D;

interface

uses
  Translator4D.Interfaces;

type
  TTranslator4D = class(TInterfacedObject, iTranslator4D)
    private
      FGoogle : iTranslator4DService;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iTranslator4D;
      function Google : iTranslator4DService;
  end;

var
  vTranslator4D : iTranslator4D;


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
  if not Assigned(FGoogle) then
    FGoogle := TTranslator4DGoogle.New;
    
  Result := FGoogle;
end;

class function TTranslator4D.New: iTranslator4D;
begin
  if not Assigned(vTranslator4D) then
    vTranslator4D := Self.Create;
    
  Result := vTranslator4D;
end;

initialization
  vTranslator4D := TTranslator4D.New;

end.
