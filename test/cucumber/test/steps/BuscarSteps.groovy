import steps.TestDataAndOperations
import static cucumber.api.groovy.EN.*

Given(~'^"([^"]*)" está cadastrado no sistema$') { 
String name -> addAtleta(name, null, null, null)
assert atletas.findByNome(name) != null
}

When(~'^busco pelo atleta de nome "([^"]*)"$') { 
String name -> assert atletas.findByNome(name) != null
}

Then(~'^É retornado datalhes do atleta procurado$') { 
assert atletas.getInfo(atletas.findByNome(name)) != null
}

Given(~'^estou no menu de atletas e não existe atleta com nome "([^"]*)"$') {
String name -> jogador = TestDataAndOperations.findByNome(name)
assert jogador == null
}

When(~'^é feita uma busca pelo nome "([^"]*)"$') {
String name -> jogador = TestDataAndOperations.findByNome(name)
}

Then(~'^é avisado na tela que um erro ocorreu$') {
flash.message = "Jogador não existente"
}
