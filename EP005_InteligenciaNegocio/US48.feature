Feature: Identificación de Unidades con Bajo Desempeño

    Background:
        Given que el gerente de transporte ha iniciado sesión en SmartBus Tech
        And se encuentra en el módulo de Inteligencia de Negocio y Reportes Estratégicos

    Scenario: Detección automática de unidades con rendimiento inferior

        Given que existen registros financieros y operativos suficientes de las unidades
        When el gerente solicita el análisis de desempeño de la flota
        Then el sistema compara el rendimiento de cada unidad con el promedio general
        And identifica las unidades que se encuentran por debajo del umbral esperado
        And muestra una alerta visual para las unidades clasificadas con bajo desempeño

    Scenario: Evaluación incompleta por falta de datos operativos

        Given que algunas unidades no cuentan con registros suficientes de ingresos, gastos o disponibilidad
        When el sistema intenta ejecutar el análisis de desempeño
        Then excluye las unidades con información incompleta del cálculo comparativo
        And muestra el mensaje "Información insuficiente para evaluar el desempeño de determinadas unidades"
        And permite consultar el detalle de las unidades excluidas
