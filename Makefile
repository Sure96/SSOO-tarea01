SRCDIR = src #directorio donde esta el archivo
ARCH = hora #nombre del archivo
#caso por defecto:
default: all 
#compila el archivo hora.c, entra en cada carpeta src y ejecuta comando make dentro, para tomar el makefile y luego mueve el archivo al directorio anterior.
all:
	@for i in $(SRCDIR); do \
	echo "Compilando..."; \
	(cd $$i && gcc hora.c -o $(ARCH)); \
	(cd $$i && mv $(ARCH) ..); \
	echo "Compilado."; done
#elimina el archivo compilado.
clean:
	rm $(ARCH)
	
