//
//  ViewController.swift
//  JWT
//
//  Created by Sefa Çelik on 12.11.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signInButton(_ sender: Any) {
        performSegue(withIdentifier: "toTableView", sender: nil)
    }
    
}

