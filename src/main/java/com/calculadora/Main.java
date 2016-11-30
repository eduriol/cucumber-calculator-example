package com.calculadora;

public class Main {

	public static void main(String[] args) {
		Calculadora calcu = new Calculadora();
		calcu.asignarValores((float)3,(float)0);
		calcu.asignarOperador("dividir");
		System.out.print(calcu.getDivisionByZero());
	}

}
