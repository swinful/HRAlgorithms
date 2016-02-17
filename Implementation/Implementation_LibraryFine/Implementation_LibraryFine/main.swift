////
// main.swift
// Implementation_LibraryFine
//
// Created by Samuel A WINFUL on 2/14/16.
// Copyright © 2016 Samuel A WINFUL. All rights reserved.
////
import Foundation

class Date {
  var day   = 1
  var month = 1
  var year  = 2000
  
  func readDate() {
    let dateLine = readLine()!.componentsSeparatedByString(" ").map { Int(String($0))! }
    setDate(dateLine[0], m: dateLine[1], y: dateLine[2])
  }
  
  func monthsLate(otherDate: Date) -> Int {
    // Calculate late months
    return self.month - otherDate.month
  }
  
  func daysLate(otherDate: Date) -> Int {
    // Calculate late days
    return abs(self.day - otherDate.day)
  }
  
  func onOrBefore(otherDate: Date) -> Bool {
    return year <= otherDate.year
  }
  
  private func setDate(d: Int, m: Int, y: Int) {
    (day, month, year) = (d, m, y)
  }
} // class Date ends

// MARK: Main ============================================================

var fine = 0
let bookReturnedOn = Date()
bookReturnedOn.readDate()

let bookExpectedOn = Date()
bookExpectedOn.readDate()

// If the book was returned after the expected year, issue the max fine.
if bookReturnedOn.year > bookExpectedOn.year {
  fine = 10_000

// otherwise, if the book was returned in the same year
} else if bookReturnedOn.year == bookExpectedOn.year {
  
  // and same month as they expected return date
  if bookReturnedOn.month == bookExpectedOn.month && bookReturnedOn.day > bookExpectedOn.day {
    
    // calculate the number of days late for the fine.
    let daysLate = bookReturnedOn.daysLate(bookExpectedOn)
    fine = 15 * daysLate
  // Otherwise, if the book was returned on a later month
  } else if bookReturnedOn.month > bookExpectedOn.month {
    fine = 500 * bookReturnedOn.monthsLate(bookExpectedOn)
  }
}

print(fine)
