Feature: Exportación de Reportes Financieros en PDF

    Background:
        Given que el gerente de transporte ha iniciado sesión en SmartBus Tech
        And se encuentra en la sección de reportes financieros exportables

    Scenario: Generación de un reporte financiero ejecutivo en PDF

        Given que el sistema ha consolidado los indicadores financieros del período consultado
        When el gerente selecciona la opción "Exportar Reporte PDF"
        Then el sistema construye un documento con el resumen ejecutivo financiero
        And incorpora los KPIs, gráficos comparativos y tablas de resultados
        And genera automáticamente el archivo PDF para su descarga

    Scenario Outline: Validación de exportación sin información financiera

        Given que el gerente selecciona el período "<periodo>"
        And el sistema no encuentra información financiera para dicho período
        When solicita la exportación del reporte en formato PDF
        Then el sistema impide la generación del documento
        And informa al usuario mediante el mensaje "<mensaje>"

        Examples:
            | periodo | mensaje                        |
            | diario  | No existen datos para exportar |
            | semanal | No existen datos para exportar |
            | mensual | No existen datos para exportar |
