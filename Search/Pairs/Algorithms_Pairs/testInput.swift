
import Foundation

func getLine() -> String {
  let stdin = NSFileHandle.fileHandleWithStandardInput()
  let line  = stdin.availableData
  return NSString(data: line, encoding:NSUTF8StringEncoding) as! String
}

while true {
  let line = getLine()
  print(line)
}
