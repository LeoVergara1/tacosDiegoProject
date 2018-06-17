<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'compra.label', default: 'Compra')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-compra" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-compra" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <ol class="property-list compra">
    
                    <li class="fieldcontain">
                        <span id="tacos-label" class="property-label">Tacos</span>
                        <div class="property-value" aria-labelledby="tacos-label">
                            <ul>
                            <g:each var="element" in="${compra.tacos}">
                                <li>
                                    <a href="/taco/show/${element.id}">${element.nombre}</a>
                                </li>
                            </g:each>
                            </ul>
                        </div>
                    </li>
                    <li class="fieldcontain">
                        <span id="descuento-label" class="property-label">Descuento</span>
                        <div class="property-value" aria-labelledby="descuento-label">${compra.descuento}</div>
                    </li>
                    <li class="fieldcontain">
                        <span id="total-label" class="property-label">Total</span>
                        <div class="property-value" aria-labelledby="total-label">${compra.total}</div>
                    </li>
                    <li class="fieldcontain">
                        <span id="descripcion-label" class="property-label">Descripcion</span>
                        <div class="property-value" aria-labelledby="descripcion-label">${compra.descripcion}</div>
                    </li>
                    <li class="fieldcontain">
                        <span id="persona-label" class="property-label">Persona</span>
                        <div class="property-value" aria-labelledby="persona-label"><a href="/persona/show/2">${compra.persona.nombre}</a></div>
                    </li>
            </ol>
            <g:form resource="${this.compra}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.compra}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    <g:link class="edit" action="pdf" resource="${this.compra}">Generar Ticket</g:link>
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
