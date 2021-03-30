<p align="center">
  <a href="https://github.com/bittencourtthulio/translator4d/blob/main/assets/logo.fw.png">
    <img alt="router4d" src="https://github.com/bittencourtthulio/translator4d/blob/main/assets/logo.fw.png">
  </a>  
</p>
<br>
<p align="center">
  <img src="https://img.shields.io/github/v/release/bittencourtthulio/translator4d?style=flat-square">
  <img src="https://img.shields.io/github/stars/bittencourtthulio/translator4d?style=flat-square">
  <img src="https://img.shields.io/github/contributors/bittencourtthulio/translator4d?color=orange&style=flat-square">
  <img src="https://img.shields.io/github/forks/bittencourtthulio/translator4d?style=flat-square">
  <img src="https://tokei.rs/b1/github/bittencourtthulio/translator4d?color=red&category=lines">
  <img src="https://tokei.rs/b1/github/bittencourtthulio/translator4d?color=green&category=code">
  <img src="https://tokei.rs/b1/github/bittencourtthulio/translator4d?color=yellow&category=files">
</p>

<p align="center">
  <b>Translator4D</b> é uma biblioteca Delphi desenvolvida para consumo dos recursos de APIs de Tradução, dando a possibilidade de tradução simples no seu sistema. Atualmente homologado apenas o serviço de tradução do Google, porém com possibilidade de expansão, fique a vontade para enviar suas contribuições.

# Translator4D
Biblioteca para trabalhar com Recursos de Tradução no Delphi


## ⚙️ Instalação 

*Pré requisitos: Delphi XE2


* **Instlação manual**: Adicione as seguintes pastas ao seu projeto, em *Project > Options > Resource Compiler > Directories and Conditionals > Include file search path*

```
../translator4d/src
```

## ⚡️ Como utilizar para realizar tradução com serviço da Google

```pascal
uses
  Translator4D;

implementation


const
  //Informações geradas no AWS Console
  APIKey = 'Sua APIKey google do Google Translator';

  TTranslator4D
      .New
        .Google
          .Credential
            .Key(APIKey)
          .&End
          .Params
            .Query('Texto que você deseja traduzir')
            .Source('Linguagem Original do Texto') //Verificar em https://cloud.google.com/translate/docs/languages?hl=pt-br as abreviações das linguagens disponíveis
            .Target('Linguagem na qual você deseja que a tradução seja feira') //Verificar em https://cloud.google.com/translate/docs/languages?hl=pt-br as abreviações das linguagens disponíveis
          .&End
        .Execute //Retorna em String o Texto Traduzido
```
