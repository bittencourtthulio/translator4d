unit Translator4D.Interfaces;

interface

type
  {*
    TTranslator4D
    .New
      .Google
        .Credencial
          .Key('')
        .&End
        .Params
          .Query('')
          .Source('')
          .Target('')
        .&End
      .Execute;
  *}

  iTranslator4DService = interface;


  iTranslator4D = interface
    ['{431B331C-72CA-4C8D-B684-8438604F4030}']
    //function Translate( aQuery, aSource, aTarget, aKey : String) : String;
    function Google : iTranslator4DService;
  end;

  iTranslator4DCredential = interface
    ['{149EC98C-EFBA-427F-B914-DCCF5CE97AA2}']
    function Key ( aValue : String ) : iTranslator4DCredential; overload;
    function Key : String; overload;
    function &End : iTranslator4DService;
  end;

  iTranslator4DParams = Interface
    ['{771FEEAF-A291-4E64-8DA4-5AA514987767}']
    function Query ( aValue : String ) : iTranslator4DParams; overload;
    function Source( aValue : String ) : iTranslator4DParams; overload;
    function Target( aValue : String ) : iTranslator4DParams; overload;
    function Query : String; overload;
    function Source : String; overload;
    function Target : String; overload;
    function &End : iTranslator4DService;
  End;

  iTranslator4DOptions = interface
    ['{F52E6A39-AD4E-49CA-8C64-E5DE3D9EF763}']
    function Cache(aValue : Boolean ) : iTranslator4DOptions; overload;
    function Cache : Boolean; overload;
    function &End : iTranslator4DService;
  end;

  iTranslator4DService = interface
    ['{7736550F-A8D4-47A2-A2A1-74370EFAEA70}']
    function Credential : iTranslator4DCredential;
    function Params : iTranslator4DParams;
    function Options : iTranslator4DOptions;
    function Execute : String;
  end;

implementation

end.
