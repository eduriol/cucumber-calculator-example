@Run
Feature: Multiplicacion
  Estos escenarios comprobar�n el comportamiento de una calculadora al multiplicar dos n�meros
   
  Scenario: Multiplicacion de dos enteros positivos
    Given los parametros '2' y '4'
    When el operador sea 'multiplicar'
    Then solucion '8'
  
   Scenario: Multiplicacion de un entero negativo y otro positivo
    Given los parametros '-3' y '2'
    When el operador sea 'multiplicar'
    Then solucion '-6'
   
  Scenario: Multiplicacion de dos enteros negativos
    Given los parametros '-5' y '-2'
    When el operador sea 'multiplicar'
    Then solucion '10'

  Scenario: Multiplicacion de un entero positivo y un cero
    Given los parametros '3' y '0'
    When el operador sea 'multiplicar'
    Then solucion '0'

  Scenario: Multiplicacion de un entero positivo y un uno
    Given los parametros '3' y '1'
    When el operador sea 'multiplicar'
    Then solucion '3'

  Scenario: Multiplicacion de dos decimales
    Given los parametros '1.3' y '1.2'
    When el operador sea 'multiplicar'
    Then solucion '1.56'

  Scenario: Multiplicacion de un decimal y un entero
    Given los parametros '1.1' y '2'
    When el operador sea 'multiplicar'
    Then solucion '2.2'
  
 Scenario Outline: Mas multiplicaciones de ejemplo
    Given los parametros <uno> y <dos>
    When el operador sea <operador>
    Then solucion <resultado>
  Examples:
    | uno   | dos | operador   | resultado |
    |  12   |  5  |  "multiplicar"   | 60 |
    |  20   |  5  |  "multiplicar"  | 100 |
    |  35   |  7  |  "multiplicar" | 245  |
    |  4    |  2  |  "multiplicar" | 8 |