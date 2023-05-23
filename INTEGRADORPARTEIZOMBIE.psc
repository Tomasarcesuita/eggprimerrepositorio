//El apocalipsis Zombie se ha desatado, pero aún hay esperanza. El Dr. Galard ha conseguido aislar el gen Z
//analizando muestras genéticas codificadas. Una muestra se corresponde con una secuencia de caracteres
//compuesta de cuatro posibles bases (A,B,C,D), por ejemplo: "ACDDCADBCDABDBBA". Para poder detectar el gen
//	Z, se representa la muestra como una matriz cuadrada (MxM) y se busca en las dos diagonales principales que
//	todas las bases sean iguales. Siguiendo el ejemplo de la muestra anterior la matriz resultante es


//Galard aclara que para que la muestra sea válida el orden de la matriz (el valor de M) debe ser 3x3, 4x4 o 37x37
//	(según la muestra). Por desgracia, de antemano no es posible saber el orden de la matriz y el mismo debe ser
//	inferido de la muestra ingresada.
//Tu misión: hacer un programa que permita ingresar una muestra completa, detectar si es válida, y de ser así, que
//	imprima la matriz y muestre un mensaje que indique si se ha detectado o no el gen Z.
//		Hoy la humanidad depende de ti.

Algoritmo sin_titulo
	definir muestra,matriz Como Caracter
	definir llenado Como Caracter
	definir validacion como caracter
	definir n Como Entero
	
	//ejemplo//
    muestra = "ABAABBCBD"
	
	si Longitud(muestra) < 10 Entonces
		n = 3
	sino 
		si Longitud(muestra) < 17 Entonces
			n = 4
		sino 
			si Longitud(muestra) <= 1369 Entonces
				n = 37
			FinSi
		FinSi
	FinSi
	
	dimension matriz[n,n]
	
	
	llenado <- llenarMatriz(matriz,muestra,n)
	validacion_diagonales(matriz,n)

FinAlgoritmo

funcion retorno <- llenarMatriz(matriz por Referencia, muestra,n)
	definir i , j, posicion  Como Entero
	posicion <- 0 
	
	para i = 0 hasta n-1 Hacer
		para j = 0 Hasta n-1  Hacer

			matriz[i,j] = Subcadena(muestra,posicion,posicion)
			posicion <- posicion  +1 

			
		FinPara
	FinPara
	
	para i = 0 hasta n - 1 Hacer
		para j = 0 Hasta n - 1 Hacer
			Escribir matriz[i,j] Sin Saltar " " 
		FinPara
		Escribir " "  
	FinPara
	
FinFuncion
SubProceso validacion_diagonales(matriz,n)
	Definir i,j, iguales_diag1, iguales_diag2 Como Entero
	Definir diagonal1, diagonal2 como Caracter
	Dimension diagonal1[n], diagonal2[n]
	
	//almacenar los datos de las diagonales en dos vectores
	Para i<-0 Hasta n-1
		Para j<-0 Hasta n-1
			Si i=j Entonces
				diagonal1[i] = matriz[i,j]
			FinSi
			Si i+j = n-1
				diagonal2[i] = matriz[i,j]
			FinSi
		FinPara
	FinPara
	
	Escribir "Estos son los valores de la diagonal principal"
	escribir diagonal1[n-1]
	Escribir ""
	Escribir "Estos son los valores de la diagonal secundaria"
	escribir diagonal2[n-1]
	Escribir ""
	
	//validar que las letras del vector 1 sean iguales 
	iguales_diag1=0
	Para i<-0 hasta n-1
		Si diagonal1[i] = matriz[0,0]
			iguales_diag1=iguales_diag1+1
		FinSi
	FinPara
	
	//validar que las letras del vector 2 sean iguales
	iguales_diag2=0
	Para i<-0 hasta n-1
		Si diagonal2[i] = matriz[0,n-1]
			iguales_diag2=iguales_diag2+1
		FinSi
	FinPara
	
	Si iguales_diag1=n y iguales_diag2=n Entonces
		Escribir "Excelente! Se ha podido detectar el gen Z para esta muestra"
	SiNo
		Escribir "Lo sentimos :( no se ha podido detectar el gen Z para esta muestra"
	FinSi
hola

FinSubProceso



