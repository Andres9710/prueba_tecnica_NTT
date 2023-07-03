Feature: Put pet on store

  Scenario: Put status of a pet
    * call read("../post/pet_post_snippets.feature@Create")
    Given url "https://petstore.swagger.io/v2/pet/" + petId
    And request { "status": "sold"}
    When method put
    Then status 405
