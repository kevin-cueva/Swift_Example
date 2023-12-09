//
//  Controladores.swift
//  Swift-Apuntes
//
//  Created by k.cueva.almendrales on 9/12/23.
//

import Foundation
// --- IF ----
func Controladores(){
    print("\n--- IF ----")
    var valueExample : Int = 4;
    
    if valueExample == 1 {
        print("El valor es \(1)")
    }else if valueExample == 2 {
        print("El valor es \(2)")
    }else{
       print("Es otro valor")
    }
    
//--- SWITCH ----
    print("\n--- Switch ----")
    switch valueExample {
    case 1:
        print("El valor es \(1)")
    case 2:
        print("El valor es \(1)")
    case 3, 4:
        print("El valor  \(3) o \(4)")
    default:
        print("Valor no mapeado")
    }
    
// --- FOR IN ----
    print("\n--- FOR IN ----")
    let programinCode = ["C","C++","C#"]
    for name in programinCode{
        print(name)
    }
    for name in programinCode where name == "C"{
        print("Se encuentra el lenguaje C")
    }
    //Iterar diccionario
    let diccionario = [10:"C", 20:"C++", 30:"C#", 40:"Swift"]
    for(key, value) in diccionario{
        print("LLave: \(key) -> Valor: \(value)")
    }
    //Iterar hasta un valor especifico
    for index in 1...5{
        print("Index: \(index)")
    }
    
// --- WHILE ---
    var contador = 0;
    while contador < 10{print(contador); contador = contador + 1}
    
}
