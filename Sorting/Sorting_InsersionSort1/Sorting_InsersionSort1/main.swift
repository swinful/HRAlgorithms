//
//  main.swift
//  Sorting_InsersionSort1
//
//  Created by Samuel A WINFUL on 3/5/16.
//  Copyright © 2016 Samuel A WINFUL. All rights reserved.
//

import Foundation

func printArray(theArray: [Int]) {
  print(theArray.map {String($0)}.joinWithSeparator(" "))
}

var N           = Int(readLine()!)!
var arrayOfInts = readLine()!.componentsSeparatedByString(" ").map {Int(String($0))!}

if N == 1 {
  printArray(arrayOfInts)
} else if N > 1 {
  // 2 3 4 5 6 7 8 9 10 1
  // 1 3 5 9 13 22 27 35 46 51 55 83 87 23
  let element = arrayOfInts[N-1]
  for var i = N-1; i > 0; --i {
    if arrayOfInts[i-1] > element {
      arrayOfInts[i] = arrayOfInts[i-1]
      printArray(arrayOfInts)
    } else if arrayOfInts[i-1] < element && arrayOfInts[i] > element {
      arrayOfInts[i] = element
      printArray(arrayOfInts)
    }

    if i - 1 == 0 && element < arrayOfInts[i-1] {
      arrayOfInts[i-1] = element
      printArray(arrayOfInts)
    } else if i - 1 == 0 && element == arrayOfInts[i-1] {
      arrayOfInts[i] = element
      printArray(arrayOfInts)
    }

  }
}
