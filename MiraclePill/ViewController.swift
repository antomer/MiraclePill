//
//  ViewController.swift
//  MiraclePill
//
//  Created by Anton Merezko on 01/02/2017.
//  Copyright © 2017 anton. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var statePicker: UIPickerView!

    @IBOutlet weak var statePickerBtn: UIButton!
 
    @IBOutlet weak var countryLbl: UILabel!
    
    @IBOutlet weak var buyNowButton: UIButton!

 
    @IBOutlet weak var countryTxtField: UITextField!
    let states = ["Harju maakond", "Tartu maakond", "Ida-Viru maakond", "Pärnu maakond", "Lääne-Viru maakond", "Viljandi maakond","Rapla maakond", "Võru maakond", "Saare maakond", "Jõgeva maakond","Järva maakond", "Valga maakond", "Põlva maakond", "Lääne maakond", "Hiiu maakond"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self

    }

    @IBAction func stateBrnPressed(_ sender: Any) {
        countryLbl.isHidden = true
        countryTxtField.isHidden = true
        statePicker.isHidden = false
        buyNowButton.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    //returns row title in picker
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLbl.isHidden = false
        countryTxtField.isHidden = false
           buyNowButton.isHidden = false
    }

}

