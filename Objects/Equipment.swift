//
//  Equipment.swift
//  StanApp
//
//  Created by Tyler Lawhorn on 7/14/21.
//

import UIKit

class Equipment: NSObject {
    
    struct equipmentNode{
        var name:String = ""
        var skill:String = ""
        var bonus:Int = 0
    }
    
    var glovesOfThievery:equipmentNode = equipmentNode()
    
    func getGlovesOfThievery()->(String,Int){
        glovesOfThievery.name = "Gloves Of Thievery"
        glovesOfThievery.skill = "Slight Of Hand"
        glovesOfThievery.bonus = 5
        return (glovesOfThievery.name, glovesOfThievery.bonus)
    }

}
