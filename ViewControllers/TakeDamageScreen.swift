//
//  TakeDamageScreen.swift
//  StanApp
//
//  Created by Tyler Lawhorn on 6/10/21.
//

import UIKit

class TakeDamageScreen: UIViewController {

    @IBOutlet weak var currentHealthLabel: UILabel!
    @IBOutlet weak var currentHealthOUT: UILabel!
    @IBOutlet weak var newHealthLabel: UILabel!
    @IBOutlet weak var newHealthOUT: UILabel!
    
    @IBOutlet weak var input: UITextField!
    
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        currentHealthLabel.text = "Current Health:"
        currentHealthOUT.text = String(player.getHealth())
        
        newHealthLabel.text = ""
        newHealthOUT.text = ""
    }
    
    @IBAction func takeDamage(_ sender: Any){
        if let damage = Int(input.text!){
            player.damage(number:damage)
            
            currentHealthLabel.text = ""
            currentHealthOUT.text = ""
            
            newHealthLabel.text = "New Health:"
            newHealthOUT.text = String(player.getHealth())
            
            input.resignFirstResponder()
        }
    }
    
    

    @IBAction func doneButton(_ sender: Any){
        navigationController?.popToViewController(navigationController!.viewControllers[0], animated: true)
    }

}
