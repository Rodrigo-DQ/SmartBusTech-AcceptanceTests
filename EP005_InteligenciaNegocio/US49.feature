Feature: Monitoreo de Indicadores de Mantenimiento

    Background:
        Given que el administrador operativo ha iniciado sesión en SmartBus Tech
        And se encuentra en el módulo de Inteligencia de Negocio y Reportes Estratégicos

    Scenario: Consulta exitosa de indicadores de mantenimiento

        Given que existen registros de mantenimiento asociados a las unidades vehiculares
        When el administrador operativo selecciona una unidad para consultar su estado
        Then el sistema muestra el historial de mantenimientos realizados
        And presenta los mantenimientos preventivos pendientes
        And muestra el estado operativo actual de la unidad seleccionada

    Scenario: Consulta de indicadores para una unidad sin historial de mantenimiento

        Given que la unidad seleccionada no cuenta con registros de mantenimiento
        When el administrador operativo consulta sus indicadores de mantenimiento
        Then el sistema muestra el mensaje "La unidad seleccionada no cuenta con historial de mantenimiento"
        And no presenta indicadores relacionados con la unidad seleccionada