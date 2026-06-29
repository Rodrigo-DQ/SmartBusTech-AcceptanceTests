Feature: Visualización de Tendencias Históricas

    Background:
        Given que el gerente de transporte ha iniciado sesión en SmartBus Tech
        And se encuentra en el módulo de Inteligencia de Negocio y Reportes Estratégicos

    Scenario: Consulta exitosa de tendencias históricas

        Given que existen registros históricos de ingresos almacenados en el sistema
        When el gerente selecciona un rango de fechas para el análisis
        Then el sistema muestra gráficos con la evolución histórica de los ingresos
        And presenta indicadores de crecimiento o disminución respecto a períodos anteriores
        And permite analizar la información correspondiente al período consultado

    Scenario: Consulta de tendencias históricas sin información disponible

        Given que no existen registros históricos para el rango de fechas seleccionado
        When el gerente solicita visualizar las tendencias históricas
        Then el sistema muestra el mensaje "No existen datos históricos para el período seleccionado"
        And no genera gráficos de tendencias