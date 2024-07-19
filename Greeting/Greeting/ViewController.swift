//
//  ViewController.swift
//  Greeting
//
//  Created by Douglas Jasper on 2024-07-12.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func displayGreeting(_ sender: UIButton) {
        showAlert()
    }
    
    func showAlert()
    {
        let fName = firstName.text!
        let lName = lastName.text!
        
        let title = "Greeting"
        let message = "Hello \(fName) \(lName)"
        
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert)
        
        let action = UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }

}

