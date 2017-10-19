//
//  Converter.swift
//  Unit Testing
//
//  Copyright © 2016 Beau Ayres. All rights reserved.
//

import Foundation

class Converter {
    
    
    func centimetresToMetres(_ centimetre:Int) -> Double
    {
        var metre = 0.0
        metre = Double(centimetre)/100
        return metre
    }
    func metresToCentimetres(_ metre:Double) -> Int
    {
        var centimetre = 0.0
        centimetre = metre*100
        return Int(centimetre)
    }
    func centimetresToFeetAndInches(_ centimetre:Int) -> String
    {
        var inch = Double(centimetre) * 0.3937008
        let foot = Int(inch / 12)
        inch = inch.truncatingRemainder(dividingBy: 12)
        return "\(foot)'\(Int(inch))\""
    }
}
