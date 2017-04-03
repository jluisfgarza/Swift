//
//  claseVista.swift
//  Quartz
//
//  Created by alumno on 4/3/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class claseVista: UIView {
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    var mostrarcapa : Bool!

    override func draw(_ rect: CGRect) {
        // Drawing code
        let contexto = UIGraphicsGetCurrentContext()!
        
        // circulo
        contexto.setLineWidth(1.0)
        contexto.setStrokeColor(UIColor.red.cgColor)
        contexto.setFillColor(UIColor.blue.cgColor)
        
        var rect = CGRect(x: 10, y: 30, width: 100, height: 100)
        contexto.fillEllipse(in: rect)
        contexto.strokeEllipse(in: rect)
        
        //Rectangulo
        contexto.setLineWidth(1.0)
        contexto.setStrokeColor(UIColor.green.cgColor)
        contexto.setFillColor(UIColor.green.cgColor)
        rect = CGRect(x: 150, y: 30, width: 100, height: 100)
        contexto.fill(rect)
        contexto.stroke(rect)
        
        //Linea
        contexto.setLineWidth(1.0)
        contexto.setStrokeColor(UIColor.red.cgColor)
        contexto.move(to: CGPoint(x: 10, y: 150))
        contexto.addLine(to: CGPoint(x: 100, y: 20))
        contexto.addLine(to: CGPoint(x: 200, y: 130))
        contexto.addLine(to: CGPoint(x: 150, y: 180))
        contexto.closePath()
        contexto.strokePath()
        
        //Capas
        let capa = CGLayer(contexto, size: self.frame.size, auxiliaryInfo: nil)
        
        let contextcapa = capa!.context!
        contextcapa.setLineWidth(3.0)
        contextcapa.setStrokeColor(UIColor.red.cgColor)
        contextcapa.setFillColor(UIColor.blue.cgColor)
        rect = CGRect(x: 50, y: 120, width: 80, height: 110)
        contextcapa.fillEllipse(in: rect)
        contextcapa.strokeEllipse(in: rect)
        
        if mostrarcapa == true {
            contexto.draw(capa!, in: self.frame)
        }
    }
    

}
