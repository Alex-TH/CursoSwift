//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Alejandro Trejo on 5/20/16.
//  Copyright © 2016 Alejandro Trejo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let pais = ColleccionDePaises()
    let hamburguesa = ColleccionDeHamburguesas()
    @IBOutlet weak var lblPais: UILabel!
    @IBOutlet weak var lblHamburguesa: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cambiarPaisHamburguesa(sender: AnyObject) {
        lblPais.text = pais.obtenPais()
        lblHamburguesa.text = "Hamburguesa \(hamburguesa.obtenHamburguesa())"
        view.backgroundColor = UIColor(red: CGFloat(arc4random() % 255)/255.0, green: CGFloat(arc4random() % 255)/255.0, blue: CGFloat(arc4random() % 255)/255.0, alpha: 1)
        view.tintColor = UIColor(red: CGFloat(arc4random() % 255)/255.0, green: CGFloat(arc4random() % 255)/255.0, blue: CGFloat(arc4random() % 255)/255.0, alpha: 1)
    }

}

