//
//  DisplayStatsScreen.swift
//  StanApp
//
//  Created by Tyler Lawhorn on 6/10/21.
//

import UIKit

class DisplayStatsScreen: UIViewController {
    
    @IBOutlet weak var nameOUT: UILabel!
    @IBOutlet weak var healthOUT: UILabel!
    @IBOutlet weak var xpOUT: UILabel!
    @IBOutlet weak var proficiencyBonusOUT: UILabel!
    @IBOutlet weak var initiativeOUT: UILabel!
    
    @IBOutlet weak var acrobaticsOUT: UILabel!
    @IBOutlet weak var animalHandlingOUT: UILabel!
    @IBOutlet weak var arcanaOUT: UILabel!
    @IBOutlet weak var athleticsOUT: UILabel!
    @IBOutlet weak var deceptionOUT: UILabel!
    @IBOutlet weak var historyOUT: UILabel!
    @IBOutlet weak var insightOUT: UILabel!
    @IBOutlet weak var intimidationOUT: UILabel!
    @IBOutlet weak var investigationOUT: UILabel!
    @IBOutlet weak var medicineOUT: UILabel!
    @IBOutlet weak var natureOUT: UILabel!
    @IBOutlet weak var perceptionOUT: UILabel!
    @IBOutlet weak var performanceOUT: UILabel!
    @IBOutlet weak var persuasionOUT: UILabel!
    @IBOutlet weak var religionOUT: UILabel!
    @IBOutlet weak var slightOfHandOUT: UILabel!
    @IBOutlet weak var stealthOUT: UILabel!
    @IBOutlet weak var survivalOUT: UILabel!
    
    @IBOutlet weak var strengthOUT: UILabel!
    @IBOutlet weak var dexterityOUT: UILabel!
    @IBOutlet weak var constitutionOUT: UILabel!
    @IBOutlet weak var intelligenceOUT: UILabel!
    @IBOutlet weak var wisdomOUT: UILabel!
    @IBOutlet weak var chrismaOUT: UILabel!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        nameOUT.text = player.getName()
        healthOUT.text = String(player.getHealth())
        xpOUT.text = String(player.getXp())
        proficiencyBonusOUT.text = String(player.getProficiencyBonus())
        initiativeOUT.text = String(player.getDexterity())
        
        acrobaticsOUT.text = String(player.getAcrobatics())
        animalHandlingOUT.text = String(player.getAnimalHandeling())
        arcanaOUT.text = String(player.getArcana())
        athleticsOUT.text = String(player.getAthletics())
        deceptionOUT.text = String(player.getDeception())
        historyOUT.text = String(player.getHistory())
        insightOUT.text = String(player.getInsight())
        intimidationOUT.text = String(player.getIntimidation())
        investigationOUT.text = String(player.getInvestigation())
        medicineOUT.text = String(player.getMedicine())
        natureOUT.text = String(player.getNature())
        perceptionOUT.text = String(player.getPerception())
        performanceOUT.text = String(player.getPerformance())
        persuasionOUT.text = String(player.getPersuasion())
        religionOUT.text = String(player.getReligion())
        slightOfHandOUT.text = String(player.getSlightOfHand())
        stealthOUT.text = String(player.getStealth())
        survivalOUT.text = String(player.getSurvival())
        
        strengthOUT.text = String(player.getStrength())
        dexterityOUT.text = String(player.getDexterity())
        constitutionOUT.text = String(player.getConstitution())
        intelligenceOUT.text = String(player.getIntelligence())
        wisdomOUT.text = String(player.getWisdom())
        chrismaOUT.text = String(player.getChrisma())
    }
    
    @IBAction func doneButton(_ sender: Any){
        navigationController?.popToViewController(navigationController!.viewControllers[0], animated: true)
    }
}
