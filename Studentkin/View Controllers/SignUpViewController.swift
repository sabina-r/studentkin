//
//  SignUpViewController.swift
//  Studentkin
//
//  Created by Сабина Рзаева on 27.05.2022.
//

import UIKit


class SignUpViewController: UIViewController {

    
    @IBOutlet weak var FamTextField: UITextField!
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var OtchTextField: UITextField!
    @IBOutlet weak var GroupTextField: UITextField!
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var ParrswordRepeatTextField: UITextField!
    
    @IBOutlet weak var SignUpButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         setUpElements()
        
//        // До этого нам нужно ещё проверить, чтобы все данные были заполнены, иначе не реагировать на нажатия или не давать нажать
//
//        let stringUrl = ("http://185.117.155.28:8000/email_validness/" + email)
//
//        if let encodedUrl = stringUrl.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed), let url = URL(string: encodedUrl) {
//
//        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
//        guard let data = data else { return }
//
//        // if data == "mail_busy", то почта уже зарегистрирована
//        // if data == "valid", то почта указана правильно и ещё не зарегистрирована
//        // if data == "invalid", то почта указана неправильно, соответственно нужно вывести
//        // пользователю ошибку об этом и заставить переделать
//
//        // если здесь что-то неправильно, то будем делать { return }
//
//        }.resume()
//
//        let stringGroupUrl = ("http://185.117.155.28:8000/group_validness/" + group)
//
//        if let encodedUrl = stringGroupUrl.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed), let url = URL(string: encodedUrl) {
//
//        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
//        guard let data = data else { return }
//
//        // if data == "valid", то группа указана верно
//        // if data == "invalid", то группа указана неправильно, соответственно нужно вывести
//        // пользователю ошибку об этом и заставить переделать
//
//        // если здесь что-то неправильно, то будем делать { return }
//
//        }.resume()
//
//        let stringNameUrl = ("http://185.117.155.28:8000/name_validness/" + group + "/" + fam + "/" + name + "/" + otch)
//
//        if let encodedUrl = stringNameUrl.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed), let url = URL(string: encodedUrl) {
//
//        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
//        guard let data = data else { return }
//
//        // if data == "valid", то ФИО указаны верно
//        // if data == "invalid", то группа указана неправильно, соответственно нужно вывести
//        // пользователю ошибку об этом и заставить переделать
//
//        // если здесь что-то неправильно, то будем делать { return }
//
//        }.resume()
    }
    
    
    func setUpElements() {
        Utilities.styleButton(SignUpButton)
    }
    
    @IBAction func SignUpTapped(_ sender: Any) {
        
        
        var fam = FamTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        var name = NameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        var otch = OtchTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        var group = GroupTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        var email = EmailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        var password = PasswordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
 
        
        loginID = email
    
        
        let stringUrl = ("http://185.117.155.28:8000/go_to_base/" + email + "/" + group + "/" + fam + "/" + name + "/" + otch + "/" + password)

        if let encodedUrl = stringUrl.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed), let url = URL(string: encodedUrl) {

        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
        guard let data = data else { return }

        // единственное нужно где-то сохранить email для дальнейших обращений к api
        // switch в само приложение
        
        }.resume()
    }

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
