
Feature: Get Layout by its parent id

  Background:
    * url xiboHost + '/api'
    * def loginResponse = call read('classpath:login.feature')
    * header Authorization = 'Bearer ' + loginResponse.token

  Scenario: Normal
    Given path '/layout'
    And header Content-Type = 'multipart/form-data'
    And multipart field parentId = 1
    And multipart field embed = null
    And multipart field retired = 0
    When method GET
    Then status 200
    And print 'Response is: ', response