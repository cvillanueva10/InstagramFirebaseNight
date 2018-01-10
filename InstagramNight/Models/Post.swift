//
//  Post.swift
//  InstagramNight
//
//  Created by Christopher Villanueva on 1/10/18.
//  Copyright © 2018 Christopher Villanueva. All rights reserved.
//

import Foundation

struct Post {
    let imageUrl: String
    
    
    init(dictionary: [String: Any]) {
        self.imageUrl = dictionary["imageUrl"] as? String ?? ""
    }
}
