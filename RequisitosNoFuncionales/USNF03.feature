Feature: Bloqueo de Cuenta por Intentos Fallidos

    Background:
        Given que el usuario se encuentra en la pantalla de inicio de sesión de SmartBus Tech

    Scenario: Bloqueo automático por intentos fallidos consecutivos

        Given que el usuario ha realizado cuatro intentos fallidos de inicio de sesión
        When ingresa nuevamente una contraseña incorrecta y presiona "Iniciar Sesión"
        Then el sistema cambia el estado de la cuenta a "Bloqueado"
        And deshabilita temporalmente el acceso durante 30 minutos
        And muestra el mensaje "Cuenta bloqueada por seguridad. Intente nuevamente más tarde"

    Scenario: Intento de acceso con cuenta bloqueada

        Given que la cuenta del usuario se encuentra en estado "Bloqueado"
        When intenta iniciar sesión antes de que finalice el tiempo de bloqueo
        Then el sistema rechaza el acceso sin validar la contraseña ingresada
        And muestra el mensaje "Cuenta bloqueada por seguridad. Intente nuevamente en XX minutos"