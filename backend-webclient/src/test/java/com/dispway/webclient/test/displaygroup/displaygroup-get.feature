Feature: Get Displaygroups

  Background:

    * url xiboHost + '/api'
    * def loginResponse = call read('classpath:login.feature')
    * header Authorization = 'Bearer ' + loginResponse.token

# no displaygroups in testcontainer
  Scenario: get all displaygroups

    Given path '/displaygroup'
    When method GET
    Then status 200
    And print 'Response is: ', response


