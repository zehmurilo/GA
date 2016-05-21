package ga

class Atleta {

    String nome
    String cpf
    String data_nascimento
    String contrato

        static constraints = {
            nome null : false
            cpf unique : true
            data_nascimento null : false
            contrato null : false
    }
}
