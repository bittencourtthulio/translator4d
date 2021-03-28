unit Translator4D.Google;

interface

uses
  Translator4D.Interfaces;

type
  TTranslator4DGoogle = class(TInterfacedObject, iTranslator4DService)
    private
      FCredential : iTranslator4DCredential;
      FParams : iTranslator4DParams;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iTranslator4DService;
      function Credential : iTranslator4DCredential;
      function Params : iTranslator4DParams;
      function Execute : String;
  end;

implementation

uses
  System.JSON,
  RESTRequest4D,
  Translator4D.Credential,
  Translator4D.Params;

{ TBind4DTranslationGoogle }

constructor TTranslator4DGoogle.Create;
begin
  FCredential := TTranslator4DCredential.New(Self);
  FParams := TTranslator4DParams.New(Self);
end;

function TTranslator4DGoogle.Credential: iTranslator4DCredential;
begin
  Result := FCredential;
end;

destructor TTranslator4DGoogle.Destroy;
begin

  inherited;
end;

function TTranslator4DGoogle.Execute: String;
var
  aJsonSend : TJsonObject;
   LResponse: IResponse;
begin
  if FParams.Source = FParams.Target then
  begin
    Result := FParams.Source;
    exit;
  end;

  aJsonSend := TJsonObject.Create;
  try
    aJsonSend
      .AddPair('q', FParams.Query)
      .AddPair('source', FParams.Source)
      .AddPair('target', FParams.Target)
      .AddPair('format', 'text');

    LResponse :=
      TRequest
        .New
          .BaseURL('https://translation.googleapis.com/language/translate/v2?key=' + FCredential.Key)
          .Accept('application/json')
          .AddBody(aJsonSend.ToString)
        .Post;

    Result :=
      LResponse
        .JSONValue
          .GetValue<TJSONObject>('data')
          .GetValue<TJSONArray>('translations')
          .Items[0].GetValue<String>('translatedText');
  finally
    aJsonSend.Free;
  end;
end;

class function TTranslator4DGoogle.New: iTranslator4DService;
begin
  Result := Self.Create;
end;


function TTranslator4DGoogle.Params: iTranslator4DParams;
begin
  Result := FParams;
end;

end.
