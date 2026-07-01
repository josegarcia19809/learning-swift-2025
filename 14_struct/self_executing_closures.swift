//
//  self_executing_closures.swift
//  Swift 2025
//
//  Created by Jose Garcia on 01/07/26.
//

func self_executing_closures() {
    clienteApp()
    imprimirLinea()
    pedidoApp()
    imprimirLinea()
    reporteLazy()
    imprimirLinea()
    farmaciaReutilizarLazy()
}

func clienteApp() {
    /*
     1. Self executing closures (Closures que se ejecutan solas)

     Es una closure que se define y se ejecuta inmediatamente para asignar el valor inicial de una propiedad.

     Sintaxis
     let propiedad: Tipo = {
         // código
         return valor
     }()

     Observa el () al final. Esos paréntesis hacen que la closure se ejecute inmediatamente.
     */
    struct Cliente {
        let descuento: Int = {
            let esAdultoMayor = true
            if esAdultoMayor {
                return 20
            } else {
                return 0
            }
        }()
    }

    let cliente = Cliente()
    print(cliente.descuento)
}

func pedidoApp() {
    /*
     2. A property that requires custom initialization logic

     (Una propiedad que necesita lógica personalizada para inicializarse)

     A veces el valor inicial no es simplemente un número o un texto.

     Por ejemplo, una farmacia quiere decidir el precio de envío dependiendo del monto de compra.
     */

    struct Pedido {
        let costoEnvio: Double = {
            let compra = 350.0
            if compra >= 300.0 {
                return 0
            } else {
                return 50
            }
        }()
    }
    let productoPedido = Pedido()
    print(productoPedido.costoEnvio)
}

func reporteLazy() {
    /*
     3. Lazy evaluation (Evaluación perezosa)

     Una propiedad lazy no se crea cuando nace el objeto.

     Se crea hasta la primera vez que alguien la usa.
     */
    struct Reporte {
        lazy var mensaje = crearMensaje()

        func crearMensaje() -> String {
            print("Creando mensaje...")
            return "Reporte generado"
        }
    }
    var reporte = Reporte()
    print("Objeto creado")
    print(reporte.mensaje)
}

func farmaciaReutilizarLazy() {
    /*
     (Una vez que la closure se ejecuta, los accesos posteriores reutilizan el valor)

     Con una propiedad lazy, la closure solo se ejecuta una vez.

     Después Swift guarda el resultado.
     */
    struct Farmacia {
        lazy var inventario = cargarInventario()

        mutating func cargarInventario() -> [String] {
            print("Cargando inventario")
            return ["Paracetamol", "Ibuprofeno", "Vitamina C"]
        }
    }

    var farmacia = Farmacia()

    print(farmacia.inventario)
    print(farmacia.inventario)
    print(farmacia.inventario)
}

/*
 Resumen
 Concepto    ¿Qué hace?    ¿Cuándo se ejecuta?
 Self executing closure    Ejecuta una closure inmediatamente para inicializar una propiedad.    Al crear el objeto.
 Propiedad con lógica personalizada    Permite realizar cálculos o decisiones antes de asignar el valor inicial.    Durante la inicialización.
 Lazy evaluation    Retrasa la creación del valor hasta que realmente se necesita.    En el primer acceso.
 Reutilización del valor    Después de ejecutar la closure de una propiedad lazy, Swift guarda el resultado y lo reutiliza.    En todos los accesos posteriores.
 */
