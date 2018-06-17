package com.tacos

import grails.gorm.services.Service

@Service(Taco)
interface TacoService {

    Taco get(Serializable id)

    List<Taco> list(Map args)

    Long count()

    void delete(Serializable id)

    Taco save(Taco taco)

}