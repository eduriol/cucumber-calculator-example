@Run
Feature: Resta
  Estos escenarios comprobarán el comportamiento de una calculadora al restar dos números
   
  Scenario: Resta de dos enteros positivos
    Given los parametros '1' y '1'
    When el operador sea 'restar'
    Then solucion '0'
  
   Scenario: Resta de un entero negativo y otro positivo
    Given los parametros '-1' y '2'
    When el operador sea 'restar'
    Then solucion '-3'
   
  Scenario: Resta de dos enteros negativos
    Given los parametros '-1' y '-2'
    When el operador sea 'restar'
    Then solucion '1'

  Scenario: Resta de un entero positivo y un cero
    Given los parametros '3' y '0'
    When el operador sea 'restar'
    Then solucion '3'

  Scenario: Resta de dos decimales
    Given los parametros '1.3' y '1.2'
    When el operador sea 'restar'
    Then solucion '0.1'

  Scenario: Resta de un decimal y un entero
    Given los parametros '1.1' y '1'
    When el operador sea 'restar'
    Then solucion '0.1'