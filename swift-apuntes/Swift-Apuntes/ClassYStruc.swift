//
//  ClassYStruc.swift
//  Swift-Apuntes
//
//  Created by k.cueva.almendrales on 12/12/23.
//

import Foundation

//Protocolos:  permite definir un conjunto de requisitos que las clases, estructuras o enumeraciones deben cumplir.
//Un protocolo declara un conjunto de métodos, propiedades y otros requisitos que un tipo debe implementar para conformarse a ese protocolo.


protocol MyProtocol {
    mutating func printMessageProtocol()
}
class SomeClass: MyProtocol{
    var name: String
    
    init(name: String){
        self.name = name
    }
    
    //Metodos
    func validateName(){
        guard name.count > 6 else{
            print("Nombre invalido")
            return
        }
        print("Name valido")
    }
    func printMessageProtocol(){
        print("Hola soy una funcion desde un protocol")
    }
}

//Añade funncionalidades
extension SomeClass{
    func printMessage(){print("Metodo de la extension de SomeClass")}
}

struct SomeStruct{
    var name: String
    
    init(name: String){
        self.name = name
    }
    
    //Metodos
    func validateName(){
        guard name.count > 6 else{
            print("Nombre invalido")
            return
        }
        print("Name valido")
    }
}

//Añade funncionalidades
extension SomeStruct{
    func printMessage(){print("Metodo de la extension de SomeStruct")}
}




