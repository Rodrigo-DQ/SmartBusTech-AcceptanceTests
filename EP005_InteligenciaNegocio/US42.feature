Feature: Consulta de Rentabilidad por Unidad

    Background:
        Given que el gerente de transporte ha iniciado sesión en SmartBus Tech
        And se encuentra en la vista de análisis de rentabilidad por unidad

    Scenario: Generación del ranking económico por unidad

        Given que existen registros de ingresos, gastos operativos y vueltas realizadas por cada bus
        When el gerente selecciona un rango de fechas y solicita el análisis por unidad
        Then el sistema calcula la utilidad neta de cada bus
        And ordena las unidades de mayor a menor rentabilidad
        And muestra el ranking económico con placa, ingresos, gastos y utilidad neta

    Scenario: Exclusión de unidades sin datos suficientes

        Given que algunas unidades no cuentan con registros completos de ingresos o gastos
        When el gerente solicita el análisis de rentabilidad por unidad
        Then el sistema excluye del ranking a las unidades con información incompleta
        And identifica dichas unidades con el estado "Información insuficiente"
        And muestra el mensaje "No existen datos suficientes para calcular la rentabilidad de una o más unidades"
