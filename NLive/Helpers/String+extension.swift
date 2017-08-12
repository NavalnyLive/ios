//
//  String+extension.swift
//  Navalny Live
//
//  Created by Eliah Snakin on 29/06/2017.
//  Copyright © 2017 Eliah Snakin. All rights reserved.
//

extension String {
    subscript (i: Int) -> Character {
        return self[self.characters.index(self.startIndex, offsetBy: i)]
    }
    
    subscript (i: Int) -> String {
        return String(self[i] as Character)
    }
    
    subscript (r: Range<Int>) -> String {
        let start = index(startIndex, offsetBy: r.lowerBound)
        let end = index(startIndex, offsetBy: r.upperBound)
        return self[start..<end]
    }
    
    subscript (r: ClosedRange<Int>) -> String {
        let start = index(startIndex, offsetBy: r.lowerBound)
        let end = index(startIndex, offsetBy: r.upperBound)
        return self[start...end]
    }
    
    var length: Int {
        return self.characters.count
    }
    
    var range: Range<Int> {
        return 0..<self.length
    }
}
