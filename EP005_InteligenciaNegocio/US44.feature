Feature: Comparación de Rentabilidad por Ruta

    Background:
        Given que el gerente de transporte ha iniciado sesión en SmartBus Tech
        And se encuentra en el módulo de Inteligencia de Negocio y Reportes Estratégicos

    Scenario: Comparación económica entre rutas seleccionadas

        Given que existen registros de ingresos y gastos asociados a diferentes rutas
        When el gerente selecciona dos o más rutas y define un período de análisis
        Then el sistema calcula la rentabilidad total de cada ruta seleccionada
        And muestra una comparación visual entre ingresos, gastos y utilidad por ruta
        And identifica la ruta con mayor rentabilidad dentro del período consultado

    Scenario: Comparación con una ruta sin información financiera

        Given que una de las rutas seleccionadas no cuenta con registros financieros en el período consultado
        When el gerente solicita comparar la rentabilidad entre rutas
        Then el sistema excluye la ruta sin información del cálculo comparativo
        And mantiene visibles los resultados de las rutas con datos disponibles
        And muestra el mensaje "La ruta seleccionada no cuenta con información disponible"
