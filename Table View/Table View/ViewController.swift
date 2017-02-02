//
//  ViewController.swift
//  Table View
//
//  Created by alumno on 2/2/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
    
    var lista = ["a","b","c","d","e","f","g","h","i","j"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Funciones
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lista.count
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "idCell", for: indexPath)
        cell.textLabel?.text = lista[indexPath.row]
        cell.detailTextLabel?.text = "\(indexPath.row)"
        let imagen = UIImage(named: "user")
        cell.imageView?.image = imagen
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewDetalle = segue.destination as? ViewControllerDetalle
        let indexPath = tableview.indexPathForSelectedRow
        
        viewDetalle?.datoMostrar = lista[indexPath!.row]
    }
}

