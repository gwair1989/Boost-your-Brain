//
//  SecondViewController.swift
//  Boost your Brain!
//
//  Created by Aleksandr Khalupa on 09.01.2021.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var numberOfLessonsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        performSegue(withIdentifier: "SecondVCtoFirstVC", sender: self)
    }
    
    
    @IBAction func numberOfLessonButton(_ sender: UIButton) {
        if sender.tag == 1 {
        performSegue(withIdentifier: "secondVCtoThirdVC", sender: self)
        }
    }
}
