Feature: Visualización de Tendencias Históricas

    Background:
        Given que el gerente de transporte ha iniciado sesión en SmartBus Tech
        And se encuentra en el módulo de Inteligencia de Negocio y Reportes Estratégicos

    Scenario: Análisis de evolución histórica de ingresos

        Given que existen registros financieros almacenados de períodos anteriores
        When el gerente selecciona un rango de fechas para analizar la evolución de ingresos
        Then el sistema construye una gráfica temporal con los ingresos del período consultado
        And compara los resultados con períodos anteriores disponibles
        And muestra la variación de crecimiento o disminución de la rentabilidad

    Scenario: Análisis histórico sin registros disponibles

        Given que el rango de fechas seleccionado no contiene información financiera histórica
        When el gerente solicita visualizar las tendencias históricas
        Then el sistema evita generar la gráfica temporal
        And muestra el mensaje "No existen datos históricos para el período seleccionado"
        And mantiene disponibles los filtros para seleccionar un nuevo rango de fechas
