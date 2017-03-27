//
//  TableViewController.swift
//  2do Examen Parcial
//
//  Created by alumno on 3/27/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, protocoloModifica {
    
    var arrDiccionarios : NSArray!

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Cursos"
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        arrDiccionarios = NSArray(contentsOfFile: path!)
        
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
        return arrDiccionarios.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> CeldaTableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! CeldaTableViewCell
        
        let dic = arrDiccionarios[indexPath.row] as! NSDictionary
        
        cell.lblnum.text = (dic.value(forKey: "numCurso") as? String)!
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        let precio = (dic.value(forKey: "precio") as? NSNumber)!
        cell.lblprecio.text = formatter.string(from: precio)
        cell.lbltema.text = dic.value(forKey: "tema") as? String
        
        return cell
    }

    func Modifica(numCurso: String, tema: String, precio: Double) {
        let indexPath = tableView.indexPathForSelectedRow
        let Dic = arrDiccionarios[(indexPath?.row)!] as! NSDictionary


        Dic.setValue(tema, forKey: "tema")
        Dic.setValue(precio, forKey: "precio")
        Dic.setValue(numCurso, forKey: "numCurso")
        
        tableView.reloadData()
    }
    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vista = segue.destination as! DetalleCurso
        let indexpath = tableView.indexPathForSelectedRow
        vista.Dic = arrDiccionarios[(indexpath?.row)!] as! NSDictionary
        vista.delegado = self
    }
 

}
