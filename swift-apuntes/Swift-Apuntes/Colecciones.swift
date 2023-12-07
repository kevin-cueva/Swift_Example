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
 
