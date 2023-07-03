Feature: Get pet created on store

  Background:
    * def responseFailedParameter = read("fail-parsing-parameter-get.json")

  Scenario: Get a pet created
    * call read("../post/pet_post_snippets.feature@Create")
    Given url "https://petstore.swagger.io/v2/pet/" + petId
    When method get
    Then status 200

  Scenario: Get a pet that wasn't created
    Given url "https://petstore.swagger.io/v2/pet/" + 0
    When method get
    Then status 404
    And match $ == responseFailedParameter

    #OBLIGADO DE FALLAR DADO QUE NO FUNCIONA LA ACTUALIZACIÓN DE LA INFORMACIÓN
    #SE TRATO DE SIMULAR QUE SE CREE SE ACTUALICE Y DESPUES SE LEA SIN EMBARGO AL
    #NO VALER LA ACTUALIZACIÓN SOLO SE GENERO EN CASO DE SI FUNCIONAR EL ESCENARIO
  Scenario: Get a pet created by status
    * call read("../post/pet_post_snippets.feature@Create")
    Given url "https://petstore.swagger.io/v2/pet/findByStatus?status=sold"
    When method get
    Then status 200
    And def petIds = $[*].id
    And match petIds contains any petId



