Feature: Request to get all Media files

  Background:
    * url xiboHost + '/api'
    * def loginResponse = call read('classpath:login.feature')
    * header Authorization = 'Bearer ' + loginResponse.token

    # The queryparams are never used
  Scenario: Normal

    Given path 'library'
    And header Content-Type = 'multipart/form-data'
    When method GET
    Then status 200
    And print 'Response is: ', response







