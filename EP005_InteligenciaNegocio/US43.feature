Feature: Monitoreo de Disponibilidad de Flota

    Background:
        Given que el administrador operativo ha iniciado sesión en SmartBus Tech
        And se encuentra en el panel de disponibilidad de flota

    Scenario: Análisis de disponibilidad de múltiples unidades

        When el administrador consulta la disponibilidad de las siguientes unidades

            | Unidad | Estado Operativo   | Resultado Esperado   |
            | BUS001 | Operativo          | Disponible           |
            | BUS015 | En mantenimiento   | No disponible        |
            | BUS023 | Fuera de servicio  | No disponible        |
            | BUS030 | Sin información    | Estado pendiente     |

        Then el sistema clasifica cada unidad según su estado operativo
        And calcula el porcentaje de disponibilidad de la flota considerando únicamente las unidades disponibles
        And identifica las unidades sin información actualizada
        And muestra el mensaje "Estado de unidad pendiente de actualización" para las unidades sin información disponible
