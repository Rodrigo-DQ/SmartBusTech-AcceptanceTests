Feature: Identificación de Unidades con Bajo Desempeño
    Background:
        Given que el gerente de transporte ha iniciado sesión en SmartBus Tech
        And se encuentra en el módulo de Inteligencia de Negocio y Reportes Estratégicos

    Scenario: Identificación exitosa de unidades con bajo desempeño

        Given que existen registros suficientes para comparar el desempeño de las unidades
        When el gerente solicita el análisis de rendimiento de la flota
        Then el sistema identifica las unidades con indicadores por debajo del promedio establecido
        And resalta visualmente las unidades con bajo desempeño
        And muestra las métricas que justifican la clasificación obtenida

    Scenario: Evaluación de desempeño con datos insuficientes

        Given que algunas unidades no cuentan con registros suficientes para ser analizadas
        When el gerente solicita el análisis de rendimiento de la flota
        Then el sistema excluye dichas unidades del análisis comparativo
        And muestra el mensaje "Información insuficiente para evaluar el desempeño de determinadas unidades"