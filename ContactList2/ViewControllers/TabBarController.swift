//
//  TabBarController.swift
//  ContactList2
//
//  Created by Elenka on 21.07.2022.
//

import UIKit

class TabBarController: UITabBarController {
    let contactLists = Person.getPersonList()()
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactListVC = segue.destination as? ContactListViewController else { return }
        contactListVC.contactLists = contactLists
    }
}
