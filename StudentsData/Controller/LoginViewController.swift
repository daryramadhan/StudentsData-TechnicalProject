//
//  LoginViewController.swift
//  StudentsData
//
//  Created by Dary Ramadhan on 18/01/24.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func btnLoginPressed(_ sender: UIButton) {
        if usernameField.text == "alfagift-admin" && passwordField.text == "asdf" {
            //Perform segue to second view controller
            self.performSegue(withIdentifier: "StudentsDetail", sender: nil)
            
        } else {
            //Show alert if when user failed to log in
            let alertController = UIAlertController(title: "There's something problem with your account", message: "Make sure login form not empty and please contact our customer care.", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Okay",style: .default,handler: { action in })
            
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
        
        
    }
    
}
