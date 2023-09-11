//
//  ContactDetailsViewController.swift
//  Homework 11
//
//  Created by Владислав Клунный on 08.09.2023.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        emailLabel.text = "Phone \(person.phoneNumbers)"
        phoneNumberLabel.text = "Email: \(person.email)"
    }
    
}
