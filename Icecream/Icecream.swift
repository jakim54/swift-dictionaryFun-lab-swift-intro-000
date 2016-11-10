//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream: [String : String] = [
        "Joe": "Peanut Butter and Chocolate",
        "Tim": "Natural Vanilla",
        "Sophie": "Mexican Chocolate",
        "Deniz": "Natural Vanilla",
        "Tom": "Mexican Chocolate",
        "Jim": "Natural Vanilla",
        "Susan": "Cookies 'N' Cream"
    ]
    
    // 2.
    func names(forFlavor flavor: String) -> [String] {
        var peeps4ThatFlavor = [String]()
        for flavor in favoriteFlavorsOfIceCream.keys {
            peeps4ThatFlavor.append(flavor)
        }
        
        return peeps4ThatFlavor
    }
    
    // 3.
    func count(forFlavor flavor: String) -> Int {
        var peopleCountedPerFlavor: Int = 0
        for (person, flavors) in favoriteFlavorsOfIceCream {
            peopleCountedPerFlavor += 1
        }
        
        return peopleCountedPerFlavor
    }
    
    // 4.
    func flavor(forPerson person: String) -> String? {
        if let flavorList = favoriteFlavorsOfIceCream[person] {
            return flavorList
        } else {
            return nil
        }
    }
    
    // 5.
    func replace(flavor: String, forPerson person: String) -> Bool {
        if favoriteFlavorsOfIceCream.updateValue(favoriteFlavorsOfIceCream[flavor]!, forKey: person) != nil {
            return true
        } else {
            return false
        }
    }
    // Works, but is lazy as I have not specified the code for conditions, but KISS, so if it doesn't match, just return nil.
    // 6.
    func remove(person: String) -> Bool {
        if favoriteFlavorsOfIceCream.removeValue(forKey: person) != nil {
            return true
        } else {
            return false
        }
    }
    
    // 7.
    func numberOfAttendees() -> Int {
        let peopleAttending = favoriteFlavorsOfIceCream.keys.count
        return peopleAttending
    }
    
    // 8.
    func add(person: String, withFlavor flavor: String) -> Bool {
        if favoriteFlavorsOfIceCream.updateValue(favoriteFlavorsOfIceCream[flavor]!, forKey: person) != nil {
            return true
        } else {
            return false
        }
    }
    
    // 9.
    func attendeeList() -> String {
        var phrase: String = ""
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        
        for (n, name) in allNames.enumerated() {
            if let value = favoriteFlavorsOfIceCream[name]{
                phrase += "\(name) likes \(value)"
                if n < allNames.count - 1 {
                    phrase += "\n"
                }
            }
        }
//        for name in allNames {
//            let value = favoriteFlavorsOfIceCream[name]
//            phrase += "\(name) likes \(value)\n"
//        
//        }
        return phrase
    }
}
