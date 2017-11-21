//
//  quesoVistaInterfaceController.swift
//  pizzaWatch WatchKit Extension
//
//  Created by Jose Lopez on 20/11/17.
//  Copyright © 2017 Jose Lopez. All rights reserved.
//

import WatchKit
import Foundation

var quesoSeleccionado : String = ""

class quesoVistaInterfaceController: WKInterfaceController {

    @IBOutlet var quesoLabel: WKInterfaceLabel!
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

    @IBAction func quesoSelector(_ value: Int) {
        switch value  {
        case 1:
            quesoSeleccionado = "Mozzarela"
        case 2:
            quesoSeleccionado = "Parmesano"
        case 3:
            quesoSeleccionado = "Caturpiry"
        default:
            quesoSeleccionado = "Mozzarela"
        }
        
        quesoLabel.setText(quesoSeleccionado)
    }
    
    @IBAction func quesoButtom() {
        let valorContexto = ordenarPizza.init(t: tamanhoSeleccionado, m: masaSeleccionado, q: quesoSeleccionado, i: "")
        pushController(withName: "ingredientesVista", context: valorContexto)
    }
    
    
}
