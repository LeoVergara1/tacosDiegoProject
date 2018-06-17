package com.tacos

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class TacoServiceSpec extends Specification {

    TacoService tacoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Taco(...).save(flush: true, failOnError: true)
        //new Taco(...).save(flush: true, failOnError: true)
        //Taco taco = new Taco(...).save(flush: true, failOnError: true)
        //new Taco(...).save(flush: true, failOnError: true)
        //new Taco(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //taco.id
    }

    void "test get"() {
        setupData()

        expect:
        tacoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Taco> tacoList = tacoService.list(max: 2, offset: 2)

        then:
        tacoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        tacoService.count() == 5
    }

    void "test delete"() {
        Long tacoId = setupData()

        expect:
        tacoService.count() == 5

        when:
        tacoService.delete(tacoId)
        sessionFactory.currentSession.flush()

        then:
        tacoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Taco taco = new Taco()
        tacoService.save(taco)

        then:
        taco.id != null
    }
}
