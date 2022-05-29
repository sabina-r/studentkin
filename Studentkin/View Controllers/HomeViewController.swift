//
//  ViewController.swift
//  Studentkin
//
//  Created by Сабина Рзаева on 27.05.2022.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var StartSignButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         setUpElements()
        
    }
    
    func setUpElements() {
        Utilities.styleButton(StartSignButton)
    }
    
    @IBAction func StartSignTapped(_ sender: Any) {
    }
    
}

