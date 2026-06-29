Feature: Registro de Descuadres y Faltantes

    Background:
        Given que el administrador ha iniciado sesión en SmartBus Tech
        And se encuentra en el módulo "Caja y Liquidaciones"

    Scenario: Registro exitoso de un descuadre

        Given que el administrador visualiza una liquidación con un monto neto esperado
        And el dinero físico recibido es menor al monto registrado en el sistema
        When ingresa el monto recibido en el campo "Efectivo Recibido"
        Then el sistema calcula automáticamente el monto faltante
        And muestra el valor del descuadre resaltado en color rojo
        And cambia el estado de la liquidación a "Con Descuadre"

    Scenario: Registro de un descuadre sin observación

        Given que el administrador registra un monto recibido que genera un descuadre
        When intenta guardar la liquidación sin ingresar una observación
        Then el sistema impide guardar el registro
        And muestra el mensaje "Debe ingresar una observación explicando el motivo del faltante"
        And resalta el campo de observaciones como obligatorio