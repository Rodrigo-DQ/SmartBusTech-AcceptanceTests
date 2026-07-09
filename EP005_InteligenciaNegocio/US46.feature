Feature: Exportación de Reportes Operativos en Excel

    Background:
        Given que el administrador operativo ha iniciado sesión en SmartBus Tech
        And se encuentra en el módulo de Inteligencia de Negocio y Reportes Estratégicos

    Scenario: Generación de un reporte operativo editable en Excel

        Given que el sistema cuenta con registros operativos del período consultado
        When el administrador operativo selecciona la opción "Exportar Reporte Excel"
        Then el sistema construye una hoja de cálculo con la información operativa de la flota
        And organiza los datos por unidad, estado operativo, ruta y período
        And genera el archivo Excel para su descarga y análisis externo

    Scenario Outline: Validación de exportación sin información operativa

        Given que el administrador operativo selecciona el período "<periodo>"
        And el sistema no encuentra información operativa para dicho período
        When solicita la exportación del reporte en formato Excel
        Then el sistema impide la generación del archivo
        And informa al usuario mediante el mensaje "<mensaje>"

        Examples:
            | periodo | mensaje                                   |
            | diario  | No existen datos operativos para exportar |
            | semanal | No existen datos operativos para exportar |
            | mensual | No existen datos operativos para exportar |
