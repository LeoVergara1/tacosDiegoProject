package com.tacos

class Compra {

    BigDecimal total
    Persona persona
    List<Taco> tacos
    BigDecimal descuento
    String descripcion

    Date lastUpdated
    Date dateCreated

    static constraints = {
    }
}
