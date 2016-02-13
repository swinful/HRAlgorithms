
import Foundation

let n = Int(readLine()!)!
let nNumbers = readLine()!.characters.split(" ").map {Int(String($0))!}

var sum = 0
nNumbers.forEach { sum += $0 }
print(sum)
