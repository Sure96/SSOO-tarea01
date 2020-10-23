#include <stdio.h>
#include <time.h>
#include <unistd.h>
#include <signal.h>
#include <stdlib.h>//para poder usar el exit xd.
//funcion para mostrar la fecha y hora.
char* tiempoactual(){
	time_t ahora;//variable para asignar tiempo.
	time(&ahora);//asignacion.
	return ctime(&ahora); //retorno de variable.
}
//funcion para cuando llegue la señal SIGUSR1.
void respuesta(){	
	printf("señal SIGUSR1 recibida: %s",tiempoactual());	
}
//funcion para finalizar con 2 SIGINT.
void finalizacion(int signal_num){
	static int x = 0;//contador para los SIGINT
	if (signal_num=2){//if para ver si la señal es SIGINT
		x++;//suma al contador
	}
	if (x>=2){
		printf("\n");//para que la salida sea mas ordenada.
		exit(signal_num);//si el contador llega a dos termina el proceso.
	}
}
	

int main(void){
	printf("programa ahora ejectuandose. PID=%d.\n", getpid());
	printf("listo para recibir señal SIGUSR1.\n");
	signal(SIGUSR1, &respuesta);//cuando llegue la señal SIGUSR1 ejecuta la funcion respuesta.
	signal(SIGINT, finalizacion);
	while (1){//while para mantener las pausas.
		pause(); //espera para que se cumpla la condicion signal.
	}

	return 0;
}

