//
//  LoginViewController.swift
//  Studentkin
//
//  Created by Сабина Рзаева on 27.05.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var LoginTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var LoginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpElemets()

        }
    
    func setUpElemets() {
            Utilities.styleButton(LoginButton)
        }
        
    
    @IBAction func LoginTapped(_ sender: Any) {
            
        self.transitionToHome()
    }

func transitionToHome () {

super.viewDidLoad()
let storyboard = UIStoryboard(name: "Tabbar", bundle: nil)
let tabvc = storyboard.instantiateViewController(identifier: "Tabbar")
    
    
self.navigationController?.navigationItem.hidesBackButton = true
self.navigationController?.pushViewController(tabvc, animated: false)


}
}
