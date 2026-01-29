Feature: Call the greetings endpoint

Scenario: Successful call to greetings endpoint
    Given url 'http://localhost:8080'
    And path 'default/demo-chameleon/v1/greetings'
    When method GET
    Then status 200
    * match response.serviceName == 'demo-chameleon'
    * match response.message == 'This is the demo-chameleon service!'

Scenario: Not found call to demo-chameleon service
    Given url 'http://localhost:8080'
    And path 'default/demo-chameleon/v1/like'
    When method GET
    Then status 404