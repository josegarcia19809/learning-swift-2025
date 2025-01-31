//
//  setFundamentalFunctions.swift
//  Swift 2025
//
//  Created by Jose Garcia on 30/01/25.
//

func setFundamentalFunctions() {
    let s1: Set<Int> = [1, 2, 3, 4, 5]
    let s2: Set<Int> = [6, 7, 8, 9, 4, 5]

    print(s1)
    print(s2)

    print("Intersección: \(s1.intersection(s2))")
    print("Elementos únicos en s1 o s2, pero no en ambos: \(s1.symmetricDifference(s2))")
    print("Unión s1 y s2: \(s1.union(s2))")
    print("Diferencia de conjuntos: elementos en s1 que no están en s2: \(s1.subtracting(s2))")

    let s3: Set<Int> = [4, 5]
    let s4: Set<Int> = [9, 10]
    print("¿s3 es un subconjunto de s1? \(s3.isSubset(of: s1))")
    print("¿s3 es subconjunto propio de s1? \(s3.isStrictSubset(of: s1))") // s3 debe ser estrictamente menor en tamaño que s1 (no pueden ser iguales).

    print("¿s1 es un superconjunto de s3? \(s1.isSuperset(of: s3))")
    print("¿s1 es un superconjunto propio de s3? \(s1.isStrictSuperset(of: s3))") // s1 contiene todos los elementos de s3, pero además tiene elementos adicionales (no pueden ser iguales)

    print("Verificación de disjunción: ¿s1 y s2 no comparten elementos? \(s1.isDisjoint(with: s2))")
    print("Verificación de disjunción: ¿s1 y s4 no comparten elementos? \(s1.isDisjoint(with: s4))")
}
