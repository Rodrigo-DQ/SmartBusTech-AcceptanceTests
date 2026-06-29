Feature: Consulta de Rentabilidad por Unidad

    Background:
        Given que el gerente de transporte ha iniciado sesión en SmartBus Tech
        And se encuentra en el módulo de Inteligencia de Negocio y Reportes Estratégicos

    Scenario: Consulta exitosa de la rentabilidad por unidad

        Given que existen registros financieros asociados a las unidades de la flota
        When el gerente selecciona el período de evaluación y consulta la rentabilidad por unidad
        Then el sistema muestra el ranking de rentabilidad de cada unidad
        And presenta los ingresos, egresos y utilidad correspondiente a cada bus
        And ordena la información de mayor a menor rentabilidad

    Scenario: Consulta de rentabilidad con información insuficiente

        Given que una o más unidades no cuentan con registros suficientes para calcular su rentabilidad
        When el gerente consulta la rentabilidad por unidad
        Then el sistema identifica las unidades con información insuficiente
        And muestra el mensaje "No existen datos suficientes para calcular la rentabilidad de una o más unidades"
        And excluye dichas unidades del ranking de rentabilidad