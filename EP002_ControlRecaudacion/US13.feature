Feature: Envío de Liquidación Diaria

    Background:
        Given que el chofer ha iniciado sesión en la aplicación móvil de SmartBus Tech
        And ha finalizado su jornada laboral

    Scenario: Envío exitoso de la liquidación diaria

        Given que el chofer ha registrado todos los ingresos y gastos correspondientes a su jornada
        When presiona el botón "Cerrar Turno y Enviar Liquidación"
        Then el sistema envía la liquidación al panel de administración
        And cambia el estado de la jornada a "Jornada Cerrada"
        And bloquea el registro de nuevas operaciones para ese día

    Scenario: Envío de liquidación sin conexión a Internet

        Given que el chofer se encuentra en una zona sin conexión a Internet
        When presiona el botón "Cerrar Turno y Enviar Liquidación"
        Then el sistema almacena la liquidación de forma local
        And muestra el mensaje "Sin conexión. La liquidación se enviará automáticamente cuando se restablezca la conexión"