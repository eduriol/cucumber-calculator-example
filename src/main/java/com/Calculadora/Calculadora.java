package com.Calculadora;
public class Calculadora {
     
    private float numeroUno, numeroDos, resultado;
    private String operador;
     
    public Calculadora () {
         
    }
     
    public void asignarValores(float d, float e)
    {
        numeroUno = d;
        numeroDos = e;
    }
     
    public void asignarOperador(String oper)
    {
        operador = oper;
        if (operador.equals("sumar"))
        {
            this.sumar(numeroUno, numeroDos);
        }
        else if (operador.equals("restar"))
        {
            this.restar(numeroUno, numeroDos);
        }
        else if (operador.equals("multiplicar"))
        {
            this.multiplicar(numeroUno, numeroDos);
        }
        else if (operador.equals("dividir"))
        {
            this.dividir(numeroUno, numeroDos);
        }
         
    }
     
    public Calculadora (float uno, float dos, String oper)
    {
        numeroUno = uno;
        numeroDos = dos;
        operador = oper;
    }
     
    public void sumar(float numeroUno2, float numeroDos2)
    {
        resultado =  numeroUno2 + numeroDos2;
    }
     
    public void restar(float numeroUno2, float numeroDos2)
    {
        resultado =  numeroUno2 - numeroDos2;
    }
     
    public void multiplicar (float numeroUno2, float numeroDos2)
    {
        resultado = numeroUno2 * numeroDos2;
    }

    public void dividir (float numeroUno2, float numeroDos2)
    {
        resultado =  numeroUno2 / numeroDos2;
    }
    
    public float getNumeroUno() {
        return numeroUno;
    }
    
    public void setNumeroUno(float numeroUno) {
        this.numeroUno = numeroUno;
    }
    
    public float getNumeroDos() {
        return numeroDos;
    }
    
    public void setNumeroDos(float numeroDos) {
        this.numeroDos = numeroDos;
    }
    
    public String getOperador() {
        return operador;
    }
    
    public void setOperador(String operador) {
        this.operador = operador;
    }
    
    public float getResultado() {
        return resultado;
    }
    
    public void setResultado(float resultado) {
        this.resultado = resultado;
    }
    
}