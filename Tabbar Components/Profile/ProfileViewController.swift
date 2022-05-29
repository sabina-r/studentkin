//
//  ProfileViewController.swift
//  Studentkin
//
//  Created by Сабина Рзаева on 27.05.2022.
//

var loginID:String?

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var ProfImage: UIImageView!
    @IBOutlet weak var ballImage: UIImageView!
    @IBOutlet weak var infoImage: UIImageView!
    @IBOutlet weak var docImage: UIImageView!
    @IBOutlet weak var journalImage: UIImageView!
    
    
    
    @IBOutlet weak var ballBtn: UIButton!
    @IBOutlet weak var docBtn: UIButton!
    @IBOutlet weak var infoBtn: UIButton!
    @IBOutlet weak var journalBtn: UIButton!
    

    
    
    override func viewDidLoad() {
        
            super.viewDidLoad()
        let radius = ProfImage.frame.width / 2
              ProfImage.layer.cornerRadius = radius
        ProfImage.layer.masksToBounds = true
        
//        var group:String?
//
//        let lastNameUrl = "http://185.117.155.28:8000/get_user_l/" + loginID!
//
//        if let encodedUrl = lastNameUrl.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed), let url = URL(string: encodedUrl) {
//
//        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
//        guard let data = data else { return }
//
//        // data - фамилия
//        // вывод куда нужно
//
//        }.resume()
//
//        let firstNameUrl = "http://185.117.155.28:8000/get_user_f/" + loginID!
//
//        if let encodedUrl = firstNameUrl.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed), let url = URL(string: encodedUrl) {
//
//        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
//        guard let data = data else { return }
//
//        // data - имя
//        // вывод куда нужно
//
//        }.resume()
//
//        let patronymicUrl = "http://185.117.155.28:8000/get_user_p" + loginID!
//
//        if let encodedUrl = patronymicUrl.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed), let url = URL(string: encodedUrl) {
//
//        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
//        guard let data = data else { return }
//
//        // data - отчество
//        // вывод куда нужно
//
//        }.resume()
//
//        let groupUrl = "http://185.117.155.28:8000/get_group/" + loginID!
//
//        if let encodedUrl = groupUrl.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed), let url = URL(string: encodedUrl) {
//
//        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
//        guard let data = data else { return }
//
//            group = String (data: data, encoding: .utf8)
//        // сохраняем группу в отдельную переменную
//        // data - группа
//        // вывод куда нужно
//
//        }.resume()
//
//            let elderUrl = "http://185.117.155.28:8000/get_elder/" + group!
//
//        if let encodedUrl = elderUrl.addingPercentEncoding(withAllowedCharacters:.urlQueryAllowed), let url = URL(string: encodedUrl) {
//
//        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
//        guard let data = data else { return }
//
//        // data - староста
//        // вывод куда нужно
//
//        }.resume()
//
//
//        }
//        }
//        }
//
//
//        }
//        }
    }
        
    @IBAction func infoTapped(_ sender: Any) {
        infoBtn.tintColor = UIColor.systemBlue
        docBtn.tintColor = UIColor.black
        ballBtn.tintColor = UIColor.black
        journalBtn.tintColor = UIColor.black
        ballImage.isHidden = true
        infoImage.isHidden = false
        docImage.isHidden = true
        journalImage.isHidden = true
    
    }
  
    
    @IBAction func docTapped(_ sender: Any) {
        docBtn.tintColor = UIColor(named: "3145FF")
        ballBtn.tintColor = UIColor.black
        journalBtn.tintColor = UIColor.black
        infoBtn.tintColor = UIColor.black
        
        ballImage.isHidden = true
        infoImage.isHidden = true
        docImage.isHidden = false
        journalImage.isHidden = true
    }
    
    @IBAction func ballTapped(_ sender: Any) {
        ballBtn.tintColor = UIColor(named: "3145FF")
        docBtn.tintColor = UIColor.black
        journalBtn.tintColor = UIColor.black
        infoBtn.tintColor = UIColor.black
        
        ballImage.isHidden = false
        infoImage.isHidden = true
        docImage.isHidden = true
        journalImage.isHidden = true
    }
    
    @IBAction func journalTapped(_ sender: Any) {
        journalBtn.tintColor = UIColor(named: "3145FF")
        docBtn.tintColor = UIColor.black
        ballBtn.tintColor = UIColor.black
        infoBtn.tintColor = UIColor.black
   
        ballImage.isHidden = true
        infoImage.isHidden = true
        docImage.isHidden = true
        journalImage.isHidden = false
    }

}
