import steps.TestDataAndOperations
import static cucumber.api.groovy.EN.*

Given(~'^o atleta de nome "([^"]*)" não está cadastrado no sistema$') { 
String name -> jogador = TestDataAndOperations.findByNome(name)
assert jogador == null
}

When(~'^é feita uma busca pelo nome "([^"]*)"$') { 
String name -> TestDataAndOperations.findByNome(name)
}

Then(~'^nenhum resultado é retornado$') { 
return null
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
