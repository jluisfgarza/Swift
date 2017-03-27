//
//  CeldaTableViewCell.swift
//  2do Examen Parcial
//
//  Created by alumno on 3/27/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class CeldaTableViewCell: UITableViewCell {

    @IBOutlet weak var lblnum: UILabel!
    @IBOutlet weak var lbltema: UILabel!
    @IBOutlet weak var lblprecio: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
