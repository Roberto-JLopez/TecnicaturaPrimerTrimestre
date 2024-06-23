Proceso JuegoDePreguntas
    // Variables generales para el control del juego
    Definir men, m, r, v Como Entero;
    Definir corr, inc, puntuacion Como Entero;
    Definir nom, j Como Cadena;
    Dimensionar j[100];// Arreglo para almacenar los nombres de los jugadores
    m <- 1;
    v <- 0;
	// Bucle principal del juego
    Mientras m = 1 Hacer
        men <- MostrarMenuPrincipal();
        Segun men Hacer
            Caso 1:
                IniciarJuego(j, v); // Inicia una nueva partida
            Caso 2:
                MostrarMejoresJugadores(j, v);// Muestra la lista de los mejores jugadores
            Caso 3:
                m <- 0;  // Termina el programa
            De Otro Modo:
                Escribir "Opción no válida.";// Maneja opciones no válidas
        FinSegun
    FinMientras
FinProceso

// Función para mostrar el menú principal
Funcion men<-MostrarMenuPrincipal
	// Mensajes de bienvenida y opciones del menú
			Definir men Como Entero;
		Escribir "******************************************";
		Escribir "*                                        *";
		Escribir "*        BIENVENIDOS SOMOS UFO           *";
		Escribir "*            DEVELOPMENT                 *";
		Escribir "*                                        *";
		Escribir "******************************************";
		Escribir "*                                        *";
		Escribir "*  Bienvenido al juego de preguntas,     *";
		Escribir "*  donde aprenderás jugando los          *";
		Escribir "*  conceptos fundamentales en            *";
		Escribir "*  programación.                         *";
		Escribir "*                                        *";
		Escribir "******************************************";
		Escribir " ";
		Escribir "*            Menú Principal              *";
		Escribir "******************************************";
		Escribir "*                                        *";
		Escribir "*  1. Jugar                              *";
		Escribir "*  2. Ver mejores jugadores              *";
		Escribir "*  3. Salir                              *";
		Escribir "*                                        *";
		Escribir "******************************************";
		Leer men;
FinFuncion

// Función para iniciar el juego
Funcion IniciarJuego(j Por Referencia, v Por Referencia) 
    Definir res, resp, corr, inc, puntuacion, r, i Como Entero;
    Definir nom Como Cadena;
    r <- 1;
    Mientras r = 1 Hacer
		// Selección del lenguaje de programación para las preguntas
        Escribir "Elige el lenguaje de programación para las preguntas:";
        Escribir "1. Python";
        Escribir "2. Java";
        Escribir "3. JavaScript";
        Leer resp;
		
        // Inicializar los contadores para cada sesión de juego
        corr <- 0;
        inc <- 0;
        puntuacion <- 0;
		// Bucle para hacer las preguntas según el lenguaje seleccionado
        Para i <- 1 Hasta 1 Con Paso 1 Hacer
            Segun resp Hacer
                Caso 1:
                    PreguntaPython(i, corr, inc, puntuacion);// Preguntas de Python
                Caso 2:
                    PreguntaJava(i, corr, inc, puntuacion);// Preguntas de Java
                Caso 3:
                    PreguntaJavaScript(i, corr, inc, puntuacion);// Preguntas de JavaScript
            FinSegun
        FinPara
		// Mostrar resultados de la sesión de juego
        Escribir "Respuestas correctas: ", corr;
        Escribir "Respuestas incorrectas: ", inc;
        Escribir "Puntaje total: ", puntuacion;
		// Si el jugador tiene puntuación, registrar el nombre en los mejores jugadores
        Si puntuacion > 0 Entonces
            v <- v + 1;
            Escribir "Ingresa tu nombre para registrar tu puntaje:";
            Leer nom;
            j[v] <- nom;
            Escribir '** ', nom, ' se te ha registrado en los mejores jugadores**';
        FinSi
		// Preguntar si el jugador quiere jugar de nuevo
        Escribir "¿Quieres jugar de nuevo? 1. Si 2. No";
        Leer r;
    FinMientras
FinFuncion

// Función para preguntas de Python
Funcion PreguntaPython(i Por Referencia, corr Por Referencia, inc Por Referencia, puntuacion Por Referencia) 
    Definir res Como Entero;
	// Primera pregunta de Python
    Segun i Hacer
        Caso 1:
            Escribir "¿Cuál es el resultado de 3 + 2 en Python?";
            Escribir "1. 5";
            Escribir "2. 6";
            Escribir "3. 7";
            Escribir "4. 8";
            Leer res;
			// Verificar respuesta y actualizar contadores
            Si res = 1 Entonces
                corr <- corr + 1;
                puntuacion <- puntuacion + 10;
                Escribir "Tu respuesta es correcta";
            Sino
                inc <- inc + 1;
                Escribir "Tu respuesta es incorrecta";
            FinSi
    FinSegun
FinFuncion

// Función para preguntas de Java
Funcion PreguntaJava(i Por Referencia, corr Por Referencia, inc Por Referencia, puntuacion Por Referencia) 
    Definir res Como Entero;
    Segun i Hacer
			// Primera pregunta de Java
        Caso 1:
            Escribir "¿Qué palabra clave se usa para definir una clase en Java?";
            Escribir "1. class";
            Escribir "2. define";
            Escribir "3. def";
            Escribir "4. function";
            Leer res;
			// Verificar respuesta y actualizar contadores
            Si res = 1 Entonces
                corr <- corr + 1;
                puntuacion <- puntuacion + 10;
                Escribir "Tu respuesta es correcta";
            Sino
                inc <- inc + 1;
                Escribir "Tu respuesta es incorrecta";
            FinSi
    FinSegun
FinFuncion

// Función para preguntas de JavaScript
Funcion PreguntaJavaScript(i Por Referencia, corr Por Referencia, inc Por Referencia, puntuacion Por Referencia) 
    Definir res Como Entero;
    Segun i Hacer
        Caso 1:
            Escribir "¿Cómo se declara una variable en JavaScript?";
            Escribir "1. var";
            Escribir "2. int";
            Escribir "3. let";
            Escribir "4. const";
            Leer res;
			// Verificar respuesta y actualizar contadores
            Si (res = 1) o (res = 3) o (res = 4) Entonces
                corr <- corr + 1;
                puntuacion <- puntuacion + 10;
                Escribir "Tu respuesta es correcta";
            Sino
                inc <- inc + 1;
                Escribir "Tu respuesta es incorrecta";
            FinSi
    FinSegun
FinFuncion

// Función para mostrar los mejores jugadores
Funcion MostrarMejoresJugadores(j Por Referencia, v Por Referencia) 
    Definir i Como Entero;
	// Mostrar cada jugador registrado en el arreglo j
    Para i <- 1 Hasta v Hacer
        Escribir j[i];
    FinPara
	// Pausar para que el usuario pueda leer los resultados
    Escribir "Presiona cualquier tecla para continuar...";
    Definir x Como Entero;
    Leer x;
FinFuncion
