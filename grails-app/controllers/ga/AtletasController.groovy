package ga

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional


class AtletasController {

    def index() { }


    def create() {
        respond new Atleta(params)
    }

    public Atleta criarAtleta() {
        return new Atleta(params)
    }

    def save(Atleta atletaInstance) {
        if (atletaInstance == null) {
            notFound()
            return
        }

        if (atletaInstance.hasErrors()) {
            respond atletaInstance.errors, view:'create'
            return
        }

        atletaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'atleta.label', default: 'Atleta'), atletaInstance.id])
                redirect atletaInstance
            }
            '*' { respond atletaInstance, [status: CREATED] }
        }
    }
    public boolean saveAtleta(Atleta atleta) {
        atleta.save flush : true
        true
    }



    def delete(Atleta atletaInstance){

        if(atletaInstance == null){
            notFound()
            return
        }



        atletaInstance.delete flush:true

        request.withFormat{
            form multipartForm {
                flash.message = message(code: 'defalt.deleted.message', args: [message(code: 'Atleta.label', default: 'Atleta'),atletaInstance.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NO_CONTENT }
        }

    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'defalt.deleted.message', args: [message(code: 'Atleta.label', default: 'Atleta'),atletaInstance.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }
}
