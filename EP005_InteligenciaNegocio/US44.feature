Feature: Comparación de Rentabilidad por Ruta

    Background:
        Given que el gerente de transporte ha iniciado sesión en SmartBus Tech
        And se encuentra en el módulo de Inteligencia de Negocio y Reportes Estratégicos

    Scenario: Comparación exitosa de rentabilidad entre rutas

        Given que existen registros financieros asociados a las rutas seleccionadas
        When el gerente selecciona dos o más rutas para comparar su rentabilidad
        Then el sistema muestra un gráfico comparativo de ingresos y rentabilidad
        And presenta los indicadores financieros correspondientes a cada ruta
        And calcula las diferencias porcentuales entre las rutas seleccionadas

    Scenario: Comparación de una ruta sin registros financieros

        Given que una de las rutas seleccionadas no posee registros financieros para el período consultado
        When el gerente solicita la comparación de rentabilidad entre rutas
        Then el sistema excluye la ruta sin información del análisis comparativo
        And muestra el mensaje "La ruta seleccionada no cuenta con información disponible"