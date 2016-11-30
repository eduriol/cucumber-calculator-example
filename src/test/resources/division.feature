@Run
Feature: Division
  Estos escenarios comprobarán el comportamiento de una calculadora al dividir dos números
   
  Scenario: Division de dos enteros positivos
    Given los parametros '2' y '4'
    When el operador sea 'dividir'
    Then solucion '0.5'
  
   Scenario: Division de un entero negativo y otro positivo
    Given los parametros '-3' y '2'
    When el operador sea 'dividir'
    Then solucion '-1.5'
   
  Scenario: Division de dos enteros negativos
    Given los parametros '-5' y '-2'
    When el operador sea 'dividir'
    Then solucion '2.5'

  Scenario: Division de un entero positivo y un cero
    Given los parametros '3' y '0'
    When el operador sea 'dividir'
    Then division por cero es true
    
  Scenario: Division de un cero y un cero
    Given los parametros '0' y '0'
    When el operador sea 'dividir'
    Then division por cero es true

  Scenario: Division de un entero positivo y un uno
    Given los parametros '3' y '1'
    When el operador sea 'dividir'
    Then solucion '3'

  Scenario: Division de dos decimales
    Given los parametros '1.3' y '1.2'
    When el operador sea 'dividir'
    Then solucion '1.083333333'

  Scenario: Division de un decimal y un entero
    Given los parametros '1.1' y '2'
    When el operador sea 'dividir'
    Then solucion '0.55'