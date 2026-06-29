Feature: Consulta de Historial Financiero por Unidad

    Background:
        Given que el administrador ha iniciado sesión en SmartBus Tech
        And se encuentra en el módulo "Historial de Liquidaciones"

    Scenario: Consulta exitosa del historial financiero por unidad

        Given que existen liquidaciones registradas para la unidad seleccionada
        When el administrador ingresa la placa del bus, selecciona un rango de fechas válido y presiona "Buscar"
        Then el sistema muestra el historial financiero de la unidad
        And presenta las liquidaciones encontradas con sus respectivos estados
        And permite consultar el detalle de cada registro

    Scenario: Consulta con rango de fechas inválido

        Given que el administrador se encuentra configurando el filtro de búsqueda
        When selecciona una fecha de fin anterior a la fecha de inicio
        Then el sistema bloquea la consulta
        And muestra el mensaje "El rango de fechas ingresado no es válido"