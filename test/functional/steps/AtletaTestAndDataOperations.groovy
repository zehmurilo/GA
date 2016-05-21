package steps

import ga.AtletaController

class AtletaTestAndDataOperations {


    static atleta = [
            [name: "Thiago Santos", cpf: "012345678912", data_nascimento: "11/11/2011", contrato:"1", num_jogados:0]

    ]


    public static def findByCpf(String cpf){
        atleta.find{    atleta ->
                atleta.cpf == cpf
        }
    }

    public static def findByNome(String nome){
        atleta.find{    atleta ->
            atleta.nome == nome
        }
    }

    public static createAtleta(String nome, String cpf , String data_nascimento, String contrato, int num_jogados){
        def controller = new AtletaController()
        controller.params << [nome: nome, cpf: cpf, data_nascimento: data_nascimento, contrato: contrato, num_jogados: num_jogados]
        controller.request.setContent(new byte[1000])
        controller.saveAtleta(controller.criarAtleta())
        controller.response.reset()
    }

    public static void removeAtleta(def atleta){
        def controller = new AtletaController()
        controller.params << [id: atleta.getCpf()]
        controller.request.setContent(new byte[1000])
        controller.search()
        controller.response.reset()

    }

    public static void searchAtleta(def atleta) {
        def controller = new AtletaController()
        controller.params << [id: atleta.getCpf()]
        controller.request.setContent(new byte[1000])
        controller.delete()
        controller.response.reset()
    }
    public static String getInfo(String cpf) {
        def controller = new AtletaController()
        String atletaNome = controller.findByCpf(cpf).getNome()
        String atletaCpf = cpf
        String atletaDataNascimento = controller.findByCpf(cpf).getdata_nascimento()
        String atletaContrato = controller.findByCpf(cpf).getContrato()
        int atletaJogos = controller.findByCpf(cpf).getNum_jogados()
        atletaInfo = (" Nome: "+atletaNome+"/n CPF: "+atletaCpf+"/n Data de Nascimento: "+atletaDataNascimento+"/n Identificador do Contrato: "+atletaContrato+"/n Número de Jogos: "+atletaJogos)
        return atletaInfo

    }
}
