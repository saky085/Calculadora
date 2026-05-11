#!/bin/bash
#trabajo de Dayana Almonacid 
echo "  ||========================================|| "
echo "  ||                                        || "
echo "  ||           CALCULADORA  EN  BASH        || "
echo "  ||                                        || "
echo "  ||========================================|| "

while true; do

    echo " ────────────────────────────────────────────────"
    echo ""
    echo "  || Ingresa el primer numero:"
    echo "  ||"
    echo -n "  ||  >> "
    read digito

    if ! [[ "$digito" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
        echo "  ||  [!] Error: solo se permiten numeros (ej: 5 o 3.14)"
        echo ""
        continue
    fi

    echo "───────────────────────────────────────────────────"
    echo "  ||  Elige la operacion:"
    echo "  ||"
    echo "  ||    [+]  Suma"
    echo "  ||    [*]  Multiplicacion"
    echo "  ||"
    echo -n "  ||  >> "
    read operacion

    if [[ "$operacion" != "+" && "$operacion" != "*" ]]; then
        echo "  ||  [!] Error: solo se permite '+' o '*'"
        echo ""
        continue
    fi

    echo ""
    echo "  ||  Ingresa el segundo numero:"
    echo "  ||"
    echo -n "  ||  >> "
    read numero

    if ! [[ "$numero" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
        echo "  ||  [!] Error: solo se permiten numeros (ej: 5 o 3.14)"
        echo ""
        continue
    fi

    if [ "$operacion" == "+" ]; then
        resultado=$(echo "scale=2; $digito + $numero" | bc)
        signo="+"
    elif [ "$operacion" == "*" ]; then
        resultado=$(echo "scale=4; $digito * $numero" | bc)
        signo="x"
    fi

    echo "  ||"
    echo "  ||  resultado de la operacion  $digito  $signo  $numero  =  $resultado"
    echo "  ||"


    echo ""
    echo "  ||  Deseas continuar?"
    echo "  ||"
    echo "  ||    [1]  Realizar otro calculo"
    echo "  ||    [2]  Salir"
    echo "  ||"
    echo -n "  ||  >> "
    read continuar

    while [[ "$continuar" != "1" && "$continuar" != "2" ]]; do
        echo "  ||  [!] Opcion no valida. Ingresa 1 o 2:"
        echo -n "  ||  >> "
        read continuar
    done

    if [ "$continuar" == "2" ]; then
        echo " "
        echo "  ||"
        echo "  ||  Gracias por usar la calculadora."
        echo "  ||  Hasta luego!"
        echo "  ||"
        echo ""
        break
    fi

    echo ""

done