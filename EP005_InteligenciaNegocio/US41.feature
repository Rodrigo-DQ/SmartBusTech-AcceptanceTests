Feature: Visualización de KPIs Financieros

    Background:
        Given que el gerente de transporte ha iniciado sesión en SmartBus Tech
        And se encuentra en el panel de KPIs financieros

    Scenario: Análisis de los principales indicadores financieros

        Given que existen registros financieros correspondientes al período seleccionado
        When el gerente accede al panel de KPIs financieros
        Then el sistema calcula los indicadores de ingresos, egresos, utilidad y margen de rentabilidad
        And presenta los resultados mediante tarjetas, gráficos y tendencias visuales
        And resalta automáticamente los indicadores con variaciones significativas respecto al período anterior

    Scenario: Visualización sin información financiera disponible

        Given que no existen registros financieros para el período seleccionado
        When el gerente accede al panel de KPIs financieros
        Then el sistema informa que no existen datos para realizar el análisis financiero
        And muestra el mensaje "No existen datos financieros disponibles para el período seleccionado"
        And mantiene habilitados los filtros para seleccionar un nuevo período de consulta
