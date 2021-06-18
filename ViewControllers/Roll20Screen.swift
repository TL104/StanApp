//
//  Roll20Screen.swift
//  StanApp
//
//  Created by Tyler Lawhorn on 6/10/21.
//

import UIKit

class Roll20Screen: UIViewController {
    
    @IBOutlet weak var nameOUT: UILabel!
    @IBOutlet weak var healthOUT: UILabel!
    @IBOutlet weak var xpOUT: UILabel!
    @IBOutlet weak var totalOUT: UILabel!
    @IBOutlet weak var die1OUT: UILabel!
   
    override func viewDidLoad(){
        super.viewDidLoad()
        nameOUT.text = player.getName()
        healthOUT.text = String(player.getHealth())
        xpOUT.text = String(player.getXp())
        die1OUT.text = ""
        totalOUT.text = ""
    }
    
    @IBAction func d20(_ sender: Any){
        var number:Int = Int.random(in: 1...20)
        die1OUT.text = String(number)
        number += player.getInitiative()
        totalOUT.text = String(number)
    }
    
    @IBAction func doneButton(_ sender: Any){
        navigationController?.popToViewController(navigationController!.viewControllers[0], animated: true)
    }
    
}
