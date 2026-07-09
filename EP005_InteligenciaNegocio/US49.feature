Feature: Monitoreo de Indicadores de Mantenimiento

    Background:
        Given que el administrador operativo ha iniciado sesión en SmartBus Tech
        And se encuentra en el módulo de Inteligencia de Negocio y Reportes Estratégicos

    Scenario: Identificación de unidades con riesgo de mantenimiento

        Given que el sistema dispone del historial técnico y operativo de la flota
        When el administrador accede al panel de indicadores de mantenimiento
        Then el sistema analiza la frecuencia de fallas y mantenimientos de cada unidad
        And identifica las unidades con mayor riesgo de presentar nuevas averías
        And prioriza dichas unidades dentro del tablero estratégico mediante un indicador de criticidad

    Scenario: Análisis de mantenimiento con información insuficiente

        Given que existen unidades sin historial técnico suficiente
        When el administrador consulta los indicadores de mantenimiento
        Then el sistema excluye dichas unidades del análisis predictivo
        And muestra el mensaje "Información insuficiente para generar indicadores de mantenimiento"
        And recomienda actualizar el historial técnico de las unidades afectadas
