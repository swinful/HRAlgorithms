//
//  main.swift
//  Warmup_SolveMeFirst
//
//  Created by Samuel A WINFUL on 2/14/16.
//  Copyright © 2016 Samuel A WINFUL. All rights reserved.
//
import Foundation

func solveMeFirst(op1: Int, op2: Int) -> Int {
  return op1 + op2
}
let first  = Int(readLine()!)!
let second = Int(readLine()!)!
let sum    = solveMeFirst(first, op2: second)
print(sum)