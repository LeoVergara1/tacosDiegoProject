package com.tacos

import grails.gorm.services.Service

@Service(Reciclaje)
interface ReciclajeService {

    Reciclaje get(Serializable id)

    List<Reciclaje> list(Map args)

    Long count()

    void delete(Serializable id)

    Reciclaje save(Reciclaje reciclaje)

}