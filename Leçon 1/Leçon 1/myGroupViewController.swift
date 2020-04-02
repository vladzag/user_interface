//
//  myGroupViewController.swift
//  Leçon 1
//
//  Created by Vladislav Zagorskii on 02.04.2020.
//  Copyright © 2020 Vladislav Zagorskii. All rights reserved.
//

import UIKit

class myGroupViewController: UITableViewController {

    var grouppes = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return grouppes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myGroupCell", for: indexPath)
        cell.textLabel?.text = grouppes[indexPath.row]
        return cell
    }
    
    @IBAction func addGroup(segue: UIStoryboardSegue) {
        if segue.identifier == "addGroup" {
            let allGroupsController = segue.source as! GroupListController
            if let indexPath = allGroupsController.tableView.indexPathForSelectedRow {
                let group = allGroupsController.group[indexPath.row]
                if !grouppes.contains(group){
                    grouppes.append(group)
                    tableView.reloadData()
                }
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            grouppes.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

}
