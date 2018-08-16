//
//  SpeedConverter.swift
//  Converter
//
//  Created by Admin on 8/16/2561 BE.
//  Copyright © 2561 BE sajeeva. All rights reserved.
//

import Foundation

final class SpeedConverter {
    
    private var MPSVal: Double = 0
    private var FPMVal: Double = 0
    private var KPHVal: Double = 0
    private var MPHVar: Double = 0
    
    private init() { }
    
    static let shared = SpeedConverter()
    
    public func setMPSValue(_ mps: Double){
        self.MPSVal = mps
        self.FPMVal = mps * 196.85
        self.KPHVal = mps * 3.6
        self.MPHVar = mps * 2.23694
    }
    
    public func setFPMValue(_ fpm: Double){
        self.FPMVal = fpm
        self.MPSVal = fpm * 0.00508
        self.KPHVal = fpm * 0.018288
        self.MPHVar = fpm * 0.0113636
    }
    
    public func setKPHValue(_ kph: Double){
        self.KPHVal = kph
        self.MPSVal = kph * 0.277778
        self.FPMVal = kph * 54.6807
        self.MPHVar = kph * 0.621371
    }
    
    public func setMPHValue(_ mph: Double){
        self.MPHVar = mph
        self.MPSVal = mph * 0.44704
        self.FPMVal = mph * 88
        self.KPHVal = mph * 1.60934
    }
    
    public func getMPSValue()->Double{
        return self.MPSVal
    }
    
    public func getFPMValue()->Double{
        return self.FPMVal
    }
    
    public func getKPHValue()->Double{
        return self.KPHVal
    }
    
    public func getMPHValue()->Double{
        return self.MPHVar
    }
    
    public func resetValues(){
        self.MPSVal = 0
        self.FPMVal = 0
        self.KPHVal = 0
        self.MPHVar = 0
    }
}
