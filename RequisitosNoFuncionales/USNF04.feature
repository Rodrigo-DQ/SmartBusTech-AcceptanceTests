Feature: Cierre Automático de Sesión por Inactividad

    Background:
        Given que el usuario ha iniciado sesión correctamente en SmartBus Tech

    Scenario: Expiración automática de sesión por inactividad

        Given que el usuario no registra movimientos del mouse, clics ni pulsaciones de teclado
        When el temporizador del sistema alcanza los 20 minutos de inactividad
        Then el sistema cierra la sesión automáticamente
        And redirige al usuario a la pantalla de inicio de sesión
        And muestra el mensaje "Sesión finalizada por inactividad"

    Scenario: Reinicio del temporizador por actividad detectada

        Given que la sesión del usuario lleva 19 minutos sin actividad
        When el usuario realiza un clic o presiona una tecla
        Then el sistema reinicia el contador de inactividad
        And mantiene activa la sesión del usuario