Feature: Dashboard Ejecutivo Consolidado

    Background:
        Given que el gerente de transporte ha iniciado sesión en SmartBus Tech
        And se encuentra en el módulo de Inteligencia de Negocio y Reportes Estratégicos

    Scenario: Consolidación de información estratégica para la toma de decisiones

        Given que existen registros financieros, operativos y de mantenimiento actualizados
        When el gerente accede al dashboard ejecutivo consolidado
        Then el sistema integra la información proveniente de los diferentes módulos del sistema
        And presenta indicadores estratégicos de rentabilidad, disponibilidad de flota y mantenimiento en una única vista
        And actualiza automáticamente los indicadores con la información más reciente disponible

    Scenario: Consolidación con fuentes de información parcialmente disponibles

        Given que uno o más módulos del sistema presentan información incompleta o no disponible
        When el gerente accede al dashboard ejecutivo consolidado
        Then el sistema carga los indicadores que se encuentran disponibles
        And identifica los módulos cuya información no pudo integrarse
        And muestra el mensaje "Algunos indicadores no pudieron cargarse correctamente. Intente nuevamente más tarde"
