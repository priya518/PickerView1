//
//  ViewController.swift
//  PickerView
//
//  Created by Priya Patel on 26/12/19.
//  Copyright © 2019 priya. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    var arr = ["India" , "U.S.A" , "Canada" , "U.k" , "Australia" , "Japan" , "China"]
    
    @IBOutlet weak var mypiker: UIPickerView!
    
    @IBAction func countrybtn(_ sender: UIBarButtonItem) {
        
        self.mypiker.isHidden = true
        self.toolbar.isHidden = true
    }
    @IBOutlet weak var toolbar: UIToolbar!
    
    @IBAction func country(_ sender: Any) {
        self.mypiker.isHidden = false
        self.toolbar.isHidden = false
        
        
    }
    
    @IBOutlet weak var lbl: UILabel!
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arr.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.arr[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lbl.text = self.arr[row]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mypiker.isHidden = true
        self.toolbar.isHidden = true
        // Do any additional setup after loading the view.
    }


}

