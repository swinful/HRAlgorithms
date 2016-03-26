//
//  main.swift
//  Implementation_AngryProfessor
//
//  Created by Samuel A WINFUL on 3/26/16.
//  Copyright © 2016 Samuel A WINFUL. All rights reserved.
//
import Foundation

let testCases = Int(readLine()!)!
func shouldCancelClass(fewerThan k: Int, arrivalTimes N: [Int]) -> Bool {
  var outcome = false
  
  let negatives = N.filter {$0 <= 0}
  if negatives.count < k {
    outcome = true
  }
  
  return outcome
}

for i in 1...testCases {
  let line = readLine()!.componentsSeparatedByString(" ").map { Int(String($0))! }
  let (studentsInClass, cancelationThreshold) = (line[0], line[1])
  let arrivalTimes = readLine()!.componentsSeparatedByString(" ").map { Int(String($0))! }
  
  if shouldCancelClass(fewerThan: cancelationThreshold, arrivalTimes: arrivalTimes) {
    print("YES")
  } else {
    print("NO")
  }
}