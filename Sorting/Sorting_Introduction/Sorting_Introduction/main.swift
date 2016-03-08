//
//  main.swift
//  Sorting_Introduction
//
//  Created by Samuel A WINFUL on 3/8/16.
//  Copyright © 2016 Samuel A WINFUL. All rights reserved.
//

import Foundation

/**
 * Input Format -- There will be three lines of input:
 *   V - the value that has to be searched.
 *   n - the size of the array.
 *   ar - n numbers that make up the array.
 * Output Format -- Output the index of V in the array.
 **/

let V  = Int(readLine()!)!
let n  = Int(readLine()!)!
let ar = readLine()!.componentsSeparatedByString(" ").map { Int(String($0))! }

for (var i = 0; i < n; ++i) {
  if ar[i] == V {
    print(i)
  }
}
