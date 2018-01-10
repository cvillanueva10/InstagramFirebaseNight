//
//  User.swift
//  InstagramNight
//
//  Created by Christopher Villanueva on 1/8/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import UIKit

struct User {
    
    let username: String?
    let profileImageUrl: String
    
    init(dictionary: [String: Any]) {
        self.username = dictionary["username"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
    }
}
