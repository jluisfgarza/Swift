//
//  TableViewController.swift
//  protocolosSwift3Ago16
//
//  Created by alumno on 2/23/17.
//  Copyright © 2017 com.itesm. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, protocoloCalificaAlumno {
    
    var listaAlumnos = [Actividad]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        var alu1 = Actividad(nombreAlum: "Juan", calif: 100, coment: "juan@hotmail.com")
        listaAlumnos.append(alu1)
        
        alu1 = Actividad(nombreAlum: "Luis", calif: 80, coment: "luis@hotmail.com")
        listaAlumnos.append(alu1)

        
        alu1 = Actividad(nombreAlum: "Checo", calif: 100, coment: "checo@hotmail.com")
        listaAlumnos.append(alu1)

        
        self.title = "titulo"
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
        return listaAlumnos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "idCell", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = listaAlumnos[indexPath.row].nombreAlum
        return cell
    }
    
    func calificaAlumno(nombre: String, Calificacion: Int, Comentarios Comentatios: String) {
        let Aluadd = Actividad(nombreAlum: nombre, calif: Calificacion, coment: Comentatios)
        
        listaAlumnos.append(Aluadd)
        tableView.reloadData()
    }
    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "muestra" {
            let vistaInfo = segue.destination as! ViewController
            let indexPath = tableView.indexPathForSelectedRow
            
            vistaInfo.nombre = listaAlumnos[indexPath!.row].nombreAlum
            vistaInfo.calificacion = listaAlumnos[indexPath!.row].calif
            vistaInfo.comentarios = listaAlumnos[indexPath!.row].coment
        }
        else {
            let viewCalif = segue.destination as! ViewControllerCalifica
            viewCalif.delegado = self
        }
    }
}
