//
//  TemperatureConverter.swift
//  Converter
//
//  Created by Admin on 8/15/2561 BE.
//  Copyright © 2561 BE sajeeva. All rights reserved.
//

import Foundation

final class TemperatureConverter {
    
    private var celsiusVal: Double = 0
    private var fahrenheitVal: Double = 0
    private var kelvinVal: Double = 0
    
    private init() { }
    
    static let shared = TemperatureConverter()
    
    public func setCelsiusValue(_ celsius: Double){
        self.celsiusVal = celsius
        self.fahrenheitVal = celsius * 1.8 + 32
        self.kelvinVal = celsius + 273.15
    }
    
    public func setFahrenheitValue(_ fahrenheit: Double){
        self.fahrenheitVal = fahrenheit
        self.celsiusVal = (fahrenheit - 32 ) / 1.8
        self.kelvinVal = (fahrenheit + 459.67) * (5.0/9.0)
    }
    
    public func setKelvinValue(_ kelvin: Double){
        self.kelvinVal = kelvin
        self.celsiusVal = kelvin - 273.15
        self.fahrenheitVal = (kelvin * 9.0 / 5.0) - 459.67
    }
    
    public func getCelsiusValue()->Double{
        return self.celsiusVal
    }
    
    public func getFahrenheitValue()->Double{
        return self.fahrenheitVal
    }
    
    public func getKelvinValue()->Double{
        return self.kelvinVal
    }
    
    public func resetValues(){
        self.celsiusVal = 0
        self.fahrenheitVal = 0
        self.kelvinVal = 0
    }
}
