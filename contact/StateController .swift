//
//  StateController .swift
//  contact
//
//  Created by Mohan K on 21/02/23.
//

import Foundation
import UIKit

class StateController {
    
    private(set) var contacts: [Contact] = [
        Contact(id: 1, photo: UIImage(named: "con1")!, name: "mohan", position: "salesrepresentative", email: "mohan@sampleemail.com", phone: "9876543201"),
        Contact(id: 2, photo: UIImage(named: "con2")!, name: "amar", position: "product manager", email: "amar@sampleemail.com", phone: "8739392878"),
        Contact(id: 3, photo: UIImage(named: "con3")!, name: "pavi", position: "intern trainee", email: "pavi@sampleemail.com", phone: "8935475958"),
        Contact(id: 4, photo: UIImage(named: "con4")!, name: "mathi", position: "software developer", email: "mathi@sampleemail.com", phone: "7456573737"),
        Contact(id: 5, photo: UIImage(named: "con5")!, name: "praveen", position: "senior developer", email: "praaveen@sampleemail.com", phone: "8377474747") ,
        Contact(id: 6, photo: UIImage(named: "con6")!, name: "paneer", position: "teamleader", email: "paneer@smaplemail.com", phone: "9747474848"),
        Contact(id: 7, photo: UIImage(named: "con7")!, name: "hakeem", position: "projecct head", email: "hakeem@sampleemail.com", phone: "9747774747"),
        Contact(id: 8, photo: UIImage(named: "con8")!, name: "sakthi", position: "vice president", email: "sakthi@sampleemail.com", phone: "7838392299"),
        Contact(id: 9, photo: UIImage(named: "con9")!, name: "manikandan", position: "chairman", email: "manikandan@sampleemail.com", phone: "7864536346"),
        Contact(id: 10, photo: UIImage(named: "con10")!, name: "shiva", position: "assistant manager", email: "shiva@sampleemail.com", phone: "9735687878"),
        Contact(id: 11, photo: UIImage(named: "con11")!, name: "saravana", position: "manager", email: "saravana@sampleemail.com", phone: "8907654321"),
        Contact(id: 12, photo: UIImage(named: "con12")!, name: "kavin", position: "ceo", email: "kavin@sampleemail.com", phone: "9872435673")]
    
    var favourites : [Contact] = []
    
    func update(_ contact: Contact) {
        for (index, old) in contacts.enumerated()
        {
            if old.name == contact.name {
                contacts[index] = contact
                break
            }
        }    }
}
