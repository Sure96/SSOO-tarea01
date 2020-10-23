SRCDIR = src #directorio donde esta el archivo
#caso por defecto:
default: all 
#compila el archivo hora.c, entra en cada carpeta src y ejecuta comando make dentro, para tomar el makefile.
all:
	@for i in $(SRCDIR); do \
	echo "make en la carpeta $$i ..."; \
	(cd $$i && $(MAKE)); done
#lo mismo que el anterior, solo que ejecuta el objetivo clean del makefile.
clean:
	@for i in $(SRCDIR); do \
	echo "limpiando la carpeta $$i ..."; \
	(cd $$i && $(MAKE) clean); done
	
