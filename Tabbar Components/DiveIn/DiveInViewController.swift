//
//  DiveInViewController.swift
//  Studentkin
//
//  Created by Сабина Рзаева on 27.05.2022.
//

import UIKit

class DiveInViewController: UIViewController {

    @IBOutlet weak var NextLevelBtn: UIButton!
    @IBOutlet weak var DekanBtn: UIButton!
    @IBOutlet weak var ProfBtn: UIButton!
    @IBOutlet weak var ClubBtn: UIButton!
    @IBOutlet weak var ScienceBtn: UIButton!
    @IBOutlet weak var DoneBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        }

    @IBAction func NextTapped(_ sender: Any) {
        
//        ProfBtn.tintColor = UIColor.systemBlue
//        ProfBtn.isEnabled = true
//        
    self.transitionToGame()

}


func transitionToGame () {
    
super.viewDidLoad()
let storyboard = UIStoryboard(name: "Tabbar", bundle: nil)
let tabvc = storyboard.instantiateViewController(identifier: "Tabbar")

self.navigationController?.navigationItem.hidesBackButton = true
self.navigationController?.pushViewController(tabvc, animated: true)
//    tabvc.selectedIndex = 0

}
}


