//
//  SettingsScreen.swift
//  StanApp
//
//  Created by Tyler Lawhorn on 6/10/21.
//

import UIKit

class SettingsScreen: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func doneButton(_ sender: Any){
        navigationController?.popToViewController(navigationController!.viewControllers[0], animated: true)
    }

}
