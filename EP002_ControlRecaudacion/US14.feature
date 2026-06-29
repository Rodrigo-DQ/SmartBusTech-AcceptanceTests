Feature: Visualización de Liquidaciones Pendientes

    Background:
        Given que el administrador ha iniciado sesión en SmartBus Tech
        And se encuentra en el módulo "Caja y Liquidaciones"

    Scenario: Visualización exitosa de liquidaciones pendientes

        Given que existen liquidaciones enviadas por los choferes pendientes de revisión
        When el administrador accede a la pantalla principal del módulo
        Then el sistema muestra una lista con las unidades en estado "Enviado a revisión"
        And permite consultar el detalle de ingresos y gastos de cada liquidación
        And muestra la fecha y hora de envío de cada registro

    Scenario: Consulta de una unidad que aún no ha cerrado su turno

        Given que la unidad seleccionada continúa en operación
        When el administrador busca la liquidación utilizando la placa del vehículo
        Then el sistema no muestra resultados para dicha búsqueda
        And presenta el mensaje "La unidad seleccionada aún se encuentra en operación"