//
//  AttackScreen.swift
//  StanApp
//
//  Created by Tyler Lawhorn on 6/10/21.
//

import UIKit

class AttackScreen: UIViewController {
    


    @IBOutlet weak var die1OUT: UILabel!
    @IBOutlet weak var die2OUT: UILabel!
    @IBOutlet weak var crit: UILabel!
    @IBOutlet weak var totalOUT: UILabel!
    var advantage:Bool = false
    var disadvantage:Bool = false
    var critical:Bool = false
    var weapon1:Bool = false
    var weapon2:Bool = false
    var weapon3:Bool = false
   
    override func viewDidLoad() {
        super.viewDidLoad()
        crit.text = ""
        die1OUT.text = ""
        die2OUT.text = ""
        totalOUT.text = ""

    }
    
    @IBAction func d20(_ sender: Any) {
        let result = dice.getD20(adv:advantage, dis: disadvantage)
        var total:Int = result.2
        
        die1OUT.text = String(result.0)
        
        if(advantage == true || disadvantage == true){
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"; critical = true}
            else{crit.text = ""; critical = false}
            if(weapon1){total += weapon.getStanGauntlet(playerObj:player)}
            else if(weapon2){total += (1 + player.getDexterity() + player.getProficiencyBonus())}
            else if(weapon3){total += (weapon.getDwarvenThrower(playerObj:player))}
            totalOUT.text = String(total)
        }
        else{
            die2OUT.text = ""
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"; critical = true}
            else{crit.text = ""; critical = false}
            if(weapon1){total += 2}
            else if(weapon2){total += 1}
            else if(weapon3){total += 3}
            totalOUT.text = String(total)
        }
    
        
    }
    
    @IBAction func advantageSwitch(_ sender: Any){
        if((sender as AnyObject).isOn == true){advantage = true}
        else{advantage = false}
    }
    @IBAction func disadvantageSwitch(_ sender: Any){
        if((sender as AnyObject).isOn == true){disadvantage = true}
        else{disadvantage = false}
    }
    @IBAction func weapon1Switch(_ sender: Any){
        if((sender as AnyObject).isOn == true){weapon1 = true}
        else{weapon1 = false}
    }
    @IBAction func weapon2Switch(_ sender: Any){
        if((sender as AnyObject).isOn == true){weapon2 = true}
        else{weapon2 = false}
    }
    @IBAction func weapon3Switch(_ sender: Any){
        if((sender as AnyObject).isOn == true){weapon3 = true}
        else{weapon3 = false}
    }
    
    @IBAction func missButton(_ sender: Any){
        navigationController?.popToViewController(navigationController!.viewControllers[1], animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let hitVC = segue.destination as! HitScreen
        hitVC.weapon1 = weapon1
        hitVC.weapon2 = weapon2
        hitVC.weapon3 = weapon3
        hitVC.critical = critical
    }
}
