//
//  Array+Each.swift
//
//  Created by Omar Abdelhafith on 03/06/2014.
//  Copyright (c) 2014 Omar Abdelhafith. All rights reserved.
//

import Foundation

extension Array {
  func each (iterator: (T) -> Void ) {
    for item in self {
      iterator(item)
    }
  }
  
  func eachWithIndex (iterator: (T, Int) -> Void ) {
    var i = 0
    for item in self {
      iterator(item, i++)
    }
  }
}

extension Range {
  func each (iterator: (T) -> Void ) {
    for item in self {
      iterator(item)
    }
  }
}

extension Dictionary {
  func each(iterator: (KeyType,ValueType) -> Void)
  {
    for (key, value) in self {
      iterator(key, value)
    }
  }
}

extension Int {
  func times(iterator: () -> Void) {
    for _ in 0..self {
      iterator()
    }
  }
  
  func timesWithIndex(iterator: (Int) -> Void) {
    for i in 0..self {
      iterator(i)
    }
  }
}