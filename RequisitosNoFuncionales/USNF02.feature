Feature: Control de Accesos Basado en Roles

    Background:
        Given que el usuario ha iniciado sesión correctamente en SmartBus Tech

    Scenario: Acceso autorizado según el rol del usuario

        Given que el usuario posee permisos para acceder a un módulo específico
        When selecciona dicho módulo desde el menú principal
        Then el sistema permite el acceso a la funcionalidad solicitada
        And muestra únicamente las opciones correspondientes a su rol

    Scenario: Intento de acceso a un módulo sin permisos

        Given que el usuario intenta acceder a un módulo restringido para su rol
        When selecciona la opción correspondiente o intenta acceder mediante una URL directa
        Then el sistema bloquea el acceso a la funcionalidad
        And muestra el mensaje "No cuenta con permisos para acceder a este módulo"
        And registra el intento de acceso no autorizado