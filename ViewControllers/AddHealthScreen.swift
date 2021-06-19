//
//  AddHealthScreen.swift
//  StanApp
//
//  Created by Tyler Lawhorn on 6/10/21.
//

import UIKit

class AddHealthScreen: UIViewController {
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
    
    @IBAction func addHealth(_ sender: Any){
        if let heal = Int(input.text!){
            player.heal(number:heal)
            
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
