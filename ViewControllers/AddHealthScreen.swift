//
//  AddHealthScreen.swift
//  StanApp
//
//  Created by Tyler Lawhorn on 6/10/21.
//

import UIKit

class AddHealthScreen: UIViewController {
    
    
    
    @IBOutlet weak var healthOUT: UILabel!
    @IBOutlet weak var newHealth: UILabel!
    @IBOutlet weak var input: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        healthOUT.text = String(player.getHealth())
    }
    
    @IBAction func doneButton(_ sender: Any){
        navigationController?.popToViewController(navigationController!.viewControllers[0], animated: true)
    }
    
    @IBAction func addHealth(_ sender: Any){
        if let number = Int(input.text!){
            player.heal(number:number)
            newHealth.text = String(player.getHealth())
            input.resignFirstResponder()
        }
    }

}
