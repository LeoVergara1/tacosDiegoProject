<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'compra.label', default: 'Compra')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-compra" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-compra" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table>
                <thead>
                    <tr>
                        <th class="sortable">
                            <a href="/compra/index?sort=tacos&amp;max=10&amp;order=asc">Tacos</a>
                        </th>
                        <th class="sortable">
                            <a href="/compra/index?sort=descuento&amp;max=10&amp;order=asc">Descuento</a>
                        </th>
                        <th class="sortable">
                            <a href="/compra/index?sort=total&amp;max=10&amp;order=asc">Total</a>
                        </th>
                        <th class="sortable">
                            <a href="/compra/index?sort=descripcion&amp;max=10&amp;order=asc">Descripcion</a>
                        </th>
                        <th class="sortable">
                            <a href="/compra/index?sort=persona&amp;max=10&amp;order=asc">Persona</a>
                        </th>
                        <th class="sortable">
                            <a href="/compra/index?sort=persona&amp;max=10&amp;order=asc">Mostrar</a>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <g:each var="compra" in="${compraList}">
                    <tr class="odd">
                        <td>
                            <ul>
                            <g:each var="element" in="${compra.tacos}">
                                <li>
                                    <a href="/taco/show/${element.id}">${element.nombre}</a>
                                </li>
                            </g:each>
                            </ul>
                        </td>
                        <td>${compra.descuento}</td>
                        <td>${compra.total}</td>
                        <td>${compra.descripcion}</td>
                        <td>
                            <a href="/persona/show/${compra.persona.id}">${compra.persona.nombre}</a>
                        </td>
                        <td><a href="/compra/show/${compra.id}">Ver</a></td>
                    </tr>

                    </g:each> 
                </tbody>
            </table>
            <div class="pagination">
                <g:paginate total="${compraCount ?: 0}" />
            </div>
        </div>
    </body>
</html>