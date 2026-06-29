Feature: Aprobación de Liquidación Cuadrada

    Background:
        Given que el administrador ha iniciado sesión en SmartBus Tech
        And se encuentra en el módulo "Caja y Liquidaciones"

    Scenario: Aprobación exitosa de una liquidación cuadrada

        Given que existe una liquidación enviada por un chofer
        And el monto neto esperado coincide con el dinero físico entregado
        When el administrador presiona el botón "Aprobar Liquidación"
        Then el sistema actualiza el estado de la liquidación a "Cuadrado"
        And archiva el registro financiero del día
        And muestra el mensaje "Liquidación aprobada correctamente"

    Scenario: Aprobación bloqueada por comprobantes no revisados

        Given que la liquidación contiene gastos registrados con comprobantes adjuntos
        And el administrador no ha visualizado las evidencias de dichos gastos
        When intenta aprobar la liquidación
        Then el sistema bloquea la aprobación
        And muestra el mensaje "Debe visualizar los comprobantes de gastos antes de aprobar el cuadre"