//
//  detailTableViewController.swift
//  contact
//
//  Created by Mohan K on 20/02/23.
//

import UIKit

protocol DetailViewControllerDelegate: AnyObject {
    func update(_ contact: Contact)
}

class detailTableViewController: UITableViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel?
    @IBOutlet weak var positionLabel: UILabel?
    @IBOutlet weak var emaiLabel: UILabel?
    @IBOutlet weak var phonNumber: UILabel?
    
    var contact: Contact?
    weak var delegate: DetailViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        imageView?.image = contact?.photo
        nameLabel?.text = contact?.name
        positionLabel?.text = contact?.position
        emaiLabel?.text = contact?.email
        phonNumber?.text = contact?.phone
    }
    // MARK: - Table view data source
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.forward(contact, to: segue.destination)
    }
    
    @IBAction func cancel(_ unwindSegue: UIStoryboardSegue) {}
    
    @IBAction func save(_ unwindSegue: UIStoryboardSegue) {
        if let editContactViewCotroller = unwindSegue.source as? editContactTableViewController {
            contact = editContactViewCotroller.contact
            if let contact = contact {
                delegate?.update(contact)
            }
        }
    }
}
