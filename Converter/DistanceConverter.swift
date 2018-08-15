//
//  DistanceConverter.swift
//  Converter
//
//  Created by Admin on 8/15/2561 BE.
//  Copyright © 2561 BE sajeeva. All rights reserved.
//

import Foundation

final class DistanceConverter {
    
    private var metreVal: Double = 0
    private var footVal: Double = 0
    private var yardVal: Double = 0
    private var kilometreVal: Double = 0
    private var mileVal: Double = 0
    
    private init() { }
    
    static let shared = DistanceConverter()
    
    public func setMetreValue(_ metre: Double){
        self.metreVal = metre
        self.footVal = metre * 3.28084
        self.yardVal = metre * 1.09361
        self.kilometreVal = metre * 0.001
        self.mileVal = metre * 0.000621371
    }
    
    public func setFootValue(_ foot: Double){
        self.footVal = foot
        self.metreVal = foot * 0.3048
        self.yardVal = foot * 0.333333
        self.kilometreVal = foot * 0.0003048
        self.mileVal = foot * 0.000189394
    }
    
    public func setYardValue(_ yard: Double){
        self.yardVal = yard
        self.metreVal = yard * 0.9144
        self.footVal = yard * 3
        self.kilometreVal = yard * 0.0009144
        self.mileVal = yard * 0.000568182
    }
    
    public func setKilometreValue(_ kilometre: Double){
        self.kilometreVal = kilometre
        self.metreVal = kilometre * 1000
        self.footVal = kilometre * 3280.84
        self.yardVal = kilometre * 1093.61
        self.mileVal = kilometre * 0.621371
    }
    
    public func setMileValue(_ mile: Double){
        self.mileVal = mile
        self.metreVal = mile * 1609.34
        self.footVal = mile * 5280
        self.yardVal = mile * 1760
        self.kilometreVal = mile * 1.60934
    }
    
    public func getMetreValue()->Double{
        return self.metreVal
    }
    
    public func getFootValue()->Double{
        return self.footVal
    }
    
    public func getYardValue()->Double{
        return self.yardVal
    }
    
    public func getKilometreValue()->Double{
        return self.kilometreVal
    }
    
    public func getMileValue()->Double{
        return self.mileVal
    }
    
    public func resetValues(){
        self.mileVal = 0
        self.metreVal = 0
        self.footVal = 0
        self.yardVal = 0
        self.kilometreVal = 0
    }
}
