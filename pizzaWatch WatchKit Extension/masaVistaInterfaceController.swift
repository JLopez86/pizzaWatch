//
//  masaVistaInterfaceController.swift
//  pizzaWatch WatchKit Extension
//
//  Created by Jose Lopez on 20/11/17.
//  Copyright © 2017 Jose Lopez. All rights reserved.
//

import WatchKit
import Foundation

var masaSeleccionado : String = ""


class masaVistaInterfaceController: WKInterfaceController {

    @IBOutlet var masaLabel: WKInterfaceLabel!
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
    @IBAction func masaButtom() {
        let valorContexto = ordenarPizza.init(t: tamanhoSeleccionado, m: masaSeleccionado, q: "", i: "")
        pushController(withName: "quesoVista", context: valorContexto)
    }
    
    @IBAction func masaSelector(_ value: Int) {
        switch value  {
        case 1:
            masaSeleccionado = "Crujiente"
        case 2:
            masaSeleccionado = "Fina"
        case 3:
            masaSeleccionado = "Gruesa"
        default:
            masaSeleccionado = "Crujiente"
        }
        
        masaLabel.setText(masaSeleccionado)
    }
}
