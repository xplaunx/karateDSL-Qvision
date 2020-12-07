Feature: Metodo Delete - Karate Q Vision

  Background:
    * url 'https://jsonplaceholder.typicode.com/posts'

  Scenario: Metodo Delete comparando el estado de la respuesta
    Given path 1
    When method delete
    Then status 200
