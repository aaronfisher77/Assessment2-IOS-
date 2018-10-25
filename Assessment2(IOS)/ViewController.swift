//
//  ViewController.swift
//  Assessment2(IOS)
//
//  Created by Aaron Fisher on 10/25/18.
//  Copyright © 2018 Aaron Fisher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBOutlet weak var firstNameInput: UITextField!
    @IBOutlet weak var lastNameInput: UITextField!
    @IBOutlet weak var emailInput: UITextField!
    
    @IBAction func SubmitButton(_ sender: Any) {
        guard

            let firstName = firstNameInput.text, !firstName.isEmpty,
            let lastname = lastNameInput.text, !lastname.isEmpty,
            let email = emailInput.text, !email.isEmpty

        else {
            let errorAlert = UIAlertController(title: "Wait", message: "Please make sure that all fields are filled before continueing", preferredStyle: UIAlertController.Style.alert)
            
            let dismissAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: {UIAlertAction in})
                    errorAlert.addAction(dismissAction)
            self.present(errorAlert, animated: true, completion: nil)
            return
                }
        let GreetAlert = UIAlertController(title: "Hello There", message: "Nice to meet you \(firstName,lastname). Did you know your email is \(email)", preferredStyle: UIAlertController.Style.alert)
        
        let dismissAction = UIAlertAction(title: "You too robot thing.", style: UIAlertAction.Style.default, handler: {UIAlertAction in})
        GreetAlert.addAction(dismissAction)
        self.present(GreetAlert, animated: true, completion: nil)
        
    }

}

