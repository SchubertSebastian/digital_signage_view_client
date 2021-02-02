Feature: Get all layouts that are associated with the user and his user attributes (tags)

  Background:
    * url xiboHost + '/api'
    * def loginResponse = call read('classpath:login.feature')
    * header Authorization = 'Bearer ' + loginResponse.token

  Scenario: Remove me later
    Given path '/layout'
    When method GET
    Then status 200
    And print response
