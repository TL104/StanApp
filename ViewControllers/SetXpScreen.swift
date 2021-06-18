//
//  SetXpScreen.swift
//  StanApp
//
//  Created by Tyler Lawhorn on 6/10/21.
//

import UIKit

class SetXpScreen: UIViewController {
    
   

    @IBOutlet weak var xpOUT: UILabel!
    
    @IBOutlet weak var userInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        xpOUT.text = ""
    }
    
    @IBAction func doneButton(_ sender: Any){
        navigationController?.popToViewController(navigationController!.viewControllers[1], animated: true)
    }
    
    @IBAction func setXp(_ sender: Any){
        if let input = Int(userInput.text!){
            player.setXp(number: input)
            xpOUT.text = String(player.getXp())
            userInput.resignFirstResponder()
        }
    }

}
