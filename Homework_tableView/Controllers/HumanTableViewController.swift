//
//  HumanTableViewController.swift
//  Homework_tableView
//
//  Created by Vladimir Beliakov on 08.09.2022.
//

import UIKit

class HumanTableViewController: UITableViewController {
    
    var persons = PersonModel.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return persons.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = persons[indexPath.row].fullName
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let newVC = storyboard.instantiateViewController(withIdentifier: "Detail") as! HumanDetailViewController
        newVC.person = persons[indexPath.row]
        self.navigationController?.pushViewController(newVC, animated: true)
        
    }
    
}
