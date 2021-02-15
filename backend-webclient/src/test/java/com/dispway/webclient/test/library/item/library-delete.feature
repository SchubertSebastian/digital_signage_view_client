Feature: Delete Library Item

  Background:
    * url xiboHost + '/api'
    * def loginResponse = call read('classpath:login.feature')
    * header Authorization = 'Bearer ' + loginResponse.token

  Scenario: delete library item by id


#library/ + mediaID

    Given path 'library/' + 24

    When method DELETE

    * def uploadStatusCode = responseStatus

    Then assert responseStatus == 200 || responseStatus == 204 || responseStatus == 202

    And print 'Response is: ', response
