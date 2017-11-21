//
//  ordenVistaInterfaceController.swift
//  pizzaWatch WatchKit Extension
//
//  Created by Jose Lopez on 20/11/17.
//  Copyright © 2017 Jose Lopez. All rights reserved.
//

import WatchKit
import Foundation
import UIKit

class ordenVistaInterfaceController: WKInterfaceController {

    @IBOutlet var tamanhoLabel: WKInterfaceLabel!
    @IBOutlet var masaLabel: WKInterfaceLabel!
    @IBOutlet var quesoLabel: WKInterfaceLabel!
    @IBOutlet var ingredientesLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let c = context as! ordenarPizza
        tamanhoLabel.setText(c.tamanhoPizza)
         masaLabel.setText(c.masaPizza)
         quesoLabel.setText(c.quesoPizza)
         ingredientesLabel.setText(c.ingredientesPizza)

        
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

    
    @IBAction func confirmarButtom() {

    }
    

    
}
