//
//  FourthTableViewController.swift
//  Tabbed App
//
//  Created by alumno on 3/23/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class FourthTableViewController: UITableViewController {

    var arreglo = ["uno", "dos", "tres"]
    var pw : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arreglo.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = arreglo[indexPath.row]
        cell.detailTextLabel?.text = pw
        return cell
    }

    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let vista = segue.destination as! FifthViewController
        let indexpath = tableView.indexPathForSelectedRow
        vista.dato = arreglo[indexpath!.row]
    }


}
