//
//  Extensions.swift
//  InstagramNight
//
//  Created by Christopher Villanueva on 1/7/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit


extension UIColor {
    static let tealBlue = UIColor(red: 30/255, green: 161/255, blue: 243/255, alpha: 1)
    static let darkBlue = UIColor(red: 36/255, green: 52/255, blue: 71/255, alpha: 1)
    static let veryDarkBlue = UIColor(red: 20/255, green: 29/255, blue: 39/255, alpha: 1)
    
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}

extension UIView {
    func anchor(top: NSLayoutYAxisAnchor?, paddingTop: CGFloat, left: NSLayoutXAxisAnchor?, paddingLeft: CGFloat, bottom: NSLayoutYAxisAnchor?, paddingBotton: CGFloat, right: NSLayoutXAxisAnchor?, paddingRight: CGFloat, width: CGFloat, height: CGFloat){
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: paddingBotton).isActive = true
        }
        if let right = right {
            self.rightAnchor.constraint(equalTo: right, constant: paddingRight).isActive = true
        }
        if width != 0 {
            self.widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        if height != 0 {
            self.heightAnchor.constraint(equalToConstant: height).isActive = true
        }
        
    }
}
