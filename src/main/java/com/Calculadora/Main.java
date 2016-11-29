package com.Calculadora;

public class Main {

	public static void main(String[] args) {
		Calculadora calcu = new Calculadora();
		calcu.asignarValores((float)1.1,1);
		calcu.asignarOperador("restar");
		System.out.print(calcu.getResultado());
	}

}
