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
