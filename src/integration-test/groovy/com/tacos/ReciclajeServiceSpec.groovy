package com.tacos

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class ReciclajeServiceSpec extends Specification {

    ReciclajeService reciclajeService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Reciclaje(...).save(flush: true, failOnError: true)
        //new Reciclaje(...).save(flush: true, failOnError: true)
        //Reciclaje reciclaje = new Reciclaje(...).save(flush: true, failOnError: true)
        //new Reciclaje(...).save(flush: true, failOnError: true)
        //new Reciclaje(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //reciclaje.id
    }

    void "test get"() {
        setupData()

        expect:
        reciclajeService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Reciclaje> reciclajeList = reciclajeService.list(max: 2, offset: 2)

        then:
        reciclajeList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        reciclajeService.count() == 5
    }

    void "test delete"() {
        Long reciclajeId = setupData()

        expect:
        reciclajeService.count() == 5

        when:
        reciclajeService.delete(reciclajeId)
        sessionFactory.currentSession.flush()

        then:
        reciclajeService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Reciclaje reciclaje = new Reciclaje()
        reciclajeService.save(reciclaje)

        then:
        reciclaje.id != null
    }
}
