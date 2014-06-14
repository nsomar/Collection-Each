//
//  Array+Each.swift
//
//  Created by Omar Abdelhafith on 03/06/2014.
//  Copyright (c) 2014 Omar Abdelhafith. All rights reserved.
//

import Foundation

extension Array {
  func each (iterator: (T) -> Void ) -> Array {
    for item in self {
      iterator(item)
    }
    
    return self
  }
  
  func eachWithIndex (iterator: (T, Int) -> Void ) -> Array {
    for (index, item) in enumerate(self) {
      iterator(item, index)
    }
    
    return self
  }
}

extension Range {
  func each (iterator: (T) -> Void ) -> Range{
    for item in self {
      iterator(item)
    }
    
    return self
  }
}

extension Dictionary {
  func each(iterator: (KeyType,ValueType) -> Void) -> Dictionary
  {
    for (key, value) in self {
      iterator(key, value)
    }
    
    return self
  }
}

extension Int {
  func times(iterator: () -> Void) -> Int{
    for _ in 0..self {
      iterator()
    }
    
    return self
  }
  
  func timesWithIndex(iterator: (Int) -> Void) -> Int{
    for i in 0..self {
      iterator(i)
    }
    
    return self
  }
}