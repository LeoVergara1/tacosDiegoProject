<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'reciclaje.label', default: 'Reciclaje')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-reciclaje" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-reciclaje" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.reciclaje}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.reciclaje}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.reciclaje}" method="POST">
                        <fieldset class="form">
                <div class="fieldcontain">
                    <g:each var="producto" in="${productos}">
                        <div class="row">
                            <div class="col-lg-4">
                            <input type="checkbox" class="valid" name="ids" value="${producto.id}"> ${producto.pruducto}<br>
                            </div>
                            <div class="col-lg-4 hermana">
                                <label for="Cantidad"> Cantidad</label>
                            <input type="number" class="cantidad" name="producto[cantidad]" value="" disabled><br>
                            <input type="hidden" class="price" name="producto[cantidad]" value=${producto.costo}><br>
                            </div>
                            <div class="col-lg-4 hermano">
                                <label for="ganancia"> Ganancia</label>
                            <input type="input" class="ganancia" name="producto[cantidad]" value="0"  disabled><br>
                            </div>
                        </div>
                        </g:each>

                </div>
                                <div class="fieldcontain required">
              <label for="total">Total
                <span class="required-indicator">*</span>
              </label><input name="total" value="" required="" id="total" type="number decimal" style="pointer-events:none;" >
            </div><div class="fieldcontain">
            </div>
                          <div class="fieldcontain required">
                                <label for="persona">Persona
                                  <span class="required-indicator">*</span>
                                </label><select name="persona.id" required="" id="persona">
                            <g:each var="persona" in="${personas}">
                              <option value="${persona.id}">${persona.nombre}</option>
                                </g:each>
                              </select>
                              </div>
                            </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
