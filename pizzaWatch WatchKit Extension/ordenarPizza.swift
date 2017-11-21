//
//  ordenarPizza.swift
//  pizzaWatch WatchKit Extension
//
//  Created by Jose Lopez on 20/11/17.
//  Copyright © 2017 Jose Lopez. All rights reserved.
//

import WatchKit

class ordenarPizza: NSObject {

    var tamanhoPizza : String = ""
    var masaPizza : String = ""
    var quesoPizza : String = ""
    var ingredientesPizza : String = ""

    func setTamanho(t : String) {
        tamanhoPizza = t
    }
    
    func setMasa(m : String){
        masaPizza = m
    }
    
    func setQueso(q : String){
        quesoPizza = q
    }
    
    func setIngredientes(i : String){
        ingredientesPizza = i
    }

    init(t:String, m:String, q:String, i:String) {
        tamanhoPizza = t
        masaPizza = m
        quesoPizza = q
        ingredientesPizza = i
    }
    
}
