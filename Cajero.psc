Funcion MenuPrincipal (Saldo Por Referencia)
	
	Saldo=1000
	
	Repetir 
	Limpiar Pantalla
	Imprimir "Presione cualquier tecla para continuar..."
	Esperar Tecla
	Limpiar Pantalla
	Imprimir "=========================|"
	Imprimir "========BIENVENIDO=======|"
	Imprimir "=========================|"
	Escribir " ¿que desea hacer hoy?   |"
	Imprimir "-------------------------|"
	Escribir "1.       Consultar Saldo |"
	Escribir "2.       Depositar Dinero|"
	Escribir "3.       Retirar Dinero  |"
	Escribir "4 o 0.       SALIR       |"
	Imprimir "=========================|"
	leer op
	
	Mientras op < 0 o op > 4 Hacer
		Escribir "Error, Valor invalido, digite nuevamente"
		leer op
	FinMientras
	
	segun op Hacer
		1: 
			consultarsaldo(Saldo)
		2:
			DepositarDinero(Saldo)
		3:
			RetirarDinero(Saldo)
		4:
			Imprimir "Saliendo..."
			Esperar 1 Segundos
	FinSegun
	
Hasta Que op == 0 o op ==4

Imprimir "==================================|"
Imprimir "Gracias por usar nuestro servicio |"
Imprimir "Que tenga un buen dia <3          |"
Imprimir "Cerrando sistema                  |"
Imprimir "==================================|"
Esperar 2 Segundos
FinFuncion

Funcion consultarsaldo (Saldo Por Referencia)
	
	Limpiar Pantalla
	Imprimir "=========================================|"
	Imprimir "su saldo actual es de: $", Saldo, " pesos|"
	Imprimir "=========================================|"
	si Saldo <= 0 Entonces
		Imprimir "Su cuenta esta en ceros"
		Imprimir "(\_/)"
		Imprimir "(._.)"
		Imprimir "(> <)"
		Imprimir "Volviendo al inicio..."
		Esperar 2 Segundos
	SiNo
		Imprimir "Presione cualquier tecla para volver..."
		Esperar Tecla
	FinSi
FinFuncion

Funcion DepositarDinero (Saldo Por Referencia)
	Imprimir "==========================================|"
	Imprimir "su saldo actual es de: $", Saldo, " pesos |"
	Imprimir "==========================================|"
	Escribir "     ¿Cuanto dinero desea depositar?      "
	Imprimir "     (Valor max: 12 millones)             "
	leer MontoDeposito
	
    si MontoDeposito < 0 o MontoDeposito >10000000 Entonces
		Imprimir "No se puede depositar un valor mayor a diez millones o menor que cero"
		Imprimir "volviendo al inicio..."
		Esperar 3 Segundos
	SiNo
		Saldo=Saldo+MontoDeposito 
		Imprimir "==============================|"
		Imprimir "valor depositado correctamente|"
		Imprimir "==============================|"
		Imprimir "Saldo actual: $", Saldo, " pesos"
		Imprimir "Volviendo..."
		Esperar 3 Segundos
	FinSi
	
	
FinFuncion

Funcion RetirarDinero (Saldo Por Referencia)
	
	Imprimir "==========================================|"
	Imprimir "su saldo actual es de: $", Saldo, " pesos |"
	Imprimir "==========================================|"
	Imprimir "          ¿Cuanto desea retirar?          |"
	Leer montoretiro
	
	si montoretiro <= 0 o montoretiro > Saldo Entonces
		Imprimir "Valor invalido, el monto a retirar no puede ser mayor que el saldo ni menor que cero"
		Imprimir "Volviendo..."
		Esperar 3 Segundos
	SiNo
		Saldo=Saldo-montoretiro
		Imprimir "==========================================|"
		Imprimir "      Dinero retirado correctamente       |"
		Imprimir "==========================================|" 
		Imprimir "su saldo actual es de: $", Saldo, " pesos |"
		Imprimir "Volviendo al inicio..."
		Esperar 4 Segundos
	FinSi
	
FinFuncion


Algoritmo Cajero
	MenuPrincipal(Saldo)
FinAlgoritmo
