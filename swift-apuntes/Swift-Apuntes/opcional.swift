//
//  opcionales.swift
//son una característica fundamental que permite manejar la posibilidad
//de que un valor pueda ser nulo (o ausente).
//  Swift-Apuntes
//
//  Created by k.cueva.almendrales on 4/12/23.
//

import Foundation
    func strintToNumber(){
        let myStringNumber = "123";
        let myNumber = Int(myStringNumber);
        print(myNumber);
        
        let noPuedeConvertir = "Hello";
        let numerNoPuede = Int(noPuedeConvertir);
        print(numerNoPuede)
        
        //Variable de tipo opcional
        var optionalString : String? = "Hola Mundo";
        optionalString = nil;
        
        //Extrae el valor de un opcional si lo tiene
        if let value = myNumber{print(value)}
        //Map
        myNumber.map{value in
            print(value);
        }
         //Valor por defecto
        let result = numerNoPuede ?? 0;
        print(result);
        
        // - Enum -
        //(abreviatura de enumeración) es un tipo de datos que
        //permite definir un conjunto de valores con nombre)
        enum CustomOptional<Wrapped>{
            case none
            case some(Wrapped)
        }
        
        let myOptionalNil = CustomOptional<Int>.none
        let number :CustomOptional<Int> = .some(10);
        print(number)
    }
