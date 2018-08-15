//
//  WeigthConverter.swift
//  Converter
//
//  Created by Admin on 8/15/2561 BE.
//  Copyright © 2561 BE sajeeva. All rights reserved.
//

import Foundation

final class WeigthConverter {
    
    private var gramVal: Double = 0
    private var kilogramVal: Double = 0
    private var poundVal: Double = 0
    private var ounceVar: Double = 0
    
    private init() { }
    
    static let shared = WeigthConverter()
    
    public func setGramValue(_ gram: Double){
        self.gramVal = gram
        self.kilogramVal = gram * 0.001
        self.poundVal = gram * 0.00220462
        self.ounceVar = gram * 0.035274
    }
    
    public func setKilogramValue(_ kilogram: Double){
        self.kilogramVal = kilogram
        self.gramVal = kilogram * 1000
        self.poundVal = kilogram * 2.20462
        self.ounceVar = kilogram * 35.274
    }
    
    public func setPoundValue(_ pound: Double){
        self.poundVal = pound
        self.gramVal = pound * 453.592
        self.kilogramVal = pound * 0.453592
        self.ounceVar = pound * 16
    }
    
    public func setOunceValue(_ ounce: Double){
        self.ounceVar = ounce
        self.gramVal = ounce * 28.3495
        self.kilogramVal = ounce * 0.0283495
        self.poundVal = ounce * 0.0625
    }
    
    public func getGramValue()->Double{
        return self.gramVal
    }
    
    public func getKilogramValue()->Double{
        return self.kilogramVal
    }
    
    public func getPoundValue()->Double{
        return self.poundVal
    }
    
    public func getOunceValue()->Double{
        return self.ounceVar
    }
}
