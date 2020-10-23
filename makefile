SRCDIR = src #directorio donde esta el archivo
ARCH = hora #nombre del archivo
#caso por defecto:
default: all 
#Entra en la carpeta src y compila todos los archivos dentro,y luego mueve el archivo al directorio anterior.
all:
	@for i in $(SRCDIR); do \
	echo "Compilando..."; \
	(cd $$i && gcc hora.c -o $(ARCH)); \
	(cd $$i && mv $(ARCH) ..); \
	echo "Compilado."; done
#elimina el archivo compilado.
clean:
	rm $(ARCH)
	
