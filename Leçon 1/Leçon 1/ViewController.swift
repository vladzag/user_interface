//
//  ViewController.swift
//  Leçon 1
//
//  Created by Vladislav Zagorskii on 30.03.2020.
//  Copyright © 2020 Vladislav Zagorskii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
//    @IBAction func loginInput(_ sender: UITextField) {
//    }
//    @IBAction func passwordInput(_ sender: UITextField) {
//    }
//    @IBAction func loginButtonPressed(_ sender: Any) {
//
////
//        func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
//        // Проверяем данные
//        let checkResult = checkUserData()
//
//        // Если данные не верны, покажем ошибку
//        if !checkResult {
//            showLoginError()
//        }
//
//        // Вернем результат
//        return checkResult
//    }
//
//    func checkUserData() -> Bool {
//        guard let login = loginInput.text,
//            let password = passwordInput.text
//            else { return false }
//
//        if login == "admin" && password == "123456" {
//            return true
//        } else {
//            return false
//        }
//    }
////
//    func showLoginError() {
//        // Создаем контроллер
//        let alter = UIAlertController(title: "Ошибка", message: "Введены не верные данные пользователя", preferredStyle: .alert)
//        // Создаем кнопку для UIAlertController
//        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
//        // Добавляем кнопку на UIAlertController
//        alter.addAction(action)
//        // Показываем UIAlertController
//        present(alter, animated: true, completion: nil)
//    }
//    }
}

