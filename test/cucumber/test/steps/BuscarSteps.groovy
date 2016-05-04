import steps.*
import steps.pages.*
import static cucumber.api.groovy.EN.*

Given(~'^"([^"]*)" está cadastrado no sistema$') { 
  String name -> addAtleta(name, null, null, null)
  assert atletas.findByNome(name) != null
}

When(~'^busco pelo atleta de nome "([^"]*)"$') { 
  String name -> assert atletas.findByNome(name) != null
}

Then(~'^É retornado datalhes do atleta "([^"]*)"$') { String name ->
  assert atletas.getInfo(atletas.findByNome(name)) != null
}

Given(~'^estou no menu de atletas e existe atleta com nome "([^"]*)"$') {
  String name -> addAtleta(name, null, null, null)
  at menuAtletasPage
}

When(~'^é feita uma busca pelo nome "([^"]*)"$') { String name ->
  at menuAtletasPage
  page.selectBuscarAtletaNome(name)
}

Then(~'^Aparece na tela os dados do atleta "([^"]*)"$') { String name->
  at menuAtletasPage
  page.showAtletaInfo(name)
}
