//
//  TablaTableViewController.swift
//  CeldasEstaticas
//
//  Created by Juan Luis Flores on 2/27/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class TablaTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let enviador = sender as? UITableViewCell
        if enviador?.textLabel?.text == "Vista1" {
            let viewDetalle = segue.destination as! Vista1ViewController
            
            viewDetalle.recibidorVista1 = "Vista 1"

        }else{
            let viewDetalle = segue.destination as! Vista2ViewController
            
            viewDetalle.recibidorVista2 = "Vista 2"
        }
    }
    

}
