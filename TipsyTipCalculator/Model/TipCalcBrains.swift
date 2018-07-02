//
//  TipCalcBrains.swift
//  TipsyTipCalculator
//
//  Created by Robert Desjardins on 2018-07-02.
//  Copyright © 2018 Robert Desjardins. All rights reserved.
//

import Foundation

class TipCalcBrains {
    private var _billAmount: Double = 0
    private var _tipPercent: Double = 0
    private var _tipAmount: Double = 0
    private var _totalAmount: Double = 0
    
    var billAmount: Double {
        get {
            return _billAmount
        } set {
            _billAmount = newValue  // newValue is built in Xcode function
        }
    }
    
    var tipPercent: Double {
        get {
            return _tipPercent
        } set {
            _tipPercent = newValue
        }
    }
    
    var tipAmount: Double {
        return _tipAmount
    }
    
    var totalAmount: Double {
        return _totalAmount
    }
    
    init(billAmount: Double, tipPercent: Double) {
        self._billAmount = billAmount
        self._tipPercent = tipPercent
    }
    
    func calculateTip() {
        _tipAmount = billAmount * tipPercent
        _totalAmount = _tipAmount + billAmount
    }
}
