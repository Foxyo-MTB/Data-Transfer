//
//  HumanDetailViewController.swift
//  Homework_tableView
//
//  Created by Vladimir Beliakov on 12.09.2022.
//

import UIKit

class HumanDetailViewController: UIViewController {
    
    var person: PersonModel?

    @IBOutlet var humanDetailTitleOutlet: UINavigationItem!
    @IBOutlet var emailOutlet: UILabel!
    @IBOutlet var phoneOutlet: UILabel!
    @IBOutlet var nameOutlet: UILabel!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        humanDetailTitleOutlet.title = person?.name
        nameOutlet.text = person?.fullName
        phoneOutlet.text = person?.phoneNumber
        emailOutlet.text = person?.email
    }
    
  
    
}
