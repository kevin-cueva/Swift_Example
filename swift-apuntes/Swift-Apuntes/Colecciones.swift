//
//  Colecciones.swift
//  Swift-Apuntes
//
//  Created by k.cueva.almendrales on 5/12/23.
//
/*Una coleecion es una agrupacion de valores*/

import Foundation

func listas(){
   // - ARRAY
    var arrayString:[String] //Declaracion de array tipo string
    var arrayString2: Array<String> //Otra manera de declarar un array tipo string
    
    //Inicializacion de Array
    var arrayInit = [Int]()
    var arrayInit2 :[Int] = []
    var arrayConValores = ["Swift", "C#", "Beta"]
    var arrayConValores2 = Array(arrayLiteral: "Hola", "Hola 2")
    
    //Fuciones para arrays
    print("Numero de elementos: \(arrayConValores.count) items")  //contar arrays
    
    if arrayConValores.isEmpty { //Array vacios
        print("Array vacio")
    } else{
        print("Array con valores")
    }
    
    //Añadir elemento en Arrays
    arrayConValores.append("Python");
    arrayConValores += ["Rust", "C"]
    arrayConValores.insert("C++", at: 0) //Insertalo en la posicion 0
    print(arrayConValores);
    
    //Borrar Elemento en Arrays
    //arrayConValores.remove(at: 0); //Elimina el valor de la posicio 0 de la lista
    //arrayConValores.removeFirst(); //Elimina el primer elemento de la lista
    arrayConValores.reverse() // revierte el orden
    arrayConValores.shuffle() //Orden aleatorio de los elementos
}

///(Set) es una colección no ordenada de valores únicos del mismo tipo. La principal función de los conjuntos es proporcionar una estructura de datos que garantice la unicidad de sus elementos.
func setColeccion(){
    
    var setString = Set(["1", "2", "3"]);
    var setString2 = Set(arrayLiteral: "1","2","3");
    print("Canntidad de elementos de la collecion tipo set: \(setString.count)")
    
    /*if setString2.isEmpty{
     print("VACIO")
     }else{
     print("NO VACIO")
     }*/
    
    //Añadir
    setString.insert("4")
    //Eliminar
    setString.remove("3")
    //Buscar
    setString.contains("1") //True si lo encuentra
    
    //Recorrer coleccion
    /*for value in setString{
     print(value)
     };*/
    //forEach
    /*setString.forEach{numero in
     print(numero)
     }*/
}
 
func diccionario(){
    var diccionario = [String: String](); //Declaracion
    var diccionarioVacio : [String: String] = [:] //Diccionario vacio
    var diccinaryWithValue:[String:String]=[
                                            "name":"C++",
                                            "type":"compiled"
                                            ];
    print("--- DICCIONARY IN SWIFT -----\n");
    print("Count Keys \(diccinaryWithValue.keys.count) items");
    diccinaryWithValue.isEmpty ? print("It's emphy"):print("It isn't empty");
    //Añadir elemento
    diccinaryWithValue["level"] = "Mid level";
    //Cambia Valor de una key
    if let oldValue = diccinaryWithValue.updateValue("Low level", forKey: "level"){
        print("The old value for level was \(oldValue)")
    }
    //Borrar valor en una key
    if let removeValue = diccinaryWithValue.removeValue(forKey: "level"){
        print("Value remove for level was \(removeValue)")
    }
    diccinaryWithValue["name"] = nil;
    //Pedir valor
    let valor = diccinaryWithValue["type"]; //La variable es de tipo opcional porque tambien los dicc tienen nil
    
}
