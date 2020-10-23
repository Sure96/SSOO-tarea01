# SSOO-tarea01

Matias Zapata Maripán

este codigo tiene 3 funciones (ademas de main):
La primera es tiempoactual(), utilizada para retornar una cadena con la fecha y hora actual del computador.
La segunda es respuesta(), la cual es usada cuando llega una señal y solo retorna la recepción de esta mediante un printf.
La tercera es finalizacion(), que al recibir la señal SIGINT suma 1 a un contador estático, para que al acumular dos el proceso finalize.

el programa muestra inicialmente que empezó su ejecución y muestra el PID del proceso correspondiente, luego en un ciclo infinito queda a la espera de una señal SIGUSR1 para mostrar por pantalla la fecha y hora actual, para salir del proceso solo debe mandar 2 señales SIGINT (ctrl+c).
