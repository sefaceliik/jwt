//
//  ViewController.swift
//  JWT
//
//  Created by Sefa Çelik on 12.11.2020.
//

import UIKit
import Foundation


class ViewController: UIViewController {
    

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    var count = 10

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func signInButton(_ sender: Any) {

        let username = String(usernameField.text!)
        let password = String(passwordField.text!)
        AuthService().downloadAuthy(username: username, password: password)
        RefreshService().downloadRefresh() // 401 hatasını almaya göre ayarlanacak
        //WeatherService().downloadWeather() // Error veriyor
        
        performSegue(withIdentifier: "toTableView", sender: nil)
    }
    
    
}

















