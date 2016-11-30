package com.Calculadora;

import static org.junit.Assert.*;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class claseCambio {
	
	private Calculadora calcu = new Calculadora();

	@Given("los parametros '(.+)' y '(.+)'")
	public void mandarParametros(final float uno, final float dos) {
	    calcu.asignarValores(uno,dos);
	}
	 
	@When("el operador sea '(.+)'")
	public void hacerOperacion(String operador) {
	    calcu.asignarOperador(operador);
	}
	 
	@Then("solucion '(.+)'")
	public void Soluciones(final float resultado) {
		float delta = (float)0.000001;
		assertEquals(calcu.getResultado(), resultado, delta);
	}
	
	@Then("division por cero es true")
	public void divisionPorCero() {
	    assertTrue(calcu.getDivisionByZero());
	}
}