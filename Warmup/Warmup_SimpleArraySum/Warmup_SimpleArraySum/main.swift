//
//  main.swift
//  Warmup_SimpleArraySum
//
//  Created by Samuel A WINFUL on 2/14/16.
//  Copyright © 2016 Samuel A WINFUL. All rights reserved.
//
import Foundation

let n = Int(readLine()!)!
let nNumbers = readLine()!.characters.split(" ").map {Int(String($0))!}

var sum = 0
nNumbers.forEach { sum += $0 }
print(sum)