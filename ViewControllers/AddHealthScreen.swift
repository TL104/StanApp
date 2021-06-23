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
   
    
    @IBOutlet weak var input: UITextField!
    
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        currentHealthLabel.text = "Current Health:"
        currentHealthOUT.text = String(player.getHealth())
    }
    
    @IBAction func addHealth(_ sender: Any){
        if let heal = Int(input.text!){
            player.heal(number:heal)
            
            currentHealthLabel.text = "New Health:"
            currentHealthOUT.text = String(player.getHealth())
            
            input.resignFirstResponder()
        }
    }
    
    

    @IBAction func doneButton(_ sender: Any){
        navigationController?.popToViewController(navigationController!.viewControllers[0], animated: true)
    }

}
