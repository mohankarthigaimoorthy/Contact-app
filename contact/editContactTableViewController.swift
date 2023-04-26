//
//  editContactTableViewController.swift
//  contact
//
//  Created by Mohan K on 20/02/23.
//

import UIKit

class editContactTableViewController: UITableViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imagePick: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var positionTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    var contact : Contact?
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = contact?.photo
        nameTextField.text = contact?.name
        positionTextField.text = contact?.position
        emailTextField.text = contact?.email
        phoneNumberTextField.text = contact?.phone
    }

    // MARK: - Table view data source

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let photo = imageView.image,
            let name = nameTextField.text,
           let position = positionTextField.text,
            let email = emailTextField.text,
            let phone = phoneNumberTextField.text {
            contact = Contact.init(id: 1, photo: photo, name: name, position: position, email: email, phone: phone)
        }
    }

}
