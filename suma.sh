#!/bin/bash
#trabajo de Dayana Almonacid 
echo "  ||========================================|| "
echo "  ||                                        || "
echo "  ||           CALCULADORA  EN  BASH        || "
echo "  ||                                        || "
echo "  ||========================================|| "


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
    fi

    echo "  ||"
    echo "  ||  resultado de la operacion  $digito  $signo  $numero  =  $resultado"
    echo "  ||"

   