Feature: Ejemplo uno calculadora - Servicio Soap  Automatización Karate DSL Q-Vision

  Background:
    * def urlX = 'http://www.dneonline.com/calculator.asmx'
    * header Content-Type = 'text/xml'

  Scenario Outline: soap service
    Given url urlX + '?op=<operation>'
    And request
      """
      <soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:tem="http://tempuri.org/">
         <soapenv:Header/>
         <soapenv:Body>
            <tem:<operation>>
               <tem:intA><numOne></tem:intA>
               <tem:intB><numTwo></tem:intB>
            </tem:<operation>>
         </soapenv:Body>
      </soapenv:Envelope>
      """
    When method post
    Then status 200
    And match /Envelope/Body/<operation>Response/<operation>Result == <expectedResult>
    And print 'response: ', response

    Examples:
      | numOne | numTwo | expectedResult | operation |
      |      7 |      3 |             10 | Add       |
      |      5 |      3 |             15 | Multiply  |