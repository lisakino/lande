//
//  Item.swift
//  lande1
//
//  Created by Lisa Kinoshita on 2019-12-27.
//  Copyright © 2019 Lisa Kinoshita. All rights reserved.
//

import UIKit
import Firebase


class Item: NSObject {
    
    //Properties
    var itemName: String
    var status: String
    var cost: Int

    
    //Initialize
    init(itemName: String, status: String, cost: Int){
        //
        self.itemName = itemName
        self.status = status
        self.cost = cost
        
        super.init()
        
        
    }
    override var description: String{
        return "Item Name: \(itemName), Status: \(status), Cost:\(cost)"
    }
    
}
