Feature: publish a Layout by its id

  Background:
    * url xiboHost + '/api'
    * def loginResponse = call read('classpath:login.feature')
    * header Authorization = 'Bearer ' + loginResponse.token

  Scenario: Todo
    Given path '/layout/publish/3'
    And header Content-Type = 'multipart/form-data'
    And multipart field publishNow = 1
    And request 1
    When method put
    Then status 200
    And print 'Response is: ', response