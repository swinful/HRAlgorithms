//
//  main.swift
//  Algorithms_Pairs
//
//  Created by Samuel A WINFUL on 12/21/15.
//  Copyright © 2015 Samuel A WINFUL. All rights reserved.
//
// HackerRank Problem Statement:
// -------------------
// Given N integers, count the number of pairs of integers whose difference is K.
//
// Sample Input:
// 5 2
// 1 5 3 4 2
//
// Sample Output:
// 3
//
//
// There are 3 pairs of integers in the set with a difference of 2

import Foundation

func differenceOf(first: Int, second: Int) -> Int {
  if first > second {
    return first - second
  } else {
    return second - first
  }
}

/// Given N integers, count the number of pairs of integers whose difference is K
func count(N: Int, difference: Int) -> Int {
  var differenceCount = 0
  
  var nIntegers = readLine()!.characters.split(" ").map { Int(String($0))! }
  
  while (nIntegers.count != 0) {
    let firstInt = nIntegers.removeFirst()
    for theOtherInt in nIntegers {
      if differenceOf(firstInt, second: theOtherInt) == difference {
        differenceCount += 1
      }
    }
  }
  return differenceCount
}


// MARK: Main
let firstLine = readLine()!
let a1 = firstLine.characters.split(" ").map { Int(String($0))! }

if a1.count == 2 {
  let numberOfInts   = a1[0]
  let withDifference = a1[1]
  let answer = count(numberOfInts, difference: withDifference)
  print(answer)
}

