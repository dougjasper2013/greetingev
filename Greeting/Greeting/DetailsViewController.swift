//
//  DetailsViewController.swift
//  Greeting
//
//  Created by Douglas Jasper on 2024-07-19.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var emailAddress: UITextField!
    
    @IBOutlet weak var phoneNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func confirmDetails(_ sender: UIButton) {
        showAlert()
    }
    
    func showAlert()
    {
        let email = emailAddress.text!
        let phone = phoneNumber.text!
        
        let title = "Contact Details"
        let message = "Email: \(email)  Phone: \(phone)"
        
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
