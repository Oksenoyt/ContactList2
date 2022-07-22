//
//  ContactViewController.swift
//  ContactList2
//
//  Created by Elenka on 19.07.2022.
//

import UIKit

class ContactViewController: UIViewController {
    
    @IBOutlet var contactInformationLabels: [UILabel]!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = contact.fullName
        contactInformationLabels[0].text = contact.phoneNumber
        contactInformationLabels[1].text = contact.email
    }
}
