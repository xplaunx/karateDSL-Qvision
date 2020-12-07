Feature: Metodo POST Practica Karate Q-Vision

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: Metodo Post REST API automatización Q-Vision
    Given path 'posts'
    * def jsonData =  { "userId": "1", "id": "501", "title": "xrendezw 2223", "body": "renato213    23232dsfd"}
    And request jsonData
    When method POST
    Then match $ contains {title: 'xrendezw 2223'}
    * print response

  Scenario: Metodo Post REST API automatización Q-Vision con lectura de JSON en archivo
    Given path 'posts'
    And request read('../json/data.json')
    When method POST
    Then status 201
    And match $ contains {title: 'Automatización con Karate DSL', body: 'Aprendiendo automatizar servicios web con Karate DSL Q-Vision'}
    * print response





