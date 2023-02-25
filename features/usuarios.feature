@pipeline
Feature: Deve ser testado todos os fluxos de usuario

    @create_user
  Scenario: Criando usuario
    Given que eu envio uma requisicao para criar um novo usuario
    When minha API retornar 200
    Then meu usuario é criado com sucesso