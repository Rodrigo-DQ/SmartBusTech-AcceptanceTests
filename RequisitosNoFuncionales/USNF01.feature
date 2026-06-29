Feature: Autenticación Segura con Credenciales Únicas

    Background:
        Given que el usuario se encuentra en la pantalla de inicio de sesión de SmartBus Tech

    Scenario: Inicio de sesión exitoso con credenciales válidas

        Given que el usuario ingresa un correo registrado y una contraseña válida
        When presiona el botón "Iniciar Sesión"
        Then el sistema valida las credenciales en menos de 3 segundos
        And permite el acceso al panel correspondiente al rol del usuario
        And registra el inicio de sesión exitoso

    Scenario: Rechazo de acceso por credenciales incorrectas

        Given que el usuario ingresa un correo registrado con una contraseña incorrecta
        When presiona el botón "Iniciar Sesión"
        Then el sistema deniega el acceso a la plataforma
        And muestra el mensaje "Error: Correo o contraseña incorrectos"
        And no revela cuál de los campos ingresados es incorrecto