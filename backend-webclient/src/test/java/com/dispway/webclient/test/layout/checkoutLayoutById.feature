Feature: Commit a Layout over its id

  Background:
    * url xiboHost + '/api'
    * def loginResponse = call read('classpath:login.feature')
    * header Authorization = 'Bearer ' + loginResponse.token


#    Given path '/layout'
#    And header Content-Type = 'multipart/form-data'
#    And multipart field name = 'test'
#    When method GET
#    Then status 200
#    And print 'Response is: ', response




  Scenario: Normal
    Given path '/layout/checkout/3'
    #And header Content-Type = 'multipart/form-data'
    And request 1
    When method put
    Then status 200
    And print 'Response is: ', response