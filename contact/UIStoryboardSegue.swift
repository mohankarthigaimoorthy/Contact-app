//
//  UIStoryboardSegue.swift
//  contact
//
//  Created by Mohan K on 21/02/23.
//

import Foundation

import UIKit

extension UIStoryboardSegue {
    func forward(_ contact: Contact?, to destination: UIViewController) {
        if let navigationController = destination as? UINavigationController {
            let root = navigationController.viewControllers[0]
            forward(contact, to: root)
            
        }
        if let detailViewController = destination as? detailTableViewController
        {
            detailViewController.contact = contact
        }
        if let editContactViewCotroller = destination as? editContactTableViewController {
            editContactViewCotroller.contact = contact
        }
    }
}
