Feature: Registro Digital de Ingresos por Vuelta

    Background:
        Given que el chofer ha iniciado sesión en la aplicación móvil de SmartBus Tech
        And se encuentra en la pantalla de Ruta Activa

    Scenario: Registro correcto de ingreso por vuelta

        Given que el chofer ha terminado una vuelta durante su jornada
        When ingresa un monto numérico mayor a cero y presiona "Guardar Vuelta"
        Then el sistema suma el monto al total acumulado del día
        And muestra el mensaje "Registro de vuelta guardado con éxito"

    Scenario: Registro de monto inválido

        Given que el chofer se encuentra en el formulario de registro de vuelta
        When intenta guardar el registro dejando el campo de monto vacío o ingresando letras
        Then el sistema bloquea el guardado del registro
        And muestra el mensaje "Ingrese un monto numérico válido mayor a 0"