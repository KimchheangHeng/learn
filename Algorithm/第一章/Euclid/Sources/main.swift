import Darwin

func gcd(_ p:Int, _ q:Int) -> Int {
    if q == 0 {
        return p
    }
    let r = p % q;
    return gcd(q,r)
    
}

if CommandLine.arguments.count < 3
{
    print("Usage: Euclid number1 number2")
    exit(0)
}

let p = Int(CommandLine.arguments[1])!
let q = Int(CommandLine.arguments[2])!

let gcdResult = gcd(p,q)

print("gcd of \(p) and \(q) is \(gcdResult)")



		
