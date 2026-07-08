Feature: Monitoreo de Disponibilidad de Flota

    Background:
        Given que el administrador operativo ha iniciado sesión en SmartBus Tech
        And se encuentra en el módulo de Inteligencia de Negocio y Reportes Estratégicos

    Scenario: Consulta de disponibilidad de múltiples unidades

        When el administrador consulta la disponibilidad de las siguientes unidades

            | Unidad | Estado Operativo   | Resultado Esperado          |
            | BUS001 | Operativo          | Disponible                  |
            | BUS015 | En mantenimiento   | No disponible               |
            | BUS023 | Fuera de servicio  | No disponible               |
            | BUS030 | Sin información    | Estado no disponible        |

        Then el sistema muestra el estado operativo correspondiente de cada unidad
        And calcula el porcentaje de disponibilidad de la flota considerando las unidades disponibles
        And muestra el mensaje "Estado de unidad pendiente de actualización" para las unidades sin información disponible
