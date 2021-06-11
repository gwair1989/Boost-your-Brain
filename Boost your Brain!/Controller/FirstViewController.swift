//
//  ViewController.swift
//  Boost your Brain!
//
//  Created by Aleksandr Khalupa on 29.12.2020.
//

import UIKit




class FirstViewController: UIViewController {

    
    @IBOutlet weak var boostBrain: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        boostBrain.titleLabel?.adjustsFontSizeToFitWidth = true
    }


    
    @IBAction func boostBrainButton(_ sender: UIButton) {
        performSegue(withIdentifier: "FirstVCtoSecondVC", sender: self)
    }
}

