//
//  SetHealthScreen.swift
//  StanApp
//
//  Created by Tyler Lawhorn on 6/10/21.
//

import UIKit

class SetHealthScreen: UIViewController {
    
   
//    @IBOutlet weak var healthOUT: UILabel!
    @IBOutlet weak var userInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        healthOUT.text = ""
    }
    
    @IBAction func setHealth(_ sender: Any){
        if let input = Int(userInput.text!){
            player.setHealth(number: input)
            userInput.resignFirstResponder()
            navigationController?.popToViewController(navigationController!.viewControllers[1], animated: true)
        }
    }

}
