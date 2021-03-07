#!/bin/bash
menu() {
 clear
echo "****************************"
echo "************MENU************" 
echo "1.Para Crear Archivo        "
echo "2.Para Eliminar Archivo     "
echo "3.Para Crear Carpeta        "
echo "4.Para Eliminar Carpeta     "
echo "5.Para Salir                "
echo "****************************"  
echo "Escoja la opcion" 
read opcion
return $opcion
}
creararchivo(){
        clear
        echo "****************************"
        echo "*******Crear Archivo********" 
        echo "****************************"
        echo "Ingrese nombre del Archivo"
        read archivo
        echo "Ecriba la ruta del archivo"
        read ruta

        touch $HOME/$ruta/$archivo
        echo "Directorio Creado Correctamente, espere un momento Por Favor..."

}

eliminararchivo(){
    clear
            echo "****************************"
            echo "*******Crear Archivo********" 
            echo "****************************"
            echo "Ingrese nombre del Archivo"
            read eliminar
            echo "Ecriba la ruta del archivo"
            read rut

           
            rm $HOME/$rut/$eliminar
            echo "La Carpeta se Eliminò, espere un momento por favor..."

}

                crearcarpeta(){
                echo "****************************" 
                echo "*      Crear Carpeta       *" 
                echo "****************************" 
                echo "Ecriba nombre de la carpeta"
                read carpeta
                echo "Ecriba la ruta de la carpeta"
                read ruta1

                rutacarpeta=$ruta1/$carpeta

                mkdir $HOME/$rutacarpeta
                echo "Carpeta Creada Correctamente, espere un momento por favor..."
}

                eliminarcarpeta(){
                
            echo "****************************"
            echo "*******Crear Archivo********" 
            echo "****************************"
            echo "Ingrese nombre del Archivo"
            read eliminar
            echo "Ecriba la ruta del archivo"
            read rut

           
            rmdir $HOME/$rut/$eliminar
            echo "La Carpeta se Eliminò, espere un momento por favor"
            }
clear
menu

while [ "$opcion" != 5 ]
do
    case $opcion in
    1)
       creararchivo
    ;;

       2)
        eliminararchivo
        ;;

        3)
            crearcarpeta
        ;;

        4)
        eliminarcarpeta
        ;;

          5) 
          exit
          ;;
           
       *)
       echo "opcion no valida, espere un momento por favor..."
       ;;
       esac

       sleep 1.5s

menu
done

