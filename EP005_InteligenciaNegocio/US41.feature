Feature: Visualización de KPISs Financieros

    Background: 
        Given que el gerente de transporte ha iniciado sesión en SmartBus Tech
        And se encuentra en el módulo de Inteligencia de Negocio y Reportes Estratégicos

    Scenario: Consulta exitosa de KPIs financieros

        Given que existen registros financieros correspondientes al período seleccionado
        When el gerente accede al panel de KPIs financieros
        Then el sistema muestra los indicadores de ingresos, egresos, utilidad y margen de rentabilidad
        And presenta la información mediante tarjetas y gráficos interactivos
        And los indicadores corresponden al período consultado

    Scenario: Consulta de KPIs de información disponible

        Given que no existen registros financieros para el período seleccionado
        When el gerente accede al panel de KPIs financieros
        Then el sistema muestra el mensaje "No existen datos financieros disponibles para el período seleccionado"
        And no presenta indicadores ni gráficos financieros