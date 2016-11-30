package com.calculadora;

import static org.junit.Assert.*;

import com.calculadora.Calculadora;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class claseCambio {
	
	private Calculadora calcu = new Calculadora();

	@Given("los parametros '(.+)' y '(.+)'")
	public void mandarParametros(final float uno, final float dos) {
	    calcu.asignarValores(uno,dos);
	}
	
	@Given("^los parametros (\\d+) y (\\d+)$")
	public void mandarParametrosTabla(final float uno, final float dos)
	{
		calcu.asignarValores(uno,dos);
	}
	
	@When("el operador sea '(.+)'")
	public void hacerOperacion(String operador) {
	    calcu.asignarOperador(operador);
	}
	
	@When("^el operador sea \"(.*?)\"$")
	public void hacerOperacionTabla(String operador) {
	    calcu.asignarOperador(operador);
	}

	@Then("solucion '(.+)'")
	public void soluciones(final float resultado) {
		float delta = (float)0.000001;
		assertEquals(calcu.getResultado(), resultado, delta);
	}
	
	@Then("^solucion (\\d+.?\\d*)$")
	public void solucionesTabla(final float resultado) {
		float delta = (float)0.000001;
		assertEquals(calcu.getResultado(), resultado, delta);
	}
	
	@Then("division por cero es true")
	public void divisionPorCero() {
	    assertTrue(calcu.getDivisionByZero());
	}
	
}