Feature: Registro Digital de Ingresos por Vuelta

    Background:
        Given que el chofer ha iniciado sesión en la aplicación móvil de SmartBus Tech
        And se encuentra en la pantalla de "Ruta Activa"

    Scenario: Registro de ingresos utilizando diferentes montos de recaudación

        When el chofer registra los siguientes montos por vuelta

            | Monto | Resultado Esperado |
            | 35.50 | Registro exitoso   |
            | 50.00 | Registro exitoso   |
            | 72.30 | Registro exitoso   |
            | 0.00  | Registro rechazado |
            | ABC   | Registro rechazado |
            |       | Registro rechazado |

        Then el sistema procesa cada registro de recaudación
        And acumula únicamente los montos válidos al total del día
        And muestra el mensaje "Ingrese un monto numérico válido mayor a 0" para los registros inválidos
