//
//  ViewController.swift
//  Leçon 1
//
//  Created by Vladislav Zagorskii on 30.03.2020.
//  Copyright © 2020 Vladislav Zagorskii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var loginInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    var userName = ["Иванов", ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        tableView.dataSource = self
    }
    }
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let friendListCell = tableView.dequeueReusableCell(withIdentifier: "friendListCell", for: indexPath) as! TableViewCell
        friendListCell.labelView.text = "\(userName.count)"
        return friendListCell
    }
    

    @IBAction func loginButtonPressed(_ sender: Any) {}


    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let checkResult = checkUserData()

        if !checkResult {
            showLoginError()
        }
        return checkResult
    }

    func checkUserData() -> Bool {
        guard let login = loginInput.text,
            let password = passwordInput.text
            else { return false }

        if login == "admin" && password == "123456" {
            return true
        } else {
            return false
        }
    }

    func showLoginError() {
        let alter = UIAlertController(title: "Ошибка", message: "Введены не верные данные пользователя", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alter.addAction(action)
        present(alter, animated: true, completion: nil)
    }
    }


