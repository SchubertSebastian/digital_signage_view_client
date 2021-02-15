Feature: Get displays

  Background:
    * url xiboHost + '/api'
    * def loginResponse = call read('classpath:login.feature')
    * header Authorization = 'Bearer ' + loginResponse.token

  Scenario: get all displays from a displaygroup by displaygroupId
    Given path '/display'
    When method GET
    Then status 200
    And print response
