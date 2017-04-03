//
//  VistaGradiente.swift
//  Quartz
//
//  Created by alumno on 4/3/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class VistaGradiente: UIView {

    @IBInspectable var startColor: UIColor = UIColor.blue
    @IBInspectable var endColor: UIColor = UIColor.green
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    
        let contexto = UIGraphicsGetCurrentContext()!
        let colores = [startColor.cgColor, endColor.cgColor]
        let espacioDeColor = CGColorSpaceCreateDeviceRGB()
        let localizacionColor : [CGFloat] = [0.0,1.0]
        let gradiente = CGGradient(colorsSpace: espacioDeColor, colors: colores as CFArray, locations: localizacionColor)
        let puntoInicio = CGPoint.zero
        let puntoFin = CGPoint(x: 0, y: self.bounds.height)
        contexto.drawLinearGradient(gradiente!, start: puntoInicio, end: puntoFin, options: CGGradientDrawingOptions.drawsAfterEndLocation)
    }
    

}
