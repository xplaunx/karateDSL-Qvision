Feature: Metodo PUT practica Q-Vision

  Scenario Outline: Metodo PUT - Practica Q-Vision utilizando escenario outline
    Given url 'https://jsonplaceholder.typicode.com/posts/1'
    When request { "userId":<userId>, "id":<id>, "title":<title>, "body":<body>  }
    And method put
    Then status 200
    And print 'Response is: ', response

    Examples:
      | userId | id | title                     | body                      |
      | 100    | 1  | Metodo put Qvision Karate | Karate DSL Automatización |
