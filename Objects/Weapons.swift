//
//  Weapons.swift
//  StanApp
//
//  Created by Tyler Lawhorn on 6/11/21.
//

import UIKit

class Weapons: NSObject {

    struct weaponNode{
        var name:String = ""
        var bonus:Int = 0
        var proficiency:Bool = false
        var onHand:Bool = false
    }
    
    var dwarvanThrower:weaponNode = weaponNode()
    var stanGauntlet:weaponNode = weaponNode()
    
    func getDtName()->String{return "Dwarvan Thrower"}
    func getDwarvenThrower(playerObj:Player)->Int{
        dwarvanThrower.bonus = 3
        dwarvanThrower.proficiency = false
        dwarvanThrower.onHand = false
        
        if(dwarvanThrower.proficiency && dwarvanThrower.onHand){
            return (playerObj.getDexterity() + playerObj.getProficiencyBonus() + dwarvanThrower.bonus)
        }
        else if(dwarvanThrower.proficiency){return (playerObj.getDexterity() + dwarvanThrower.bonus)}
        else{return dwarvanThrower.bonus}
    }
    func getSgName()->String{return "Stan's Gauntlet"}
    func getStanGauntlet(playerObj:Player)->Int{
        
        stanGauntlet.bonus = 2
        stanGauntlet.proficiency = true
        stanGauntlet.onHand = true
        
        if(stanGauntlet.proficiency && stanGauntlet.onHand){
            return (playerObj.getStrength() + playerObj.getProficiencyBonus() + stanGauntlet.bonus)
        }
        else if(stanGauntlet.proficiency){return (playerObj.getStrength() + stanGauntlet.bonus)}
        else{return stanGauntlet.bonus}
        
        
    }
}
