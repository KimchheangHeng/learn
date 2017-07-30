import Darwin
import Foundation


func rank(key:Int , array :[Int] ) -> Int {
    var lo = 0
    var hi  = array.count - 1
    while lo <= hi {
        let mid = lo + (hi - lo)/2
        if key < array[mid] {
            hi = mid - 1
        }
        else if key > array[mid]{
            lo = mid + 1
        }
        else
        {
            return mid
        }
    }
    return -1
}

if CommandLine.arguments.count < 2
{
    print("example BinarySearch tinyW.txt < tinyT.txt")
    exit(0)
}
let whiteString:String! = try! String.init(contentsOfFile: CommandLine.arguments[1])

let whiteNumber = whiteString.components(separatedBy: CharacterSet.newlines).map{Int($0.trimmingCharacters(in: CharacterSet.whitespaces))!}.sorted()

print(whiteNumber)

while let input = readLine()
{
    if let inputInt = Int(input)
    {
        if rank(key: inputInt, array: whiteNumber) < 0
        {
            print(input)
        }
        
    }
}

