Feature: Post pet on store

  Background:
    * url "https://petstore.swagger.io/v2"
    * path "/pet"
    * request {"id":1, "name": "#(name)", "status": "#(status)"}
    * def responsedataMax = read("response-data-Max-get.json")

  Scenario: Post a pet
    And request { "name": "Max", "status": "available" }
    When method post
    Then status 200
    And match $ == responsedataMax

  Scenario Outline: Post pets with the same ID
    When method post
    Then status 200

    Examples:
      | name    | status    |
      | Max     | available |
      | Nala    | pending   |
      | Rex     | sold      |

  Scenario: Post a pet without name
    And request { "status": "sold"}
    When method post
    Then status 200

  Scenario: Post a pet without nothing
    And request { }
    When method post
    Then status 200

  Scenario: Post a pet without status
    And request { "name": "Simba"}
    When method post
    Then status 200

  Scenario: Post a pet with status invalid
    And request { "name": "$%&%", "status": "%&%" }
    When method post
    Then status 200