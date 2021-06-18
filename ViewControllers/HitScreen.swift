//
//  HitScreen.swift
//  StanApp
//
//  Created by Tyler Lawhorn on 6/10/21.
//

import UIKit

class HitScreen: UIViewController {
    
   

    var critical:Bool = false
    
    var weapon1:Bool = false
    var weapon2:Bool = false
    var weapon3:Bool = false
    
    var sneak:Bool = false

    @IBOutlet weak var totalOUT: UILabel!
    @IBOutlet weak var die1OUT: UILabel!
    @IBOutlet weak var die2OUT: UILabel!
    
    @IBOutlet weak var sDie1OUT: UILabel!
    @IBOutlet weak var sDie2OUT: UILabel!
    @IBOutlet weak var sDie3OUT: UILabel!
    @IBOutlet weak var sDie4OUT: UILabel!
    @IBOutlet weak var sDie5OUT: UILabel!
    @IBOutlet weak var sDie6OUT: UILabel!
    
   

    
    override func viewDidLoad() {
        super.viewDidLoad()
        die1OUT.text = ""
        die2OUT.text = ""
        
        sDie1OUT.text = ""
        sDie2OUT.text = ""
        sDie3OUT.text = ""
        sDie4OUT.text = ""
        sDie5OUT.text = ""
        sDie6OUT.text = ""
        
    }
    
    @IBAction func sneakAttackSwitch(_ sender: Any){
        if((sender as AnyObject).isOn == true){sneak = true}
        else{sneak = false}
    }
    
    @IBAction func rollDice(_ sender: Any) {
        var total:Int = 0
        if(weapon1){
            let die1 = dice.getD4()
            let die2 = dice.getD4()
            total = (die1 + die2 + 2)
            if(critical){total += 8}
            die1OUT.text = String(die1)
            die2OUT.text = String(die2)
        }
        else if(weapon2){
            let die1 = dice.getD8()
            total = (die1 + 1 + player.getDexterity())
            if(critical){total += 8}
            die1OUT.text = String(die1)
            die2OUT.text = ""
        }
        else if(weapon3){
            let die1 = dice.getD4()
            let die2 = dice.getD8()
            total = (die1 + die2 + 3 + player.getDexterity())
            if(critical){total += 12}
            die1OUT.text = String(die1)
            die2OUT.text = String(die2)
        }
        if(sneak){
            let sDie1 = dice.getD6()
            let sDie2 = dice.getD6()
            let sDie3 = dice.getD6()
            let sDie4 = dice.getD6()
            let sDie5 = dice.getD6()
            let sDie6 = dice.getD6()
            
            total += (sDie1 + sDie2 + sDie3 + sDie4 + sDie5 + sDie6)
            
            if(critical){total += 36}
            
            sDie1OUT.text = String(sDie1)
            sDie2OUT.text = String(sDie2)
            sDie3OUT.text = String(sDie3)
            sDie4OUT.text = String(sDie4)
            sDie5OUT.text = String(sDie5)
            sDie6OUT.text = String(sDie6)
        }
        else{
            sDie1OUT.text = ""
            sDie2OUT.text = ""
            sDie3OUT.text = ""
            sDie4OUT.text = ""
            sDie5OUT.text = ""
            sDie6OUT.text = ""
        }
        
        totalOUT.text = String(total)
    }
    
    @IBAction func doneButton(_ sender: Any){
        navigationController?.popToViewController(navigationController!.viewControllers[1], animated: true)
    }
    

}
