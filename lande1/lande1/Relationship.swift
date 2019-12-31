//
//  Relationship.swift
//  lande1
//
//  Created by Ella Hayashi on 2019-12-27.
//  Copyright © 2019 Lisa Kinoshita. All rights reserved.
//

import UIKit
import Foundation
import Firebase

struct Relationship {
    
    //Properties
    var userA: String
    var userB: String
    

    var dictionary: [String: Any]{
        return[
            "userA": userA,
            "userB": userB
        ]
    }
    
}
