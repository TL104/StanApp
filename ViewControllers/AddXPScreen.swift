//
//  AddXPScreen.swift
//  StanApp
//
//  Created by Tyler Lawhorn on 6/10/21.
//

import UIKit

class AddXPScreen: UIViewController {

    @IBOutlet weak var currentXpLabel: UILabel!
    @IBOutlet weak var currentXpOUT: UILabel!
    
    @IBOutlet weak var newXpLabel: UILabel!
    @IBOutlet weak var newXpOUT: UILabel!
    
    @IBOutlet weak var input: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentXpLabel.text = "Current XP:"
        currentXpOUT.text = String(player.getXp())
        newXpLabel.text = ""
        newXpOUT.text = ""
    }
    @IBAction func addXp(_ sender: Any){
        if let number = Int(input.text!){
            player.addXp(number:number)
            
            currentXpLabel.text = ""
            currentXpOUT.text = ""
            newXpLabel.text = "New XP:"
            newXpOUT.text = String(player.getXp())
            input.resignFirstResponder()
        }
    }
    @IBAction func doneButton(_ sender: Any){
        navigationController?.popToViewController(navigationController!.viewControllers[0], animated: true)
    }

}
