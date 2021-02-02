Feature: Get token from xibo

  Scenario: Get the token
    Given url xiboHost + '/api/authorize/access_token'
    And multipart field client_id = xiboClientId
    And multipart field client_secret = xiboClientSecret
    And multipart field grant_type = "client_credentials"
    When method POST
    Then status 200
    And def token = response.access_token
