package com.tacos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class TacoController {

    TacoService tacoService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond tacoService.list(params), model:[tacoCount: tacoService.count()]
    }

    def show(Long id) {
        respond tacoService.get(id)
    }

    def create() {
        respond new Taco(params)
    }

    def save(Taco taco) {
        if (taco == null) {
            notFound()
            return
        }

        try {
            tacoService.save(taco)
        } catch (ValidationException e) {
            respond taco.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'taco.label', default: 'Taco'), taco.id])
                redirect taco
            }
            '*' { respond taco, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond tacoService.get(id)
    }

    def update(Taco taco) {
        if (taco == null) {
            notFound()
            return
        }

        try {
            tacoService.save(taco)
        } catch (ValidationException e) {
            respond taco.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'taco.label', default: 'Taco'), taco.id])
                redirect taco
            }
            '*'{ respond taco, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        tacoService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'taco.label', default: 'Taco'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'taco.label', default: 'Taco'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
