//
//  AddXPScreen.swift
//  StanApp
//
//  Created by Tyler Lawhorn on 6/10/21.
//

import UIKit

class AddXPScreen: UIViewController {

 
    @IBOutlet weak var xpOUT: UILabel!
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var newXpOUT: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        xpOUT.text = String(player.getXp())
        
    }
    @IBAction func addXp(_ sender: Any){
        if let number = Int(input.text!){
            player.addXp(number:number)
            newXpOUT.text = String(player.getXp())
            input.resignFirstResponder()
        }
    }
    @IBAction func doneButton(_ sender: Any){
        navigationController?.popToViewController(navigationController!.viewControllers[0], animated: true)
    }

}
