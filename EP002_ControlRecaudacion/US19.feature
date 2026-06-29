Feature: Exportación de Reporte Diario Consolidado

    Background:
        Given que el administrador ha iniciado sesión en SmartBus Tech
        And se encuentra en el módulo de reportes de recaudación

    Scenario: Generación exitosa del reporte diario consolidado

        Given que existen registros de recaudación del día para las unidades de la flota
        When el administrador presiona el botón "Exportar a Excel"
        Then el sistema genera un archivo Excel con la recaudación consolidada del día
        And descarga automáticamente el archivo en el dispositivo del usuario
        And muestra el mensaje "Reporte diario exportado correctamente"

    Scenario: Exportación bloqueada por volumen excesivo de datos

        Given que el administrador selecciona un rango de fechas mayor a seis meses
        When presiona el botón "Exportar a Excel"
        Then el sistema cancela la generación del archivo
        And muestra el mensaje "El volumen de datos es muy alto. Por favor exporte en rangos menores a 6 meses"