//
//  SecondViewController.swift
//  CurrencyConverter(15 Nov)
//
//  Created by Devesh Verma on 2019-11-15.
//  Copyright © 2019 Devesh Verma. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController{

    let currencyName = [("INR"),("CAD"),("EURO"),("USD")]
    let currencyFlagImages =  [UIImage(named:"IndiaFlag"),UIImage(named:"CanadaFlag"),UIImage(named:"EUROFlag"),UIImage(named:"USDFlag")]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {

    super.didReceiveMemoryWarning()

    // Dispose of any resources that can be recreated.

    }
}

 extension SecondViewController: UITableViewDataSource, UITableViewDelegate
 {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath) as! CellTableViewCell

        let courseTitle = currencyName[indexPath .row]

        let Images = currencyFlagImages[indexPath .row]

        cell.lable.text=courseTitle

        cell.photo.image=Images

        return cell

        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return currencyName.count
    }
    
}







//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//
//    let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! CellTableViewCell
//
//    let courseTitle = currencyName[indexPath .row]
//
//    let Images = currencyFlagImages[indexPath .row]
//
//    cell.lable.text = courseTitle
//
//    cell.photo.image = Images
//
//    return cell
//
//    }
    




