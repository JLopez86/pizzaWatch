//
//  tamanhoVistaInterfaceController.swift
//  pizzaWatch WatchKit Extension
//
//  Created by Jose Lopez on 20/11/17.
//  Copyright © 2017 Jose Lopez. All rights reserved.
//

import WatchKit
import Foundation
var tamanhoSeleccionado : String = ""

class tamanhoVistaInterfaceController: WKInterfaceController {

    @IBOutlet var tamanhoLabel: WKInterfaceLabel!
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
    @IBAction func tamahoSelector(_ value: Int) {
        switch value  {
        case 1:
            tamanhoSeleccionado = "XXL"
        case 2:
            tamanhoSeleccionado = "Grande"
        case 3:
            tamanhoSeleccionado = "Mediano"
        case 4:
            tamanhoSeleccionado = "Chico"
        default:
            tamanhoSeleccionado = "Grande"
        }
        
        tamanhoLabel.setText(tamanhoSeleccionado)
        
    }
    

    @IBAction func siguienteTmButtom() {
        let valorContexto = ordenarPizza.init(t: tamanhoSeleccionado, m: "", q: "", i: "")
        pushController(withName: "masaVista", context: valorContexto)
        
    }
    
    
}
