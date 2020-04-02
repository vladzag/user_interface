//
//  FriendListController.swift
//  Leçon 1
//
//  Created by Vladislav Zagorskii on 02.04.2020.
//  Copyright © 2020 Vladislav Zagorskii. All rights reserved.
//

import UIKit

class FriendListController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    let friendList = [["Ivan", "Ivanov"], ["Petr", "Petrov"], ]

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return friendList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "friendListCell", for: indexPath) as! friendListCell
// cell.friendListLabel.text = friendList[indexPath.row]
        return cell
    }
    
}
    
