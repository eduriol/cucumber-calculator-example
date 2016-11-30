@Run
Feature: Suma
  Estos escenarios comprobarán el comportamiento de una calculadora al sumar dos números
   
  Scenario: Suma de dos enteros positivos
    Given los parametros '1' y '1'
    When el operador sea 'sumar'
    Then solucion '2'
  
   Scenario: Suma de un entero negativo y otro positivo
    Given los parametros '-1' y '2'
    When el operador sea 'sumar'
    Then solucion '1'
   
  Scenario: Suma de dos enteros negativos
    Given los parametros '-1' y '-2'
    When el operador sea 'sumar'
    Then solucion '-3'

  Scenario: Suma de un entero positivo y un cero
    Given los parametros '3' y '0'
    When el operador sea 'sumar'
    Then solucion '3'

  Scenario: Suma de dos decimales
    Given los parametros '1.3' y '1.2'
    When el operador sea 'sumar'
    Then solucion '2.5'

  Scenario: Suma de un decimal y un entero
    Given los parametros '1.1' y '1'
    When el operador sea 'sumar'
    Then solucion '2.1'

  Scenario Outline: Mas sumas de ejemplo
    Given los parametros <uno> y <dos>
    When el operador sea <operador>
    Then solucion <resultado>
  Examples:
    | uno   | dos | operador   | resultado |
    |  12   |  5  |  "sumar"   | 17 |
    |  20   |  5  |  "sumar"  | 25 |
    |  35   |  7  |  "sumar" | 42  |
    |  4    |  2  |  "sumar" | 6 |