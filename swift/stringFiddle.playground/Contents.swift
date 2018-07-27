//: Playground - noun: a place where people can play

import UIKit

extension String {
    func stripNewLine() -> String? {
        return self.trimmingCharacters(in: CharacterSet.newlines)
    }
    
    func stripEndNewLine() -> String? {
        var subString = self[...]
        let endLineRange = subString.rangeOfCharacter(from: CharacterSet.newlines, options: [.backwards], range: subString.startIndex..<subString.endIndex)
        if let endRange = endLineRange {
            print(endRange)
            print(subString)
            print( subString[endRange])
            subString.removeSubrange(endRange)
            print(subString)
        }
        return String.init(subString)
    }
}

print("dfdf")

let str1 = "\ndfd\n\ndd \n\r\n"

str1.stripNewLine()
str1.stripEndNewLine()

let str2 = "fn   r\n"
str2.stripNewLine()
str2.stripEndNewLine()
