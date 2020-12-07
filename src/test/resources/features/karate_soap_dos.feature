Feature: Ejemplo Dos - Cuenta bancaria - Automatización con Karate DSL Q-Vision

  Background:
    * def urlPath = 'http://www.thomas-bayer.com/axis2/services/BLZService'

  Scenario: Cuenta bancaria SOAP - Karate DSL
    Given url urlPath
    And request
"""
<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:blz="http://thomas-bayer.com/blz/">
   <soapenv:Header/>
   <soapenv:Body>
      <blz:getBank>
         <blz:blz>39060180</blz:blz>
      </blz:getBank>
   </soapenv:Body>
</soapenv:Envelope>
"""
    When soap action urlPath + '/getBank'
    Then status 200
    And match /Envelope/Body/getBankResponse/details//bezeichnung == 'Aachener Bank'
    And print response
