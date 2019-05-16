//
//  ViewController.swift
//  DynamicPickerView
//
//  Created by Greeens5 on 10/05/19.
//  Copyright © 2019 Book. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource
{
    var pickerview = UIPickerView()
    var label = UILabel()
    var course = ["iOS","Android","Java"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
      return course.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
     return course[row]
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        label.text = "\(course[row])"
        print(course[row])
    }
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
        label.frame = CGRect(x: 150, y: 100, width: 100, height: 100)
        self.view.addSubview(label)
        
        let pickerview = UIPickerView(frame:CGRect(x: 0, y: 200, width: 350, height: 100))
        pickerview.dataSource = self
        pickerview.delegate = self
        pickerview.showsSelectionIndicator = true
        self.view.addSubview(pickerview)
    }
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
