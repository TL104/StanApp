//
//  Player.swift
//  StanApp
//
//  Created by Tyler Lawhorn on 6/11/21.
//

import UIKit
/* **************************
 * This is set up for Stan. *
 ************************** */
class Player: NSObject {
    
    var name:String = "STAN"
    var proficiencyBonus:Int = 4
    var initiative:Int = 5
    var xp:Int = 119640
    var health:Int = 94
    
    func setHealth(number:Int){health = number}
    func setXp(number:Int){xp = number}
    
    func addXp(number:Int){xp += number}
    
    func damage(number:Int){health -= number}
    func heal(number:Int){health += number}
    
    func getName()->String{return name}
    func getProficiencyBonus()->Int{return proficiencyBonus}
    func getInitiative()->Int{return initiative}
    func getXp()->Int{return xp}
    func getHealth()->Int{return health}
    
    struct attributeNode{
        var modifier:Int = 0
        var equipmentBonus:Int = 0
    }
    
    var strength:attributeNode = attributeNode()
    var dexterity:attributeNode = attributeNode()
    var constitution:attributeNode = attributeNode()
    var intelligence:attributeNode = attributeNode()
    var wisdom:attributeNode = attributeNode()
    var chrisma:attributeNode = attributeNode()
    
    func getStrength()->Int{
        strength.modifier = 6
        strength.equipmentBonus = 0
        
        return (strength.modifier + strength.equipmentBonus)
    }
    func getDexterity()->Int{
        dexterity.modifier = 5
        dexterity.equipmentBonus = 0
        
        return (dexterity.modifier + dexterity.equipmentBonus)
        
    }
    func getConstitution()->Int{
        constitution.modifier = 3
        constitution.equipmentBonus = 0
        
        return (constitution.modifier + constitution.equipmentBonus)
    }
    func getIntelligence()->Int{
        intelligence.modifier = 1
        intelligence.equipmentBonus = 0
        
        return (intelligence.modifier + intelligence.equipmentBonus)
    }
    func getWisdom()->Int{
        wisdom.modifier = 1
        wisdom.equipmentBonus = 0
        
        return (wisdom.modifier + wisdom.equipmentBonus)
    }
    func getChrisma()->Int{
        chrisma.modifier = -2
        chrisma.equipmentBonus = 0
        
        return (chrisma.modifier + chrisma.equipmentBonus)
    }
    
    struct skillNode{
        var proficient:Bool = false
        var expertise:Bool = false
        var equipmentBonus:Int = 0
    }
    
    var acrobatics:skillNode = skillNode()
    var animalHandling:skillNode = skillNode()
    var athletics:skillNode = skillNode()
    var arcana:skillNode = skillNode()
    var deception:skillNode = skillNode()
    var history:skillNode = skillNode()
    var insight:skillNode = skillNode()
    var intimidation:skillNode = skillNode()
    var investigation:skillNode = skillNode()
    var medicine:skillNode = skillNode()
    var nature:skillNode = skillNode()
    var perception:skillNode = skillNode()
    var performance:skillNode = skillNode()
    var persuasion:skillNode = skillNode()
    var religion:skillNode = skillNode()
    var slightOfHand:skillNode = skillNode()
    var stealth:skillNode = skillNode()
    var survival:skillNode = skillNode()
    
    func getAcrobatics() -> Int{
        acrobatics.proficient = true
        acrobatics.expertise = true
        
        if(acrobatics.proficient && acrobatics.expertise){
            return (getDexterity() + (2*proficiencyBonus) + acrobatics.equipmentBonus)
        }
        else if(acrobatics.proficient){
            return (getDexterity() + proficiencyBonus + acrobatics.equipmentBonus)
            
        }
        else {return getDexterity() + acrobatics.equipmentBonus}
    }
    
    func getAnimalHandeling() -> Int{
        animalHandling.proficient = false
        animalHandling.expertise = false
        
        if(animalHandling.proficient && animalHandling.expertise){
            return (getWisdom() + (2*proficiencyBonus) + animalHandling.equipmentBonus)
        }
        else if(animalHandling.proficient){
            return (getWisdom() + proficiencyBonus + animalHandling.equipmentBonus)}
        else {return getWisdom()  + animalHandling.equipmentBonus}
    }
    
    func getAthletics() -> Int{
        athletics.proficient = true
        athletics.expertise = true
        
        if(athletics.proficient && athletics.expertise){
            return (getStrength() + (2*proficiencyBonus) + athletics.equipmentBonus)
        }
        else if(athletics.proficient){
            return (getStrength() + proficiencyBonus + athletics.equipmentBonus)
            
        }
        else {return getStrength() + athletics.equipmentBonus}
    }
    
    func getArcana() -> Int{
        arcana.proficient = false
        arcana.expertise = false
        
        if(arcana.proficient && arcana.expertise){
            return (getIntelligence() + (2*proficiencyBonus) + arcana.equipmentBonus)
        }
        else if(arcana.proficient){
            return (getIntelligence() + proficiencyBonus) + arcana.equipmentBonus
        }
        else {return getIntelligence() + arcana.equipmentBonus}
    }
    
    func getDeception() -> Int{
        deception.proficient = false
        deception.expertise = false
        
        if(deception.proficient && deception.expertise){
            return (getChrisma() + (2*proficiencyBonus) + deception.equipmentBonus)
        }
        else if(deception.proficient){
            return (getChrisma() + proficiencyBonus + deception.equipmentBonus)
        }
        else {return getChrisma() + deception.equipmentBonus}
    }
    
    func getHistory() -> Int{
        history.proficient = false
        history.expertise = false
        
        if(history.proficient && history.expertise){
            return (getIntelligence() + (2*proficiencyBonus) + history.equipmentBonus)
        }
        else if(history.proficient){
            return (getIntelligence() + proficiencyBonus + history.equipmentBonus)
        }
        else {return getIntelligence() + history.equipmentBonus}
    }
    
    func getInsight() -> Int {
        insight.proficient = false
        insight.expertise = false
        
        if(insight.proficient && insight.expertise){
            return (getWisdom() + (2*proficiencyBonus) + insight.equipmentBonus)
        }
        else if(insight.proficient){
            return (getWisdom() + proficiencyBonus + insight.equipmentBonus)
        }
        else {return getWisdom() + insight.equipmentBonus}
    }
    
    func getIntimidation() -> Int{
        intimidation.proficient = false
        intimidation.expertise = false
        
        if(intimidation.proficient && intimidation.expertise){
            return (getChrisma() + (2*proficiencyBonus) + intimidation.equipmentBonus)
        }
        else if(intimidation.proficient){
            return (getChrisma() + proficiencyBonus + intimidation.equipmentBonus)
        }
        else {return getChrisma() + intimidation.equipmentBonus}
    }
    
    func getInvestigation() -> Int{
        investigation.proficient = true
        investigation.expertise = false
        
        if(investigation.proficient && investigation.expertise){
            return (getIntelligence() + (2*proficiencyBonus) + investigation.equipmentBonus)
        }
        else if(investigation.proficient){
            return (getIntelligence() + proficiencyBonus + investigation.equipmentBonus)
        }
        else {return getIntelligence() + investigation.equipmentBonus}
    }
    
    func getMedicine() -> Int{
        medicine.proficient = false
        medicine.expertise = false
        
        if(medicine.proficient && medicine.expertise){
            return (getWisdom() + (2*proficiencyBonus) + medicine.equipmentBonus)
        }
        else if(medicine.proficient){
            return (getWisdom() + proficiencyBonus + medicine.equipmentBonus)
        }
        else {return getWisdom() + medicine.equipmentBonus}
    }
    
    func getNature() -> Int{
        nature.proficient = true
        nature.expertise = true
        
        if(nature.proficient && nature.expertise){
            return (getIntelligence() + (2*proficiencyBonus) + nature.equipmentBonus)
        }
        else if(nature.proficient){
            return (getIntelligence() + proficiencyBonus + nature.equipmentBonus)
        }
        else {return getIntelligence() + nature.equipmentBonus}
    }
    
    func getPerception() -> Int{
        perception.proficient = true
        perception.expertise = false
        
        if(perception.proficient && perception.expertise){
            return (getWisdom() + (2*proficiencyBonus) + perception.equipmentBonus)
        }
        else if(perception.proficient){
            return (getWisdom() + proficiencyBonus + perception.equipmentBonus)
        }
        else {return getWisdom() + perception.equipmentBonus}
    }
    
    func getPerformance() -> Int{
        performance.proficient = false
        performance.expertise = false
        
        if(performance.proficient && performance.expertise){
            return (getChrisma() + (2*proficiencyBonus) + performance.equipmentBonus)
        }
        else if(performance.proficient){
            return (getChrisma() + proficiencyBonus + performance.equipmentBonus)
        }
        else {return getChrisma() + performance.equipmentBonus}
    }
    
    func getPersuasion() -> Int{
        persuasion.proficient = false
        persuasion.expertise = false
        
        if(persuasion.proficient && persuasion.expertise){
            return (getChrisma() + (2*proficiencyBonus) + persuasion.equipmentBonus)
        }
        else if(persuasion.proficient){
            return (getChrisma() + proficiencyBonus + persuasion.equipmentBonus)
        }
        else {return getChrisma() + persuasion.equipmentBonus}
    }
    
    func getReligion() -> Int{
        religion.proficient = false
        religion.expertise = false
        
        if(religion.proficient && religion.expertise){
            return (getIntelligence() + (2*proficiencyBonus) + religion.equipmentBonus)
        }
        else if(religion.proficient){
            return (getIntelligence() + proficiencyBonus + religion.equipmentBonus)
        }
        else {return getIntelligence() + religion.equipmentBonus}
    }
    
    func getSlightOfHand() -> Int{
        slightOfHand.proficient = true
        slightOfHand.expertise = true
        slightOfHand.equipmentBonus = 5
        
        if(slightOfHand.proficient && slightOfHand.expertise){
            return (getDexterity() + (2*proficiencyBonus) + slightOfHand.equipmentBonus)
        }
        else if(slightOfHand.proficient){
            return (getDexterity() + proficiencyBonus + slightOfHand.equipmentBonus)
            
        }
        else {return getDexterity() + slightOfHand.equipmentBonus}
    }
    
    func getStealth() -> Int{
        stealth.proficient = true
        stealth.expertise = true
        
        if(stealth.proficient && stealth.expertise){
            return (getDexterity() + (2*proficiencyBonus) + stealth.equipmentBonus)
        }
        else if(stealth.proficient){
            return (getDexterity() + proficiencyBonus + stealth.equipmentBonus)
        }
        else {return getDexterity() + stealth.equipmentBonus}
    }
    
    func getSurvival() -> Int{
        survival.proficient = true
        survival.expertise = true
        if(survival.proficient && survival.expertise){
            return (getWisdom() + (2*proficiencyBonus) + survival.equipmentBonus)
        }
        else if(survival.proficient){
            return (getWisdom() + proficiencyBonus + survival.equipmentBonus)
        }
        else {return getWisdom() + survival.equipmentBonus}
    }
    
    

}
