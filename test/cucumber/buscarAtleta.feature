Feature Buscar Atleta
 As a usuário do sistema
 I want Buscar um atleta
 So that eu posso ver os dados de um atleta específico

Scenario Buscar atleta não cadastrado
 Given estou no menu de atletas
 And existe atleta com nome "João Andrade"
 When é feita uma busca pelo nome "João Andrade"
 Then é avisado na tela que um erro ocorreu

Scenario Buscar atleta não cadastrado
 Given o atleta de nome "João Andrade" não está cadastrado no sistema
 When é feita uma busca pelo nome "João Andrade"
 Then uma mensagem de erro é acionada

Scenario Buscar atleta cadastrado
 Given estou no menu de atletas
 And existe um atleta com nome "Pedro Silva"
 When é feita uma busca pelo nome "Pedro Silva"
 Then é exibido na tela uma relação com informações de "Pedro Silva"

Scenario Buscar atleta cadastrado
 Given Existe algum atleta de nome "Pedro Silva" está cadastrado no sistema
 When busco pelo atleta de nome "Pedro Silva"
 Then É procurado no sistema as informações relacionadas ao atleta de nome "Pedro Silva"
