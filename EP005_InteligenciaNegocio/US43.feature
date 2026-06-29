Feature: Monitoreo de Disponibilidad de Flota

    Background:
        Given que el administrador operativo ha iniciado sesión en SmartBus Tech
        And se encuentra en el módulo de Inteligencia de Negocio y Reportes Estratégicos

    Scenario: Consulta exitosa de disponibilidad de flota

        Given que existen registros actualizados del estado operativo de las unidades
        When el administrador operativo accede al panel de disponibilidad de flota
        Then el sistema muestra la cantidad de unidades operativas
        And muestra la cantidad de unidades en mantenimiento o fuera de servicio
        And calcula el porcentaje total de disponibilidad de la flota

    Scenario: Consulta de disponibilidad sin información operativa

        Given que no existen registros actualizados del estado operativo de las unidades
        When el administrador operativo accede al panel de disponibilidad de flota
        Then el sistema muestra el mensaje "No existen datos de disponibilidad registrados"
        And evita mostrar indicadores incompletos o erróneos