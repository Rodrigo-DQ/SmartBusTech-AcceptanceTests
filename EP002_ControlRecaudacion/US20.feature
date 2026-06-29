Feature: Edición Excepcional de Liquidación Cerrada

    Background:
        Given que el administrador ha iniciado sesión en SmartBus Tech
        And se encuentra en el módulo "Historial de Liquidaciones"

    Scenario: Edición exitosa de una liquidación cerrada

        Given que el administrador cuenta con permisos para editar liquidaciones cerradas
        And la liquidación seleccionada se encuentra en estado "Cuadrado"
        When modifica el monto de la liquidación y guarda los cambios
        Then el sistema actualiza la información de la liquidación
        And registra la modificación en el historial de auditoría
        And muestra el mensaje "Liquidación actualizada correctamente"

    Scenario: Intento de edición sin permisos suficientes

        Given que el usuario posee un perfil de liquidador estándar
        When intenta editar una liquidación cerrada
        Then el sistema bloquea la edición de la liquidación
        And muestra el mensaje "No cuenta con permisos para realizar esta acción"