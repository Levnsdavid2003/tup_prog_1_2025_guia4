Algoritmo ejercicio5
	Definir opinion, contPositivo, contNegativo, contIndeciso, encuestas, total como Entero;
	Definir porcPositivo, porcNegativo, porcIndeciso Como Real;
	
	Escribir "Ingrese su opinión de la encuesta (0 para positivo, 1 para negativo, 2 para indeciso):";
	Escribir "-1 para cerrar encuesta";
	Leer opinion;
	
	encuestas <- 0;
	contIndeciso <- 0;
	contNegativo <- 0;
	contIndeciso <- 0;
	
	Mientras opinion <> -1 Hacer
		Segun opinion Hacer
			0:
				contPositivo <- contPositivo + 1;
			1:
				contNegativo <- contNegativo + 1;
			2:
				contIndeciso <- contIndeciso + 1;
		FinSegun
		
		Escribir "Ingrese su opinión de la encuesta (0 para positivo, 1 para negativo, 2 para indeciso):";
		Escribir "-1 para cerrar encuesta";
		Leer opinion;
		
		encuestas <- encuestas + 1;
	FinMientras
	
	Si encuestas > 0 Entonces
		total <- contPositivo + contNegativo + contIndeciso;
		porcPositivo <- ((contPositivo * 100) / total);
		porcNegativo <- ((contNegativo * 100) / total);
		porcIndeciso <- ((contIndeciso * 100) / total);
		Escribir "Los porcentajes de la encuesta fueron:";
		Escribir "Positivo: ", redon(porcPositivo), "%";
		Escribir "Negativo: ", redon(porcNegativo), "%";
		Escribir "Indeciso: ", redon(porcIndeciso), "%";
	SiNo
		Escribir "No hubo ninguna respuesta registrada!";
	FinSi
FinAlgoritmo
