//
//  ViewController.swift
//  UIDatePicker
//
//  Created by Randall Mardus on 2/5/16.
//  Copyright © 2016 Randall Mardus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var dateOnlyPicker: UIDatePicker!
    @IBOutlet weak var timeOnlyPicker: UIDatePicker!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
        let startDate: String = "2005-03-20"
        let dateStringFormatter = NSDateFormatter()
        dateStringFormatter.dateFormat = "yyyy-MM-dd"
        let formattedStartDate = dateStringFormatter.dateFromString(startDate)!
        
        dateOnlyPicker.date = formattedStartDate
        dateOnlyPicker.datePickerMode = UIDatePickerMode.Date
        
        timeOnlyPicker.datePickerMode = UIDatePickerMode.Time
        
        timeOnlyPicker.backgroundColor = UIColor.greenColor()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

