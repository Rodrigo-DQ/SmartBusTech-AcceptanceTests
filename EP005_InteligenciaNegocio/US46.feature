Feature: Exportación de Reportes Operativos Excel

    Background:
        Given que el administrador operativo ha iniciado sesión en SmartBus Tech
        And se encuentra en el módulo de Inteligencia de Negocio y Reportes Estratégicos

    Scenario: Generación exitosa del reporte operativo en Excel

        Given que existen registros operativos válidos para el período seleccionado
        When el administrador operativo presiona la opción "Exportar Excel"
        Then el sistema genera un archivo Excel con la información operativa consolidada
        And descarga el documento en el dispositivo del usuario
        And registra la fecha y hora de generación del reporte

    Scenario Outline: Intento de exportación sin información operativa

        Given que el administrador operativo selecciona el período "<periodo>"
        And no existen registros operativos disponibles para dicho período
        When solicita exportar el reporte operativo en Excel
        Then el sistema cancela la generación del archivo
        And muestra el mensaje "<mensaje>"

        Examples:
            | periodo | mensaje                                   |
            | diario  | No existen datos operativos para exportar |
            | semanal | No existen datos operativos para exportar |
            | mensual | No existen datos operativos para exportar |