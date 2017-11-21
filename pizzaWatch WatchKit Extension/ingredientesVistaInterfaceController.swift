//
//  ingredientesVistaInterfaceController.swift
//  pizzaWatch WatchKit Extension
//
//  Created by Jose Lopez on 20/11/17.
//  Copyright © 2017 Jose Lopez. All rights reserved.
//

import WatchKit
import Foundation

var ingredientesSeleccionado : String = ""
var ingredientes : Dictionary <String , Bool> = ["Jamon" : false, "Pepperoni" : false, "Pavo" : false, "Salchichas" : false, "Aceituna" : false]

class ingredientesVistaInterfaceController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func jamonSwitch(_ value: Bool) {
        if ingredientes["Jamon"] == false {
            ingredientes["Jamon"] = true
        } else {
            ingredientes["Jamon"] = false
        }
    }
    
    
    @IBAction func pepperoniSwitch(_ value: Bool) {
        if ingredientes["Pepperoni"] == false {
            ingredientes["Pepperoni"] = true
        } else {
            ingredientes["Pepperoni"] = false
        }
    }
    
    @IBAction func pavoSwitch(_ value: Bool) {
        if ingredientes["Pavo"] == false {
            ingredientes["Pavo"] = true
        } else {
            ingredientes["Pavo"] = false
        }
    }
    @IBAction func salchichaSwitch(_ value: Bool) {
        if ingredientes["Salchichas"] == false {
            ingredientes["Salchicas"] = true
        } else {
            ingredientes["Salchichas"] = false
        }
    }
    
    @IBAction func aceitunaSwitch(_ value: Bool) {
        if ingredientes["Aceituna"] == false {
            ingredientes["Aceituna"] = true
        } else {
            ingredientes["Aceituna"] = false
        }
    }
    
    @IBAction func ingredientesButtom() {
        for (nombre, presente) in ingredientes {
            if presente == true {
                ingredientesSeleccionado += " " + nombre
                
            }
            
        }
        
        let valorContexto = ordenarPizza.init(t: tamanhoSeleccionado, m: masaSeleccionado, q: quesoSeleccionado, i: ingredientesSeleccionado)
        pushController(withName: "resultadoVista", context: valorContexto)
    }
}
