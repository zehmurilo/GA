Feature: Buscar Atleta
 As: a usuário do sistema
 I want: Buscar um atleta
 So that: eu posso ver os dados de um atleta específico.

Scenario: Buscar atleta não cadastrado.
 Given: Não existe atleta com nome “João Andrade”.
 When: É feita uma busca pelo nome “João Andrade”.
 Then: Uma mensagem de nome inválido é acionada.

Scenario: Buscar atleta não cadastrado.
 Given: Não existe atleta com nome “João Andrade”.
 When: É feita uma busca pelo nome “João Andrade”.
 Then: Uma mensagem dizendo “Erro - Nome Inválido” é exibida na tela.

Scenario: Buscar atleta cadastrado
 Given: Existe atleta com nome “Pedro Silva”
 When: É feita uma busca pelo nome “Pedro Silva”
 Then: É exibido na tela uma relação com todas as informações de “Pedro Silva”

Scenario: Buscar atleta cadastrado
 Given: Existe atleta com nome “Pedro Silva”
 When: É feita uma busca pelo nome “Pedro Silva”
 Then: É procurado no sistema as informações relacionadas ao atleta de nome “Pedro Silva”
