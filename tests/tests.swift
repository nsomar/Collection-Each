//
//  tests.swift
//  tests
//
//  Created by Omar Abdelhafith on 03/06/2014.
//
//

import XCTest

class tests: XCTestCase {
  var fruits = ["Apples", "Oranges", "Mangos"]
  var dictionary = ["key1":1, "Key2":2, "Key3":3]
  var range = 1...10
  
  func testArrayEachPrintsCorrectValues() {
    self.fruits.each{
      XCTAssert($0 != nil, "Pass")
      println("Item \($0)")
    }
    
    self.fruits.eachWithIndex({ println("Item \($0) at Index \($1)") })
  }
  
  func testArrayEachWithIndexPrintsCorrectValues() {
    self.fruits.eachWithIndex{
      XCTAssert($0 != nil, "Pass")
      println("Item \($0) at Index \($1)")
    }
  }
  
  func testRangeEachPrintsCorrectValues() {
    self.range.each{
      XCTAssert($0 != nil, "Pass")
      println("Index \($0)")
    }
  }
  
  func testDictionaryEachPrintsCorrectValues() {
    self.dictionary.each{
      XCTAssert($0 != nil, "Pass")
      println("Key \($0) at Value \($1)")
    }
  }
  
  func testTimesPrintsCorrectValues() {
    3.times{ println("Iterating") }
  }
  
  func testTimesWithIndexPrintsCorrectValues() {
    3.timesWithIndex{ println("Iterating index \($0)") }
  }
}
