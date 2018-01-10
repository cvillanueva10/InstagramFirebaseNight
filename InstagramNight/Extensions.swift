//
//  Extensions.swift
//  InstagramNight
//
//  Created by Christopher Villanueva on 1/7/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit


extension UIColor {
    // colors we will repeatedly use in our app
    static let tealBlue = UIColor.rgb(red: 30, green: 161, blue: 243)
    static let darkBlue = UIColor.rgb(red: 36, green: 52, blue: 71)
    static let veryDarkBlue = UIColor.rgb(red: 20, green: 29, blue: 39)
    static let dullTealBlue = UIColor.rgb(red: 149, green: 204, blue: 244)
    
    // custom function to make creating custom colors easier
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}

extension UIView {
    // custom anchor function to make using auto layout easier and less tedious
    func anchor(top: NSLayoutYAxisAnchor?, paddingTop: CGFloat, left: NSLayoutXAxisAnchor?, paddingLeft: CGFloat, bottom: NSLayoutYAxisAnchor?, paddingBotton: CGFloat, right: NSLayoutXAxisAnchor?, paddingRight: CGFloat, width: CGFloat, height: CGFloat){
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: -paddingBotton).isActive = true
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

protocol UIComponentBuilder {
    func createButtonWithTitle(title: String) -> UIButton
    func createButtonWithImage(image: UIImage) -> UIButton
    func createLabelWithTitle(title: String, font: UIFont) -> UILabel
}

extension UIComponentBuilder {
    func createButtonWithTitle(title: String) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.tintColor = .white
        button.backgroundColor = .darkBlue
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
    
    func createButtonWithImage(image: UIImage) -> UIButton {
        let button = UIButton(type: .system)
        button.setImage(image, for: .normal)
        button.tintColor = .white
        button.contentMode = .scaleAspectFit 
        button.backgroundColor = .darkBlue
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
    
    func createLabelWithTitle(title: String, font: UIFont) -> UILabel{
        let label = UILabel()
        label.text = title
        label.numberOfLines = 0
        label.textColor = .white
        label.backgroundColor = .darkBlue
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = font
        return label
    }
}





