//
//  SecondViewController.swift
//  CurrencyConverter(15 Nov)
//
//  Created by Devesh Verma on 2019-11-15.
//  Copyright © 2019 Devesh Verma. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var currencyName = ["INR","CAD","EURO","USD"]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
    extension SecondViewController: UITableViewDelegate, UITableViewDataSource {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return currencyName.count
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CellTableViewCell
            cell?.lbl.text = currencyName[indexPath.row]
            cell?.img.image = UIImage(named: currencyName[indexPath.row])
            return cell!
        }
        
    }


