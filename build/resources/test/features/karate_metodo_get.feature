Feature: Metodo Get

  Background:
    * url 'https://jsonplaceholder.typicode.com/posts'

  Scenario: Metodo GET comparando el estado de la respuesta
    Given path 15
    When method GET
    Then status 200
















