package com.tacos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ReciclajeController {

    ReciclajeService reciclajeService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond reciclajeService.list(params), model:[reciclajeCount: reciclajeService.count()]
    }

    def show(Long id) {
        respond reciclajeService.get(id)
    }

    def create() {
        def productos = Producto.getAll()
        respond new Reciclaje(params), model:[productos: productos, personas: Persona.getAll()]
    }

    def save(Reciclaje reciclaje) {
        println reciclaje.dump()
        println params.dump()
        def productos = Producto.getAll(params.ids)
        if (reciclaje == null) {
            notFound()
            return
        }
        reciclaje.productos = productos

        try {
            reciclajeService.save(reciclaje)
        } catch (ValidationException e) {
            respond reciclaje.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'reciclaje.label', default: 'Reciclaje'), reciclaje.id])
                redirect reciclaje
            }
            '*' { respond reciclaje, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond reciclajeService.get(id)
    }

    def update(Reciclaje reciclaje) {
        if (reciclaje == null) {
            notFound()
            return
        }

        try {
            reciclajeService.save(reciclaje)
        } catch (ValidationException e) {
            respond reciclaje.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'reciclaje.label', default: 'Reciclaje'), reciclaje.id])
                redirect reciclaje
            }
            '*'{ respond reciclaje, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        reciclajeService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'reciclaje.label', default: 'Reciclaje'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    def pdf(Long id){
        def reciclaje = reciclajeService.get(id)         
        println reciclaje.dump()
        renderPdf(template: '/reciclaje/pdf', model: [reciclaje: reciclaje])
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'reciclaje.label', default: 'Reciclaje'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
