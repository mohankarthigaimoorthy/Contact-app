//
//  contactsTableViewController.swift
//  contact
//
//  Created by Mohan K on 20/02/23.
//

import UIKit

class contactsTableViewController: UITableViewController {
    var stateController: StateController?
    var favouritesOnly = false
    
  
    var contacts: [Contact] {
        if favouritesOnly {
            return stateController?.favourites ?? []
        }
        return stateController?.contacts ?? []
    }
    override func viewDidLoad()  {
        super.viewDidLoad()
        tableView.reloadData()

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
        
        print("contacts : \(contacts), contacts count : \(contacts.count)")
    }
    // MARK: - Table view data source

  
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return contacts.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let contact = contacts[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath) as! ContactTableCell
        cell.photoImageView?.image = contact.photo
        cell.nameLabel?.text = contact.name
        cell.positionLabel?.text = contact.position
        return cell
    }
    
    override func prepare (for segue:UIStoryboardSegue, sender: Any?) {
        guard let detailViewController = segue.destination as? detailTableViewController,
              let index = tableView.indexPathForSelectedRow?.row else{return}
        detailViewController.contact = contacts[index]
        detailViewController.delegate = self
    }
    


    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let contextItem = UIContextualAction(style: .destructive, title: "Favourite") {  (contextualAction, view, boolValue) in
          //Code I want to do here
          guard let favourite = self.stateController?.contacts[indexPath.row] else { return }
          self.stateController?.favourites.append(favourite)
      }
      let swipeActions = UISwipeActionsConfiguration()

      return swipeActions
    }
}

extension contactsTableViewController: DetailViewControllerDelegate {
    func update(_ contact: Contact)
    {
        stateController?.update(contact)
    }
}
