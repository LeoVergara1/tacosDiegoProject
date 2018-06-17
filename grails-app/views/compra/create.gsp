<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'compra.label', default: 'Compra')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-compra" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-compra" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.compra}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.compra}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.compra}" method="POST">
                <fieldset class="form">
                <div class="fieldcontain">
                    <g:each var="taco" in="${allTacos}">
                            <input type="checkbox" name="taco" value="${taco.id}"> ${taco.nombre}<br>
                        </g:each>

                </div>
                <div class="fieldcontain required">
                    <label for="descuento">Descuento
                        <span class="required-indicator">*</span>
                    </label>
                    <input type="number decimal" name="descuento" value="" required="" id="descuento">
                </div>
                <div class="fieldcontain required">
                        <label for="total">Total
                          <span class="required-indicator">*</span>
                        </label><input type="number decimal" name="total" value="" required="" id="total">
                      </div>
                      <div class="fieldcontain required">
                            <label for="descripcion">Descripcion
                              <span class="required-indicator">*</span>
                            </label><input type="text" name="descripcion" value="" required="" id="descripcion">
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
