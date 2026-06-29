Feature: Exportación de Reportes Financieros PDF

    Background:
        Given que el gerente de transporte ha iniciado sesión en SmartBus Tech
        And se encuentra en el módulo de Inteligencia de Negocio y Reportes Estratégicos

    Scenario: Generación exitosa del reporte financiero PDF

        Given que existen registros financieros válidos para el período seleccionado
        When el gerente presiona la opción "Exportar PDF"
        Then el sistema genera un archivo PDF con la información financiera consolidada
        And descarga el documento en el dispositivo del usuario
        And registra la fecha de generación del reporte

    Scenario Outline: Intento de exportación sin información financiera

        Given que el gerente selecciona el período "<periodo>"
        And no existen registros financieros disponibles para dicho período
        When el gerente solicita exportar el reporte financiero en PDF
        Then el sistema cancela la generación del documento
        And muestra el mensaje "<mensaje>"

        Examples:
            | periodo              | mensaje                         |
            | diario               | No existen datos para exportar  |
            | semanal              | No existen datos para exportar  |
            | mensual              | No existen datos para exportar  |