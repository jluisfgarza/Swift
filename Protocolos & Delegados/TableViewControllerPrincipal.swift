//
//  TableViewControllerPrincipal.swift
//  TableView
//
//  Created by alumno on 2/9/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class TableViewControllerPrincipal: UITableViewController, protocoloAgregaJugador {
    
    var listaJugadores = [Jugador]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var jug1 = Jugador(nombre: "Juan", puntos: 100, email: "juan@hotmail.com")
        listaJugadores.append(jug1)
        jug1 = Jugador(nombre: "Caro", puntos: 90, email: "caro@hotmail.com")
        listaJugadores.append(jug1)
        jug1 = Jugador(nombre: "Checo", puntos: 90, email: "checo@hotmail.com")
        listaJugadores.append(jug1)
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
        return listaJugadores.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "idCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = listaJugadores[indexPath.row].nombre
        let imagen = UIImage(named: "userimg")
        cell.imageView?.image = imagen
        return cell
    }
    
    func agregaJugador(nombre: String, puntos: Int, email: String) {
        let jugadoradd = Jugador(nombre: nombre, puntos: puntos, email: email)
        
        listaJugadores.append(jugadoradd)
        tableView.reloadData()
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "muestra" {
            let vistaInfo = segue.destination as! DetallejugadorViewController
            let indexPath = tableView.indexPathForSelectedRow
            
            vistaInfo.nombre = listaJugadores[indexPath!.row].nombre
            vistaInfo.puntos = listaJugadores[indexPath!.row].puntos
            vistaInfo.email = listaJugadores[indexPath!.row].email
        }
        else {
            let viewAgregar = segue.destination as! ViewControllerAgregar
            viewAgregar.delegado = self
        }
    }
}
    
