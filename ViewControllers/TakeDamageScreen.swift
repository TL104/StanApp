//
//  TakeDamageScreen.swift
//  StanApp
//
//  Created by Tyler Lawhorn on 6/10/21.
//

import UIKit

class TakeDamageScreen: UIViewController {

   
    
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var healthOUT: UILabel!
    @IBOutlet weak var newHealth: UILabel!
    @IBOutlet weak var currentHealth: UILabel!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        healthOUT.text = String(player.getHealth())
        currentHealth.text = "Current Health:"
    }
    
    @IBAction func takeDamage(_ sender: Any){
        if let damage = Int(input.text!){
            player.damage(number:damage)
            newHealth.text = String(player.getHealth())
            input.resignFirstResponder()
        }
    }
    
    @IBAction func doneButton(_ sender: Any){
        navigationController?.popToViewController(navigationController!.viewControllers[0], animated: true)
    }

}
