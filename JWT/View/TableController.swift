//
//  TableController.swift
//  JWT
//
//  Created by Sefa Çelik on 12.11.2020.
//

import UIKit

class TableController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableCell
            
            return cell
    }
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func logoutButton(_ sender: Any) {
        RevokeService().revokeRefresh()
        performSegue(withIdentifier: "toViewController", sender: nil)
    }


}
