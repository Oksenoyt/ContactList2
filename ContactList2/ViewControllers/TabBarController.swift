//
//  TabBarController.swift
//  ContactList2
//
//  Created by Elenka on 21.07.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let contactListVC = viewControllers?.first as? ContactListViewController else { return }
        guard let contactListFullInfoVC = viewControllers?.last as? ContactListFullInfoViewController else { return }
        
        let persons = Person.getPersonList()
        
        contactListVC.contactLists = persons
        contactListFullInfoVC.contactList = persons
    }
}
