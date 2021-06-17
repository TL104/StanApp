//
//  Dice.swift
//  StanApp
//
//  Created by Tyler Lawhorn on 6/11/21.
//

import UIKit

class Dice: NSObject {
    
    func getD20(adv:Bool, dis:Bool)->(Int,Int,Int){
        
        let die1:Int = Int.random(in: 1...20)
        let die2:Int = Int.random(in: 1...20)
        var d20:Int = 0
        
        if(adv == true){
            if(die1 >= die2){d20 = die1}
            else{d20 = die2}
        }
        else if(dis == true) {
            if(die1 >= die2){d20 = die2}
            else{d20 = die1}
        }
        else{d20 = die1}
        return (die1,die2,d20)
    }
    
    func getD4()->Int{
        let d4:Int = Int.random(in: 1...4)
        return d4
    }
    
    func getD6()->Int{
        let d6:Int = Int.random(in: 1...6)
        return d6
    }
    
    func getD8()->Int{
        let d8:Int = Int.random(in: 1...8)
        return d8
        
    }

}
