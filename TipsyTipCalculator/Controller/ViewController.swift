//
//  ViewController.swift
//  TipsyTipCalculator
//
//  Created by Robert Desjardins on 2018-07-02.
//  Copyright © 2018 Robert Desjardins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var enterBillTF: UITextField!
    @IBOutlet weak var tipPercentLbl: UILabel!
    @IBOutlet weak var tipPercentSlider: UISlider!
    @IBOutlet weak var tipAmountLbl: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    
    var tipCalcBrains = TipCalcBrains(billAmount: 25.00, tipPercent: 0.15)

    override func viewDidLoad() {
        super.viewDidLoad()
        tipPercentValue()
    }


    @IBAction func billAmountChange(_ sender: Any) {
        //print("my value changed")
        calculateTip()
    }
    
    
    @IBAction func tipPercentChange(_ sender: Any) {
        //print("Hey the slider changed xD")
        tipPercentValue()
        calculateTip()
    }
    
    func calculateTip() {
        tipCalcBrains.tipPercent = Double(tipPercentSlider.value)
        tipCalcBrains.billAmount = (enterBillTF.text! as NSString).doubleValue
        tipCalcBrains.calculateTip()
        updateBillUI()
    }
    
    func updateBillUI() {
        totalAmount.text = String(format: "$%0.2f", tipCalcBrains.totalAmount)
        tipAmountLbl.text = String(format: "$%0.2f", tipCalcBrains.tipAmount)
    }
    
    func tipPercentValue() {
        tipPercentLbl.text = "Tip: \(Int(tipPercentSlider.value * 100))%"
    }
}

