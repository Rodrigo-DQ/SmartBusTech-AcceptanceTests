#US50_DashboardEjecutivo.feature

Feature: Dashboard Ejecutivo Consolidado

    Background:
        Given que el gerente de transporte ha iniciado sesión en SmartBus Tech
        And se encuentra en el módulo de Inteligencia de Negocio y Reportes Estratégicos

    Scenario: Visualización exitosa del dashboard ejecutivo

        Given que existen registros financieros, operativos y de mantenimiento disponibles
        When el gerente accede al dashboard ejecutivo consolidado
        Then el sistema muestra KPIs financieros de rentabilidad
        And presenta indicadores de disponibilidad de flota
        And muestra métricas relacionadas con mantenimiento y desempeño operativo en una única vista consolidada

    Scenario: Carga parcial de indicadores estratégicos

        Given que una o más fuentes de información presentan problemas de disponibilidad
        When el gerente accede al dashboard ejecutivo consolidado
        Then el sistema muestra la información disponible en el dashboard
        And identifica claramente los indicadores que no pudieron cargarse
        And muestra el mensaje "Algunos indicadores no pudieron cargarse correctamente. Intente nuevamente más tarde"
