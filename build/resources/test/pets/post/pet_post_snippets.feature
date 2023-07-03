@ignore
Feature: Reusable scenarios for post a pet

  @Create
  Scenario:
    Given url "https://petstore.swagger.io/v2/pet"
    And request { "name": "Scooby", "status": "available" }
    When method post
    Then status 200
    And def petId = $.id