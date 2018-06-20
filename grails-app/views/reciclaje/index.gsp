<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'reciclaje.label', default: 'Reciclaje')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-reciclaje" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-reciclaje" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <table>
                <thead>
                    <tr>
                        <th class="sortable">
                            <a href="/reciclaje/index?sort=total&amp;max=10&amp;order=asc">Total</a>
                        </th>
                        <th class="sortable">
                            <a href="/reciclaje/index?sort=productos&amp;max=10&amp;order=asc">Productos</a>
                        </th>
                        <th class="sortable">
                            <a href="/reciclaje/index?sort=persona&amp;max=10&amp;order=asc">Persona</a>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <g:each var="reciclaje" in="${reciclajeList}">
                    <tr class="odd">
                        <td>
                            <a href="/reciclaje/show/${reciclaje.id}">${reciclaje.total}</a>
                        </td>
                        <td>
                            <ul>
                                <g:each var="producto" in="${reciclaje.productos}">
                                <li>
                                    <a href="/producto/show/${producto.id}">${producto.pruducto}</a>
                                </li>

                                </g:each>
                            </ul>
                        </td>
                        <td>
                            <a href="/persona/show/${reciclaje.persona.id}">${reciclaje.persona.nombre}</a>
                        </td>
                    </tr>

                    </g:each>
            
                </tbody>
            </table>
            <div class="pagination">
                <g:paginate total="${reciclajeCount ?: 0}" />
            </div>
        </div>
    </body>
</html>