Feature: Monitoreo de Recaudación en Tiempo Real

    Background:
        Given que el gerente de transporte ha iniciado sesión en SmartBus Tech
        And se encuentra en el módulo de monitoreo de recaudación

    Scenario: Visualización exitosa de la recaudación en tiempo real

        Given que los choferes registran sus ingresos durante la jornada
        When el gerente accede al dashboard de recaudación
        Then el sistema muestra los ingresos acumulados de las unidades en tiempo real
        And presenta gráficos e indicadores actualizados automáticamente
        And permite supervisar el desempeño financiero de la flota

    Scenario: Interrupción temporal de la conexión con el servidor

        Given que el gerente se encuentra visualizando el dashboard de recaudación
        When ocurre una pérdida temporal de conexión con el servidor
        Then el sistema conserva la última información disponible
        And muestra el mensaje "Conexión inestable. Intentando reconectar para actualizar los datos"