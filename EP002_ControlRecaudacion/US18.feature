Feature: Consulta de Historial Financiero por Unidad

    Background:
        Given que el administrador ha iniciado sesión en SmartBus Tech
        And se encuentra en el módulo "Historial de Liquidaciones"

    Scenario: Consulta de historial financiero con diferentes filtros

        When el administrador realiza búsquedas utilizando los siguientes filtros

            | Placa   | Fecha Inicio | Fecha Fin   | Resultado Esperado   |
            | ABC-123 | 01/06/2026   | 30/06/2026  | Historial encontrado |
            | F3G-892 | 01/05/2026   | 31/05/2026  | Historial encontrado |
            | XYZ-999 | 01/06/2026   | 30/06/2026  | Sin resultados       |
            | ABC-123 | 30/06/2026   | 01/06/2026  | Rango inválido       |

        Then el sistema procesa cada búsqueda según los filtros ingresados
        And muestra el historial financiero cuando existen registros disponibles
        And muestra el mensaje "No se encontraron liquidaciones para la unidad seleccionada" cuando no existen resultados
        And muestra el mensaje "El rango de fechas ingresado no es válido" cuando la fecha de fin es anterior a la fecha de inicio
