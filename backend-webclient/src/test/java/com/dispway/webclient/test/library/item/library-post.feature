Feature: Uploading a a library item to the server

  Background:
    * url xiboHost + '/api'
    * def loginResponse = call read('classpath:login.feature')
    * header Authorization = 'Bearer ' + loginResponse.token

  Scenario: Post a valid image
    * def myFile = {filename: 'testimg.png', read: 'testimg.png', contentType: 'image/png' }

    Given path 'library'
    And header Content-Type = 'multipart/form-data'
    And multipart file files = myFile
    When method POST
    Then status 200
    And print 'Response is: ', response
