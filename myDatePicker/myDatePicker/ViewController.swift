//
//  ViewController.swift
//  myDatePicker
//
//  Created by Sanghoon Ahn on 09/08/2018.
//  Copyright © 2018 Sanghoon Ahn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var dateLabel: UILabel!
    let dateForatter: DateFormatter = {
        let formatter:DateFormatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        formatter.dateFormat = "yyyy.MM.dd hh:mm:ss"
        return formatter
    }()
    @IBAction func didDatePickerValueChanged(_ sender: UIDatePicker){
        print("value changed")
        let date: Date = sender.date
        let dateString: String = self.dateForatter.string(from: date)
        
        self.dateLabel.text = dateString
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.datePicker.addTarget(self, action: #selector(self.didDatePickerValueChanged(_:)), for: UIControlEvents.valueChanged)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

