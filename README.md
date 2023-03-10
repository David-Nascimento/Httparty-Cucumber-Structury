[![Ci Actions](https://github.com/David-Nascimento/Httparty-Cucumber-Structury/actions/workflows/main.yml/badge.svg)](https://github.com/David-Nascimento/Httparty-Cucumber-Structury/actions/workflows/main.yml)

# Projeto de Validação de Serviços para PetStore
Este é um projeto de automação de testes que utiliza Ruby, Cucumber e HTTParty para validar os serviços da PetStore (https://petstore.swagger.io/).

## Pré-requisitos
* Ruby 2.7.6 instalado
* Bundler instalado

## Instalação
* Clone o repositório
* Execute o comando bundle install na raiz do projeto

## Como executar os testes
Para executar os testes, execute o comando **`rake service`** na raiz do projeto. Para executar testes com tags específicas, utilize o comando **`rake service[TAGS]`**, substituindo **`TAGS`** pelas tags desejadas. Por exemplo, para executar apenas os testes com a tag **`@criar-usuario`**, utilize o comando **`rake service[@create_user]`**.

Os resultados dos testes serão armazenados em um relatório no formato **Allure**, na pasta allure-results. Para visualizar o relatório, execute o comando **`allure serve allure-results`**.

## Estrutura do Projeto
A estrutura do projeto segue a seguinte ordem:

* **features/payload:** Contém o arquivo JSON com o payload utilizado nos testes.
* **features/services/user:** Contém o arquivo que define os métodos utilizados para realizar as requisições HTTP.
* **features/step_definitions/user:** Contém as definições dos steps utilizados no arquivo de feature.
* **features/support:** Contém os arquivos de configuração e helper.
* **features/usuarios.feature:** Contém os cenários de teste para as funcionalidades de criação, consulta, atualização e exclusão de usuário.

## Arquivos
* **.gitignore:** Define os arquivos que não devem ser incluídos no repositório Git.
* **Gemfile:** Define as dependências do projeto.
* **README.md:** Documentação do projeto.
* **Rakefile:** Define as tarefas de automação do projeto.
* **cucumber.yaml:** Configuração do Cucumber.

## Tarefas de Automação
O Rakefile define as seguintes tarefas de automação:

* **service:** Executa os testes.
* **service[TAGS]:** Executa os testes com as tags especificadas.
* **allure:** Gera o relatório em HTML dos resultados dos testes.

Para executar as tarefas, utilize o comando **`rake`** seguido do nome da tarefa. Por exemplo, para executar os testes, utilize o comando **`rake service`**. Para executar os testes com a tag **`@create_user`**, utilize o comando **`rake service[@criar-usuario]`**. Para gerar o relatório, utilize o comando **`rake allure`**.
