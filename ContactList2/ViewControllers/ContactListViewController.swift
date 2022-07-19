//
//  ContactListViewController.swift
//  ContactList2
//
//  Created by Elenka on 19.07.2022.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    var contactList = Person.getPerson()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let contact = contactList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullName
        cell.contentConfiguration = content
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactVC = segue.destination as? ContactViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        contactVC.contact = contactList[indexPath.row]
        
    }
}