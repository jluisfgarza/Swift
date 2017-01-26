//
//  ViewController.swift
//  Calendar
//
//  Created by alumno on 1/26/17.
//  Copyright © 2017 Juan Luis Flores. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Segments: UISegmentedControl!
    @IBOutlet weak var Day: UILabel!
    @IBOutlet weak var Number: UILabel!
    @IBOutlet weak var MonthYear: UILabel!
    @IBOutlet weak var format: UISegmentedControl!
    
    // MARK: - Actions
    var date = Date()
    let formatterMMM = DateFormatter()
    let formatterdd = DateFormatter()
    let formatterEEE = DateFormatter()
    let formattercomplete = DateFormatter()
    
    @IBAction func format(_ sender: UISegmentedControl) {
        modifyDate()
    }
    
    func modifyDate() {
        if (format.selectedSegmentIndex == 0){
            
            formatterMMM.dateFormat = "MMMM"
            Number.text = formatterdd.string(from: date)
            MonthYear.text = formatterMMM.string(from: date)
            Day.text = formatterEEE.string(from: date)
        }
        else {
            formattercomplete.dateFormat = "MMMM,YYYY"
            Number.text = formatterdd.string(from: date)
            MonthYear.text = formattercomplete.string(from: date)
            Day.text = formatterEEE.string(from: date)
        }
    }
    
    @IBAction func minus1day(_ sender: Any) {
        date.addTimeInterval(-86400)
        modifyDate()
    }
    
    @IBAction func minus1Week(_ sender: Any) {
        date.addTimeInterval(-604800)
        modifyDate()
    }
    
    
    @IBAction func plus1Day(_ sender: Any) {
        date.addTimeInterval(86400)
        modifyDate()
    }
    
    @IBAction func plus1Week(_ sender: Any) {
        date.addTimeInterval(604800)
        modifyDate()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        formatterdd.dateFormat = "dd"
        formatterMMM.dateFormat = "MMMM"
        formattercomplete.dateFormat = "MMMM,YYYY"
        formatterEEE.dateFormat = "EEEE"
        
        Number.text = formatterdd.string(from: date)
        MonthYear.text = formatterMMM.string(from: date)
        Day.text = formatterEEE.string(from: date)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

