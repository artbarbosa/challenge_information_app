# Challenge Information App 

## Layout

<img width="325" alt="Captura de Tela 2023-11-08 às 13 15 28" src="https://github.com/artbarbosa/dictionary_challenge/assets/91624613/9c1331b9-5f56-4b63-adf1-34804bc07f64">
<img width="325" alt="Captura de Tela 2023-11-08 às 13 15 01" src="https://github.com/artbarbosa/dictionary_challenge/assets/91624613/d7054dbd-3f9b-4906-b0f4-77287d5bda6a">

# Padrões do Projeto

## Flutter Version
A Versão do flutter que é utilizada neste projeto foi a 3.13.9.

# Como rodar

## Clonar código fonte do Challenge Information App

- Abra o Git Bash
- Escolha uma pasta onde colocorá o código do challenge_information_app
- Execute o seguinte comando para clonar o código: `git clone git@github.com:artbarbosa/challenge_information_app.git`
   Se for solicitado, confie no repositório
- Rode os comandos
  - `flutter pub get`
  - `dart run build_runner build --delete-conflicting-outputs`
  - `flutter run`

## Apresentão geral da Arquitetura
O sistema foi dividido de forma modular, esses mesmo modulos podem conter submodules e cada modulo contém seu proprio sistema de arquitetura, cujo o utilizado neste projeto foi o Clean Dart.

![](https://user-images.githubusercontent.com/53379557/175559723-dafd93a1-2420-46c5-b1e7-ac814bcf4f2e.png)

## Segmented State Pattern

Utilizdo para permitir que um objeto altere seu comportamento quando seu estado interno mudar. O objeto aparecerá para alterar sua classe. Então é utlizado para pelos Controllers/Stores para modificar o estado das pages;

## Dependency inversion principle (DIP)

Pensando na manutenibilidade e desacoplamento, apliquei o princípio do DiP, um dos princípios do SOLID, onde as classes devem seguir uma interface (abstração) e serem uma implementação dessa interface e outras classes não devem depender da implementação e sim da interface.

## Service pattern

Utilize design pattern Service tanto para implementar as interfaces do HttpClient quanto isolar o package de database local

## Tratamento de Erros 

Como um dos aspectos mais importante durante o desenvolvimento de software, fiz o tratamento de error em suas respctivas camadas com classes criadas denominando possibilidades de erros e suas respctivas necessidades.

## Routers 

Baseado no sistema de rotas do Modular e Nuvigator, apliquei um padrão de sistema de roteadores, em suas respctivas camadas, no Core vai ter um Router principal para fazer a comunicação e roteamento entre os módulos, e dento de cada modulo vou ter respectivos roteadores, no caso MovieRouter, a qual tem a responsabilidade de fazer um roteamento interno no modular chamando Containers como HomeContainer ou Routes como DetailRoute, a qual chama o DetailPage, com a necessidade de passagem de Argumentos entre esses Widgets, fiz uma classe DetailArguments para fazer a passagem de múltiplos argumentos e poder ter maior controle de tipagem.

## Testes Unitários 

Para verificar o comportamento das unidades na aplicação e manter um desenvolvimento conciso e com maior quantidade de tratamento de erros e exceções apliquei testes unitários utilizando mocks para não criar dependência de dados externos.
