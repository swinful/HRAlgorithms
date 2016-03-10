//
//  main.swift
//  Sorting_Insertion2
//
//  Created by Samuel A WINFUL on 3/8/16.
//  Copyright © 2016 Samuel A WINFUL. All rights reserved.
//

import Foundation

func printArray(theArray: [Int]?) {
  if let array = theArray {
    print(array.map {String($0)}.joinWithSeparator(" "))
  }
}

func insertionSort(inout theArray: [Int]) {
  if !theArray.isEmpty {
    for (var i = 0; i < theArray.count-1; i++) { // < count-1, take care not to go over bounds.
      if theArray[i+1] < theArray[i] {
        swap(&theArray[i+1], &theArray[i])
        var j = i
        while j > 0 && theArray[j] < theArray[j-1] { // j > 0, same here, take care not to go under bounds.
          swap(&theArray[j], &theArray[j-1])
          j--
        }
        printArray(theArray)
      } else {
        printArray(theArray)
      }
    }
  }
}

let s     = Int(readLine()!)!
var array = readLine()!.componentsSeparatedByString(" ").map { Int(String($0))! }
insertionSort(&array)

