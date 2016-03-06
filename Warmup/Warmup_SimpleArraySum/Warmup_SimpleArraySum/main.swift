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

let sum = nNumbers.reduce(0) { $0 + $1 }
print(sum)

