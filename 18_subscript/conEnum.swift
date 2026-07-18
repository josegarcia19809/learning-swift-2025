//
//  conEnum.swift
//  Swift 2025
//
//  Created by Jose Garcia on 18/07/26.
//

func conEnumApp() {
    enum Mes: Int {
        case enero = 1
        case febrero
        case marzo

        subscript(valor: Int) -> String {
            switch valor {
            case 1: return "Enero"
            case 2: return "Febrero"
            case 3: return "Marzo"
            default: return "No existe"
            }
        }
    }

    let mes = Mes.enero

    print(mes[2])
}
