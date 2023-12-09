//
//  Funciones.swift
//  Swift-Apuntes
//
//  Created by k.cueva.almendrales on 9/12/23.
//

import Foundation
func createUser(name:String, age:Int)->Bool{
    print("Nombre: \(name)")
    print("Edad: \(age)")
    return true
}
//Retornar Tuplas
func getTwoValues()->(String, String){
    let name = "C++";
    let type = "Compilado";
    
    return (name, type)
}
//Naming de parametros
func suma(parametro1 num1: Int, parametro2 num2: Int)-> Int{return num1 + num2}
//Parámetros Variadic (Envia multiples variables del mismo tipo)
func validate(name:String...){print("Nombre: \(name)")}
//Parámetros inout (Modifica los parametros)
func validateNames(names: inout [String]){
    names = ["C","C++","C#","Swift"]
    print(names)
}
//Parametros por defectos
func parametrosPorDefecto(name: String = "Documents"){print("Creando la base \(name)")}
func Funciones(){
    print("--- FUNCIONES ---")
    createUser(name: "Kevin", age: 28)
    
    let (name, type) = getTwoValues();
    print("Nombre: \(name) - tipo: \(type)")
    
    print("La suma es: \(suma(parametro1: 4, parametro2: 6))")
    validate(name: "C", "C++", "Swift")
    
    var validaN = ["Rust"]
    validateNames(names: &validaN)
    
    parametrosPorDefecto();
    parametrosPorDefecto(name: "Descargas")
    
}

