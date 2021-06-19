//
//  SkillCheckScreen.swift
//  StanApp
//
//  Created by Tyler Lawhorn on 6/10/21.
//

import UIKit

class SkillCheckScreen: UIViewController {
    
    @IBOutlet weak var totalOUT: UILabel!
    @IBOutlet weak var crit: UILabel!
    @IBOutlet weak var die1OUT: UILabel!
    @IBOutlet weak var die2OUT: UILabel!
    @IBOutlet weak var skillOUT: UILabel!
   
    var advantage:Bool = false
    var disadvantage:Bool = false
    

    override func viewDidLoad(){
        super.viewDidLoad()
        die1OUT.text = ""
        die2OUT.text = ""
        skillOUT.text = ""
        crit.text = ""
        totalOUT.text = ""
    }
    
    
    
    @IBAction func acrobaticsCheck(_ sender: Any){
        let result = dice.getD20(adv:advantage, dis: disadvantage)
        
        var total:Int = result.2
        
        // strictly for stan.
        if(result.2 < 10){total = 10}
        
        skillOUT.text = "Acrobatics"
        die1OUT.text = String(result.0)
        
        if(advantage == true){
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getAcrobatics()
            totalOUT.text = String(total)
        }
        else if(disadvantage == true) {
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getAcrobatics()
            totalOUT.text = String(total)
        }
        else{
            die2OUT.text = ""
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getAcrobatics()
            totalOUT.text = String(total)
        }
        
        // strictly for stan.
        if(result.2 < 10){crit.text = "Reliable Talent"}
        else if(result.2 != 20){crit.text = ""}
        
    }
    @IBAction func animalHandelingCheck(_ sender: Any){
        let result = dice.getD20(adv:advantage, dis: disadvantage)
        var total:Int = result.2
        
        skillOUT.text = "Animal Handeling "
        die1OUT.text = String(result.0)
        
        if(advantage == true){
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getAnimalHandeling()
            totalOUT.text = String(total)
        }
        else if(disadvantage == true) {
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getAnimalHandeling()
            totalOUT.text = String(total)
        }
        else{
            die2OUT.text = ""
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getAnimalHandeling()
            totalOUT.text = String(total)
        }
    }
    @IBAction func arcanaCheck(_ sender: Any){
        let result = dice.getD20(adv:advantage, dis: disadvantage)
        var total:Int = result.2
        
        skillOUT.text = "Arcana"
        die1OUT.text = String(result.0)
        
        if(advantage == true){
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getArcana()
            totalOUT.text = String(total)
        }
        else if(disadvantage == true) {
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getArcana()
            totalOUT.text = String(total)
        }
        else{
            die2OUT.text = ""
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getArcana()
            totalOUT.text = String(total)
        }
    }
    @IBAction func athleticsCheck(_ sender: Any){
        let result = dice.getD20(adv:advantage, dis: disadvantage)
        var total:Int = result.2
        
        // strictly for stan.
        if(result.2 < 10){total = 10}
        
        skillOUT.text = "Athletics"
        die1OUT.text = String(result.0)
        
        if(advantage == true){
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getAthletics()
            totalOUT.text = String(total)
        }
        else if(disadvantage == true) {
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getAthletics()
            totalOUT.text = String(total)
        }
        else{
            die2OUT.text = ""
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getAthletics()
            totalOUT.text = String(total)
        }
        
        // strictly for stan.
        if(result.2 < 10){crit.text = "Reliable Talent"}
        else if(result.2 != 20){crit.text = ""}
    }
    @IBAction func deceptionCheck(_ sender: Any){
        let result = dice.getD20(adv:advantage, dis: disadvantage)
        var total:Int = result.2
        
        skillOUT.text = "Deception"
        die1OUT.text = String(result.0)
        
        if(advantage == true){
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getDeception()
            totalOUT.text = String(total)
        }
        else if(disadvantage == true) {
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getDeception()
            totalOUT.text = String(total)
        }
        else{
            die2OUT.text = ""
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getDeception()
            totalOUT.text = String(total)
        }
    }
    @IBAction func historyCheck(_ sender: Any){
        let result = dice.getD20(adv:advantage, dis: disadvantage)
        var total:Int = result.2
        
        skillOUT.text = "History"
        die1OUT.text = String(result.0)
        
        if(advantage == true){
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getHistory()
            totalOUT.text = String(total)
        }
        else if(disadvantage == true) {
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getHistory()
            totalOUT.text = String(total)
        }
        else{
            die2OUT.text = ""
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getHistory()
            totalOUT.text = String(total)
        }
    }
    @IBAction func insightCheck(_ sender: Any){
        let result = dice.getD20(adv:advantage, dis: disadvantage)
        var total:Int = result.2
        
        skillOUT.text = "Insight"
        die1OUT.text = String(result.0)
        
        if(advantage == true){
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getInsight()
            totalOUT.text = String(total)
        }
        else if(disadvantage == true) {
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getInsight()
            totalOUT.text = String(total)
        }
        else{
            die2OUT.text = ""
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getInsight()
            totalOUT.text = String(total)
        }
    }
    @IBAction func intimidationCheck(_ sender: Any){
        let result = dice.getD20(adv:advantage, dis: disadvantage)
        var total:Int = result.2
        
        skillOUT.text = "Intimidation"
        die1OUT.text = String(result.0)
        
        if(advantage == true){
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getIntimidation()
            totalOUT.text = String(total)
        }
        else if(disadvantage == true) {
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getIntimidation()
            totalOUT.text = String(total)
        }
        else{
            die2OUT.text = ""
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getIntimidation()
            totalOUT.text = String(total)
        }
    }
    @IBAction func investigationCheck(_ sender: Any){
        let result = dice.getD20(adv:advantage, dis: disadvantage)
        var total:Int = result.2
        
        // strictly for stan.
        if(result.2 < 10){total = 10}
        
        skillOUT.text = "Investigation"
        die1OUT.text = String(result.0)
        
        if(advantage == true){
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getInvestigation()
            totalOUT.text = String(total)
        }
        else if(disadvantage == true) {
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getInvestigation()
            totalOUT.text = String(total)
        }
        else{
            die2OUT.text = ""
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getInvestigation()
            totalOUT.text = String(total)
        }
        
        // strictly for stan.
        if(result.2 < 10){crit.text = "Reliable Talent"}
        else if(result.2 != 20){crit.text = ""}
    }
    @IBAction func medicineCheck(_ sender: Any){
        let result = dice.getD20(adv:advantage, dis: disadvantage)
        var total:Int = result.2
        
        skillOUT.text = "Medicine"
        die1OUT.text = String(result.0)
        
        if(advantage == true){
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getMedicine()
            totalOUT.text = String(total)
        }
        else if(disadvantage == true) {
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getMedicine()
            totalOUT.text = String(total)
        }
        else{
            die2OUT.text = ""
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getMedicine()
            totalOUT.text = String(total)
        }
    }
    @IBAction func natureCheck(_ sender: Any){
        let result = dice.getD20(adv:advantage, dis: disadvantage)
        var total:Int = result.2
        
        // strictly for stan.
        if(result.2 < 10){total = 10}
        
        skillOUT.text = "Nature"
        die1OUT.text = String(result.0)
        
        if(advantage == true){
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getNature()
            totalOUT.text = String(total)
        }
        else if(disadvantage == true) {
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getNature()
            totalOUT.text = String(total)
        }
        else{
            die2OUT.text = ""
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getNature()
            totalOUT.text = String(total)
        }
        
        // strictly for stan.
        if(result.2 < 10){crit.text = "Reliable Talent"}
        else if(result.2 != 20){crit.text = ""}
    }
    @IBAction func perceptionCheck(_ sender: Any){
        let result = dice.getD20(adv:advantage, dis: disadvantage)
        var total:Int = result.2
        
        // strictly for stan.
        if(result.2 < 10){total = 10}
        
        skillOUT.text = "Perception"
        die1OUT.text = String(result.0)
        
        if(advantage == true){
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getPerception()
            totalOUT.text = String(total)
        }
        else if(disadvantage == true) {
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getPerception()
            totalOUT.text = String(total)
        }
        else{
            die2OUT.text = ""
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getPerception()
            totalOUT.text = String(total)
        }
        
        // strictly for stan.
        if(result.2 < 10){crit.text = "Reliable Talent"}
        else if(result.2 != 20){crit.text = ""}
    }
    @IBAction func prefromanceCheck(_ sender: Any){
        let result = dice.getD20(adv:advantage, dis: disadvantage)
        var total:Int = result.2
        
        skillOUT.text = "Perfromance"
        die1OUT.text = String(result.0)
        
        if(advantage == true){
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getPerformance()
            totalOUT.text = String(total)
        }
        else if(disadvantage == true) {
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getPerformance()
            totalOUT.text = String(total)
        }
        else{
            die2OUT.text = ""
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getPerformance()
            totalOUT.text = String(total)
        }
    }
    @IBAction func persuasionCheck(_ sender: Any){
        let result = dice.getD20(adv:advantage, dis: disadvantage)
        var total:Int = result.2
        
        skillOUT.text = "Persuasion"
        die1OUT.text = String(result.0)
        
        if(advantage == true){
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getPersuasion()
            totalOUT.text = String(total)
        }
        else if(disadvantage == true) {
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getPersuasion()
            totalOUT.text = String(total)
        }
        else{
            die2OUT.text = ""
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getPersuasion()
            totalOUT.text = String(total)
        }
    }
    @IBAction func religonCheck(_ sender: Any){
        let result = dice.getD20(adv:advantage, dis: disadvantage)
        var total:Int = result.2
        
        skillOUT.text = "Religon"
        die1OUT.text = String(result.0)
        
        if(advantage == true){
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getReligion()
            totalOUT.text = String(total)
        }
        else if(disadvantage == true) {
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getReligion()
            totalOUT.text = String(total)
        }
        else{
            die2OUT.text = ""
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getReligion()
            totalOUT.text = String(total)
        }
    }
    @IBAction func slightOfHandCheck(_ sender: Any){
        let result = dice.getD20(adv:advantage, dis: disadvantage)
        var total:Int = result.2
        
        // strictly for stan.
        if(result.2 < 10){total = 10}
        
        skillOUT.text = "Slight Of Hand"
        die1OUT.text = String(result.0)
        
        if(advantage == true){
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getSlightOfHand()
            totalOUT.text = String(total)
        }
        else if(disadvantage == true) {
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getSlightOfHand()
            totalOUT.text = String(total)
        }
        else{
            die2OUT.text = ""
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getSlightOfHand()
            totalOUT.text = String(total)
        }
        
        // strictly for stan.
        if(result.2 < 10){crit.text = "Reliable Talent"}
        else if(result.2 != 20){crit.text = ""}
    }
    @IBAction func stealthCheck(_ sender: Any){
        let result = dice.getD20(adv:advantage, dis: disadvantage)
        var total:Int = result.2
        
        // strictly for stan.
        if(result.2 < 10){total = 10}
        
        skillOUT.text = "Stealth"
        die1OUT.text = String(result.0)
        
        if(advantage == true){
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getStealth()
            totalOUT.text = String(total)
        }
        else if(disadvantage == true) {
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getStealth()
            totalOUT.text = String(total)
        }
        else{
            die2OUT.text = ""
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getStealth()
            totalOUT.text = String(total)
        }
        
        // strictly for stan.
        if(result.2 < 10){crit.text = "Reliable Talent"}
        else if(result.2 != 20){crit.text = ""}
    }
    @IBAction func survivalCheck(_ sender: Any){
        let result = dice.getD20(adv:advantage, dis: disadvantage)
        var total:Int = result.2
        
        // strictly for stan.
        if(result.2 < 10){total = 10}
        
        skillOUT.text = "Survival"
        die1OUT.text = String(result.0)
        
        if(advantage == true){
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getSurvival()
            totalOUT.text = String(total)
        }
        else if(disadvantage == true) {
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getSurvival()
            totalOUT.text = String(total)
        }
        else{
            die2OUT.text = ""
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getSurvival()
            totalOUT.text = String(total)
        }
        
        // strictly for stan.
        if(result.2 < 10){crit.text = "Reliable Talent"}
        else if(result.2 != 20){crit.text = ""}
    }
    
    @IBAction func strengthCheck(_ sender: Any){
        let result = dice.getD20(adv:advantage, dis: disadvantage)
        var total:Int = result.2
        
        skillOUT.text = "Strength"
        die1OUT.text = String(result.0)
        
        if(advantage == true || disadvantage == true){
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getStrength()
            totalOUT.text = String(total)
        }
        else{
            die2OUT.text = ""
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getStrength()
            totalOUT.text = String(total)
        }
    }
    @IBAction func dexterityCheck(_ sender: Any){
        let result = dice.getD20(adv:advantage, dis: disadvantage)
        var total:Int = result.2
        
        skillOUT.text = "Dexterity"
        die1OUT.text = String(result.0)
        
        if(advantage == true || disadvantage == true){
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getDexterity()
            totalOUT.text = String(total)
        }        else{
            die2OUT.text = ""
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getDexterity()
            totalOUT.text = String(total)
        }
    }
    @IBAction func constitutionCheck(_ sender: Any){
        let result = dice.getD20(adv:advantage, dis: disadvantage)
        var total:Int = result.2
        
        skillOUT.text = "Constitution"
        die1OUT.text = String(result.0)
        
        if(advantage == true || disadvantage == true){
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getConstitution()
            totalOUT.text = String(total)
        }
        else{
            die2OUT.text = ""
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getConstitution()
            totalOUT.text = String(total)
        }
    }
    @IBAction func intelligenceCheck(_ sender: Any){
        let result = dice.getD20(adv:advantage, dis: disadvantage)
        var total:Int = result.2
        
        skillOUT.text = "Intelligence"
        die1OUT.text = String(result.0)
        
        if(advantage == true || disadvantage == true){
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getIntelligence()
            totalOUT.text = String(total)
        }
        else{
            die2OUT.text = ""
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getIntelligence()
            totalOUT.text = String(total)
        }
    }
    @IBAction func wisdomCheck(_ sender: Any){
        let result = dice.getD20(adv:advantage, dis: disadvantage)
        var total:Int = result.2
        
        skillOUT.text = "Wisdom"
        die1OUT.text = String(result.0)
        
        if(advantage == true || disadvantage == true){
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getWisdom()
            totalOUT.text = String(total)
        }
        else{
            die2OUT.text = ""
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getWisdom()
            totalOUT.text = String(total)
        }
    }
    @IBAction func chrismaCheck(_ sender: Any){
        let result = dice.getD20(adv:advantage, dis: disadvantage)
        var total:Int = result.2
        
        skillOUT.text = "Chrisma"
        die1OUT.text = String(result.0)
        
        if(advantage == true || disadvantage == true){
            die2OUT.text = String(result.1)
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getChrisma()
            totalOUT.text = String(total)
        }
        else{
            die2OUT.text = ""
            if(result.2 == 20){crit.text = "***CRITICAL HIT***"}
            else{crit.text = ""}
            total += player.getChrisma()
            totalOUT.text = String(total)
        }
    }
    
    @IBAction func advantageSwitch(_ sender: Any){
        if((sender as AnyObject).isOn == true){advantage = true}
        else{advantage = false}
    }
    @IBAction func disadvantageSwitch(_ sender: Any){
        if((sender as AnyObject).isOn == true){disadvantage = true}
        else{disadvantage = false}
    }
    
    @IBAction func doneButton(_ sender: Any){
        navigationController?.popToViewController(navigationController!.viewControllers[1], animated: true)
    }
    

}
