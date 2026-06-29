Feature: Registro de Gastos Operativos con Evidencia

    Background:
        Given que el chofer ha iniciado sesión en la aplicación móvil de SmartBus Tech
        And se encuentra realizando su jornada laboral

    Scenario: Registro exitoso de un gasto operativo

        Given que el chofer accede a la opción "Agregar Gasto"
        When registra el monto, selecciona el tipo de gasto, adjunta la fotografía del comprobante y presiona "Registrar Gasto"
        Then el sistema guarda la información del gasto
        And descuenta el monto del total recaudado del día
        And muestra el mensaje "Gasto registrado correctamente"

    Scenario: Registro de gasto sin evidencia

        Given que el chofer completa el formulario de registro de gastos
        When intenta guardar el registro sin adjuntar la fotografía del comprobante
        Then el sistema impide registrar el gasto
        And resalta el ícono de la cámara
        And muestra el mensaje "Es obligatorio adjuntar la foto del comprobante"