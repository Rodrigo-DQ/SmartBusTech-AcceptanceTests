Feature: Autenticación Segura con Credenciales Únicas

    Background:
        Given que el usuario se encuentra en la pantalla de inicio de sesión de SmartBus Tech

    Scenario: Validación de autenticación con múltiples credenciales

        When el usuario intenta iniciar sesión con las siguientes credenciales

            | Correo              | Contraseña | Resultado Esperado |
            | admin@smartbus.pe   | Admin123   | Acceso permitido   |
            | gerente@smartbus.pe | Gerente01  | Acceso permitido   |
            | chofer@smartbus.pe  | Chofer123  | Acceso permitido   |
            | admin@smartbus.pe   | 123456     | Acceso denegado    |
            | usuario@smartbus.pe |            | Acceso denegado    |

        Then el sistema valida cada intento de autenticación
        And concede el acceso únicamente a las credenciales válidas
        And muestra el mensaje "Error: Correo o contraseña incorrectos" para los intentos inválidos
